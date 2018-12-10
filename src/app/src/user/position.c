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
#define POS_FRAM_15MIN   FRAM_STOP_15MINUTE_SPEED_ADDR//16����ͣ��ǰ�ٶ�
#define POS_FRAM_STOP    FRAM_STOP_15MIN_TIME_ADDR//15����ͣ��ʱ��

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
    unsigned long startTime;//��ʼʱ��
    unsigned short head;    //
    unsigned char saveFlag; //�����־
    unsigned char valid;//��Ч��־
    unsigned char bak[4];
    unsigned char bcdTime[6];
    //////////ǰ�����λ�ò�Ҫ����޸�,���浽flash��/////////////
    //////////���±���λ�ÿ�������////////////
    unsigned char minspeed; //ƽ���ٶ�
    unsigned char premin; //����
    unsigned char checkTimeCnt;
    unsigned char secCnt; //����
    unsigned long curTimeVal;//��ǰʱ��
}ST_POSTION_ATTRIB;

static ST_POSTION_ATTRIB s_stPostionAttrib;

#define SAVE_POSTION_HEAD_INFO_LEN      18//18��ͷ��Ϣ(������¼��BCDʱ�俪ͷ)
#define READ_POSTION_DATA_START_LEN     12//����¼��ʵ�ʿ�ʼλ��
#define ONE_MIN_SAVE_POSTION_DATA_LEN   11//1����λ�ü�¼�ĳ���
////////////////////////////
#define FLASH_POSTION_SAVE_RECORD_ADDR         (FLASH_POSTION_RECORD_START_SECTOR*FLASH_ONE_SECTOR_BYTES)//�ݴ��flash��ַ
#define ONE_POSTION_STPE_DATA_LEN              (REGISTER_POSITION_STEP_LEN-5)//4���ֽڵ�ʱ��+1���ֽڵļ���,ÿСʱ��λ�ü�¼���ݳ���
#define FLASH_POSTION_SAVE_RECORD_BACK_ADDR    (2000)   //������Ե�ַ 
#define ONE_POSTION_STPE_DATA_BACK_LEN         (ONE_POSTION_STPE_DATA_LEN+SAVE_POSTION_HEAD_INFO_LEN)//�������ݵ��ܳ���
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
** ��������: Position_MinuteSpeedPro
** ��������: ����ƽ���ٶ�
** ��ڲ���: 
** ���ڲ���: 
** ���ز���: 
** ȫ�ֱ���: ��
** ����ģ��:
*************************************************************/
void Position_MinuteSpeedPro(void)
{
    if(0 == SpeedMonitor_GetCurSpeedType())
    {
        s_stPostionAttrib.minspeed = Pulse_GetMinuteSpeed();//�����ٶ�
    }
    else
    {
        s_stPostionAttrib.minspeed = MileMeter_GetMinuteSpeed();//GPS�ٶ�
    }
    ////////////
}

