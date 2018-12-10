/*
********************************************************************************
*
* Filename      : doubtpoint.c
* Version       : V1.00
* Programmer(s) : miaoyahan
* Time          : 20150130
********************************************************************************
*/

/*
********************************************************************************
*                               INCLUDES
********************************************************************************
*/
#include "doubtpoint.h"

/*
********************************************************************************
*                             LOCAL DEFINES
********************************************************************************
*/
#define DOUBT_FRAM_BASE    FRAM_DOUBT_POINT_ADDR
#define DOUBT_FRAM_LEN     FRAM_DOUBT_POINT_LEN

#define DOUBT_FRAM_CNT     DOUBT_FRAM_BASE       //�ɵ������ + У�� = 2+1
#define DOUBT_FRAM_KEP     DOUBT_FRAM_BASE+3     //�ٶȱ��ּ����� + У�� = 2+1
#define DOUBT_FRAM_BUF     DOUBT_FRAM_BASE+6     //�ɵ㻺�� = 300
#define DOUBT_FRAM_TIME    FRAM_STOP_DOUBT_TIME_ADDR//BCD����ʱ��

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
static u8  Doubt_Speed;//�ɵ��ٶ�
static u8  Doubt_State;//�ɵ�״̬
static u16 Doubt_SpdKeepCnt;//�ٶȱ��ּ�����

static u8  Doubt_CarRunCnt;//������ʻ������ ����10s���ٶ�
static u8  Doubt_CarStpCnt;//����ֹͣ������ ����10s���ٶ�
static u8  Doubt_CarState;//����״̬ 0ͣʻ״̬  1��ʻ״̬

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
  * @brief  �򻺴���д���ٶȺ�״̬
  * @param  None
  * @retval None
  */
void DoubtPoint_In(void)
{
    u8  buf[10];
    u16 cnt;

    Public_ConvertNowTimeToBCDEx(buf);
    FRAM_BufferWrite(DOUBT_FRAM_TIME,buf,6);    //�������ʱ�� 

    FRAM_BufferRead(buf,2,DOUBT_FRAM_CNT);      //��ȡ�ɵ������
    cnt = (buf[0]<<8)|buf[1];    
    
    buf[0] = Doubt_Speed;
    buf[1] = Doubt_State;
    FRAM_BufferWrite(DOUBT_FRAM_BUF+cnt,buf,2); //�����ɵ�����
    cnt += 3;
    if(cnt >= 450)
    {
        cnt = 0;
    }
    
    buf[0] = cnt>>8;
    buf[1] = cnt&0xff;
    FRAM_BufferWrite(DOUBT_FRAM_CNT,buf,2);      //�����ɵ������
    
}
/**
  * @brief  �ӻ�����ȡ����ʻ����ǰ20������
  * @param  None
  * @retval None
  */
void DoubtPoint_Out(u8 *pSrc)
{
    u8  buf[5];
    u16 cnt;
    u16 i;
    
    FRAM_BufferRead(buf,2,DOUBT_FRAM_CNT);        //��ȡ�ɵ������
    cnt = (buf[0]<<8)|buf[1];  

    for(i=0;i<50;i++)
    {
        FRAM_BufferRead(buf,2,DOUBT_FRAM_BUF+cnt);//��ȡͣ��ǰ10����
        cnt -= 3;
        if(cnt >= 450)
        {
            cnt = 447;
        }         
    }
    
    for(i=0;i<100;i++)
    {
        FRAM_BufferRead(buf,2,DOUBT_FRAM_BUF+cnt);//��ȡ��ʻ����
        cnt -= 3;
        if(cnt >= 450)
        {
            cnt = 447;
        }
        *pSrc++ = buf[0];  
        *pSrc++ = buf[1];          
    }
}
/**
  * @brief  �ӻ�����ȡ���ϵ�ǰ20������
  * @param  None
  * @retval None
  */
void DoubtPoint_OutPower(u8 *pSrc)
{
    u8  buf[5];
    u16 cnt;
    u16 i;
    
    FRAM_BufferRead(buf,2,DOUBT_FRAM_CNT);        //��ȡ�ɵ������
    cnt = (buf[0]<<8)|buf[1];  
 
    for(i=0;i<100;i++)
    {
        FRAM_BufferRead(buf,2,DOUBT_FRAM_BUF+cnt);//��ȡ��ʻ����
        cnt -= 3;
        if(cnt >= 450)
        {
            cnt = 447;
        }
        *pSrc++ = buf[0];  
        *pSrc++ = buf[1];          
    }
}
/**
  * @brief  ���ݱ��浽FLASH��
  * @param  pSrc->ָ����ʻ״̬ǰ20������
  * @retval None
  */
