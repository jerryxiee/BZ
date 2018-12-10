/*
********************************************************************************
*
* Filename      : speedlog.h
* Version       : V1.00
* Programmer(s) : miaoyahan
* Time          : 20150128
********************************************************************************
*/

/*
********************************************************************************
*                               INCLUDES
********************************************************************************
*/
#include "speedlog.h"

/*
********************************************************************************
*                             LOCAL DEFINES
********************************************************************************
*/

/*
********************************************************************************
*                         LOCAL DATA TYPES
********************************************************************************
*/



/*
********************************************************************************
*                          CONST VARIABLES
********************************************************************************
*/


/*
********************************************************************************
*                          LOCAL VARIABLES
********************************************************************************
*/
static unsigned long LogSpd_TimeVal=0;//铁电数据 1状态+6BCD时间
static u8  LogSpd_Status = 0x00;
static u8  LogSpd_BufCnt;//缓存计数器
//static u8  LogSpd_Frm[10];//铁电数据 1状态+6BCD时间
static u8  LogSpd_TtsDly;//状态日志播报延时
static u8  LogSpd_TtsNum;//状态日志播报次数
static u8  LogSpd_Gps;//GPS速度
static u8  LogSpd_Pulse;//脉冲速度
static u8  LogSpd_ChkFlg = 0xff;//速度状态日志检查标志  0需要判断状态  1不需要判断状态
static u16 LogSpd_CntOk;//速度正常计数器
static u16 LogSpd_CntErr;//速度异常计数器
static u8  LogSpd_Buf[REGISTER_SPEED_STATUS_STEP_LEN];//脉冲速度

u8  h_TTsFlg;     //速度异常语音播报标志

/*
********************************************************************************
*                          GLOBAL VARIABLES
********************************************************************************
*/


/*
********************************************************************************
*                           FUNCTIONS EXTERN
********************************************************************************
*/

/*
********************************************************************************
*                              FUNCTIONS
********************************************************************************
*/
/**
  * @brief  返回当前速度状态
  * @param  None
  * @retval 返回状态
  */
u8 GetSpeedLogStatus(void)
{
    u8 state = 0;
#ifdef  PRINT_SPEED_OK//打印时调用该接口，出货强制返回0，即速度正常，需要屏蔽这段代码
#else
    if(LogSpd_Status == 2)//异常
    {
        state = 1;
    }
#endif
    return state;
}
/**
  * @brief  初始化主要读取铁电数据
  * @param  None
  * @retval 返回结果
  */
void SpeedLog_RdFlg(void)
{
    unsigned long cuTimeVal;
    ////////////////////
    if(0xff == LogSpd_ChkFlg)//是否需要读铁电
    {
        u8 buf[10];
        TIME_T stTime;
        if(FRAM_BufferRead(buf,7,FRAM_SPEED_STATUS_ADDR))
        {
            LogSpd_Status =buf[0];
            Public_ConvertBCDToTime(&stTime, &buf[1]);
            stTime.hour = 0;
            stTime.min  = 0;
            stTime.sec  = 0;
            LogSpd_TimeVal= ConverseGmtime(&stTime);//当前的秒数
        }
    }
    //////////////////////
    cuTimeVal = RTC_GetCounter();//提取当前
    ////////////////////////////
    if((LogSpd_TimeVal<=cuTimeVal)&&(cuTimeVal<LogSpd_TimeVal+DAY_SECOND))//判断天
    {
        LogSpd_ChkFlg = 1;//当天已判断速度状态
    } 
    else
    {
        LogSpd_ChkFlg = 0;//需要判断速度状态
    }
    
    if((LogSpd_TtsNum)&&(2==LogSpd_Status))//需要播报TTS且速度异常??之前的速度正常也会报语音???
    {
        if(++LogSpd_TtsDly > 10)//10秒延时播报
        {
            LogSpd_TtsDly = 0;
            if(LogSpd_TtsNum++ > 3)//播报三次
            {
                LogSpd_TtsNum = 0;
                LogSpd_TtsDly = 0;//停止播报
                return;
            }
            Public_PlayTTSVoiceAlarmStr("请注意，车辆速度异常");
        }
    }
}
/**
  * @brief  检查GPS速度是否到达判断条件
  * @param  None
  * @retval 返回结果 0无需判断   1需要判断
  */
