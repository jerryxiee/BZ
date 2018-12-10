/********************************************************************
//��Ȩ˵��	:Shenzhen E-EYE Co. Ltd., Copyright 2009- All Rights Reserved.
//�ļ�����	:Sleep.c		
//����		:
//�汾��	:V0.1
//������	:dxl
//����ʱ��	:2012.6 
//�޸���	:
//�޸�ʱ��	:
//�޸ļ�Ҫ˵��	:
//��ע		:
***********************************************************************/

//********************************ͷ�ļ�************************************
#include "stm32f2xx.h"
#include "stm32f2xx_lib.h"
#include "include.h"
//********************************�Զ�����������****************************

//********************************�궨��************************************

//********************************ȫ�ֱ���**********************************

//********************************�ⲿ����**********************************

//********************************���ر���**********************************
static u32	AccOnCount = 0;
static u32	AccOffCount = 0;
#ifdef HUOYUN_DEBUG_OPEN
u8       SleepFlag = 0;//���߱�־,1Ϊ��������,0Ϊ������,����ƽ̨Ҫ��ACC OFF��30���ӽ��������ϱ�
#endif
//********************************��������**********************************

/*********************************************************************
//��������	:Sleep_TimeTask(void)
//����		:���߶�ʱ����
//����		:
//���		:
//ʹ����Դ	:
//ȫ�ֱ���	:
//���ú���	:
//�ж���Դ	:  
//����		:
//��ע		:
*********************************************************************/
FunctionalState  Sleep_TimeTask(void)
{
        
	//u8	Buffer[REPORT_BUFFER_SIZE];//λ����Ϣ�洢����
	//u8	length;
    u8      				Acc = 0;
    static u8      	LastAcc = 0;
    static u16      SendCount = 0;
	  static u16     	ReportTimeCount = 0;
		static u8				authCnt = 0;//���߹����м�Ȩ����
    Acc = Io_ReadStatusBit(STATUS_BIT_ACC);
        
    if(Acc != LastAcc)
    {
        //�������߻��˳����ߵĵ�һ��,�ϱ�һ����
        //�ϱ�λ����Ϣ                
 // length = Report_GetPositionInformation(Buffer);
 //RadioProtocol_PostionInformationReport(Buffer, length);//λ����Ϣ�㱨
        
    }
        
	
	if(DetectMultiStatus(0,2,DetectOption_functionTest,DetectOption_protocolTest))//���깦�ܼ��,����Э����	
	{	
			if(1 == Acc)
			{
					ReportTimeCount = 0;
					SendCount = 0;
					AccOffCount = 0;
					AccOnCount++;
					if(1 == AccOnCount)
					{
							authCnt = 0;
							Report_ClearReportTimeCount();
							SetTimerTask(TIME_POSITION,1);//��λ�û㱨
							//SetTimerTask(TIME_STATUS_ALARM,1);//��״̬�仯�򱨾�λ�ϱ�
							//����������
              SetTimerTask(TIME_HEART_BEAT, SYSTICK_1SECOND);
							Communication_Open();
					}
			}
			else
			{
					AccOnCount = 0; 
					AccOffCount++;
					AccOffCount = AccOffCount%305;
					if(1 == AccOffCount)
					{
							ClrTimerTask(TIME_POSITION);//��λ�û㱨
							//��ͣ������
              ClrTimerTask(TIME_HEART_BEAT);
							//ClrTimerTask( TIME_STATUS_ALARM);//��״̬�仯�򱨾�λ�ϱ�
					}
					else if(30 == AccOffCount)//�ر�����
					{
							authCnt++;
							if(authCnt <= 2)
							{
								ClearTerminalAuthorizationFlag(CHANNEL_DATA_1);//��Ȩ��־��0
								Communication_Close();
							}
					}
					else if(240 == AccOffCount)//��������
					{
							Communication_Open();
					}
				
					ReportTimeCount++;
					if((ReportTimeCount >= 300)&&(0 == SendCount))//��1�η���λ����Ϣ���ͺ�2-3��
					{
							SendCount++;
							ReportTimeCount = 0;
							Report_UploadPositionInfo(CHANNEL_DATA_1|CHANNEL_DATA_2);
					}
					else if((ReportTimeCount >= 300)&&(SendCount > 0))
					{
							SendCount++;
							ReportTimeCount = 0;
							Report_UploadPositionInfo(CHANNEL_DATA_1|CHANNEL_DATA_2);
					}
			}
	}
	else
	{
			if(1 == Acc)
			{
					AccOffCount = 0;
					AccOnCount++;
					if(20 == AccOnCount)
					{
							CHARGE_ON(); 
							CAN_PWR_ON(); 
					}
					Io_WriteIoStatusBit(IO_STATUS_BIT_SLEEP, RESET);
			}
			else
			{
					AccOnCount = 0;
					AccOffCount++;
					if(20 == AccOffCount)
					{
							CHARGE_OFF();
							CAN_PWR_OFF();
					}
					Io_WriteIoStatusBit(IO_STATUS_BIT_SLEEP, SET);	 
			}
	} 	

  LastAcc = Acc;

  return ENABLE;
      
}
/*********************************************************************
//��������	:Sleep_Init(void)
//����		:���߳�ʼ��
//����		:
//���		:
//ʹ����Դ	:
//ȫ�ֱ���	:
//���ú���	:
//�ж���Դ	:  
//����		:
//��ע		:
*********************************************************************/
void Sleep_Init(void)
{
	GPIO_InitTypeDef  GPIO_InitStructure;
  	
	/* ʵ��GPIOʱ��*/
  	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOG, ENABLE);

  	/* ����PG10�� 50Mhz�������,������,���ڿ��Ʊ����� */
  	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_10;
  	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
  	GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
  	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;  //LED�ƿ��Ʋ��� �������� GPIO_PuPd_UP
  	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  	GPIO_Init(GPIOG, &GPIO_InitStructure);
}




