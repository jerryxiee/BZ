/*******************************************************************************
 * File Name:			log_power.c 
 * Function Describe:	
 * Relate Module:		判断、存储、通、断电记录
 * Writer:				Joneming
 * Date:				2015-04-01
 * ReWriter:			
 * Date:
 *******************************************************************************/
//////////////////////
#include "include.h" 

extern u8	CarVoltageType;
//电源记录偏移宏定义
#define RECORD_PWER_LENGTH		13	//	7字节记录长度，6字节预留长度
//外部主电的欠压经验值
//（如果外部供电12V对应11。5，如果外部供电24V，对应21.5V）
#define MAIN_PW_UNDER_12V		11000	//11.5*1000mV		
#define MAIN_PW_UNDER_24V		21000	//21.5*1000mV		
#define MAIN_PW_OFF_VAL         6000	//6000mV
#define OFFSET_VOL_CONST        300
///////////////////////
#define MAIN_PW_RUN             1		//1：通电
#define MAIN_PW_STOP            2		//2：断电	
///////////////////////////
typedef struct
{
    unsigned long powerVal;
    unsigned long curTimeVal;          //当前时间
    unsigned long saveTimeVal;          //当前时间
    unsigned long framTimeVal;          //开机铁电的时间
    ///////////////////////////// ////////////////////////////////////////////
    unsigned char saveframFlag;            //需要保存铁电记录
    unsigned char firstsaveFlag;           //首次上电记录 
    unsigned char cursaveflag;             //需要保存
    unsigned char statusflag;               //状态
    unsigned char checkLowCnt;              //次数 
    unsigned char checkCnt;                 //
    unsigned char timeCnt;                  //
    unsigned char saveTimeCnt;                  //
}STPOWER_ATTRIB;//模块属性结构体

static STPOWER_ATTRIB s_stPowerAttrib;
enum 
{
    POWER_TIMER_TASK,                       //					//
    POWER_TIMERS_MAX
}STPOWER_TIME;
static LZM_TIMER s_stPowerTimer[POWER_TIMERS_MAX];

