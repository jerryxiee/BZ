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
static unsigned long LogSpd_TimeVal=0;//�������� 1״̬+6BCDʱ��
static u8  LogSpd_Status = 0x00;
static u8  LogSpd_BufCnt;//���������
//static u8  LogSpd_Frm[10];//�������� 1״̬+6BCDʱ��
static u8  LogSpd_TtsDly;//״̬��־������ʱ
static u8  LogSpd_TtsNum;//״̬��־��������
static u8  LogSpd_Gps;//GPS�ٶ�
static u8  LogSpd_Pulse;//�����ٶ�
static u8  LogSpd_ChkFlg = 0xff;//�ٶ�״̬��־����־  0��Ҫ�ж�״̬  1����Ҫ�ж�״̬
static u16 LogSpd_CntOk;//�ٶ�����������
static u16 LogSpd_CntErr;//�ٶ��쳣������
static u8  LogSpd_Buf[REGISTER_SPEED_STATUS_STEP_LEN];//�����ٶ�

u8  h_TTsFlg;     //�ٶ��쳣����������־

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
  * @brief  ���ص�ǰ�ٶ�״̬
  * @param  None
  * @retval ����״̬
  */
u8 GetSpeedLogStatus(void)
{
    u8 state = 0;
#ifdef  PRINT_SPEED_OK//��ӡʱ���øýӿڣ�����ǿ�Ʒ���0�����ٶ���������Ҫ������δ���
#else
    if(LogSpd_Status == 2)//�쳣
    {
        state = 1;
    }
#endif
    return state;
}
/**
  * @brief  ��ʼ����Ҫ��ȡ��������
  * @param  None
  * @retval ���ؽ��
  */
void SpeedLog_RdFlg(void)
{
    unsigned long cuTimeVal;
    ////////////////////
    if(0xff == LogSpd_ChkFlg)//�Ƿ���Ҫ������
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
            LogSpd_TimeVal= ConverseGmtime(&stTime);//��ǰ������
        }
    }
    //////////////////////
    cuTimeVal = RTC_GetCounter();//��ȡ��ǰ
    ////////////////////////////
    if((LogSpd_TimeVal<=cuTimeVal)&&(cuTimeVal<LogSpd_TimeVal+DAY_SECOND))//�ж���
    {
        LogSpd_ChkFlg = 1;//�������ж��ٶ�״̬
    } 
    else
    {
        LogSpd_ChkFlg = 0;//��Ҫ�ж��ٶ�״̬
    }
    
    if((LogSpd_TtsNum)&&(2==LogSpd_Status))//��Ҫ����TTS���ٶ��쳣??֮ǰ���ٶ�����Ҳ�ᱨ����???
    {
        if(++LogSpd_TtsDly > 10)//10����ʱ����
        {
            LogSpd_TtsDly = 0;
            if(LogSpd_TtsNum++ > 3)//��������
            {
                LogSpd_TtsNum = 0;
                LogSpd_TtsDly = 0;//ֹͣ����
                return;
            }
            Public_PlayTTSVoiceAlarmStr("��ע�⣬�����ٶ��쳣");
        }
    }
}
/**
  * @brief  ���GPS�ٶ��Ƿ񵽴��ж�����
  * @param  None
  * @retval ���ؽ�� 0�����ж�   1��Ҫ�ж�
  */
u8 SpeedLog_ChkGps(void)
{
    LogSpd_Gps   = Gps_ReadSpeed();//GPS�ٶ�
    LogSpd_Pulse = Pulse_GetSecondSpeed();//�����ٶ�

    if(Io_ReadStatusBit(STATUS_BIT_NAVIGATION)&&(LogSpd_Gps >= 40))//��λ���ٶ�>=40
    {
        return 1;//��Ҫ�ж�
    }
    return 0;//�����ж�
}
/**
  * @brief  ����ٶ��Ƿ��쳣
  * @param  None
  * @retval ���ؽ�� 0�ٶ�����   1�ٶ��쳣
  */
u8 SpeedLog_ChkFalt(void)
{
    u16 speed;//��ȡ�Ĳ�ֵ�ٶ�
    
	if(LogSpd_Pulse >= LogSpd_Gps)
	{
	    speed = LogSpd_Pulse - LogSpd_Gps;
	}
	else
	{  
	    speed = LogSpd_Gps - LogSpd_Pulse;
	}

	speed *= 100;//�Ŵ�100��
	speed  = speed/LogSpd_Gps;//�����

	if((speed > 11)&&(LogSpd_Pulse > 0))//dxl,2016.6.29���Ӵ���0�����ƣ�����û�н�������ʱҲ�ᱨ�����ٶ��쳣
	{
        return 1;//�쳣
	}

	return 0;//����
}
/**
  * @brief  ��¼�ٶ��쳣(1�����һ��)
  * @param  None
  * @retval None
  */
FunctionalState SpeedLog_TimeTask(void)
{
    ////////////////////////////////////////////////////////////////////��ȡ��־
    SpeedLog_RdFlg();

    ////////////////////////////////////////////////////////////////////�������
    if(LogSpd_ChkFlg == 1)
    {
        return ENABLE;//�ٶ�״̬���ж�
    }
    if(SpeedLog_ChkGps() == 0)
    {
        LogSpd_TtsDly = 0;
        LogSpd_TtsNum = 0;
        LogSpd_CntOk  = 0;
        LogSpd_CntErr = 0;
        LogSpd_BufCnt = 0;
        return ENABLE;//δ�ﵽ�ж�����
    }
    ////////////////////////////////////////////////////////////////�ٶ��쳣���
    if(SpeedLog_ChkFalt() == 0)
    {
        LogSpd_CntOk++;//�ٶ�����
        LogSpd_CntErr=0;
    }
    else
    {
        LogSpd_CntErr++;//�ٶ��쳣
        LogSpd_CntOk =0;  
    }
    ////////////////////////////////////////////////////////////////�ٶ��쳣����
    if((LogSpd_CntOk==1)||(LogSpd_CntErr==1))
    {
        LogSpd_BufCnt=13;
        Public_ConvertNowTimeToBCDEx(LogSpd_Buf+1);//��־��ʼʱ��
    }  

    if(((LogSpd_CntOk<=60)&&(LogSpd_CntOk))||((LogSpd_CntErr<=60)&&(LogSpd_CntErr)))//ֻ��¼��һ����
    {
        LogSpd_Buf[LogSpd_BufCnt++] = LogSpd_Pulse;
        LogSpd_Buf[LogSpd_BufCnt++] = LogSpd_Gps;
    }
    else if((LogSpd_CntOk >= 300)||(LogSpd_CntErr >= 300))//����5����
    {

        if(LogSpd_CntErr == 0)
        {
            LogSpd_Buf[0] = 1;//�ٶ����� 
        }
        else
        {
            LogSpd_Buf[0] = 2;//�ٶ��쳣
        }
        
        LogSpd_Status =LogSpd_Buf[0];
        //////////
        Public_ConvertNowTimeToBCDEx(LogSpd_Buf+7);//��־����ʱ��   
        ///////////////////////////
        Register_Write(REGISTER_TYPE_SPEED_STATUS,//��־����FLASH
                        LogSpd_Buf,
                        REGISTER_SPEED_STATUS_STEP_LEN-5,
                        RTC_GetCounter());
        
        FRAM_BufferWrite(FRAM_SPEED_STATUS_ADDR,LogSpd_Buf,7);//����״̬����ʼʱ��
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


