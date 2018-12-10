/*
********************************************************************************
*
*
* Filename      : vdr_pub.c
* Version       : V1.00
* Programmer(s) : miaoyahan
* Time          : 20140829
********************************************************************************
*/

/*
********************************************************************************
*                               INCLUDES
********************************************************************************
*/
#include "vdr.h"
#include "Gyro.h"
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
static u8  SerOutTmrCnt;//���ڳ�ʱ������
static u8  SerBusyFlag;//����æ��־  1Ϊæ 0Ϊ����
static u8  SerRxBuf[1024];//���ڽ��ջ���
static u16 SerRxLen;//���ڽ��ճ���

/*
********************************************************************************
*                         EXTERN GLOBAL VARIABLES
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
/*********************************************************************
//��������	:Recorder_GetCarInformation
//����		:��ȡ������Ϣ����������VIN�����ƺ��룬���Ʒ���
//����		:
//���		:
//ʹ����Դ	:
//ȫ�ֱ���	:   
//���ú���	:
//�ж���Դ	:  
//����		:
//��ע		:������06H
*********************************************************************/
u8 Recorder_GetCarInformation(u8 *pBuffer)
{
	VDR_HEAD head;

    head.pbuf = pBuffer;
    Vdr_Get_CarInfor(&head);

	return 41;
}
/*******************************************************************************
* Function Name  : Recorder_Stop15MinuteSpeed
* Description    : ͣ��ǰ15�����ٶȣ����ݰ���VIN��ͣ��ʱ�䡢ͣ��ǰ15����ƽ���ٶ�
* Input          : *p  : ָ��15����ƽ���ٶ���Ϣ�������              
* Output         : None
* Return         : �������ݳ���
*******************************************************************************/
u8 Recorder_Stop15MinuteSpeed(u8 *p)
{
    u8 buf[70];
    u8 buftm[10];
    u8 *pDst=p;
    u8 *pSrc;
    u8 i;
    TIME_T time;
    u32    timecnt;

    ////////////////////////////////////////////////////////////////////ͣ��ʱ�� 
    FRAM_BufferRead(buftm,6 ,FRAM_STOP_15MIN_TIME_ADDR);
    if(SpeedMonitor_GetCurRunStatus())
    {
       Public_ConvertNowTimeToBCDEx(buftm);;//��ʻ��ʹ�õ�ǰʱ��
    }
    
    memcpy(pDst,buftm,6);
    pDst += 6;

    Public_ConvertBCDToTimeEx(&time,buftm);
    timecnt = ConverseGmtime(&time)-60;
    Gmtime(&time,timecnt);
    Public_ConvertTimeToBCDEx(time,buftm);
    
    ///////////////////////////////////////////////////////////////////15min�ٶ� 
    FRAM_BufferRead(buf, 48, FRAM_STOP_15MINUTE_SPEED_ADDR);

    pSrc = buf;
    if((buftm[3]!=pSrc[0])||(buftm[4]!=pSrc[1]))
    {
        pSrc += 3;
    }

    for(i=0;i<15;i++)
    {
        memcpy(pDst,pSrc,3);//ʱ��+�ٶ�
        if(i==0)
        {
            if((buftm[3]==pDst[0])&&(buftm[4]==pDst[1]))
            {
                pSrc += 3;
            }
            else
            {
                pDst[0] = buftm[3];
                pDst[1] = buftm[4];
                pDst[2] = 0;
            }
        }
        else if((buftm[3]==pDst[0])&&(buftm[4]==pDst[1]))
        {
            pSrc += 3;
        }    
        else
        {
            pDst[0] = buftm[3];
            pDst[1] = buftm[4];
            pDst[2] = 0;
        }
       
        buftm[3] = pDst[0];
        buftm[4] = pDst[1];
        Public_ConvertBCDToTimeEx(&time,buftm);
        timecnt = ConverseGmtime(&time)-60;
        Gmtime(&time,timecnt);
        Public_ConvertTimeToBCDEx(time,buftm);

        pDst += 3;
    }
    
    return 51;
}

