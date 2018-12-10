/************************************************************************
//�������ƣ�Report.c
//���ܣ���ģ��ʵ�ֶ�ʱ�ϱ��������ϱ�����ʱ+�����ϱ���ʵʱ���ٹ��ܣ�֧��˫���ӵ�λ�û㱨��
//�汾�ţ�V0.1
//��Ȩ˵������Ȩ�����������������¼����������޹�˾
//�����ˣ�������
//����ʱ�䣺2014.10
//�汾��¼��

//��ע���汾��¼������汾���޸��ˡ��޸�ʱ�䡢�޸�ԭ���޸ļ�Ҫ˵��
//V0.1����Ҫʵ��˫���ӵ�λ�û㱨������1�����б��׼����λ�û㱨������2��TCP�˿�������Ϊ0��ʾ�رյ�2�����ӣ�
//��Ҳ��ر�����2��λ�û㱨����Ϊ��0ʱ��ʾ��������2������2�����ӿ����󣬵�2�����ӵ�ACC ON��ACC OFF�ϱ�ʱ��������Ϊ��0��
//���ʾ������2�����ӵ������ϱ����ܣ���������1�ķ�ʽ�ϱ���
//V0.2�������˸�����ϢID 0xE9��������0xF283����Ϊ1ʱ�Ż����Ӵ˸�����ϢID,dxl
//V0.3���޸������ٶȸ���ID�滻������2015.5.11��dxl
*************************************************************************/

/********************�ļ�����*************************/
#include <stdio.h> 
#include "Report.h"
#include "spi_flashapi.h"
#include "EepromPram.h"
#include "Public.h"
#include "fm25c160.h"
#include "Blind.h"
#include "Gps_App.h"
#include "RadioProtocol.h"
#include "GPIOControl.h"
#include "Io.h"
#include "NaviLcd.h"
#include "SpeedMonitor.h"
#include "Pulse_App.h"
#include "MileMeter.h"
#include "JointechOiL_Protocol.h"
#include "LzmSys.h"
#include "OilWearCalib.h"
#include "AreaManage.h"
#include "Route.h"
#include "temperature.h"


/********************���ر���*************************/
static u32 Link1ReportTime = 0;//����1λ�û㱨ʱ��������λ��
static u32 Link1ReportTimeCount = 0;//����1λ�û㱨ʱ�����
static u32 Link1LastReportDistance = 0;//����1��һ���ϱ���ľ��룬��λ��
static u32 Link1ReportDistance = 0;//����1��һ���ϱ���ľ���
static u8 Link1ReportAckFlag = 0;//����1��һ��λ����ϢӦ���־��1��ʾ��Ӧ��0��ʾ��Ӧ��
static u8 Link1ReportBuffer[FLASH_BLIND_STEP_LEN] = {0};//����1λ���ϱ�����
static u8 Link1ReportBufferLen = 0;//����1λ���ϱ��������ݳ���
static u32 Link2AccOnReportTimeSpace = 0;//����2 ACC ONλ�û㱨ʱ������Ϊ0��ʾ�رոù���
static u32 Link2AccOffReportTimeSpace = 0;//����2 ACC OFFλ�û㱨ʱ������Ϊ0��ʾ�رոù���
static u8 Link2OpenFlag = 0;//ͨ��2������־��1Ϊ������0Ϊ�ر�
static u32 Link2ReportTime = 0;//����2 λ�û㱨ʱ��������λ��
static u32 Link2ReportTimeCount = 0;//����2 λ�û㱨ʱ�����
static u8 Link2ReportAckFlag = 0;//��һ��λ����ϢӦ���־��1��ʾ��Ӧ��0��ʾ��Ӧ��
static u8 Link2ReportBuffer[FLASH_BLIND_STEP_LEN] = {0};//λ���ϱ�����
static u8 Link2ReportBufferLen = 0;//λ���ϱ��������ݳ���
static u32 Link2ReportDistanceSpace = 0;//����2λ���ϱ�ʱ��������λ��
static u32 ReportStrategy = 0;//�㱨����
static u32 ReportScheme = 0;//�㱨����
static u32 EmergencyReportTimeSpace = 0;//���������㱨ʱ����
static u32 EmergencyReportDistanceSpace = 0;//���������㱨������
static u32 OverSpeedReportTimeSpace = 0;//���ٱ����㱨ʱ����
static u32 OverTimeReportTimeSpace = 0;//��ʱ�����㱨ʱ����
static u32 AccOnReportTimeSpace = 0;//ȱʡ�㱨ʱ����
static u32 AccOnReportDistanceSpace = 0;//ȱʡ�㱨ʱ����
static u32 AccOffReportTimeSpace = 0;//���߻㱨ʱ����
static u32 AccOffReportDistanceSpace = 0;//���߻㱨ʱ����
static u32 UnloginReportTimeSpace = 0;//��ʻԱδ��¼�㱨ʱ����
static u32 UnloginReportDistanceSpace = 0;//��ʻԱδ��¼�㱨ʱ����
static u32 TempTrackTimeSpace = 0;//��ʱ����ʱ����
static u32 TempTrackCount = 0;//��ʱ���ٴ���
static u32 ReportEventSwitch = 0;//λ���ϱ��¼���أ�bit0:Ϊ1��ʾ�������ٱ���λ���ϱ���bit1:Ϊ1��ʾ������ʱ����λ���ϱ�

/********************ȫ�ֱ���*************************/
u16 Link1LastReportSerialNum = 0;//����1��һ��λ���ϱ�����ˮ��
u16 Link2LastReportSerialNum = 0;//����2��һ��λ���ϱ�����ˮ��
u32 Link1ReportTimeSpace = 0;//ͬLink1ReportTimeһ���������ⲿ����
u32 Link1ReportDistanceSpace = 0;//����1λ���ϱ�ʱ��������λ��
u8  RouteInToOutFlag = 0;
u8  AreaInOutAlarmClearEnableFlag = 0;//1Ϊʹ�ܣ�0Ϊ��ֹ

/********************�ⲿ����*************************/
extern TIME_T CurTime;
extern u8 SpeedFlag;

/********************���غ�������*********************/
static void Report_GetLink1NextReportPoint(u32 *NextReportTime, u32 *NextReportDistance);//��ȡ��һ���ϱ���
static u32 Report_GetCurDistance(void);//��ȡ��ǰ���ۼ���ʻ���
static u16 Report_GetPositionAdditionalInfo(u8 *pBuffer);//��ȡλ�ø�����Ϣ
static u16 Report_GetPositionStdAdditionalInfo(u8 *pBuffer);//��ȡ��׼��λ�ø�����Ϣ
static u16 Report_GetPositionEiAdditionalInfo(u8 *pBuffer);//��ȡ�����Զ����λ�ø�����Ϣ
static u8 Report_Link2ReportOpenFlag(void);//����2�����ϱ�������־��1Ϊ������0Ϊ�ر�
static u8 Report_GetManualAlarmSubjoinInfo(u8 *pBuffer);

