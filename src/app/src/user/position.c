/*
********************************************************************************
*
* Filename      : position.c
* Version       : V1.00
* Programmer(s) : miaoyahan
* Time          : 20150304
* rewriter      : joneming
* Time          : 20150327
********************************************************************************
*/

/*
********************************************************************************
*                               INCLUDES
********************************************************************************
*/
#include "include.h"

/*
********************************************************************************
*                             LOCAL DEFINES
********************************************************************************
*/
#define POS_FRAM_15MIN   FRAM_STOP_15MINUTE_SPEED_ADDR//16分钟停车前速度
#define POS_FRAM_STOP    FRAM_STOP_15MIN_TIME_ADDR//15分钟停车时间

/*
********************************************************************************
*                          LOCAL VARIABLES
********************************************************************************
*/


/*
********************************************************************************
*                          EXTERN VARIABLES
********************************************************************************
*/
///////////////
#define POSTION_RECORD_HEAD               0xBACD
#define POSTION_RECORD_SAVE               0xAA
#define POSTION_RECORD_NO_VALID           0xFF
#define POSTION_RECORD_VALID              0x55
//////////////////
typedef struct
{   
    unsigned long startTime;//开始时间
    unsigned short head;    //
    unsigned char saveFlag; //保存标志
    unsigned char valid;//有效标志
    unsigned char bak[4];
    unsigned char bcdTime[6];
    //////////前面变量位置不要随便修改,保存到flash中/////////////
    //////////以下变量位置可以随便改////////////
    unsigned char minspeed; //平均速度
    unsigned char premin; //分钟
    unsigned char checkTimeCnt;
    unsigned char secCnt; //分钟
    unsigned long curTimeVal;//当前时间
}ST_POSTION_ATTRIB;

static ST_POSTION_ATTRIB s_stPostionAttrib;

#define SAVE_POSTION_HEAD_INFO_LEN      18//18个头信息(包括记录的BCD时间开头)
#define READ_POSTION_DATA_START_LEN     12//读记录的实际开始位置
#define ONE_MIN_SAVE_POSTION_DATA_LEN   11//1分钟位置记录的长度
////////////////////////////
#define FLASH_POSTION_SAVE_RECORD_ADDR         (FLASH_POSTION_RECORD_START_SECTOR*FLASH_ONE_SECTOR_BYTES)//暂存的flash地址
#define ONE_POSTION_STPE_DATA_LEN              (REGISTER_POSITION_STEP_LEN-5)//4个字节的时间+1个字节的检验,每小时的位置记录数据长度
#define FLASH_POSTION_SAVE_RECORD_BACK_ADDR    (2000)   //备份相对地址 
#define ONE_POSTION_STPE_DATA_BACK_LEN         (ONE_POSTION_STPE_DATA_LEN+SAVE_POSTION_HEAD_INFO_LEN)//备份数据的总长度
///////////////////////////
enum 
{
    POSTION_TIMER_TASK,                       //
    POSTION_TIMER_CHECK,						//  
    POSTION_TIMERS_MAX
}STPOSTION_TIME;
static LZM_TIMER s_stPostionTimer[POSTION_TIMERS_MAX];
/*********************************************************************************
*                              FUNCTIONS
*********************************************************************************/
/*************************************************************
** 函数名称: Position_MinuteSpeedPro
** 功能描述: 计算平均速度
** 入口参数: 
** 出口参数: 
** 返回参数: 
** 全局变量: 无
** 调用模块:
*************************************************************/
void Position_MinuteSpeedPro(void)
{
    if(0 == SpeedMonitor_GetCurSpeedType())
    {
        s_stPostionAttrib.minspeed = Pulse_GetMinuteSpeed();//脉冲速度
    }
    else
    {
        s_stPostionAttrib.minspeed = MileMeter_GetMinuteSpeed();//GPS速度
    }
    ////////////
}