/*******************************************************************************
* Function Name  : Power_ReadFramRecord
* Description    : 
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void Power_SaveRecordToflash(unsigned long timeval,unsigned char status)
{
    unsigned char buffer[20];
    TIME_T stTime;
    Gmtime(&stTime,timeval);
    Public_ConvertTimeToBCDEx(stTime, buffer);
    buffer[6] = status;
    Register_Write( REGISTER_TYPE_POWER,buffer,RECORD_PWER_LENGTH,timeval);
}
/*******************************************************************************
* Function Name  : Position_TimeTask
* Description    : 
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void Power_CheckRecordToSaveFlash(void)
{
    if(0==Register_GetInitFlag(REGISTER_TYPE_POWER))return;
    //////////////////
    if(s_stPowerAttrib.saveframFlag)
    {
        s_stPowerAttrib.saveframFlag = 0;
        Power_SaveRecordToflash(s_stPowerAttrib.framTimeVal,MAIN_PW_STOP);
    }
    //////////
    if(s_stPowerAttrib.firstsaveFlag)//
    {
        s_stPowerAttrib.firstsaveFlag = 0;
        Power_SaveRecordToflash(s_stPowerAttrib.saveTimeVal,MAIN_PW_RUN);
    }
    /////////////////////
    if(1==s_stPowerAttrib.cursaveflag)//保存当前的
    {
        s_stPowerAttrib.cursaveflag =0;
        Power_SaveRecordToflash(s_stPowerAttrib.curTimeVal,s_stPowerAttrib.statusflag);
    }
}
/*******************************************************************************
* Function Name  : Power_ReadFramRecord
* Description    : 
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void Power_ReadFramRecord(void)
{
    unsigned char buffer[6];
    if(FRAM_BufferRead(buffer,5,FRAM_POWER_LOG_TIME))
    {
        if(MAIN_PW_RUN==buffer[4])//没有备电的情况,才需要保存铁电断电情况
        {
            s_stPowerAttrib.framTimeVal = Public_ConvertBufferToLong(buffer);
            s_stPowerAttrib.saveframFlag = 1;
        }
    }
    ////////////////
    s_stPowerAttrib.statusflag = MAIN_PW_RUN;
    /////////////////
    s_stPowerAttrib.saveTimeVal = RTC_GetCounter();
    s_stPowerAttrib.firstsaveFlag    = 1;
    ///////////////////
}
/*******************************************************************************
* Function Name  : Power_SaveCurTimeFram
* Description    : 
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void Power_SaveCurTimeFram(void)
{
    unsigned char buffer[6];
    Public_ConvertLongToBuffer(RTC_GetCounter(), buffer);
    buffer[4] = s_stPowerAttrib.statusflag;
    ////////////////
    FRAM_BufferWrite(FRAM_POWER_LOG_TIME,buffer,5);
}

/*******************************************************************************
* Function Name  : Position_TimeTask
* Description    : 位置信息采集事件处理,每1min调用一次 .
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void Power_ScanTask(void)
{
    unsigned long adcVal;
    adcVal=Adc_MainPower_Readl();
    ///////////////////////////////
    if(adcVal<MAIN_PW_OFF_VAL)
    {
        s_stPowerAttrib.checkCnt = 0;
        if(s_stPowerAttrib.checkLowCnt<5)
        {
            s_stPowerAttrib.checkLowCnt++;
        }
        else
        if(s_stPowerAttrib.checkLowCnt==5)
        {
            s_stPowerAttrib.checkLowCnt = 10;
            if(MAIN_PW_RUN==s_stPowerAttrib.statusflag)
            {
                s_stPowerAttrib.cursaveflag = 1;
                s_stPowerAttrib.statusflag  = MAIN_PW_STOP;
                s_stPowerAttrib.curTimeVal  = RTC_GetCounter();
                s_stPowerAttrib.timeCnt     = 5;
                s_stPowerAttrib.saveTimeCnt = 3;
            }
        }
    }
    else
    if(adcVal>s_stPowerAttrib.powerVal)
    {
        s_stPowerAttrib.checkLowCnt = 0;
        if(s_stPowerAttrib.checkCnt<5)
        {
            s_stPowerAttrib.checkCnt++;
        }
        else
        if(s_stPowerAttrib.checkCnt==5)
        {
            s_stPowerAttrib.checkCnt = 10;
            if(MAIN_PW_STOP==s_stPowerAttrib.statusflag)
            {
                s_stPowerAttrib.cursaveflag= 1;
                s_stPowerAttrib.statusflag = MAIN_PW_RUN;
                s_stPowerAttrib.curTimeVal = RTC_GetCounter();
                s_stPowerAttrib.timeCnt    = 5;
                s_stPowerAttrib.saveTimeCnt= 3;
            }
        }
    }
    ///////////////////////////////
    s_stPowerAttrib.timeCnt++;
    if(s_stPowerAttrib.timeCnt<5)return;
    s_stPowerAttrib.timeCnt =0;     
    //////////////////////////////
    Power_CheckRecordToSaveFlash();
    //////////////////////////
    s_stPowerAttrib.saveTimeCnt++;
    if(s_stPowerAttrib.saveTimeCnt<3)return;//3秒
    s_stPowerAttrib.saveTimeCnt = 0;
    /////////////////
    Power_SaveCurTimeFram();//暂存当前状态,防止没有备电时检测不到断电的情况
}
/*******************************************************************************
* Function Name  : Position_TimeTask
* Description    : 位置信息采集事件处理,每1min调用一次 .
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void Power_StartScanTask(void)
{
    unsigned long adcVal;
    /////////////////
    if(1==CarVoltageType)//车辆电平类型:0为12V,1为24V
    {
        s_stPowerAttrib.powerVal = MAIN_PW_UNDER_24V+OFFSET_VOL_CONST;
    }
    else
    {
        s_stPowerAttrib.powerVal = MAIN_PW_UNDER_12V+OFFSET_VOL_CONST;
    }
    /////////////////
    adcVal=Adc_MainPower_Readl();
    ///////////////////////////////
    if(adcVal<MAIN_PW_OFF_VAL)//开机电压低,只是在使用备电时,复位了,不应该按通电保存
    {
        s_stPowerAttrib.powerVal      = MAIN_PW_UNDER_12V+OFFSET_VOL_CONST;
        s_stPowerAttrib.firstsaveFlag = 0;
        s_stPowerAttrib.statusflag    = MAIN_PW_STOP;//当前处于的状态 
        s_stPowerAttrib.checkLowCnt   = 10;
    }
    else//正常状态
    {
        s_stPowerAttrib.statusflag    = MAIN_PW_RUN;//当前处于的状态
        s_stPowerAttrib.checkCnt      = 10;
    }
    /////让系统尽快检查Power_CheckRecordToSaveFlash////////////////
    s_stPowerAttrib.timeCnt    = 5;
    s_stPowerAttrib.saveTimeCnt= 3;
    ///////////////
    LZM_PublicSetCycTimer(&s_stPowerTimer[POWER_TIMER_TASK],PUBLICSECS(0.2),Power_ScanTask);
}

/*******************************************************************************
* Function Name  : Power_ParamInitialize
* Description    : 通断电检查初始化
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void Power_ParamInitialize(void)
{
    LZM_PublicKillTimerAll(s_stPowerTimer,POWER_TIMERS_MAX);
    memset((unsigned char *)&s_stPowerAttrib,0,sizeof(s_stPowerAttrib));
    SetTimerTask(TIME_POWER_ON_LOG, 1);
    Power_ReadFramRecord();
    LZM_PublicSetOnceTimer(&s_stPowerTimer[POWER_TIMER_TASK],PUBLICSECS(1),Power_StartScanTask);
}

/*******************************************************************************
* Function Name  : Power_GetLowPowerFlag
* Description    : 
* Input          : None
* Output         : None
* Return         : 断电为2,通电为1,0未知
*******************************************************************************/
unsigned char Power_GetLowPowerFlag(void)
{
    return s_stPowerAttrib.statusflag;
}
/*************************************************************
** 函数名称: CheckMainPowerRun_TimeTask
** 功能描述: 实时检测，记录断电函数
** 入口参数: 
** 出口参数: 
** 返回参数: 
** 全局变量: 无
** 调用模块:
*************************************************************/
FunctionalState CheckMainPowerRun_TimeTask(void)
{
    LZM_PublicTimerHandler(s_stPowerTimer,POWER_TIMERS_MAX);
    return	ENABLE;
}

/*******************************************************************************
 *                            End of Module
 *******************************************************************************/