/**************************************************************************
//��������Report_TimeTask
//���ܣ�ʵ��λ�û㱨������ʵʱ���١��������������ٱ�������ʱ��������ʱ�����λ�û㱨��
//���룺��
//�������
//����ֵ��ʼ����ENABLE
//��ע��λ�û㱨��ʱ����1���ӽ���1�Σ������������Ҫ���ô˺���
***************************************************************************/
FunctionalState Report_TimeTask(void)
{
	u32 Link1CurDistance = 0;//��ǰλ�õ����
	u8 Link1ReportFlag = 0;//λ���ϱ���־��1��ʾҪ�ϱ���0��ʾ�����ϱ�
	u8 Link2ReportFlag = 0;
	u8 Link2ReportStatus = 0;//��2�������ϱ�״̬��0��ʾ��ֹ�ϱ���1��ʾ������1�ķ�ʽ�ϱ���2��ʾ������2�����ⷽʽ�ϱ�
	u8 Ack = 0;
	u8 Acc = 0;
	u8 TempBuffer[5];
	GPS_STRUCT Position;
	TIME_T Time;
		
	static u8 Link1LastSendFlag = 0;
	static u8 Link2LastSendFlag = 0;
	//static u8 UpdateFlag = 0;
//
	static u32 count = 0;
	static GPS_STRUCT LastPosition;
	static u32 LastTimeCount = 0;
	//u8 ReportAddTimeCount;
	u32 CurTimeCount = 0;
	
	count++;//dxl,2016.5.7����
	if(count < 1200)//������ǰ60�벻�ϱ�λ����Ϣ����Ϊ���ʱ�����������̣��϶��ϱ�����ȥ������Ϊä����¼�ģ�����ÿ�������ͻ���������ä����Ϊ�����������������60����ʱ
	{
			return ENABLE;	
	}
	else if(count == 1200)
	{
			Gps_CopyPosition(&LastPosition);
			Report_UpdatePram();
			LastTimeCount = RTC_GetCounter();
			return ENABLE;
	}
	else
	{
			if(DetectStatus(DetectOption_functionTest))//���깦�ܼ��
			{
					if(1 == Io_ReadStatusBit(STATUS_BIT_NAVIGATION))//����
					{
							Gps_CopyPosition(&Position);
					}
					else//������
					{
							RTC_GetCurTime(&Time);
							Position.Second = Time.sec;
					}
					
					if(Position.Second == LastPosition.Second)
					{
							return ENABLE;
					}
					else//1�붨ʱʱ�䵽
					{
							//ReportAddTimeCount = (Position.Second + 60 - LastPosition.Second)%60;
							LastPosition.Second = Position.Second;
					}
			}
			else
			{
					CurTimeCount = RTC_GetCounter();
					if((CurTimeCount != LastTimeCount))
					{
							 //ReportAddTimeCount = (CurTimeCount + 60 - LastTimeCount)%60;
							 LastTimeCount = CurTimeCount;		 
					}
					else
					{
							 return ENABLE;
					}
			} 	
	}

//
/*
	if(0 == UpdateFlag)
	{
		UpdateFlag = 1;
		Report_UpdatePram();
	}
*/
	if(0 != Link2OpenFlag)
	{
		if(1==Report_Link2ReportOpenFlag())
		{
			Link2ReportStatus = 2;//�ѿ�������2������㱨
		}
		else
		{
			Link2ReportStatus = 1;//�ѿ�����2�����ӣ�������1�ķ�ʽ�㱨
		}
	}
	else
	{
		Link2ReportStatus = 0;//�ѹر�����2
	}

	

	//Link1ReportTimeCount += ReportAddTimeCount;
	Link1ReportTimeCount ++;
	
	Report_GetLink1NextReportPoint(&Link1ReportTime,&Link1ReportDistance);

	if(0 != Link1ReportTime)//Link1ReportTime����0��ʾ��������ʱ�ϱ�
	{
		if(Link1ReportTimeCount >= Link1ReportTime)
		{
			Link1ReportFlag = 1;
			if(1 == Link2ReportStatus)
			{
				Link2ReportFlag = 1;
				Link2ReportTime = Link1ReportTime;
				
			}
			if((TempTrackTimeSpace > 0)&&(TempTrackCount > 0))
			{
				TempTrackCount--;
				Public_ConvertLongToBuffer(TempTrackCount,TempBuffer);
				FRAM_BufferWrite(FRAM_TEMP_TRACK_NUM_ADDR,TempBuffer,4);
				if(0 == TempTrackCount)
				{
					TempTrackTimeSpace = 0;
					Public_ConvertLongToBuffer(TempTrackTimeSpace,TempBuffer);
					FRAM_BufferWrite(FRAM_TEMP_TRACK_SPACE_ADDR,TempBuffer,4);
				}
			}
		}
	}

	if(0 != Link1ReportDistance)//Link1ReportDistance����0��ʾ�����������ϱ�
	{
		Link1CurDistance = Report_GetCurDistance();
		if(Link1CurDistance >= Link1ReportDistance)
		{
			Link1ReportFlag = 1;
			if(1 == Link2ReportStatus)
			{
				Link2ReportFlag = 1;
				
			}
		}
	}

	if(1 == Link1ReportFlag)
	{
		if(1 == Link1LastSendFlag)
		{
			Link1LastSendFlag = 0;
			Link1LastReportDistance = Report_GetCurDistance();
			if(((0 == Link1ReportAckFlag)&&(Link1ReportTime >= 5))
                    		||((0 == Link1ReportAckFlag)&&(Link1ReportDistanceSpace >= 100)))//��һ��λ����Ϣ�㱨�Ƿ��յ�Ӧ��1��ʾ�յ�
			{
				//if(1 == Gps_ReadStatus())//ֻ�е����Ż��ϱ���״̬�򱨾��仯Ҳ���ϱ����������������
				//{
				if(DetectStatus(DetectOption_functionTest))
				{
					Link1ReportBufferLen = 28;//ֻ��¼����λ����Ϣ
				}
				else
				{
					Blind_Save(CHANNEL_DATA_1,Link1ReportBuffer,Link1ReportBufferLen);
				}
			}
		}
				
		Link1ReportBufferLen = Report_GetPositionInfo(Link1ReportBuffer);
		Ack = RadioProtocol_PostionInformationReport(CHANNEL_DATA_1,Link1ReportBuffer,Link1ReportBufferLen);
		RadioProtocol_GetUploadCmdChannel(0x0200,&Link1LastReportSerialNum);
		if(ACK_OK != Ack)
		{
			if(((Link1ReportTime < 5)&&(Link1ReportTime > 0))
                          ||((Link1ReportDistanceSpace < 100)&&(Link1ReportDistanceSpace > 0)))
			{
				//if(1 == Gps_ReadStatus())//ֻ�е����Ż��ϱ���״̬�򱨾��仯Ҳ���ϱ����������������
				//{
					if(DetectStatus(DetectOption_functionTest))
					{
						Link1ReportBufferLen = 28;//ֻ��¼����λ����Ϣ
					}
					else
					{
						Blind_Save(CHANNEL_DATA_1,Link1ReportBuffer,Link1ReportBufferLen);
					}
			}
				
		}
		//
		if((DetectStatus(DetectOption_functionTest))&&(Blind_GetLink1SaveFlag()))
		{
			Link1ReportBufferLen = 28;//ֻ��¼����λ����Ϣ
			Blind_Save(CHANNEL_DATA_1,Link1ReportBuffer,Link1ReportBufferLen);
		}
		//
		Link1LastSendFlag = 1;
		Link1ReportTimeCount = 0;
		Link1LastReportDistance = Link1CurDistance;
		Link1ReportAckFlag = 0;	
		
	}

	if(2 == Link2ReportStatus)
	{
		Link2ReportTimeCount++;

		Acc = Io_ReadStatusBit(STATUS_BIT_ACC);
		if(1 == Acc)
		{
			Link2ReportTime = Link2AccOnReportTimeSpace;
		}
		else
		{
			Link2ReportTime = Link2AccOffReportTimeSpace;
		}

		if(0 != Link2ReportTime)//Link2ReportTime����0��ʾ��������ʱ�ϱ�
		{
			if(Link2ReportTimeCount >= Link2ReportTime)
			{
				Link2ReportFlag = 1;
			}
		}
	}

	if(1 == Link2ReportFlag)
	{
		if(1 == Link2LastSendFlag)
		{
			Link2LastSendFlag = 0;
			if(((0 == Link2ReportAckFlag)&&(Link2ReportTime >= 5))
                    		||((0 == Link2ReportAckFlag)&&(Link2ReportDistanceSpace >= 100)))//��һ��λ����Ϣ�㱨�Ƿ��յ�Ӧ��1��ʾ�յ�
			{
				//if(1 == Gps_ReadStatus())
				//{
					if(DetectStatus(DetectOption_functionTest))
					{
					Link2ReportBufferLen = 28;//ֻ��¼����λ����Ϣ,701iii��Link1ReportBufferLen��liamtsen�޸�
					}
					else
					{
					Blind_Save(CHANNEL_DATA_2,Link2ReportBuffer,Link2ReportBufferLen);
					}
				//}
			}
		}
		
		Link2ReportBufferLen = Report_GetPositionInfo(Link2ReportBuffer);
		Ack = RadioProtocol_PostionInformationReport(CHANNEL_DATA_2,Link2ReportBuffer,Link2ReportBufferLen);
		RadioProtocol_GetUploadCmdChannel(0x0200,&Link2LastReportSerialNum);
		if(ACK_OK != Ack)
		{
			if(((Link2ReportTime < 5)&&(Link2ReportTime > 0))||
				(Link2ReportDistanceSpace > 0)&&(Link2ReportDistanceSpace < 100))
			{
				
				//if(1 == Gps_ReadStatus())//ֻ�е����Ż��ϱ���״̬�򱨾��仯Ҳ���ϱ����������������
				//{
				if(DetectStatus(DetectOption_functionTest))
				{
				Link2ReportBufferLen = 28;//ֻ��¼����λ����Ϣ,701iii��Link1ReportBufferLen��liamtsen�޸�
				}
				else
				{
				Blind_Save(CHANNEL_DATA_2,Link2ReportBuffer,Link2ReportBufferLen);
				}
				//}
				
			}
		}
		Link2LastSendFlag = 1;	
		Link2ReportTimeCount = 0;
		Link2ReportAckFlag = 0;
		
	}

	return ENABLE;		
}
/**************************************************************************
//��������Report_UpdatePram
//���ܣ�����λ�û㱨���б���
//���룺��
//�������
//����ֵ����
//��ע����Ҫ�Ǹ���λ�û㱨ģ����ʹ�õ��ı����������������֮ǰ����ô˺���
***************************************************************************/
void Report_UpdatePram(void)
{
	u8 i;
	for(i=PRAM_REPORT_STRATEGY; i<=PRAM_INDEX_MAX; i++)
	{
		Report_UpdateOnePram(i);
	}
	UpdateRunMode();
}
/**************************************************************************
//��������Report_CmdAck
//���ܣ�λ���ϱ�Ӧ����
//���룺ͨ����
//�������
//����ֵ����
//��ע���յ�λ���ϱ���ͨ��Ӧ��ʱ����ô˺���
***************************************************************************/
void Report_CmdAck(u8 channel)
{
	if(CHANNEL_DATA_1 == channel)
	{
		Link1ReportAckFlag = 1;
	}
	else if(CHANNEL_DATA_2 == channel)
	{
		Link2ReportAckFlag = 1;
	}
}
/**************************************************************************
//��������Report_UpdateOnePram
//���ܣ�����ĳ������
//���룺��������
//������ò������Ͷ�Ӧ�ı���
//����ֵ����
//��ע�����ڻ�Զ������λ�û㱨��ز���ʱ��Ҫ���ô˺���
***************************************************************************/
void Report_UpdateOnePram(u8 type)
{
	u8 Buffer[30];
	u8 BufferLen;
	u32 TcpPort;
	
	switch(type)
	{
	case PRAM_REPORT_STRATEGY://λ�û㱨����
		{
			if(E2_POSITION_REPORT_STRATEGY_LEN == EepromPram_ReadPram(E2_POSITION_REPORT_STRATEGY_ID,Buffer))
			{
				ReportStrategy = Public_ConvertBufferToLong(Buffer);
			}
			break;
		}
	case PRAM_REPORT_SCHEME://λ�û㱨����
		{
			if(E2_POSITION_REPORT_SCHEME_LEN == EepromPram_ReadPram(E2_POSITION_REPORT_SCHEME_ID,Buffer))
			{
				ReportScheme = Public_ConvertBufferToLong(Buffer);
			}
			break;
		}
	case PRAM_TEMP_TRACK_TIME://��ʱ����ʱ����
		{
			if(FRAM_TEMP_TRACK_SPACE_LEN == FRAM_BufferRead(Buffer, 2, FRAM_TEMP_TRACK_SPACE_ADDR))
			{
				TempTrackTimeSpace = Public_ConvertBufferToShort(Buffer);
			}
			break;
		}
	case PRAM_TEMP_TRACK_COUNT://��ʱ���ٴ���
		{
			if(FRAM_TEMP_TRACK_NUM_LEN == FRAM_BufferRead(Buffer, 4, FRAM_TEMP_TRACK_NUM_ADDR))
			{
				TempTrackCount = Public_ConvertBufferToLong(Buffer);
			}
			break;
		}
	case PRAM_EMERGENCY_REPORT_TIME://���������㱨ʱ����
		{
			if(E2_EMERGENCY_REPORT_TIME_LEN == EepromPram_ReadPram(E2_EMERGENCY_REPORT_TIME_ID,Buffer))
			{
				EmergencyReportTimeSpace = Public_ConvertBufferToLong(Buffer);
			}
			break;
		}
	case PRAM_EMERGENCY_REPORT_DISTANCE://���������㱨������
		{
			if(E2_EMERGENCY_REPORT_DISTANCE_LEN == EepromPram_ReadPram(E2_EMERGENCY_REPORT_DISTANCE_ID,Buffer))
			{
				EmergencyReportDistanceSpace = Public_ConvertBufferToLong(Buffer);
			}
			break;
		}
	case PRAM_OVER_SPEED_REPORT_TIME://���ٱ����㱨ʱ����
		{
			if(E2_OVERSPEED_ALARM_REPORT_TIME_ID_LEN == EepromPram_ReadPram(E2_OVERSPEED_ALARM_REPORT_TIME_ID,Buffer))
			{
				OverSpeedReportTimeSpace = Public_ConvertBufferToLong(Buffer);
			}
			break;
		}
	case PRAM_OVER_TIME_REPORT_TIME://��ʱ�����㱨ʱ����
		{
			if(E2_TIRED_DRIVE_REPORT_TIME_ID_LEN == EepromPram_ReadPram(E2_TIRED_DRIVE_REPORT_TIME_ID,Buffer))
			{
				OverTimeReportTimeSpace = Public_ConvertBufferToLong(Buffer);
			}
			break;
		}
	case PRAM_ACC_ON_REPORT_TIME://ȱʡ�㱨ʱ����
		{
			if(E2_ACCON_REPORT_TIME_LEN == EepromPram_ReadPram(E2_ACCON_REPORT_TIME_ID,Buffer))
			{
				AccOnReportTimeSpace = Public_ConvertBufferToLong(Buffer);
			}
			break;
		}
	case PRAM_ACC_ON_REPORT_DISTANCE://ȱʡ�㱨������
		{
			if(E2_ACCON_REPORT_DISTANCE_LEN == EepromPram_ReadPram(E2_ACCON_REPORT_DISTANCE_ID,Buffer))
			{
				AccOnReportDistanceSpace = Public_ConvertBufferToLong(Buffer);
			}
			break;
		}
	case PRAM_ACC_OFF_REPORT_TIME://���߻㱨ʱ����
		{
			if(E2_SLEEP_REPORT_TIME_LEN == EepromPram_ReadPram(E2_SLEEP_REPORT_TIME_ID,Buffer))
			{
				AccOffReportTimeSpace = Public_ConvertBufferToLong(Buffer);
			}
			break;
		}
	case PRAM_ACC_OFF_REPORT_DISTANCE://���߻㱨������
		{
			if(E2_SLEEP_REPORT_DISTANCE_LEN == EepromPram_ReadPram(E2_SLEEP_REPORT_DISTANCE_ID,Buffer))
			{
				AccOffReportDistanceSpace = Public_ConvertBufferToLong(Buffer);
			}
			break;
		}
	case PRAM_UNLOGIN_REPORT_TIME://��ʻԱδ��¼�㱨ʱ����
		{
			if(E2_DRIVER_UNLOGIN_REPORT_TIME_LEN == EepromPram_ReadPram(E2_DRIVER_UNLOGIN_REPORT_TIME_ID,Buffer))
			{
				UnloginReportTimeSpace = Public_ConvertBufferToLong(Buffer);
			}
			break;
		}
	case PRAM_UNLOGIN_REPORT_DISTANCE://��ʻԱδ��¼�㱨������
		{
			if(E2_DRIVER_UNLOGIN_REPORT_DISTANCE_LEN == EepromPram_ReadPram(E2_DRIVER_UNLOGIN_REPORT_DISTANCE_ID,Buffer))
			{
				UnloginReportDistanceSpace = Public_ConvertBufferToLong(Buffer);
			}
			break;
		}
	case PRAM_SECOND_LINK_ACC_ON_REPORT_TIME://����2 ACC ON�㱨ʱ����
		{
			if(E2_SECOND_ACC_ON_REPORT_TIME_ID_LEN == EepromPram_ReadPram(E2_SECOND_ACC_ON_REPORT_TIME_ID,Buffer))
			{
				Link2AccOnReportTimeSpace = Public_ConvertBufferToLong(Buffer);
			}
			
			break;
		}
	case PRAM_SECOND_LINK_ACC_OFF_REPORT_TIME://����2 ACC OFF�㱨ʱ����
		{
			
			if(E2_SECOND_ACC_OFF_REPORT_TIME_ID_LEN == EepromPram_ReadPram(E2_SECOND_ACC_OFF_REPORT_TIME_ID,Buffer))
			{
				Link2AccOffReportTimeSpace = Public_ConvertBufferToLong(Buffer);
			}
			
			break;
		}
	case PRAM_SECOND_LINK_OPEN_FLAG://����2 ������־
		{	
			BufferLen = EepromPram_ReadPram(E2_SECOND_MAIN_SERVER_IP_ID, Buffer);
			if(0 == BufferLen)
			{
				Link2OpenFlag = 0;
			}
			else
			{
				BufferLen = EepromPram_ReadPram(E2_SECOND_MAIN_SERVER_TCP_PORT_ID, Buffer);
				if(E2_SECOND_MAIN_SERVER_TCP_PORT_ID_LEN == BufferLen)
				{
					TcpPort = Public_ConvertBufferToLong(Buffer);
					if(0 == TcpPort)
					{
						Link2OpenFlag = 0;
					}
					else
					{
						Link2OpenFlag = 1;
					}
				}
				else
				{
					Link2OpenFlag = 0;
				}
		
			}
			
			break;
		}
	case PRAM_REPORT_EVENT_SWITCH://λ���ϱ��¼����
		{
			
			if(E2_REPORT_FREQ_EVENT_SWITCH_ID_LEN == EepromPram_ReadPram(E2_REPORT_FREQ_EVENT_SWITCH_ID,Buffer))
			{
				ReportEventSwitch = Public_ConvertBufferToLong(Buffer);
			}
			
			break;
		}
	
		default:break;
	}
}
/**************************************************************************
//��������Report_UploadPositionInfo
//���ܣ��ϴ�һ��λ����Ϣ
//���룺ͨ����
//�������
//����ֵ��0�ϴ��ɹ���1�ϴ�ʧ��
//��ע����ǰ��λ����Ϣ==λ�û�����Ϣ+λ�ø�����Ϣ��λ����Ϣ�Ϊ150�ֽ�
***************************************************************************/
u8 Report_UploadPositionInfo(u8 channel)
{
	u8 Buffer[FLASH_BLIND_STEP_LEN+1];
	u8 BufferLen;
	u8 flag1;
	u8 flag2;
	BufferLen = Report_GetPositionInfo(Buffer);

	if(CHANNEL_DATA_1 == channel)
	{

		if(ACK_OK == RadioProtocol_PostionInformationReport(channel,Buffer,BufferLen))
		{
			return 0;
		}
		else
		{
			if(0 == DetectStatus(DetectOption_functionTest))
			{
				Blind_Save(CHANNEL_DATA_1, Buffer, BufferLen);
			}
			return 1;
		}
	}
	else if(CHANNEL_DATA_2 == channel)
	{
		if(1 == Link2OpenFlag)
		{
			if(ACK_OK == RadioProtocol_PostionInformationReport(channel,Buffer,BufferLen))
			{
				return 0;
			}
			else
			{
				if(0 == DetectStatus(DetectOption_functionTest))
				{
					Blind_Save(CHANNEL_DATA_2, Buffer, BufferLen);
				}
				return 1;
			}
		}
		else
		{
			return 1;
		}
	}
	else if(0x06 == channel)
	{
		if(ACK_OK == RadioProtocol_PostionInformationReport(CHANNEL_DATA_1,Buffer,BufferLen))
		{
			flag1 = 0;
		}
		else
		{
			if(0 == DetectStatus(DetectOption_functionTest))
			{
				Blind_Save(CHANNEL_DATA_1, Buffer, BufferLen);
			}
			flag1 = 1;
		}

		if(ACK_OK == RadioProtocol_PostionInformationReport(CHANNEL_DATA_2,Buffer,BufferLen))
		{
			flag2 = 0;
		}
		else
		{
			if(0 == DetectStatus(DetectOption_functionTest))
			{
				Blind_Save(CHANNEL_DATA_2, Buffer, BufferLen);
			}
			flag2 = 1;
		}

		if((0 == flag1)&&(0 == flag2))
		{
			return 0;
		}
		else
		{
			return 1;
		}
	}
	return 0;
}
/**************************************************************************
//��������Report_GetPositionInfo
//���ܣ���ȡ��ǰ��λ����Ϣ
//���룺��
//�����λ����Ϣ
//����ֵ��λ����Ϣ����
//��ע����ǰ��λ����Ϣ==λ�û�����Ϣ+λ�ø�����Ϣ��λ����Ϣ�Ϊ150�ֽ�
***************************************************************************/
u16 Report_GetPositionInfo(u8 *pBuffer)
{
	u8 *p = NULL;
	u16 length;

	p = pBuffer;
	length = 0;

	length = Report_GetPositionBasicInfo(p);//��ȡλ�û�����Ϣ
	p = p+length;

	length += Report_GetPositionAdditionalInfo(p);//��ȡλ�ø�����Ϣ

	return length;

}
/**************************************************************************
//��������Report_GetPositionBasicInfo
//���ܣ���ȡλ�û�����Ϣ
//���룺��
//�����λ�û�����Ϣ
//����ֵ��λ�û�����Ϣ����
//��ע�����ȹ̶�Ϊ28�ֽڣ�λ�û�����Ϣ�������֡�״̬�֡�γ�ȡ����ȡ��̡߳��ٶȡ�����ʱ��
***************************************************************************/
u16 Report_GetPositionBasicInfo(u8 *pBuffer)
{
	u8 *p = NULL;
	u8  i;
	u8  option;
	u8  NavigationFlag;
	u8  RtcTimeFlag;
	u8  CurrentAlarmFlag;
	u32 temp;
	u16 temp2;
	GPS_STRUCT Position;
	TIME_T time;
	TIME_T Time;
	u32 timecount;
	static u8  LastAlarmFlag = 0;
	static u32  accOnCount = 0;

	option = DetectMultiStatus(0,2,DetectOption_functionTest,DetectOption_protocolTest);
	p = pBuffer;
	if(option)
	{
		  RtcTimeFlag = 0;
	    Gps_CopyPosition(&Position);
		  if(1 == Io_ReadStatusBit(STATUS_BIT_ACC))//ACC OFFʱ��������λ���ݣ���OFF��ONʱ��1��λ����Ϣ��ʱ�仹�Ǳ�����OFFʱ��ʱ��
	    {
				   accOnCount++;
				   if(accOnCount < 3)
					 {
	             RtcTimeFlag = 1;
					 }
	    }
			else
			{
			     accOnCount = 0;
			}
	}
	else
	{
		  RtcTimeFlag = 1;
	    Gps_CopygPosition(&Position);
	}

	
	temp = Io_ReadAlarm();//������
	if(DetectStatus(DetectOption_functionTest))
	{
      CurrentAlarmFlag = Io_ReadAlarmBit(ALARM_BIT_LOAD_EXCURSION);
      if((1 == CurrentAlarmFlag)&&(0 == LastAlarmFlag))//��1�α�ƫ��·��
	    {
		      RouteInToOutFlag = 1;//��·�߱�־
	    }
	    LastAlarmFlag = CurrentAlarmFlag;
			
			if(1 == RouteInToOutFlag)
			{
			    temp |= (1<<21);//��λ����·�߱�־
			}
	}
	Public_ConvertLongToBuffer(temp,p);
	p += 4;

	temp = Io_ReadStatus();//״̬��
	NavigationFlag = Io_ReadStatusBit(STATUS_BIT_NAVIGATION);
	if(option&&(0 == NavigationFlag))//dxl,2016.5.17 ����λʱ��bit18-bit21ȫΪ0
	{
	    temp &= 0xffc3ffff;
	}
	Public_ConvertLongToBuffer(temp,p);
	p += 4;
	if(option&&(0 == NavigationFlag))
	{
    for(i=0; i<14; i++)
	  {
		    *p++ = 0;
		}
	}
	else
	{
		temp = (Position.Latitue_FX*100UL+Position.Latitue_F*1000000)/60+(Position.Latitue_D*1000000UL);//γ��
		Public_ConvertLongToBuffer(temp,p);
		p += 4;

		temp = (Position.Longitue_FX*100UL+Position.Longitue_F*1000000)/60+(Position.Longitue_D*1000000UL);//����
		Public_ConvertLongToBuffer(temp,p);
		p += 4;

		temp2 = Position.High+Position.HighOffset;//�߳�
		Public_ConvertShortToBuffer(temp2,p);
		p += 2;

		temp2 = 10*Gps_ReadSpeed();//�ٶ�
		Public_ConvertShortToBuffer(temp2,p);
		p += 2;

		temp2 = Position.Course;//����
		Public_ConvertShortToBuffer(temp2,p);
		p += 2;
	}

	time.year = Position.Year;
  time.month = Position.Month;
  time.day = Position.Date;
  time.hour = Position.Hour;
  time.min = Position.Minute;
  time.sec = Position.Second;
  timecount = ConverseGmtime(&time);
  timecount += 8*3600;
  Gmtime(&time, timecount);

  RTC_GetCurTime(&Time);

	if((1==Io_ReadStatusBit(STATUS_BIT_NAVIGATION))
		&&(1==Io_ReadStatusBit(STATUS_BIT_ACC))
	  &&option
	  &&(0 == RtcTimeFlag))//���ʱ����GPSʱ��
	{
		*p++ = Public_HEX2BCD(time.year);//GPSʱ��
    *p++ = Public_HEX2BCD(time.month);
    *p++ = Public_HEX2BCD(time.day);
    *p++ = Public_HEX2BCD(time.hour);      
    *p++ = Public_HEX2BCD(time.min);
    *p++ = Public_HEX2BCD(time.sec);
	}
	else
	{
		*p++ = Public_HEX2BCD(Time.year);    //RTCʱ��
    *p++ = Public_HEX2BCD(Time.month);
    *p++ = Public_HEX2BCD(Time.day);
    *p++ = Public_HEX2BCD(Time.hour);
    *p++ = Public_HEX2BCD(Time.min);
    *p++ = Public_HEX2BCD(Time.sec);
	}
	return 28;
	
}
/**************************************************************************
//��������Report_ClearReportTimeCount
//���ܣ��ϱ�ʱ�����������0
//���룺��
//�������
//����ֵ����
//��ע���������ӵļ�����������0
***************************************************************************/
void Report_ClearReportTimeCount(void)
{
	Link1ReportTimeCount = 0;
	Link2ReportTimeCount = 0;
}
/**************************************************************************
//��������Report_GetReportEventSwitch
//���ܣ���ȡReportEventSwitch��ֵ
//���룺��
//�������
//����ֵ����
//��ע��ReportEventSwitch��ֵ���ڲ���ID 0xF27D������ֵ
***************************************************************************/
u32 Report_GetReportEventSwitch(void)
{
	return ReportEventSwitch;
}
/**************************************************************************
//��������Report_GetOverSpeedReportTimeSpace
//���ܣ���ȡOverSpeedReportTimeSpace��ֵ
//���룺��
//�������
//����ֵ����
//��ע��OverSpeedReportTimeSpace��ֵ���ڲ���ID 0xF259������ֵ
***************************************************************************/
u32 Report_GetOverSpeedReportTimeSpace(void)
{
	return OverSpeedReportTimeSpace;
}
/**************************************************************************
//��������Report_GetOverTimeReportTimeSpace
//���ܣ���ȡOverTimeReportTimeSpace��ֵ
//���룺��
//�������
//����ֵ����
//��ע��OverTimeReportTimeSpace��ֵ���ڲ���ID 0xF277������ֵ
***************************************************************************/
u32 Report_GetOverTimeReportTimeSpace(void)
{
	return OverTimeReportTimeSpace;
}
/**************************************************************************
//��������Report_Link2ReportOpenFlag
//���ܣ�����2�Զ���㱨�Ƿ���Ҫ����
//���룺��
//�����1����Ҫ������0������Ҫ����
//����ֵ����
//��ע��
***************************************************************************/
static u8 Report_Link2ReportOpenFlag(void)
{
	if((TempTrackTimeSpace > 0)&&(TempTrackCount > 0))//��ʱ����
	{
		return 0;
	}
	else if(1 == Io_ReadAlarmBit(ALARM_BIT_EMERGENCY))//��������
	{
		return 0;
	}
	else if((1 == Io_ReadAlarmBit(ALARM_BIT_OVER_SPEED))&&(0 != OverSpeedReportTimeSpace)&&(0x00000001 == (0x00000001&ReportEventSwitch)))//���ٱ���
	{
		return 0;
	}
	else if((1 == Io_ReadAlarmBit(ALARM_BIT_TIRED_DRIVE))&&(0 != OverTimeReportTimeSpace)&&(0x00000002 == (0x00000002&ReportEventSwitch)))//��ʱ����
	{
		return 0;
	}
	else if((0 != Link2AccOnReportTimeSpace)&&(0 != Link2AccOffReportTimeSpace))//����2����������
	{
		return 1;
	}
	else
	{
		return 0;
	}

	
}
/**************************************************************************
//��������Report_GetLink1NextReportPoint
//���ܣ���ȡ����1����һ��λ�û㱨�㣨�㱨ʱ��ͻ㱨���룩
//���룺��
//�������
//����ֵ����
//��ע��
***************************************************************************/
static void Report_GetLink1NextReportPoint(u32 *NextReportTime, u32 *NextReportDistance)
{
	u8 CurOverSpeedFlag = 0;
	u8 CurOverTimeFlag = 0;

	static u8 LastOverSpeedFlag = 0;
	static u8 LastOverTimeFlag = 0;

	CurOverSpeedFlag = Io_ReadAlarmBit(ALARM_BIT_OVER_SPEED);
	CurOverTimeFlag = Io_ReadAlarmBit(ALARM_BIT_TIRED_DRIVE);

	*NextReportTime = 0;
	*NextReportDistance = 0;

	if((TempTrackTimeSpace > 0)&&(TempTrackCount > 0))//��ʱ����
	{
		*NextReportTime = TempTrackTimeSpace;
		*NextReportDistance = 0;
		Link1ReportDistanceSpace = 0;
	}
	else
	{
		if(1 == Io_ReadAlarmBit(ALARM_BIT_EMERGENCY))//��������
		{
			if(0 == ReportStrategy)//��ʱ
			{
				*NextReportTime = EmergencyReportTimeSpace;
				*NextReportDistance = 0;
				Link1ReportDistanceSpace = 0;
			}
			else if(1 == ReportStrategy)//����
			{
				*NextReportTime = 0;
				*NextReportDistance = EmergencyReportDistanceSpace+Link1LastReportDistance;
				Link1ReportDistanceSpace = EmergencyReportDistanceSpace;
			}
			else if(2 == ReportStrategy)//��ʱ+����
			{
				*NextReportTime = EmergencyReportTimeSpace;
				*NextReportDistance = EmergencyReportDistanceSpace+Link1LastReportDistance;
				Link1ReportDistanceSpace = EmergencyReportDistanceSpace;
			}
		}
		else if((1 == Io_ReadAlarmBit(ALARM_BIT_OVER_SPEED))&&(0 != OverSpeedReportTimeSpace)&&(0x00000001 == (0x00000001&ReportEventSwitch)))//���ٱ���
		{
			if((1 == CurOverSpeedFlag)&&(0 == LastOverSpeedFlag))
			{
				Link1ReportTimeCount = 0;
				Link2ReportTimeCount = 0;
			}
			*NextReportTime = OverSpeedReportTimeSpace;
			*NextReportDistance = 0;
			Link1ReportDistanceSpace =  0;
		}
		else if((1 == Io_ReadAlarmBit(ALARM_BIT_TIRED_DRIVE))&&(0 != OverTimeReportTimeSpace)&&(0x00000002 == (0x00000002&ReportEventSwitch)))//��ʱ����
		{
			if((1 == CurOverTimeFlag)&&(0 == LastOverTimeFlag))
			{
				Link1ReportTimeCount = 0;
				Link2ReportTimeCount = 0;
			}
			*NextReportTime = OverTimeReportTimeSpace;
			*NextReportDistance = 0;
			Link1ReportDistanceSpace = 0;
		}
		else 
		{
			if(0 == ReportScheme)//����ACC״̬
			{
				if(1 == Io_ReadStatusBit(STATUS_BIT_ACC))//ACC ON
				{
					if(0 == ReportStrategy)//��ʱ
					{
						*NextReportTime = AccOnReportTimeSpace;
						*NextReportDistance = 0;
						Link1ReportDistanceSpace = 0;
					}
					else if(1 == ReportStrategy)//����
					{
						*NextReportTime = 0;
						*NextReportDistance = AccOnReportDistanceSpace+Link1LastReportDistance;
						Link1ReportDistanceSpace = AccOnReportDistanceSpace;
					}
					else if(2 == ReportStrategy)//��ʱ+����
					{
						*NextReportTime = AccOnReportTimeSpace;
						*NextReportDistance = AccOnReportDistanceSpace+Link1LastReportDistance;
						Link1ReportDistanceSpace = AccOnReportDistanceSpace;
					}
					else
					{
						*NextReportTime = 0;
						*NextReportDistance = 0;
						Link1ReportDistanceSpace = 0;
					}
				}
				else//ACC OFF
				{
					if(0 == ReportStrategy)//��ʱ
					{
						*NextReportTime = AccOffReportTimeSpace;
						*NextReportDistance = 0;
						Link1ReportDistanceSpace = 0;
					}
					else if(1 == ReportStrategy)//����
					{
						*NextReportTime = 0;
						*NextReportDistance = AccOffReportDistanceSpace+Link1LastReportDistance;
						Link1ReportDistanceSpace = AccOffReportDistanceSpace;
					}
					else if(2 == ReportStrategy)//��ʱ+����
					{
						*NextReportTime = AccOffReportTimeSpace;
						*NextReportDistance = AccOffReportDistanceSpace+Link1LastReportDistance;
						Link1ReportDistanceSpace = AccOffReportDistanceSpace;
					}
					else
					{
						*NextReportTime = 0;
						*NextReportDistance = 0;
						Link1ReportDistanceSpace = 0;
					}
				}
			}
			else if(1 == ReportScheme)//����ACC״̬�͵�¼״̬�����жϵ�¼״̬���ٸ���ACC
			{
				if(0 == NaviLcdDriverLoginFlag())//��ʻԱδ��¼
				{
					if(0 == ReportStrategy)//��ʱ
					{
						*NextReportTime = UnloginReportTimeSpace;
						*NextReportDistance = 0;
						Link1ReportDistanceSpace = 0;
					}
					else if(1 == ReportStrategy)//����
					{
						*NextReportTime = 0;
						*NextReportDistance = UnloginReportDistanceSpace+Link1LastReportDistance;
						Link1ReportDistanceSpace = UnloginReportDistanceSpace;
					}
					else if(2 == ReportStrategy)//��ʱ+����
					{
						*NextReportTime = UnloginReportTimeSpace;
						*NextReportDistance = UnloginReportDistanceSpace+Link1LastReportDistance;
						Link1ReportDistanceSpace = UnloginReportDistanceSpace;
					}
					else
					{
						*NextReportTime = 0;
						*NextReportDistance = 0;
						Link1ReportDistanceSpace = 0;
					}
				}
				else//��ʻԱ�ѵ�¼
				{
					if(1 == Io_ReadStatusBit(STATUS_BIT_ACC))//ACC ON
					{
						if(0 == ReportStrategy)//��ʱ
						{
							*NextReportTime = AccOnReportTimeSpace;
							*NextReportDistance = 0;
							Link1ReportDistanceSpace = 0;
						}
						else if(1 == ReportStrategy)//����
						{
							*NextReportTime = 0;
							*NextReportDistance = AccOnReportDistanceSpace+Link1LastReportDistance;
							Link1ReportDistanceSpace = AccOnReportDistanceSpace;
						}
						else if(2 == ReportStrategy)//��ʱ+����
						{
							*NextReportTime = AccOnReportTimeSpace;
							*NextReportDistance = AccOnReportDistanceSpace+Link1LastReportDistance;
							Link1ReportDistanceSpace = AccOnReportDistanceSpace;
						}
						else
						{
							*NextReportTime = 0;
							*NextReportDistance = 0;
							Link1ReportDistanceSpace = 0;
						}
					}
					else//ACC OFF
					{
						if(0 == ReportStrategy)//��ʱ
						{
							*NextReportTime = AccOffReportTimeSpace;
							*NextReportDistance = 0;
							Link1ReportDistanceSpace = 0;
						}
						else if(1 == ReportStrategy)//����
						{
							*NextReportTime = 0;
							*NextReportDistance = AccOffReportDistanceSpace+Link1LastReportDistance;
							Link1ReportDistanceSpace = AccOffReportDistanceSpace;
						}
						else if(2 == ReportStrategy)//��ʱ+����
						{
							*NextReportTime = AccOffReportTimeSpace;
							*NextReportDistance = AccOffReportDistanceSpace+Link1LastReportDistance;
							Link1ReportDistanceSpace = AccOffReportDistanceSpace;
						}
						else
						{
							*NextReportTime = 0;
							*NextReportDistance = 0;
							Link1ReportDistanceSpace = 0;
						}
					}

				}
			}
			else
			{
				*NextReportTime = 0;
				*NextReportDistance = 0;
				Link1ReportDistanceSpace = 0;
			}
		}
	}
	Link2ReportDistanceSpace = Link1ReportDistanceSpace;
	Link1ReportTimeSpace = *NextReportTime;

	LastOverSpeedFlag = CurOverSpeedFlag;
	LastOverTimeFlag = CurOverTimeFlag;
}
/**************************************************************************
//��������Report_GetCurDistance
//���ܣ���ȡ��ǰ�ľ��루�ۼ���ʻ��̣�
//���룺��
//�������
//����ֵ�����루�ۼ���ʻ��̣�
//��ע����λ��
***************************************************************************/
static u32 Report_GetCurDistance(void)
{
	u32 CurMile;

	if(0 == SpeedMonitor_GetCurSpeedType())
	{
		CurMile = Pulse_GetTotalMile()*10;
	}
	else
	{
		CurMile = MileMeter_GetTotalMile()*10;
	}

	return CurMile;
}
/**************************************************************************
//��������Report_GetPositionAdditionalInfo
//���ܣ���ȡλ�ø�����Ϣ
//���룺��
//�����λ�ø�����Ϣ
//����ֵ��λ�ø�����Ϣ����
//��ע��
***************************************************************************/
static u16 Report_GetPositionAdditionalInfo(u8 *pBuffer)
{
	u8 *p = NULL;
	u16 length;

	p = pBuffer;
	length = 0;

	length = Report_GetPositionStdAdditionalInfo(p);//��ȡ��׼��λ�ø�����Ϣ
	p = p+length;

	if(DetectMultiStatus(0,2,DetectOption_functionTest,DetectOption_protocolTest))//dxl,2016.5.7������ʱ�Զ���ĸ���ID������
	{
	
	}
	else
	{
      length += Report_GetPositionEiAdditionalInfo(p);//��ȡ�����Զ����λ�ø�����Ϣ
	}
	
	return length;	
}
/**************************************************************************
//��������Report_GetPositionStdAdditionalInfo
//���ܣ���ȡ��׼��λ�ø�����Ϣ
//���룺��
//�������׼��λ�ø�����Ϣ
//����ֵ����׼��λ�ø�����Ϣ����
//��ע��������ϢID:0x01~0x04,0x11~0x13,0x25,0x2a,0x2b,0x30,0x31
***************************************************************************/
static u16 Report_GetPositionStdAdditionalInfo(u8 *pBuffer)
{
	u8 *p = NULL;
	u8	i,flag;
	u8	BufferLen;
	u8	NavigationFlag;
	u16 length;
	u32 temp;
	u16 temp2;
	u16 temp3;
	u16 TempLen;
	u8  Buffer[10];
	static u8 LastRouteAdditionalIDInfo[10];//·�߸���ID��Ϣ
	p = pBuffer;
	length = 0;

	*p++ = 0x01;//��̣�IDΪ0x01	
	*p++ = 4;
	temp = Public_GetCurTotalMile();
	Public_ConvertLongToBuffer(temp,p);
	p += 4;
	length += 6;

	TempLen = JointechOiLCost_GetSubjoinInfoCurOilVolume(p);//������IDΪ0x02����ͨ���������߶�ѡһ
	p += TempLen;
	length += TempLen;
	TempLen = OilWear_GetSubjoinInfoCurOilVal(p);//������IDΪ0x02����ʵ������
	p += TempLen;
	length += TempLen;

	*p++ = 0x03;//��ʻ��¼���ٶȣ�IDΪ0x03���˴����׼Ҫ��һ�������˴���
	*p++ = 0x02;//��������������������ѡ��GPS�ٶ�ʱ���������ٶȲ�Ϊ0ʹ�������ٶȣ���Ϊ0ʹ��GPS�ٶȣ�
	/* dxl,2015.5.11����
	if(1 == SpeedMonitor_GetCurSpeedType())
	{
		if(0 == Pulse_GetSecondSpeed())
		{
			temp2 = 10*Gps_ReadSpeed();
		}
		else
		{
			temp2 = 10*Pulse_GetSecondSpeed();
		}
	}
	else
	{
		temp2 = 10*Pulse_GetSecondSpeed();
	}
	*/
	if(DetectMultiStatus(0,2,DetectOption_functionTest,DetectOption_protocolTest))
	{
		temp2 = 10*Pulse_GetSecondSpeed();
	}
	else
	{
		if(0 == (SpeedFlag&0x01))//�����ٶ�
		{
			temp2 = 10*Pulse_GetSecondSpeed();
		}
		else//GPS�ٶ�
		{
			temp2 = 10*Gps_ReadSpeed();
		}
	}
	Public_ConvertShortToBuffer(temp2,p);
	p += 2;
	length += 4;

	TempLen = Report_GetManualAlarmSubjoinInfo(p);//��Ҫ�˹�ȷ�ϱ���ʱ���ID��IDΪ0x04,dxl,2016.5.6
  p += TempLen;
  length += TempLen;
	
	TempLen = SpeedMonitor_GetCurOverSpeedSubjoinInfo(p);//���ٱ���������Ϣ��IDΪ0x11
	p += TempLen;
	length += TempLen;

	if(1 == Io_ReadAlarmBit(ALARM_BIT_IN_OUT_AREA))//dxl,2016.5.23�н������򱨾�ʱ�����Ӷ�Ӧ�ĸ���ID
	{
		  AreaInOutAlarmClearEnableFlag = 1;
      TempLen = Area_GetInOutAreaAlarmSubjoinInfo(p);//��������/·�߱���������Ϣ��IDΪ0x12
      p += TempLen;
      length += TempLen;
	}
	
	if(DetectStatus(DetectOption_functionTest))
	{
			flag = RouteInToOutFlag;
	}
	else
	{
			flag = Io_ReadAlarmBit(ALARM_BIT_IN_OUT_ROAD);
	}
	if(1 == flag)//dxl,2016.5.23�н���·�߱���ʱ�����Ӷ�Ӧ�ĸ���ID
	{
			RouteInToOutFlag = 0;
			BufferLen = Route_GetInOutAlarmSubjoinInfo(Buffer);//dxl,2016.5.18ֻ�н���·���Ǹ�ʱ�̵�λ�û㱨��Ҫ�Ӹ���ID 0x12
			if(BufferLen > 0)
			{
					flag = 0;
					for(i=0; i<8; i++)
					{
							if(Buffer[i] != LastRouteAdditionalIDInfo[i])
							{
									flag = 1;
									memcpy(LastRouteAdditionalIDInfo,Buffer,8);
									break;
							}
					}
	
					if(1 == flag)
					{
							TempLen = BufferLen;
							memcpy(p,Buffer,TempLen);
							p += TempLen;
							length += TempLen;
					}
			}
	}
					
	TempLen = Route_GetDriveAlarmInfoSubjoinInfo(p);//����·�߱���������Ϣ��IDΪ0x13
	p += TempLen;
	length += TempLen;

	
	*p++ = 0x25;//��չ�����ź�״̬��IDΪ0x25	
	*p++ = 4;
	temp = Io_ReadExtCarStatus();
	Public_ConvertLongToBuffer(temp,p);
	p += 4;
	length += 6;

	*p++ = 0x2a;//IO״̬��IDΪ0x2a	
	*p++ = 2;
	temp2 = Io_ReadIoStatus();
	if((1 == Io_ReadStatusBit(STATUS_BIT_ACC))&&(0x02 == (temp2&0x02)))//������ACC ON��SLEEP ON����ì�ܵ����ʱ��ACC ONΪ׼
	{
		temp2 = temp2&0xfc;
	}
	Public_ConvertShortToBuffer(temp2,p);
	p += 2;
	length += 4;

	temp2 = Ad_GetValue(ADC_EXTERN1);
	temp3 = Ad_GetValue(ADC_EXTERN2);
	*p++ = 0x2b;//ģ������IDΪ0x2b����16λΪģ����2����16λΪģ����1
	*p++ = 4;
	Public_ConvertShortToBuffer(temp3,p);
	p += 2;
	Public_ConvertShortToBuffer(temp2,p);
	p += 2;
	length += 6;

	*p++ = 0x30;//���������ź�ǿ�ȣ�IDΪ0x30	
	*p++ = 1;
	*p++ = communicatio_GetSignalIntensity();
	length += 3;

	NavigationFlag = Io_ReadStatusBit(STATUS_BIT_NAVIGATION);
	if((0 == NavigationFlag))
	//	||(1 == HYTestMachine3Flag))//dxl,2016.5.13���Ҫ�󲻶�λʱΪ0
	{
	    *p++ = 0x31;//��λ������IDΪ0x31    
      *p++ = 1;
      *p++ = 0;
      length += 3;
	}
	else
	{
      *p++ = 0x31;//��λ������IDΪ0x31    
      *p++ = 1;
      *p++ = Gps_ReadStaNum();
      length += 3;
	}
	
	return length;
	
}
/**************************************************************************
//��������Report_GetPositionEiAdditionalInfo
//���ܣ���ȡ�����Զ����λ�ø�����Ϣ
//���룺��
//����������Զ����λ�ø�����Ϣ
//����ֵ�������Զ����λ�ø�����Ϣ����
//��ע��
***************************************************************************/
static u16 Report_GetPositionEiAdditionalInfo(u8 *pBuffer)
{
	u8 length;
	u8 *p = NULL;
	u32 temp;
	u8 VerifyCode;
	u8 TempLen;

	length = 0;
	p = pBuffer;

	p += 2;//�տ���������ID����־��1�ֽڣ�����1�ֽ�

	*p++ = 0xE1;//�Զ���״̬��2��IDΪ0xE1
	*p++ = 4;
	temp = Io_ReadSelfDefine2();
	Public_ConvertLongToBuffer(temp,p);
	p += 4;
	length += 6;

	TempLen = CarLoad_GetCurWeightSubjoinInfo(p);//����������IDΪ0xE2
	p += TempLen;
	length += TempLen;

	TempLen = JointechOiLCost_GetSubjoinInfoCurOilLevelPercent(p);//��λ�߶���ֱȣ�IDΪ0xE4
	p += TempLen;
	length += TempLen;

	TempLen = OilWear_GetSubjoinInfoCurOilResVal(p);//��ʵ����������ֵ��IDΪ0xE5
	p += TempLen;
	length += TempLen;

	TempLen = Temperature_PosEx(p);//�¶Ȳɼ�����IDΪ0xE8
	p += TempLen;
	length += TempLen;

	//TempLen = Gyro_GetSubjoinInfo(p);//�����١������١���ת���־��IDΪ0xE9
	//p += TempLen;
	//length += TempLen;

        TempLen = DeepPlow_GetSubjoinInfoCurDeepVal(p);//����ֵ��IDΪ0xEA
	p += TempLen;
	length += TempLen;

        TempLen = TurnSpeed_GetSubjoinInfoCurTurnSpeedVal(p);//ת�٣�IDΪ0xEB
	p += TempLen;
	length += TempLen;

    

	VerifyCode = Public_GetSumVerify(pBuffer+2,length);//У���
	*p++ = VerifyCode;
	length++;

	*pBuffer = 0xF0;//������չ������Ϣ��־
	*(pBuffer+1) = length;

	return length+2;
	
}
/**************************************************************************
//��������Report_GetManualAlarmSubjoinInfo
//���ܣ���ȡ�˹�����ȷ�ϸ�����Ϣ
//���룺��
//������˹�����ȷ�ϸ�����Ϣ
//����ֵ���˹�����ȷ�ϸ�����Ϣ����
//��ע���˹�����ȷ�ϸ���ID 0x04
//���˹�����ȷ�ϵ���bit0,bit3,bit20-22,bit27-28
***************************************************************************/
static u8 Report_GetManualAlarmSubjoinInfo(u8 *pBuffer)
{
	  static u32 LastAlarm = 0;
	  static u16 ManualAlarmEvID = 0;//�˹�����ȷ���¼�ID������1��ID��1
	  static u8 LastAreaAlarmInfo[10] = {0};//���򱨾���Ϣ
	  static u8 LastRouteAlarmInfo1[10] = {0};//·�߱�����Ϣ1������·�ߣ�
		static u8 LastRouteAlarmInfo2[10] = {0};//·�߱�����Ϣ2����ʻ����/������
		
    u32 ManualAlarmMask = 0x18000009;//bit0,bit3,bit27-28
	  u32 Alarm;
	  u32 temp;
	  u8 length;
	  u8 *p = NULL;
		u8  Buffer[10];
		u8  flag;
		u8  i;
	
	  Alarm = Io_ReadAlarm();
	  Alarm = Alarm & ManualAlarmMask;
	  temp = Alarm ^ LastAlarm;
	
		flag = 0;
	  if((LastAlarm != Alarm)&&(temp == (temp&Alarm)))//���˹���������
		{
		    flag = 1;
		}
		else//û���˹���������
		{
		    length = 0;
		}
	  LastAlarm = Alarm;  
		
		if(1 == Io_ReadAlarmBit(ALARM_BIT_IN_OUT_AREA))//�н������򱨾�
		{
		    Area_GetInOutAreaAlarmSubjoinInfo(Buffer);
			  for(i=0; i<8; i++)
			  {
				    if(Buffer[i] != LastAreaAlarmInfo[i])
						{
						    flag = 1;
					      memcpy(LastAreaAlarmInfo,Buffer,8);
							  break;
						}
				}
			  //if(0 != strncmp((const char *)Buffer,(char *)LastAreaAlarmInfo,8)) dxl,2016.5.14����һ���ǳ�������÷�����Ϊ���ܲ���8���ֽ�ʱ�ȽϾͽ�����(��Buffer[2]==0)
				//{
				    //flag = 1;
					  //memcpy(LastAreaAlarmInfo,Buffer,8);
				//}
		}
		else if(1 == Io_ReadAlarmBit(ALARM_BIT_IN_OUT_ROAD))//�н���·�߱���
		{
		    Route_GetInOutAlarmSubjoinInfo(Buffer);
			  for(i=0; i<8; i++)
			  {
				    if(Buffer[i] != LastRouteAlarmInfo1[i])
						{
						    flag = 1;
					      memcpy(LastRouteAlarmInfo1,Buffer,8);
							  break;
						}
				}
		}
		else if(1 == Io_ReadAlarmBit(ALARM_BIT_LOAD_OVER_DRIVE))//��·����ʻ����/���̱���
		{
		    Route_GetDriveAlarmInfoSubjoinInfo(Buffer);
			  for(i=0; i<9; i++)
			  {
				    if(Buffer[i] != LastRouteAlarmInfo2[i])
						{
						    flag = 1;
					      memcpy(LastRouteAlarmInfo2,Buffer,9);
							  break;
						}
				}
		}
		if(DetectStatus(DetectOption_functionTest))//dxl,2016.5.24
		{
				if(RouteInToOutFlag > 0)
				{
				    flag = 1;
				}
		}
		if(1 == flag)
		{
		    ManualAlarmEvID++;
			  p = pBuffer;
			  *p++ = 0x04;//����ID
			  *p++ = 2;//����ID����
			  *p++ = (ManualAlarmEvID&0xff00) >> 8;
			  *p++ = ManualAlarmEvID&0xff;
			  length = 4;
		}
		else
		{
		    length = 0;
		}
		return length;
}































