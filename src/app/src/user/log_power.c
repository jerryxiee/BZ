/*******************************************************************************
 * File Name:			log_power.c 
 * Function Describe:	
 * Relate Module:		�жϡ��洢��ͨ���ϵ��¼
 * Writer:				Joneming
 * Date:				2015-04-01
 * ReWriter:			
 * Date:
 *******************************************************************************/
//////////////////////
#include "include.h" 

extern u8	CarVoltageType;
//��Դ��¼ƫ�ƺ궨��
#define RECORD_PWER_LENGTH		13	//	7�ֽڼ�¼���ȣ�6�ֽ�Ԥ������
//�ⲿ�����Ƿѹ����ֵ
//������ⲿ����12V��Ӧ11��5������ⲿ����24V����Ӧ21.5V��
#define MAIN_PW_UNDER_12V		11000	//11.5*1000mV		
#define MAIN_PW_UNDER_24V		21000	//21.5*1000mV		
#define MAIN_PW_OFF_VAL         6000	//6000mV
#define OFFSET_VOL_CONST        300
///////////////////////
#define MAIN_PW_RUN             1		//1��ͨ��
#define MAIN_PW_STOP            2		//2���ϵ�	
///////////////////////////
typedef struct
{
    unsigned long powerVal;
    unsigned long curTimeVal;          //��ǰʱ��
    unsigned long saveTimeVal;          //��ǰʱ��
    unsigned long framTimeVal;          //���������ʱ��
    ///////////////////////////// ////////////////////////////////////////////
    unsigned char saveframFlag;            //��Ҫ���������¼
    unsigned char firstsaveFlag;           //�״��ϵ��¼ 
    unsigned char cursaveflag;             //��Ҫ����
    unsigned char statusflag;               //״̬
    unsigned char checkLowCnt;              //���� 
    unsigned char checkCnt;                 //
    unsigned char timeCnt;                  //
    unsigned char saveTimeCnt;                  //
}STPOWER_ATTRIB;//ģ�����Խṹ��

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
    if(1==s_stPowerAttrib.cursaveflag)//���浱ǰ��
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
        if(MAIN_PW_RUN==buffer[4])//û�б�������,����Ҫ��������ϵ����
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
* Description    : λ����Ϣ�ɼ��¼�����,ÿ1min����һ�� .
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
    if(s_stPowerAttrib.saveTimeCnt<3)return;//3��
    s_stPowerAttrib.saveTimeCnt = 0;
    /////////////////
    Power_SaveCurTimeFram();//�ݴ浱ǰ״̬,��ֹû�б���ʱ��ⲻ���ϵ�����
}
/*******************************************************************************
* Function Name  : Position_TimeTask
* Description    : λ����Ϣ�ɼ��¼�����,ÿ1min����һ�� .
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void Power_StartScanTask(void)
{
    unsigned long adcVal;
    /////////////////
    if(1==CarVoltageType)//������ƽ����:0Ϊ12V,1Ϊ24V
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
    if(adcVal<MAIN_PW_OFF_VAL)//������ѹ��,ֻ����ʹ�ñ���ʱ,��λ��,��Ӧ�ð�ͨ�籣��
    {
        s_stPowerAttrib.powerVal      = MAIN_PW_UNDER_12V+OFFSET_VOL_CONST;
        s_stPowerAttrib.firstsaveFlag = 0;
        s_stPowerAttrib.statusflag    = MAIN_PW_STOP;//��ǰ���ڵ�״̬ 
        s_stPowerAttrib.checkLowCnt   = 10;
    }
    else//����״̬
    {
        s_stPowerAttrib.statusflag    = MAIN_PW_RUN;//��ǰ���ڵ�״̬
        s_stPowerAttrib.checkCnt      = 10;
    }
    /////��ϵͳ������Power_CheckRecordToSaveFlash////////////////
    s_stPowerAttrib.timeCnt    = 5;
    s_stPowerAttrib.saveTimeCnt= 3;
    ///////////////
    LZM_PublicSetCycTimer(&s_stPowerTimer[POWER_TIMER_TASK],PUBLICSECS(0.2),Power_ScanTask);
}

/*******************************************************************************
* Function Name  : Power_ParamInitialize
* Description    : ͨ�ϵ����ʼ��
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
* Return         : �ϵ�Ϊ2,ͨ��Ϊ1,0δ֪
*******************************************************************************/
unsigned char Power_GetLowPowerFlag(void)
{
    return s_stPowerAttrib.statusflag;
}
/*************************************************************
** ��������: CheckMainPowerRun_TimeTask
** ��������: ʵʱ��⣬��¼�ϵ纯��
** ��ڲ���: 
** ���ڲ���: 
** ���ز���: 
** ȫ�ֱ���: ��
** ����ģ��:
*************************************************************/
FunctionalState CheckMainPowerRun_TimeTask(void)
{
    LZM_PublicTimerHandler(s_stPowerTimer,POWER_TIMERS_MAX);
    return	ENABLE;
}

/*******************************************************************************
 *                            End of Module
 *******************************************************************************/