/*************************************************************
** ��������: Position_CurSaveFlash
** ��������: ����ٶȼ�¼��flash���� 
** ��ڲ���: 
** ���ڲ���: 
** ���ز���: 
** ȫ�ֱ���: ��
** ����ģ��:
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
    memset(buffer,0xff,ONE_MIN_SAVE_POSTION_DATA_LEN);//��Чλ��
    buffer[0] = 0x7F;
    buffer[4] = 0x7F;
    if(Io_ReadStatusBit(STATUS_BIT_NAVIGATION))
    {
        Public_GetCurPositionInfoDataBlock(buffer);//��Чλ��
    }
    buffer[10] = s_stPostionAttrib.minspeed;//ƽ���ٶ�
    ///////////////////
    sFLASH_WriteBuffer(buffer,FLASH_POSTION_SAVE_RECORD_ADDR+addr,ONE_MIN_SAVE_POSTION_DATA_LEN); 
    ////////У��д�ĶԲ���/////////////////////
    sFLASH_ReadBuffer(data,FLASH_POSTION_SAVE_RECORD_ADDR+addr,ONE_MIN_SAVE_POSTION_DATA_LEN);    
    if(Public_CheckArrayValIsEqual(data, buffer, ONE_MIN_SAVE_POSTION_DATA_LEN))//����д�Ĳ�һ��,����д
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
** ��������: Position_CurSaveFlash
** ��������: ����ٶȼ�¼��flash���� 
** ��ڲ���: 
** ���ڲ���: 
** ���ز���: 
** ȫ�ֱ���: ��
** ����ģ��:
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
    /////////////////����ǰһСʱ����/////////////////////////
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
** ��������: Position_SaveCurRecordToFlash
** ��������: ����ٶȼ�¼��flash���� 
** ��ڲ���: 
** ���ڲ���: 
** ���ز���: 
** ȫ�ֱ���: ��
** ����ģ��:
*************************************************************/
void Position_SaveCurPostionRecordToFlash(void)
{
    if(POSTION_RECORD_VALID==s_stPostionAttrib.valid)
    {
        sFLASH_ReadBuffer(s_ucMsgFlashBuffer,FLASH_POSTION_SAVE_RECORD_ADDR+READ_POSTION_DATA_START_LEN,REGISTER_POSITION_COLLECT_LEN);
        Register_Write(REGISTER_TYPE_POSITION,s_ucMsgFlashBuffer,ONE_POSTION_STPE_DATA_LEN,s_stPostionAttrib.startTime);//��FLASH
    }
    //////////////////////////
    Position_CurSaveHeadInfo();
}
/*************************************************************
** ��������: Position_CheckCurSaveFlash
** ��������: ����ٶȼ�¼��flash���� 
** ��ڲ���: 
** ���ڲ���: 
** ���ز���: 
** ȫ�ֱ���: ��
** ����ģ��:
*************************************************************/
void Position_CheckAndSavePostionRecordToFlash(void)
{
    /////////һ��Сʱ֮��,���ñ���///////////////////
    if(s_stPostionAttrib.startTime<=s_stPostionAttrib.curTimeVal&&s_stPostionAttrib.curTimeVal<s_stPostionAttrib.startTime+3600)return;
    //////////////////
    Position_SaveCurPostionRecordToFlash();
}
/*************************************************************
** ��������: Position_CheckCurSaveFlash
** ��������: ����ٶȼ�¼��flash���� 
** ��ڲ���: 
** ���ڲ���: 
** ���ز���: 
** ȫ�ֱ���: ��
** ����ģ��:
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
    u8 data[50];      //���绺��
    u8 buffer[10];      //ʱ�仺��
    
    TIME_T time;
    u32    timecnt;
    ////////////////////////////////////////////////////////////////��ȡƽ���ٶ�
    Position_MinuteSpeedPro();
    ////////////////////////////////////////////////////////////////////����ٶ�
    if(s_stPostionAttrib.minspeed == 0)
    { 
        return;
    }
    timecnt = s_stPostionAttrib.curTimeVal;
    ////////////////////////////////////////////////////////////////////ʱ���60
    timecnt -= 60;//����ÿ����ƽ���ٶ�Ϊ��һ���ӵ�ƽ���ٶ�
    Gmtime(&time,timecnt);
    Public_ConvertTimeToBCDEx(time,buffer);    
    ///////////////////////////////////////////////////////////���ˢ��16min�ٶ�
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
* Description    : λ����Ϣ�ɼ��¼�����,ÿ1min����һ�� .
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
    if(s_stPostionAttrib.secCnt<4)return;//3����һ��,��ֹУʱ̫��û�б����
    s_stPostionAttrib.secCnt = 0;
    Position_CheckAndSavePostionRecordToFlash();
}

/*************************************************************
** ��������: SpeedMonitor_CheckTimeChange
** ��������: 
** ��ڲ���: 
** ���ڲ���: 
** ���ز���: 
** ȫ�ֱ���: ��
** ����ģ��:
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
** ��������: SpeedMonitor_TimeTask
** ��������: �ٶȼ�صĶ�ʱ����(1s����һ��)
** ��ڲ���: 
** ���ڲ���: 
** ���ز���: 
** ȫ�ֱ���: ��
** ����ģ��:
*************************************************************/
void Position_StartScanTask(void)
{
    LZM_PublicSetCycTimer(&s_stPostionTimer[POSTION_TIMER_TASK],PUBLICSECS(0.2),Position_CheckTimeChange);    
}
/*************************************************************
** ��������: Position_CheckFlash
** ��������: ���λ�ü�¼��flash���� 
** ��ڲ���: 
** ���ڲ���: 
** ���ز���: 
** ȫ�ֱ���: ��
** ����ģ��:
*************************************************************/
void Position_CheckFlash(void)
{
    Position_ReadAndCheckSaveDataInfo();
    LZM_PublicSetOnceTimer(&s_stPostionTimer[POSTION_TIMER_TASK],LZM_AT_ONCE,Position_StartScanTask);        
}
/*******************************************************************************
* Function Name  : Position_ParamInitialize
* Description    : λ����Ϣ�ɼ��¼�����,ÿ1min����һ�� .
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
* Description    : λ����Ϣ�ɼ��¼�����,ÿ1min����һ�� .
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
** ��������: Position_ReadBackPositionRecordData
** ��������: ���������ȡָ��ʱ����ٶȼ�¼
** ��ڲ���: ��ʼʱ��startTime
** ���ڲ���: pBuffer�������ݵ��׵�ַ
** ���ز���: pBuffer�ֽڳ���
** ȫ�ֱ���: ��
** ����ģ��:
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
** ��������: Position_ReadCurPositionRecordData
** ��������: ���������ȡָ��ʱ����ٶȼ�¼
** ��ڲ���: ��ʼʱ��StartTime,����ʱ��EndTime
** ���ڲ���: pBuffer�������ݵ��׵�ַ
** ���ز���: pBuffer�ֽڳ���
** ȫ�ֱ���: ��
** ����ģ��:
*************************************************************/
unsigned short Position_ReadCurPositionRecordData(unsigned char *pBuffer,TIME_T StartTime,TIME_T EndTime)
{
    unsigned long startVal,endVal;  
    if(0 == s_stPostionAttrib.startTime||POSTION_RECORD_VALID != s_stPostionAttrib.valid)return 0;
    startVal = ConverseGmtime(&StartTime);
    endVal = ConverseGmtime(&EndTime);
    if(0==Public_CheckTimeIsInRange(s_stPostionAttrib.startTime,startVal,endVal))return 0;//���ڷ�Χ��
    sFLASH_ReadBuffer(pBuffer,FLASH_POSTION_SAVE_RECORD_ADDR+READ_POSTION_DATA_START_LEN,REGISTER_POSITION_COLLECT_LEN);
    return REGISTER_POSITION_COLLECT_LEN;
}

/*************************************************************
** ��������: Position_ReadPositionRecordData
** ��������: ��ȡָ��ʱ��Ρ�ָ��������ݿ��ٶȼ�¼����
** ��ڲ���: ��ʼʱ��StartTime,����ʱ��EndTime,MaxBlockָ��������ݿ�
** ���ڲ���: pBuffer�������ݵ��׵�ַ
** ���ز���: pBuffer�ֽڳ���
** ȫ�ֱ���: ��
** ����ģ��:
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



     