u8 SpeedLog_ChkGps(void)
{
    LogSpd_Gps   = Gps_ReadSpeed();//GPS速度
    LogSpd_Pulse = Pulse_GetSecondSpeed();//脉冲速度

    if(Io_ReadStatusBit(STATUS_BIT_NAVIGATION)&&(LogSpd_Gps >= 40))//定位且速度>=40
    {
        return 1;//需要判断
    }
    return 0;//无需判断
}
/**
  * @brief  检查速度是否异常
  * @param  None
  * @retval 返回结果 0速度正常   1速度异常
  */
u8 SpeedLog_ChkFalt(void)
{
    u16 speed;//读取的差值速度
    
	if(LogSpd_Pulse >= LogSpd_Gps)
	{
	    speed = LogSpd_Pulse - LogSpd_Gps;
	}
	else
	{  
	    speed = LogSpd_Gps - LogSpd_Pulse;
	}

	speed *= 100;//放大100倍
	speed  = speed/LogSpd_Gps;//误差率

	if((speed > 11)&&(LogSpd_Pulse > 0))//dxl,2016.6.29增加大于0的限制，避免没有接脉冲线时也会报车辆速度异常
	{
        return 1;//异常
	}

	return 0;//正常
}
/**
  * @brief  记录速度异常(1秒调用一次)
  * @param  None
  * @retval None
  */
FunctionalState SpeedLog_TimeTask(void)
{
    ////////////////////////////////////////////////////////////////////读取标志
    SpeedLog_RdFlg();

    ////////////////////////////////////////////////////////////////////条件检查
    if(LogSpd_ChkFlg == 1)
    {
        return ENABLE;//速度状态已判断
    }
    if(SpeedLog_ChkGps() == 0)
    {
        LogSpd_TtsDly = 0;
        LogSpd_TtsNum = 0;
        LogSpd_CntOk  = 0;
        LogSpd_CntErr = 0;
        LogSpd_BufCnt = 0;
        return ENABLE;//未达到判断条件
    }
    ////////////////////////////////////////////////////////////////速度异常检查
    if(SpeedLog_ChkFalt() == 0)
    {
        LogSpd_CntOk++;//速度正常
        LogSpd_CntErr=0;
    }
    else
    {
        LogSpd_CntErr++;//速度异常
        LogSpd_CntOk =0;  
    }
    ////////////////////////////////////////////////////////////////速度异常保存
    if((LogSpd_CntOk==1)||(LogSpd_CntErr==1))
    {
        LogSpd_BufCnt=13;
        Public_ConvertNowTimeToBCDEx(LogSpd_Buf+1);//日志开始时间
    }  

    if(((LogSpd_CntOk<=60)&&(LogSpd_CntOk))||((LogSpd_CntErr<=60)&&(LogSpd_CntErr)))//只记录第一分钟
    {
        LogSpd_Buf[LogSpd_BufCnt++] = LogSpd_Pulse;
        LogSpd_Buf[LogSpd_BufCnt++] = LogSpd_Gps;
    }
    else if((LogSpd_CntOk >= 300)||(LogSpd_CntErr >= 300))//持续5分钟
    {

        if(LogSpd_CntErr == 0)
        {
            LogSpd_Buf[0] = 1;//速度正常 
        }
        else
        {
            LogSpd_Buf[0] = 2;//速度异常
        }
        
        LogSpd_Status =LogSpd_Buf[0];
        //////////
        Public_ConvertNowTimeToBCDEx(LogSpd_Buf+7);//日志结束时间   
        ///////////////////////////
        Register_Write(REGISTER_TYPE_SPEED_STATUS,//日志保存FLASH
                        LogSpd_Buf,
                        REGISTER_SPEED_STATUS_STEP_LEN-5,
                        RTC_GetCounter());
        
        FRAM_BufferWrite(FRAM_SPEED_STATUS_ADDR,LogSpd_Buf,7);//保存状态、开始时间
        /////////////////////////////
        TIME_T stTime;
        RTC_GetCurTime(&stTime);
        stTime.hour = 0;
        stTime.min  = 0;
        stTime.sec  = 0;
        LogSpd_TimeVal= ConverseGmtime(&stTime);

        LogSpd_CntOk  = 0;
        LogSpd_CntErr = 0;
        LogSpd_BufCnt = 0;
        
        LogSpd_ChkFlg = 1;
        LogSpd_TtsNum = 1;
        LogSpd_TtsDly = 10;        
    }
    return ENABLE;
}