/*******************************************************************************
* Function Name  : Recorder_MileageTest
* Description    : ��¼�Ǽ�������->������,��ÿ�����һ��
* Input          : None            
* Output         : None
* Return         : None
*******************************************************************************/
void Recorder_MileageTest(void)
{
    u8 nTab[55];
    u8 nBuff[5];
 
    u16 temp;
    u32 temp_hex;
    
    u8  nData;
    u8  i;
    u8  verify;

    //VDR_HEAD head;
    
    memset(nTab,0,sizeof(nTab));                                              /*��ջ�����      */           
    
    nTab[0] = 0x55;
    nTab[1] = 0x7a;
    nTab[2] = 0xe1;
    nTab[3] = 0;
    nTab[4] = 44;
    nTab[5] = PRO_DEF_RETAINS;
    
    //Vdr_Get_OnlyNum(&head);//dxl,2015.3.19,������
    //memcpy(nTab+6,head.pbuf,head.len);
    
    EepromPram_ReadPram(E2_CAR_ONLY_NUM_ID,nTab+6);
    
    EepromPram_ReadPram(E2_CAR_FEATURE_COEF_ID,nBuff);                        /*����ϵ��        */

    nTab[35+6] = nBuff[1];
    nTab[36+6] = nBuff[2];
    
    temp = SpeedMonitor_GetCurSpeed();                                        /*��ȡʵʱ�ٶ�    */
    temp = temp * 10;
    nTab[37+6] = (temp&0xff00)>>8;
    nTab[38+6] = temp;
      
    temp_hex = Pulse_GetTotalMile()*10;                                          /*�ۼ���ʻ���    */    
    nTab[39+6] = temp_hex>>24;
    nTab[40+6] = (temp_hex>>16)&0x0000ff;
    nTab[41+6] = (temp_hex>>8) &0x0000ff;
    nTab[42+6] = temp_hex & 0x000000ff; 
        
    nData = Io_ReadExtCarStatus();                                            /*�ƶ�            */
    nData = (nData<<1) | Io_ReadExtCarStatusBit(CAR_STATUS_BIT_LEFT_LIGHT);   /*��ת            */
    nData = (nData<<1) | Io_ReadExtCarStatusBit(CAR_STATUS_BIT_RIGHT_LIGHT);  /*��ת            */
    nData = (nData<<1) | Io_ReadExtCarStatusBit(CAR_STATUS_BIT_FAR_LIGHT);    /*Զ��            */
    nData = (nData<<1) | Io_ReadExtCarStatusBit(CAR_STATUS_BIT_NEAR_LIGHT);   /*����            */ 
    nData = (nData<<3);                                                       /*D0-D2�û��Զ��� */    
       
    nTab[43+6] = nData;     
        
    verify = 0;    
    for(i=0; i<(44+6); i++)
    {
         verify ^= nTab[i];
    }
    nTab[50] = verify;
    
    COM1_WriteBuff(nTab,51);	
  
}

/**
  * @brief  ��¼��U�̵�������
  * @param  None
  * @retval None
  */
void Recorder_USBHandle(void)
{
    u8 buf[5];
    
    //��ȡ������־
    E2prom_ReadByte(E2_PROGRAM_UPDATA_REQUEST_ID_ADDR,buf,5);
    if((buf[0]==0xaa)&&(buf[1]==0xaa))
    {
        return;//��������ʱ����������
    }
    Vdr_Usb_Handle();
}

/*********************************************************************
//��������	:RecorderCom_WirelessTimeTask
//����		:������ʻ��¼�Ƕ�ʱ����
//����		:
//���		:
//ʹ����Դ	:
//ȫ�ֱ���	:   
//���ú���	:
//�ж���Դ	:  
//����		:
//��ע		:
*********************************************************************/
FunctionalState RecorderWireless_TimeTask(void)
{
    if(Vdr_Wire_Handle())
    {
        return ENABLE;
    }

    return DISABLE;
}
/*******************************************************************************
* Function Name  : Vdr_SerOutTime
* Description    : ��¼�Ǵ���һ֡���ݳ�ʱ�ж�
* Input          : - *pData  : ָ�򴮿�
*                  - Length  : ���Դ������ݵĳ��� 
* Output         : None
* Return         : - �յ�һ֡��������ȷ���ݷ����棬���򷵻ؼ�
*******************************************************************************/

u8 Recorder_SerOutTime(u8 *p,u16 len)
{
    if(len == 0)
    {
        if(SerRxLen)
        {
            if((SerOutTmrCnt++)>2)
            {
                SerOutTmrCnt = 0;//��ʱ
                SerBusyFlag  = 1;//æ
                return 1;
            }
        }
        return 0;//����������
    }
    
    SerOutTmrCnt = 0;//�����������峬ʱ������
    
    if(SerBusyFlag)
    {
        return 0;//�ϴε����ݻ�û�������
    }

    if((SerRxLen + len) < sizeof(SerRxBuf))//�ж����
    {
        memcpy(SerRxBuf+SerRxLen,p,len);
        SerRxLen += len;
    }
    return 0;
}


/*******************************************************************************
* Function Name  : RecorderWired_TimeTask
* Description    : ��¼���¼�����,100ms����һ��
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
FunctionalState RecorderWired_TimeTask(void)
{
    u16 nRecLen = 0;
    u8  nRecTab[512];
    
    ////////////////////////////////////////////////////////////////////////////����
    nRecLen = COM1_ReadBuff(nRecTab,512);  
    
    #ifdef EYE_MODEM
    Modem_Debug_UartRx(nRecTab,nRecLen);
    #endif
    
    ////////////////////////////////////////////////////////////////////////////һ֡����
    if(Recorder_SerOutTime(nRecTab,nRecLen) == 0)
    {
        return ENABLE;
    }
    
    //LcdShowStr(0,48,(char *)"�յ�����       ",0);
    ////////////////////////////////////////////////////////////////////////////���ݴ���
    ///// ���յ�����һ֡���� -> SerRxBuf
    ///// ..............���� -> SerRxLen

    ///// ����Э�鴦��
    
    CarLoad_CommProtocolParse(SerRxBuf,SerRxLen);//����1����bit3
    
    //Gyro_ProtocolParse(SerRxBuf, SerRxLen);//dxl,2015.6.29,����1����bit3,������Э�����,ֻ������1����ѡ������Ӧ��λ�Ὺ�� 

    /////��¼��Э�鴦��,��Э����ŵ����
    Vdr_Data_Rec(VDR_COM,0,SerRxBuf,SerRxLen);

    memset(SerRxBuf,0,SerRxLen);
    SerBusyFlag = 0;
    SerRxLen    = 0;
    
    return ENABLE;
}


/*
********************************************************************************
*                               END
********************************************************************************
*/
  