/*************************************************************
** 函数名称: Position_CurSaveFlash
** 功能描述: 检查速度记录的flash区域 
** 入口参数: 
** 出口参数: 
** 返回参数: 
** 全局变量: 无
** 调用模块:
*************************************************************/
void Position_CurSaveMinData(void)
{
    unsigned short addr;
    unsigned char buffer[20];
    unsigned char data[20];
    //////////////////////
    if(POSTION_RECORD_VALID != s_stPostionAttrib.valid)
    {
        s_stPostionAttrib.valid = POSTION_RECORD_VALID;
        sFLASH_WriteBuffer((unsigned char *)&s_stPostionAttrib,FLASH_POSTION_SAVE_RECORD_ADDR,SAVE_POSTION_HEAD_INFO_LEN);        
    }    
    addr = s_stPostionAttrib.premin*ONE_MIN_SAVE_POSTION_DATA_LEN+SAVE_POSTION_HEAD_INFO_LEN;
    ////////////////////////
    memset(buffer,0xff,ONE_MIN_SAVE_POSTION_DATA_LEN);//无效位置
    buffer[0] = 0x7F;
    buffer[4] = 0x7F;
    if(Io_ReadStatusBit(STATUS_BIT_NAVIGATION))
    {
        Public_GetCurPositionInfoDataBlock(buffer);//有效位置
    }
    buffer[10] = s_stPostionAttrib.minspeed;//平均速度
    ///////////////////
    sFLASH_WriteBuffer(buffer,FLASH_POSTION_SAVE_RECORD_ADDR+addr,ONE_MIN_SAVE_POSTION_DATA_LEN); 
    ////////校验写的对不对/////////////////////
    sFLASH_ReadBuffer(data,FLASH_POSTION_SAVE_RECORD_ADDR+addr,ONE_MIN_SAVE_POSTION_DATA_LEN);    
    if(Public_CheckArrayValIsEqual(data, buffer, ONE_MIN_SAVE_POSTION_DATA_LEN))//读与写的不一致,重新写
    {
        sFLASH_ReadBuffer(s_ucMsgFlashBuffer,FLASH_POSTION_SAVE_RECORD_ADDR,FLASH_ONE_SECTOR_BYTES); 
        spi_Delay_uS(100);
        sFLASH_EraseSector(FLASH_POSTION_SAVE_RECORD_ADDR); 
        spi_Delay_uS(100);
        memcpy(&s_ucMsgFlashBuffer[addr],buffer,ONE_MIN_SAVE_POSTION_DATA_LEN);
        sFLASH_WriteBuffer(s_ucMsgFlashBuffer,FLASH_POSTION_SAVE_RECORD_ADDR,FLASH_ONE_SECTOR_BYTES); 
    }
}
/*************************************************************
** 函数名称: Position_CurSaveFlash
** 功能描述: 检查速度记录的flash区域 
** 入口参数: 
** 出口参数: 
** 返回参数: 
** 全局变量: 无
** 调用模块:
*************************************************************/
void Position_CurSaveHeadInfo(void)
{
    ST_POSTION_ATTRIB stPostionAttrib;
    unsigned long timeVal = 0;
    TIME_T stTime;
    ///////////////
    s_stPostionAttrib.head     = POSTION_RECORD_HEAD;
    s_stPostionAttrib.saveFlag = POSTION_RECORD_SAVE;    
    s_stPostionAttrib.startTime = s_stPostionAttrib.curTimeVal -(s_stPostionAttrib.curTimeVal%HOUR_SECOND);
    s_stPostionAttrib.valid     = POSTION_RECORD_NO_VALID;
    Gmtime(&stTime,s_stPostionAttrib.startTime);  
    Public_ConvertTimeToBCDEx(stTime,s_stPostionAttrib.bcdTime);
    /////////////////备份前一小时数据/////////////////////////
    sFLASH_ReadBuffer((unsigned char *)&stPostionAttrib,FLASH_POSTION_SAVE_RECORD_ADDR,SAVE_POSTION_HEAD_INFO_LEN);
    if(Public_ConvertBCDToTime(&stTime, stPostionAttrib.bcdTime))
    {
        timeVal = ConverseGmtime(&stTime);
    }
    //////////////////
    if((timeVal==stPostionAttrib.startTime)
     &&(stPostionAttrib.head == POSTION_RECORD_HEAD)     
     &&(stPostionAttrib.valid == POSTION_RECORD_VALID)
     &&(stPostionAttrib.saveFlag == POSTION_RECORD_SAVE))
    {
        sFLASH_ReadBuffer(s_ucMsgFlashBuffer,FLASH_POSTION_SAVE_RECORD_ADDR,ONE_POSTION_STPE_DATA_BACK_LEN);
        spi_Delay_uS(100);
        sFLASH_EraseSector(FLASH_POSTION_SAVE_RECORD_ADDR);  
        spi_Delay_uS(100);
        sFLASH_WriteBuffer(s_ucMsgFlashBuffer,FLASH_POSTION_SAVE_RECORD_ADDR+FLASH_POSTION_SAVE_RECORD_BACK_ADDR,ONE_POSTION_STPE_DATA_BACK_LEN);
    }
    else
    {
        sFLASH_EraseSector(FLASH_POSTION_SAVE_RECORD_ADDR);
        spi_Delay_uS(100);
    }
    ///////////////////////////
    sFLASH_WriteBuffer((unsigned char *)&s_stPostionAttrib,FLASH_POSTION_SAVE_RECORD_ADDR,SAVE_POSTION_HEAD_INFO_LEN);    
}
/*************************************************************
** 函数名称: Position_SaveCurRecordToFlash
** 功能描述: 检查速度记录的flash区域 
** 入口参数: 
** 出口参数: 
** 返回参数: 
** 全局变量: 无
** 调用模块:
*************************************************************/
void Position_SaveCurPostionRecordToFlash(void)
{
    if(POSTION_RECORD_VALID==s_stPostionAttrib.valid)
    {
        sFLASH_ReadBuffer(s_ucMsgFlashBuffer,FLASH_POSTION_SAVE_RECORD_ADDR+READ_POSTION_DATA_START_LEN,REGISTER_POSITION_COLLECT_LEN);
        Register_Write(REGISTER_TYPE_POSITION,s_ucMsgFlashBuffer,ONE_POSTION_STPE_DATA_LEN,s_stPostionAttrib.startTime);//存FLASH
    }
    //////////////////////////
    Position_CurSaveHeadInfo();
}
/*************************************************************
** 函数名称: Position_CheckCurSaveFlash
** 功能描述: 检查速度记录的flash区域 
** 入口参数: 
** 出口参数: 
** 返回参数: 
** 全局变量: 无
** 调用模块:
*************************************************************/
void Position_CheckAndSavePostionRecordToFlash(void)
{
    /////////一个小时之内,不用保存///////////////////
    if(s_stPostionAttrib.startTime<=s_stPostionAttrib.curTimeVal&&s_stPostionAttrib.curTimeVal<s_stPostionAttrib.startTime+3600)return;
    //////////////////
    Position_SaveCurPostionRecordToFlash();
}
/*************************************************************
** 函数名称: Position_CheckCurSaveFlash
** 功能描述: 检查速度记录的flash区域 
** 入口参数: 
** 出口参数: 
** 返回参数: 
** 全局变量: 无
** 调用模块:
*************************************************************/
void Position_ReadAndCheckSaveDataInfo(void)
{
    unsigned long timeVal = 0;
    TIME_T stTime;        
    RTC_GetCurTime(&stTime);
    s_stPostionAttrib.curTimeVal = RTC_GetCounter();
    s_stPostionAttrib.checkTimeCnt = 0;
    s_stPostionAttrib.premin = stTime.min;
    ////////////////////////////
    sFLASH_ReadBuffer((unsigned char *)&s_stPostionAttrib,FLASH_POSTION_SAVE_RECORD_ADDR,SAVE_POSTION_HEAD_INFO_LEN);
    if(Public_ConvertBCDToTime(&stTime, s_stPostionAttrib.bcdTime))
    {
        timeVal = ConverseGmtime(&stTime);
    }
    if((timeVal != s_stPostionAttrib.startTime)
     ||(s_stPostionAttrib.head != POSTION_RECORD_HEAD)
     ||(s_stPostionAttrib.saveFlag != POSTION_RECORD_SAVE)
     ||((s_stPostionAttrib.valid != POSTION_RECORD_NO_VALID)&&(s_stPostionAttrib.valid != POSTION_RECORD_VALID)))
    {
        Position_CurSaveHeadInfo();
    }
    else
    {
        Position_CheckAndSavePostionRecordToFlash();
    }
}
/*******************************************************************************
* Function Name  : Position_CheckOneMin
* Description    : 
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void Position_SaveMinTime(void)
{
    u8 data[50];      //铁电缓存
    u8 buffer[10];      //时间缓存
    
    TIME_T time;
    u32    timecnt;
    ////////////////////////////////////////////////////////////////读取平均速度
    Position_MinuteSpeedPro();
    ////////////////////////////////////////////////////////////////////检查速度
    if(s_stPostionAttrib.minspeed == 0)
    { 
        return;
    }
    timecnt = s_stPostionAttrib.curTimeVal;
    ////////////////////////////////////////////////////////////////////时间减60
    timecnt -= 60;//所读每分钟平均速度为上一分钟的平均速度
    Gmtime(&time,timecnt);
    Public_ConvertTimeToBCDEx(time,buffer);    
    ///////////////////////////////////////////////////////////跨分刷新16min速度
    FRAM_BufferRead(data, 48, FRAM_STOP_15MINUTE_SPEED_ADDR);    
    memmove(data+3,data,45);
    data[0] = buffer[3];
    data[1] = buffer[4]; 
    data[2] = s_stPostionAttrib.minspeed;
    FRAM_BufferWrite(FRAM_STOP_15MINUTE_SPEED_ADDR,data,48);
    ////////////////////
    Position_CurSaveMinData();
}
/*******************************************************************************
* Function Name  : Position_TimeTask
* Description    : 位置信息采集事件处理,每1min调用一次 .
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void Position_ScanTask(void)
{
    TIME_T stTime;
    RTC_GetCurTime(&stTime);
    if(stTime.min != s_stPostionAttrib.premin)
    {
        Position_SaveMinTime();
        s_stPostionAttrib.premin = stTime.min;
        s_stPostionAttrib.secCnt = 4;
    }
    //////////////////
    s_stPostionAttrib.secCnt++;
    if(s_stPostionAttrib.secCnt<4)return;//3秒检查一次,防止校时太久没有变过来
    s_stPostionAttrib.secCnt = 0;
    Position_CheckAndSavePostionRecordToFlash();
}

/*************************************************************
** 函数名称: SpeedMonitor_CheckTimeChange
** 功能描述: 
** 入口参数: 
** 出口参数: 
** 返回参数: 
** 全局变量: 无
** 调用模块:
*************************************************************/
void Position_CheckTimeChange(void)
{
    u32 count;
    count = RTC_GetCounter();
    s_stPostionAttrib.checkTimeCnt++;
    if((s_stPostionAttrib.curTimeVal != count)||(s_stPostionAttrib.checkTimeCnt>6))
    {
        s_stPostionAttrib.checkTimeCnt = 0;
        s_stPostionAttrib.curTimeVal   = count;
        /////////////////
        LZM_PublicSetOnceTimer(&s_stPostionTimer[POSTION_TIMER_CHECK],PUBLICSECS(0.2),Position_ScanTask);
    }
}
/*************************************************************
** 函数名称: SpeedMonitor_TimeTask
** 功能描述: 速度监控的定时任务(1s调试一次)
** 入口参数: 
** 出口参数: 
** 返回参数: 
** 全局变量: 无
** 调用模块:
*************************************************************/
void Position_StartScanTask(void)
{
    LZM_PublicSetCycTimer(&s_stPostionTimer[POSTION_TIMER_TASK],PUBLICSECS(0.2),Position_CheckTimeChange);    
}
/*************************************************************
** 函数名称: Position_CheckFlash
** 功能描述: 检查位置记录的flash区域 
** 入口参数: 
** 出口参数: 
** 返回参数: 
** 全局变量: 无
** 调用模块:
*************************************************************/
void Position_CheckFlash(void)
{
    Position_ReadAndCheckSaveDataInfo();
    LZM_PublicSetOnceTimer(&s_stPostionTimer[POSTION_TIMER_TASK],LZM_AT_ONCE,Position_StartScanTask);        
}
/*******************************************************************************
* Function Name  : Position_ParamInitialize
* Description    : 位置信息采集事件处理,每1min调用一次 .
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void Position_ParamInitialize(void)
{
    LZM_PublicKillTimerAll(s_stPostionTimer,POSTION_TIMERS_MAX);
    memset((unsigned char *)&s_stPostionAttrib,0,sizeof(s_stPostionAttrib));
    SetTimerTask(TIME_TRACK_RECORD, 1);
    LZM_PublicSetOnceTimer(&s_stPostionTimer[POSTION_TIMER_TASK],LZM_AT_ONCE,Position_CheckFlash);    
}
/*******************************************************************************
* Function Name  : Position_TimeTask
* Description    : 位置信息采集事件处理,每1min调用一次 .
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
FunctionalState Position_TimeTask(void)
{
    LZM_PublicTimerHandler(s_stPostionTimer,POSTION_TIMERS_MAX);
    return ENABLE;
}
/*************************************************************
** 函数名称: Position_ReadBackPositionRecordData
** 功能描述: 从铁电里读取指定时间段速度记录
** 入口参数: 起始时间startTime
** 出口参数: pBuffer保存数据的首地址
** 返回参数: pBuffer字节长度
** 全局变量: 无
** 调用模块:
*************************************************************/
unsigned short Position_ReadBackPositionRecordData(unsigned char *pBuffer,unsigned long startTime)
{
    ST_POSTION_ATTRIB stPostionAttrib;  
    sFLASH_ReadBuffer((unsigned char *)&stPostionAttrib,FLASH_POSTION_SAVE_RECORD_ADDR+FLASH_POSTION_SAVE_RECORD_BACK_ADDR,SAVE_POSTION_HEAD_INFO_LEN);
    if((0 == stPostionAttrib.startTime)     
     ||(0xFFFFFFFF == stPostionAttrib.startTime)
     ||(stPostionAttrib.startTime!=startTime)
     ||(stPostionAttrib.head    != POSTION_RECORD_HEAD)
     ||(stPostionAttrib.saveFlag!= POSTION_RECORD_SAVE)
     ||(stPostionAttrib.valid   != POSTION_RECORD_VALID))return 0;
    sFLASH_ReadBuffer(pBuffer,FLASH_POSTION_SAVE_RECORD_ADDR+READ_POSTION_DATA_START_LEN+FLASH_POSTION_SAVE_RECORD_BACK_ADDR,REGISTER_POSITION_COLLECT_LEN);
    return REGISTER_POSITION_COLLECT_LEN;
}
/*************************************************************
** 函数名称: Position_ReadCurPositionRecordData
** 功能描述: 从铁电里读取指定时间段速度记录
** 入口参数: 起始时间StartTime,结束时间EndTime
** 出口参数: pBuffer保存数据的首地址
** 返回参数: pBuffer字节长度
** 全局变量: 无
** 调用模块:
*************************************************************/
unsigned short Position_ReadCurPositionRecordData(unsigned char *pBuffer,TIME_T StartTime,TIME_T EndTime)
{
    unsigned long startVal,endVal;  
    if(0 == s_stPostionAttrib.startTime||POSTION_RECORD_VALID != s_stPostionAttrib.valid)return 0;
    startVal = ConverseGmtime(&StartTime);
    endVal = ConverseGmtime(&EndTime);
    if(0==Public_CheckTimeIsInRange(s_stPostionAttrib.startTime,startVal,endVal))return 0;//不在范围内
    sFLASH_ReadBuffer(pBuffer,FLASH_POSTION_SAVE_RECORD_ADDR+READ_POSTION_DATA_START_LEN,REGISTER_POSITION_COLLECT_LEN);
    return REGISTER_POSITION_COLLECT_LEN;
}

/*************************************************************
** 函数名称: Position_ReadPositionRecordData
** 功能描述: 读取指定时间段、指定最大数据块速度记录数据
** 入口参数: 起始时间StartTime,结束时间EndTime,MaxBlock指定最大数据块
** 出口参数: pBuffer保存数据的首地址
** 返回参数: pBuffer字节长度
** 全局变量: 无
** 调用模块:
*************************************************************/
unsigned short Position_ReadPositionRecordData(u8 *pBuffer, TIME_T StartTime, TIME_T EndTime, u16 MaxBlock)
{
    unsigned char *p;
    unsigned short len;
    unsigned short block;
    len=0;
    p=pBuffer;
    block = MaxBlock;
    len = Position_ReadCurPositionRecordData(p,StartTime,EndTime);
    if(len)
    {
        p += len;
        if(block)block--;
    }    
    /////////////////
    if(block)
    len += Register_Read(REGISTER_TYPE_POSITION,p,StartTime,EndTime,block);
    return len;
}
/*******************************************************************************
 *                             end of module
 *******************************************************************************/



     