void DoubtPoint_ToFlash(u8 *pSrc)
{
    u8 buf[235];
    u8 *p=buf;

    FRAM_BufferRead(p,6,DOUBT_FRAM_TIME);//��ȡ����ʱ��
    p += 6;

    if(EepromPram_ReadPram(E2_CURRENT_LICENSE_ID,p)==0)//��ʻԱ֤��
    {                                                            
        memset(p,0,18);//ȱʡ0
    }
    p += 18;

    memcpy(p,pSrc,200);//��ʻ����ǰ20s�ٶȺ�״̬
    p += 200;

    if(Io_ReadStatusBit(STATUS_BIT_NAVIGATION))//λ����Ϣ
    {
        Public_GetCurPositionInfoDataBlock(p);
    }
    else
    {
        memset(p,0,10);//ȱʡ0
    }

    Register_Write(REGISTER_TYPE_DOUBT,buf,246,RTC_GetCounter());//д��FLASH
    
}

/**
  * @brief  ͣ���ɵ�
  * @param  None
  * @retval None
  */
void DoubtPoint_Stop(void)
{
    u8  buf[200];
    TIME_T time;
    u32    timecnt;

    FRAM_BufferRead(buf,6,DOUBT_FRAM_TIME);  //��ȡ����ʱ��
    Public_ConvertBCDToTimeEx(&time,buf);
    timecnt = ConverseGmtime(&time)-10;      //ͣ������ʱ��ȥ��10��
    Gmtime(&time,timecnt);
    Public_ConvertTimeToBCDEx(time,buf);
    FRAM_BufferWrite(DOUBT_FRAM_TIME,buf,6); //�������ʱ��
    
    DoubtPoint_Out(buf);                     //��ȡ�ɵ����� 
    
    DoubtPoint_ToFlash(buf);                 //д��FLASH
}
/**
  * @brief  �ϵ��ɵ�
  * @param  None
  * @retval None
  */
void DoubtPoint_SavePowerLow(void)
{
    u8  buf[200];
    u16 keep;

    FRAM_BufferRead(buf,6,DOUBT_FRAM_KEP);//��ȡ�ٶȳ���ʱ��
    keep = (buf[0]<<8)|buf[1];

    if(keep < 50)
    {
        return;//�ϵ�ǰ��������ʻ״̬
    }
    DoubtPoint_OutPower(buf);
    
    DoubtPoint_ToFlash(buf);
}
/**
  * @brief  �ϵ��ɵ�
  * @param  None
  * @retval None
  */
void DoubtPoint_Power(void)
{
    static u8 firstRunflag=0;
    static u8 prepowerflag = 0xff;
    u8 powerflag;
    if(0==firstRunflag)
    {   
        firstRunflag = 1;
        DoubtPoint_SavePowerLow();
        return;
    }
    //////�б���������////////////
    powerflag = Power_GetLowPowerFlag();//�ϵ�Ϊ2,ͨ��Ϊ1,0δ֪
    ////////////////////////
    if((1==prepowerflag)&&(2==powerflag))//��ͨ�絽�ϵ�,�򱣴�
    {
        DoubtPoint_SavePowerLow();
    }
    prepowerflag = powerflag;
    ////////////////////
}

/**
  * @brief  λ����Ϣ�ޱ仯�ɵ�
  * @param  None
  * @retval None
  */
void DoubtPoint_Position(void)
{
    static GPS_STRUCT positioncmp;
    GPS_STRUCT position;
    static u16 keeptime;                      
    u8 buf[200];

    if(Io_ReadStatusBit(STATUS_BIT_NAVIGATION) == 0)
    {
        return;//����λ
    }
    if(Doubt_CarState == 0)
    {
        return;//ͣʻ
    }
    
    Gps_CopygPosition(&position);//��ȡ��Чλ����Ϣ
    if(((position.Latitue_D   == positioncmp.Latitue_D)
        ||(position.Latitue_F  == positioncmp.Latitue_F))
        ||(position.Latitue_FX == positioncmp.Latitue_FX))    
    { 
        if(keeptime < 50)
        {
            keeptime++;        
        }
        else if(keeptime == 50)//10��λ���ޱ仯
        {
            keeptime++;
            DoubtPoint_Out(buf); 
            DoubtPoint_ToFlash(buf);                
        }
    }
    else if(((position.Latitue_D  != positioncmp.Latitue_D)
            ||(position.Latitue_F  != positioncmp.Latitue_F))
            ||(position.Latitue_FX != positioncmp.Latitue_FX))
    {   
        keeptime = 0;
    }
    Gps_CopygPosition(&positioncmp);//ˢ��λ����Ϣ
}
/**
  * @brief  ��ȡ�ٶȺ�״̬
  * @param  None
  * @retval None
  */
void DoubtPoint_GetSpdSta(void)
{
    u8 temp=0;
    u8 buf[5];

    temp = Io_ReadExtCarStatusBit(CAR_STATUS_BIT_BRAKE);                  //*�ƶ�
    temp = (temp<<1) | Io_ReadExtCarStatusBit(CAR_STATUS_BIT_LEFT_LIGHT); //*��ת
    temp = (temp<<1) | Io_ReadExtCarStatusBit(CAR_STATUS_BIT_RIGHT_LIGHT);//*��ת
    temp = (temp<<1) | Io_ReadExtCarStatusBit(CAR_STATUS_BIT_FAR_LIGHT);  //*Զ��
    temp = (temp<<1) | Io_ReadExtCarStatusBit(CAR_STATUS_BIT_NEAR_LIGHT); //*����
    temp = (temp<<2);                                                     //*D1-D2
    temp = (temp<<1) | Io_ReadStatusBit(STATUS_BIT_ACC);                  //*ACC

    Doubt_State = temp;                      //��ȡ�ɵ�״̬
    //��ȡ�ٶ�ѡ��
    if(0 == SpeedMonitor_GetCurSpeedType())
    {
        Doubt_Speed = Pulse_GetSpeed();//ֻ���ɵ����ݺ���ƽ������ʱ��ʹ��˲ʱ�ٶ�
    }
    else
    {
        Doubt_Speed = Gps_ReadSpeed();//ֻ�����ٶȣ�û��˲ʱ�ٶ�
    } 
    
    if((Doubt_CarState==1)&&(Doubt_SpdKeepCnt < 150))
    {
        Doubt_SpdKeepCnt++;
    }
    else if((Doubt_CarState==0)&&(Doubt_Speed==0))
    {
        Doubt_SpdKeepCnt = 0;
    }
    buf[0] = Doubt_SpdKeepCnt>>8;
    buf[1] = Doubt_SpdKeepCnt&0xff;
    FRAM_BufferWrite(DOUBT_FRAM_KEP,buf,2); //�����ٶȱ���
    
}
/**
  * @brief  ��ȡ������ʻ״̬
  * @param  None
  * @retval None
  */
void DoubtPoint_GetCarSta(void)
{
    static u8 stateback;//״̬����
    
    ////////////////////////////////////////////////////////////////��ʻ״̬�ж�
    if(Doubt_Speed == 0)//ͣʻ
    {   
        if(Doubt_CarStpCnt < 50)
        {
            Doubt_CarStpCnt++;
        }
        else if(Doubt_CarStpCnt==50)
        {
            Doubt_CarState = 0;//����10sͣʻ
        }
        Doubt_CarRunCnt =0;
    }
    else//��ʻ
    {
        if(Doubt_CarRunCnt < 50)
        {
            DoubtPoint_In();
            Doubt_CarRunCnt++;
            Doubt_SpdKeepCnt++;
        }
        else if(Doubt_CarRunCnt==50)
        {
            Doubt_CarState = 1;//����10s��ʻ 
        }        
        Doubt_CarStpCnt=0;
    }    
    ////////////////////////////////////////////////////////////////���ݴ��뻺��
    if((Doubt_CarState)&&(stateback==0))//ͣʻ->��ʻ
    {
        DoubtPoint_In();
    }
    else if((Doubt_CarState==0)&&stateback)//��ʻ->ͣʻ
    {
        DoubtPoint_Stop();//ͣ���ɵ�
    }
    else if((Doubt_CarState)&&(stateback))//��ʻ
    {
        DoubtPoint_In();
    }
    stateback = Doubt_CarState;//ˢ��״̬
}
/**
  * @brief  �¹��ɵ�����(200ms����һ��)
  * @param  None
  * @retval None
  */
FunctionalState DoubtPoint_TimeTask(void)
{
    ////////////////////////////////////////////////////////////////////�ϵ��ɵ�
    DoubtPoint_Power();
    
    //////////////////////////////////////////////////////////////��ȡ�ٶȺ�״̬
    DoubtPoint_GetSpdSta();
    
    ////////////////////////////////////////////////////////////��ȡ������ʻ״̬
    DoubtPoint_GetCarSta();

    //////////////////////////////////////////////////////////λ����Ϣ�ޱ仯�ɵ�
    DoubtPoint_Position();
    
    return ENABLE;
}


