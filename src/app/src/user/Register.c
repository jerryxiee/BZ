/************************************************************************
//�������ƣ�Register.c
//���ܣ���ģ���ṩ��ʻ��¼�����ݼ�¼��д���ݣ������ݼ����������ݣ��ӿ�
//�汾�ţ�V0.1
//��Ȩ˵������Ȩ�����������������¼����������޹�˾
//�����ˣ�dxl
//����ʱ�䣺2015.3
//�ļ�������
//�汾��¼���汾��¼������汾���޸��ˡ��޸�ʱ�䡢�޸�ԭ���޸ļ�Ҫ˵��
//V0.1 ������ 2015.3.28 ����
*************************************************************************/

/********************�ļ�����*************************/
#include <stdio.h>
#include <string.h>

#include "Register.h"
#include "spi_flashapi.h"
#include "spi_flash.h"
#include "Public.h"



/********************���ر���*************************/
static REGISTER_STRUCT Register[REGISTER_TYPE_MAX];
static u8 	RegisterBuffer[REGISTER_BUFFER_SIZE] = {0};//����д��ʻ��¼������ʱ�Ļ���
static s16	CheckSector[REGISTER_TYPE_MAX] = {0,0,0,0,0,0,0,0};
static u32	CheckTimeCountMin[REGISTER_TYPE_MAX] = {0,0,0,0,0,0,0,0};
static u32	CheckTimeCountMax[REGISTER_TYPE_MAX] = {0,0,0,0,0,0,0,0};
static u16 	CheckErrorCount[REGISTER_TYPE_MAX] = {0,0,0,0,0,0,0,0};
static u16 	CheckSuccessCount[REGISTER_TYPE_MAX] = {0,0,0,0,0,0,0,0};
static s16	PacketSector[REGISTER_TYPE_MAX] = {0,0,0,0,0,0,0,0};
static s16	PacketStep[REGISTER_TYPE_MAX] = {0,0,0,0,0,0,0,0};

const u16 RegisterStepLen[REGISTER_TYPE_MAX] = {
	REGISTER_SPEED_STEP_LEN,
	REGISTER_POSITION_STEP_LEN,
	REGISTER_DOUBT_STEP_LEN,
	REGISTER_OVER_TIME_STEP_LEN,
	REGISTER_DRIVER_STEP_LEN,
	REGISTER_POWER_STEP_LEN,
	REGISTER_PRAMATER_STEP_LEN,
	REGISTER_SPEED_STATUS_STEP_LEN,
};

const u16 RegisterCollectLen[REGISTER_TYPE_MAX] = {
	REGISTER_SPEED_COLLECT_LEN,
	REGISTER_POSITION_COLLECT_LEN,
	REGISTER_DOUBT_COLLECT_LEN,
	REGISTER_OVER_TIME_COLLECT_LEN,
	REGISTER_DRIVER_COLLECT_LEN,
	REGISTER_POWER_COLLECT_LEN,
	REGISTER_PRAMATER_COLLECT_LEN,
	REGISTER_SPEED_STATUS_COLLECT_LEN,
};

const u16 RegisterPacketList[REGISTER_TYPE_MAX] = {
	REGISTER_SPEED_PACKET_LIST,
	REGISTER_POSITION_PACKET_LIST,
	REGISTER_DOUBT_PACKET_LIST,
	REGISTER_OVER_TIME_PACKET_LIST,
	REGISTER_DRIVER_PACKET_LIST,
	REGISTER_POWER_PACKET_LIST,
	REGISTER_PRAMATER_PACKET_LIST,
	REGISTER_SPEED_STATUS_PACKET_LIST,
};

const u16 RegisterStartSector[REGISTER_TYPE_MAX] = {
	FLASH_SPEED_START_SECTOR,
	FLASH_POSITION_START_SECTOR,
	FLASH_DOUBT_START_SECTOR,
	FLASH_OVER_TIME_START_SECTOR,
	FLASH_DRIVER_START_SECTOR,
	FLASH_POWER_START_SECTOR,
	FLASH_PRAMATER_START_SECTOR,
	FLASH_SPEED_STATUS_START_SECTOR,
};

const u16 RegisterEndSector[REGISTER_TYPE_MAX] = {
	FLASH_SPEED_END_SECTOR,
	FLASH_POSITION_END_SECTOR,
	FLASH_DOUBT_END_SECTOR,
	FLASH_OVER_TIME_END_SECTOR,
	FLASH_DRIVER_END_SECTOR,
	FLASH_POWER_END_SECTOR,
	FLASH_PRAMATER_END_SECTOR,
	FLASH_SPEED_STATUS_END_SECTOR,
};

/********************ȫ�ֱ���*************************/


/********************�ⲿ����*************************/

/********************���غ�������*********************/
static ErrorStatus Register_CheckWritePram(u8 Type,u16 length, u32 Time);
static ErrorStatus Register_CheckReadPram(u8 Type,TIME_T *StartTime,TIME_T *EndTime,u16 block);
static void Register_CheckArea(u8 Type);
static void Register_EraseOneArea(u8 Type);

/********************��������*************************/
/**************************************************************************
//��������Register_TimeTask(void)
//���ܣ���¼�����ݴ洢��ʱ����
//���룺��
//�������
//����ֵ��ʼ��ΪENABLE
//��ע��50ms����1�Σ���¼�����ݴ洢�ɸ�Ӧ�ó������Register_Write����ʵ�֣�������ֻ�Ƕ�
//�洢�ı�������ʼ����ʵʱ��⣬����������о�����
***************************************************************************/
FunctionalState Register_TimeTask(void)
{
	u8 	i;
	u8 	flag;

	flag = 0;
	//����Ƿ��ʼ��
	for(i=0; i<REGISTER_TYPE_MAX; i++)
	{
		if(0 == Register[i].InitFlag)//δ�Լ����
		{
			Register_CheckArea(i);

			flag = 1;
		}
	}

	if(1 == flag)
	{
		return ENABLE;
	}

	//�������Ƿ񳬳���Χ
	for(i=0; i<REGISTER_TYPE_MAX; i++)
	{
		if((Register[i].CurrentSector > Register[i].EndSector)||(Register[i].CurrentSector < Register[i].StartSector))
		{
			Register[i].InitFlag = 0;
		}

		if((Register[i].OldestSector > Register[i].EndSector)||(Register[i].OldestSector < Register[i].StartSector))
		{
			Register[i].InitFlag = 0;
		}

		if((Register[i].CurrentStep > Register[i].SectorStep)||(Register[i].CurrentSector < 0))
		{
			Register[i].InitFlag = 0;
		}

		if(Register[i].StepLen != RegisterStepLen[i])
		{
			Register[i].InitFlag = 0;
		}

		if(Register[i].StartSector != RegisterStartSector[i])
		{
			Register[i].InitFlag = 0;
		}

		if(Register[i].EndSector != RegisterEndSector[i])
		{
			Register[i].InitFlag = 0;
		}

		if(Register[i].SectorStep != (FLASH_ONE_SECTOR_BYTES/RegisterStepLen[i]))
		{
			Register[i].InitFlag = 0;
		}

	
	}


	return ENABLE;
}
/**************************************************************************
//��������Register_Write
//���ܣ�дһ����ʻ��¼������
//���룺Type:���ͣ���ѡֵΪREGISTER_TYPE_SPEED��REGISTER_TYPE_POSITION��
//REGISTER_TYPE_DOUBT��REGISTER_TYPE_OVER_TIME��REGISTER_TYPE_DRIVER��
//REGISTER_TYPE_POWER��REGISTER_TYPE_PRAMATER��REGISTER_TYPE_SPEED_STATUS��
//pBuffer:ָ�������׵�ַ��length:���ݳ��ȣ�Time:32λhex��ʾ��RTCʱ��
//�������
//����ֵ���ɹ�SUCCESS,ʧ��ERROR
//��ע����ʻ��¼�����ݼ�¼��flash�ĸ�ʽΪ��ʱ�䣨4�ֽڣ�+�������ݣ��̶����ȣ�+У��ͣ�1�ֽڣ���ǰ�������ֽ����ݵ�У��ͣ�
//REGISTER_TYPE_SPEED�������ݸ�ʽΪ����ʻ��¼�Ǳ�׼��A.17�涨�ĸ�ʽ��126�ֽڣ�+13�ֽ�Ԥ���ռ�
//REGISTER_TYPE_POSITION�������ݸ�ʽΪ����ʻ��¼�Ǳ�׼��A.19�涨�ĸ�ʽ��666�ֽڣ�+10�ֽ�Ԥ���ռ�
//REGISTER_TYPE_DOUBT�������ݸ�ʽΪ����ʻ��¼�Ǳ�׼��A.21�涨�ĸ�ʽ��234�ֽڣ�+12�ֽ�Ԥ���ռ�
//REGISTER_TYPE_OVER_TIME�������ݸ�ʽΪ����ʻ��¼�Ǳ�׼��A.24�涨�ĸ�ʽ��50�ֽڣ�+12�ֽ�Ԥ���ռ�
//REGISTER_TYPE_DRIVER�������ݸ�ʽΪ����ʻ��¼�Ǳ�׼��A.26�涨�ĸ�ʽ��25�ֽڣ�+6�ֽ�Ԥ���ռ�
//REGISTER_TYPE_POWER�������ݸ�ʽΪ����ʻ��¼�Ǳ�׼��A.28�涨�ĸ�ʽ��7�ֽڣ�+6�ֽ�Ԥ���ռ�
//REGISTER_TYPE_PRAMATER�������ݸ�ʽΪ����ʻ��¼�Ǳ�׼��A.30�涨�ĸ�ʽ��7�ֽڣ�+6�ֽ�Ԥ���ռ�
//REGISTER_TYPE_SPEED_STATUS�������ݸ�ʽΪ����ʻ��¼�Ǳ�׼��A.32�涨�ĸ�ʽ��133�ֽڣ�+6�ֽ�Ԥ���ռ�
***************************************************************************/
ErrorStatus Register_Write(u8 Type, u8 *pBuffer, u16 length, u32 Time)
{
	u16 	i,j;
	u32 	Address;
	u32 	TimeCount;
	u8 	VerifySum;
	u8 	flag;

	//������ȷ�Լ��
	if(ERROR == Register_CheckWritePram(Type,length,Time))
	{
		return ERROR;
	}
	if(0 == Register[Type].InitFlag)
	{
		return ERROR;
	}

	//д֮ǰ�ж�flash�����Ƿ�д����д���Ļ��������
	Address = Register[Type].CurrentSector*FLASH_ONE_SECTOR_BYTES+Register[Type].CurrentStep*Register[Type].StepLen;
	sFLASH_ReadBuffer(RegisterBuffer,Address,Register[Type].StepLen);
	for(i=0; i<Register[Type].StepLen; i++)
	{
		if(0xff != RegisterBuffer[i])
		{
			sFLASH_EraseSector(Address);
			Register[Type].CurrentStep = 0;
			for(j=0; j<200; j++)
			{

			}
			Address = Register[Type].CurrentSector*FLASH_ONE_SECTOR_BYTES;
			break;
		}
	}

	//д����
        Public_ConvertLongToBuffer(Time,RegisterBuffer);
	memcpy(RegisterBuffer+4,pBuffer,length);
	VerifySum = Public_GetSumVerify(RegisterBuffer,length+4);
	RegisterBuffer[4+length] = VerifySum;
	sFLASH_WriteBuffer(RegisterBuffer,Address,length+5);

	//������
	for(i=0; i<REGISTER_BUFFER_SIZE; i++)
	{
		RegisterBuffer[i] = 0;
	}
	sFLASH_ReadBuffer(RegisterBuffer,Address,length+5);
	TimeCount = Public_ConvertBufferToLong(RegisterBuffer);
	flag = 0;
	if(TimeCount != Time)
	{
		flag = 1;
	}
	if(RegisterBuffer[length+4] != VerifySum)
	{
		flag = 1;
	}
	for(i=0; i<length; i++)
	{
		if(RegisterBuffer[4+i] != *(pBuffer+i))
		{
			flag = 1;
			break;
		}
	}
	if(1 == flag)
	{
		sFLASH_EraseSector(Address);
		Register[Type].CurrentStep = 0;
		return ERROR;
	}

	//������1
	Register[Type].CurrentStep++;
	if(Register[Type].CurrentStep >= Register[Type].SectorStep)
	{
		Register[Type].CurrentStep = 0;
		Register[Type].CurrentSector++;
		if(Register[Type].CurrentSector >= Register[Type].EndSector)
		{
			Register[Type].CurrentSector = Register[Type].StartSector;
			Register[Type].LoopFlag = 1;
		}
		Address = Register[Type].CurrentSector*FLASH_ONE_SECTOR_BYTES;
		sFLASH_EraseSector(Address);
		if(1 == Register[Type].LoopFlag)
		{
			Register[Type].OldestSector++;
			if(Register[Type].OldestSector >= Register[Type].EndSector)
			{
				Register[Type].OldestSector = Register[Type].StartSector;
			}
		}
	}

	return SUCCESS;	
	
}
/**************************************************************************
//��������Register_Read
//���ܣ���ȡָ������ʱ��ǰ��N����ʻ��¼������
//���룺Type:���ͣ���ѡֵΪREGISTER_TYPE_SPEED��REGISTER_TYPE_POSITION��
//REGISTER_TYPE_DOUBT��REGISTER_TYPE_OVER_TIME��REGISTER_TYPE_DRIVER��
//REGISTER_TYPE_POWER��REGISTER_TYPE_PRAMATER��REGISTER_TYPE_SPEED_STATUS��
//pBuffer:ָ�������׵�ַ��EndTime:����ʱ�䣻block:����
//�������
//����ֵ����ȡ�����ݳ���
//��ע�����ñ�����ķ�ʽ���������һ����¼��ʱ��պõ��ڽ���ʱ�䣬�ü�¼�������
***************************************************************************/
u16 Register_Read(u8 Type,u8 *pBuffer,TIME_T StartTime,TIME_T EndTime, u8 block)
{
	u16 	length;
	u8 	BlockCount; 
	u8 	flag;
	u8 	FindFlag;
	s16 	Sector;
	s16 	Step;
	u32 	Address;
	u32 	TimeCount;
	u32 	EndTimeCount;
	u32	StartTimeCount;
	u8 	*p = NULL;

	length = 0;
	//������ȷ�Լ��
	if(ERROR == Register_CheckReadPram(Type,&StartTime,&EndTime,block))
	{
		return length;
	}
	if(0 == Register[Type].InitFlag)
	{
		return length;
	}
	if(NULL != p)
	{
		return length;
	}

	//�����µ��Ǹ��������Ʋ��ң���ȷ������
	Sector = Register[Type].CurrentSector;
	Step = 0;
	EndTimeCount = ConverseGmtime(&EndTime);
	StartTimeCount = ConverseGmtime(&StartTime);
	FindFlag = 0;
	for(;;)
	{
		flag = 0;
		for(Step=0; Step<Register[Type].SectorStep; Step++)//�ڸ������ҵ�һ����Ч���ݣ�һ��Ϊ��1��
		{
			Address = Sector*FLASH_ONE_SECTOR_BYTES+Step*Register[Type].StepLen;
			sFLASH_ReadBuffer(RegisterBuffer,Address,Register[Type].StepLen);
			TimeCount = Public_ConvertBufferToLong(RegisterBuffer);
			if(RegisterBuffer[Register[Type].StepLen-1] == Public_GetSumVerify(RegisterBuffer,Register[Type].StepLen-1))
			{
				flag = 1;
				break;
			}
		}
		if(1 == flag)
		{
			if(TimeCount <= EndTimeCount)
			{
				FindFlag = 1;
				break;
			}
		}
		if(Sector == Register[Type].OldestSector)
		{
			break;
		}
		Sector--;
		if(Sector < Register[Type].StartSector)
		{
			Sector = Register[Type].EndSector - 1;
		}
		
	}

	//��ȡ����
	BlockCount = 0;
	if(1 == FindFlag)
	{
		if(Sector == Register[Type].CurrentSector)
		{
			Step = Register[Type].CurrentStep-1;
		}
		else
		{
			Step = Register[Type].SectorStep-1;
		}
		p = pBuffer;
		for(;;)
		{
			Address = Sector*FLASH_ONE_SECTOR_BYTES+Step*Register[Type].StepLen;
			sFLASH_ReadBuffer(RegisterBuffer,Address,Register[Type].StepLen);
			TimeCount = Public_ConvertBufferToLong(RegisterBuffer);
			if((RegisterBuffer[Register[Type].StepLen-1] == Public_GetSumVerify(RegisterBuffer,Register[Type].StepLen-1))&&(TimeCount <= EndTimeCount))
			{
				if(TimeCount < StartTimeCount)
				{
					break;
				}
				length += RegisterCollectLen[Type];
				if(length <= 1000)
				{
					memcpy(p,RegisterBuffer+4,RegisterCollectLen[Type]);
					p += RegisterCollectLen[Type];
					BlockCount++;
				}
				else
				{
					length -= RegisterCollectLen[Type];
					break;
				}
				
			}

			if((Sector == Register[Type].OldestSector)&&(0 == Step))
			{
				break;
			}

			if((BlockCount >= block)||(BlockCount >= RegisterPacketList[Type]))
			{
				break;
			}

			Step--;
			if(Step < 0)
			{
				Step = Register[Type].SectorStep-1;
				Sector--;
				if(Sector < Register[Type].StartSector)
				{
					Sector = Register[Type].EndSector - 1;
				}
			}
			
			
		}
	}
	
	return length;
	
}
/**************************************************************************
//��������Register_GetNewestTime(u8 Type)
//���ܣ���ȡ�洢�����¼�¼ʱ��
//���룺Type:���ͣ���ѡֵΪREGISTER_TYPE_SPEED��REGISTER_TYPE_POSITION��
//REGISTER_TYPE_DOUBT��REGISTER_TYPE_OVER_TIME��REGISTER_TYPE_DRIVER��
//REGISTER_TYPE_POWER��REGISTER_TYPE_PRAMATER��REGISTER_TYPE_SPEED_STATUS
//�������
//����ֵ��32λhexֵ��ʾ��ʱ��
//��ע������ֵΪ0��ʾ�ô洢����û�м�¼�κ�����,����ֵΪ0xffffffff��ʾ��������
***************************************************************************/
u32 Register_GetNewestTime(u8 Type)
{
	s16 	Sector;
	s16 	Step;
	u32 	Address;
	u32 	TimeCount = 0;


	if(Type >= REGISTER_TYPE_MAX)
	{
		return 0xffffffff;
	}
	if(0 == Register[Type].InitFlag)
	{
		return 0xffffffff;
	}

	if((Register[Type].CurrentSector == Register[Type].OldestSector)&&(0 == Register[Type].CurrentStep))
	{
		return 0;
	}

	Sector = Register[Type].CurrentSector;
	Step = Register[Type].CurrentStep;
	
	Step--;
	if(Step < 0)
	{
		Step = Register[Type].SectorStep - 1;
		Sector--;
		if(Sector < Register[Type].StartSector)
		{
			Sector = Register[Type].EndSector - 1;
		}
	}

	for(;;)
	{
		Address = Sector*FLASH_ONE_SECTOR_BYTES+Step*Register[Type].StepLen;
		sFLASH_ReadBuffer(RegisterBuffer,Address,Register[Type].StepLen);
		TimeCount = Public_ConvertBufferToLong(RegisterBuffer);
		if(RegisterBuffer[Register[Type].StepLen-1] == Public_GetSumVerify(RegisterBuffer,Register[Type].StepLen-1))
		{
			break;
		}

		Step--;
		if(Step < 0)
		{
			Step = Register[Type].SectorStep-1;
			Sector--;
			if(Sector < Register[Type].StartSector)
			{
				Sector = Register[Type].EndSector - 1;
			}
		}
			
		if((Sector == Register[Type].OldestSector)&&(0 == Step))
		{
			break;
		}
	}
	return TimeCount;
}
/**************************************************************************
//��������Register_GetOldestTime(u8 Type)
//���ܣ���ȡ�洢�����ϼ�¼ʱ��
//���룺Type:���ͣ���ѡֵΪREGISTER_TYPE_SPEED��REGISTER_TYPE_POSITION��
//REGISTER_TYPE_DOUBT��REGISTER_TYPE_OVER_TIME��REGISTER_TYPE_DRIVER��
//REGISTER_TYPE_POWER��REGISTER_TYPE_PRAMATER��REGISTER_TYPE_SPEED_STATUS
//�������
//����ֵ��32λhexֵ��ʾ��ʱ��
//��ע������ֵΪ0��ʾ��û�м�¼����
***************************************************************************/
u32 Register_GetOldestTime(u8 Type)
{
	s16 	Sector;
	s16 	Step;
	u32 	Address;
	u32 	TimeCount = 0;

	if(Type >= REGISTER_TYPE_MAX)
	{
		return 0xffffffff;
	}
	if(0 == Register[Type].InitFlag)
	{
		return 0xffffffff;
	}

	if((Register[Type].CurrentSector == Register[Type].OldestSector)&&(0 == Register[Type].CurrentStep))
	{
		return 0;
	}

	Sector = Register[Type].OldestSector;
	Step = 0;
	

	for(;;)
	{
		Address = Sector*FLASH_ONE_SECTOR_BYTES+Step*Register[Type].StepLen;
		sFLASH_ReadBuffer(RegisterBuffer,Address,Register[Type].StepLen);
		TimeCount = Public_ConvertBufferToLong(RegisterBuffer);
		if(RegisterBuffer[Register[Type].StepLen-1] == Public_GetSumVerify(RegisterBuffer,Register[Type].StepLen-1))
		{
			break;
		}

		Step++;
		if(Step >= Register[Type].SectorStep)
		{
			Step = 0;
			Sector++;
			if(Sector >= Register[Type].EndSector)
			{
				Sector = Register[Type].StartSector;
			}
		}
			
		if((Sector == Register[Type].CurrentSector)&&(Step >= Register[Type].CurrentStep))
		{
			break;
		}
	}
	return TimeCount;
}

/**************************************************************************
//��������Register_EraseRecorderData(void)
//���ܣ�������¼�����д洢������
//���룺��
//�������
//����ֵ����
//��ע��������¼��flash�洢�����ݣ���������������ط��洢�ļ�¼������û��ȥ����
***************************************************************************/
void Register_EraseRecorderData(void)
{
	Register_EraseOneArea(REGISTER_TYPE_SPEED);
	Register_EraseOneArea(REGISTER_TYPE_POSITION);
	Register_EraseOneArea(REGISTER_TYPE_DOUBT);
	Register_EraseOneArea(REGISTER_TYPE_OVER_TIME);
	Register_EraseOneArea(REGISTER_TYPE_DRIVER);
	Register_EraseOneArea(REGISTER_TYPE_POWER);
	Register_EraseOneArea(REGISTER_TYPE_PRAMATER);
	Register_EraseOneArea(REGISTER_TYPE_SPEED_STATUS);
}

/**************************************************************************
//��������Register_GetPacketData(u8 *pBuffer, u8 Type, u16 PacketNum)
//���ܣ���ȡ�ְ�����
//���룺Type:���ͣ���ѡֵΪREGISTER_TYPE_SPEED��REGISTER_TYPE_POSITION��
//REGISTER_TYPE_DOUBT��REGISTER_TYPE_OVER_TIME��REGISTER_TYPE_DRIVER��
//REGISTER_TYPE_POWER��REGISTER_TYPE_PRAMATER��REGISTER_TYPE_SPEED_STATUS
//PacketNum:����ţ���1��ʼ����ֵ�������ܰ�����ʱ�����µ���һ��Ϊ��1��
//������ְ�����
//����ֵ����ȡ�����ݳ���
//��ע�����ݳ������Ϊ1000�ֽڣ�������������£���ֵΪ�̶�ֵ��
//REGISTER_TYPE_SPEED_PACKET_LIST		7//�������ʱ��ÿ�����Ĵ������
//REGISTER_TYPE_POSITION_PACKET_LIST		1
//REGISTER_TYPE_DOUBT_PACKET_LIST		4
//REGISTER_TYPE_OVER_TIME_PACKET_LIST		20
//REGISTER_TYPE_DRIVER_PACKET_LIST		40
//REGISTER_TYPE_POWER_PACKET_LIST		142
//REGISTER_TYPE_PRAMATER_PACKET_LIST		142
//REGISTER_TYPE_SPEED_STATUS_PACKET_LIST	7
//--------------------------------�ر�ע��-----------------------------------
//�ر�ע�⣺�ڵ���Register_GetPacketData֮ǰ�����1��Register_GetTotalPacketNum������
//�ڷ�������Register_GetPacketData�ڼ䲻���ٵ���Register_GetTotalPacketNum������������ݳ���
//Ҫ�ְ���ȡ��ʻ��¼�����ݵĲ��������ǣ�
//1.����Register_GetTotalPacketNum
//2.����Register_GetPacketData
***************************************************************************/
u16 Register_GetPacketData(u8 *pBuffer, u8 Type, u16 PacketNum)
{
	s16 	Sector;
	s16 	Step;
	u16 	PacketList;
	u16 	i;
	u16 	length;
	u32 	Address;
	//u32 	TimeCount;
	u8      *p = NULL;

	if(Type >= REGISTER_TYPE_MAX)
	{
		return 0;
	}
	if((PacketNum > Register_GetTotalPacket(Type))||(0 == PacketNum))
	{
		return 0;
	}

	Sector = PacketSector[Type];
	Step = PacketStep[Type];
	Step--;
	if(Step < 0)
	{
		Step = Register[Type].SectorStep-1;
		Sector--;
		if(Sector < Register[Type].StartSector)
		{
			Sector = Register[Type].EndSector - 1;
		}
	}
	
	PacketList = (PacketNum-1)*RegisterPacketList[Type];
	for(; PacketList > 0; PacketList--)
	{
		Step--;
		if(Step < 0)
		{
			Step = Register[Type].SectorStep-1;
			Sector--;
			if(Sector < Register[Type].StartSector)
			{
				Sector = Register[Type].EndSector - 1;
			}
		}
		if((Sector == Register[Type].OldestSector)&&(0 == Step))
		{
			return 0;
		}
	}
	p = pBuffer;
	for(i=0; i<RegisterPacketList[Type]; i++)
	{
		Address = Sector*FLASH_ONE_SECTOR_BYTES+Step*Register[Type].StepLen;
		sFLASH_ReadBuffer(RegisterBuffer,Address,Register[Type].StepLen);
		//TimeCount = Public_ConvertBufferToLong(RegisterBuffer);
		if(RegisterBuffer[Register[Type].StepLen-1] == Public_GetSumVerify(RegisterBuffer,Register[Type].StepLen-1))
		{
			length += RegisterCollectLen[Type];
			if(length <= 1000)
			{
				memcpy(p,RegisterBuffer+4,RegisterCollectLen[Type]);
				p += RegisterCollectLen[Type];
			}
			else
			{
				break;
			}
		}

		if((Sector == Register[Type].OldestSector)&&(0 == Step))
		{
			break;
		}

		Step--;
		if(Step < 0)
		{
			Step = Register[Type].SectorStep-1;
			Sector--;
			if(Sector < Register[Type].StartSector)
			{
				Sector = Register[Type].EndSector - 1;
			}
		}
			
		
	}
	return length;

	
}
/**************************************************************************
//��������Register_GetTotalPacketNum(u8 Type)
//���ܣ���ȡ�ܰ���
//���룺Type:���ͣ���ѡֵΪREGISTER_TYPE_SPEED��REGISTER_TYPE_POSITION��
//REGISTER_TYPE_DOUBT��REGISTER_TYPE_OVER_TIME��REGISTER_TYPE_DRIVER��
//REGISTER_TYPE_POWER��REGISTER_TYPE_PRAMATER��REGISTER_TYPE_SPEED_STATUS
//�������
//����ֵ���ܰ��� 
//��ע�����ݳ������Ϊ1000�ֽڣ�������������£���ֵΪ�̶�ֵ��
//REGISTER_TYPE_SPEED_PACKET_LIST		7//�������ʱ��ÿ�����Ĵ������
//REGISTER_TYPE_POSITION_PACKET_LIST		1
//REGISTER_TYPE_DOUBT_PACKET_LIST		4
//REGISTER_TYPE_OVER_TIME_PACKET_LIST		20
//REGISTER_TYPE_DRIVER_PACKET_LIST		40
//REGISTER_TYPE_POWER_PACKET_LIST		142
//REGISTER_TYPE_PRAMATER_PACKET_LIST		142
//REGISTER_TYPE_SPEED_STATUS_PACKET_LIST	7
//
***************************************************************************/
u16 Register_GetTotalPacket(u8 Type)
{
	u16	TotalPacket;

	if(Type >= REGISTER_TYPE_MAX)
	{
		return 0;
	}

	PacketSector[Type] = Register[Type].CurrentSector;
	PacketStep[Type] = Register[Type].CurrentStep;

	if(0 == Register[Type].LoopFlag)
	{
		TotalPacket = (Register[Type].CurrentSector-Register[Type].OldestSector)*Register[Type].SectorStep
                               +Register[Type].CurrentStep;
	}
	else
	{
		TotalPacket = (Register[Type].CurrentSector-Register[Type].StartSector)*Register[Type].SectorStep
				+Register[Type].CurrentStep
				+(Register[Type].EndSector-Register[Type].OldestSector)*Register[Type].SectorStep;
	}

	if(0 == (TotalPacket%RegisterPacketList[Type]))
	{
		TotalPacket = TotalPacket/RegisterPacketList[Type];
	}
	else
	{
		TotalPacket = TotalPacket/RegisterPacketList[Type]+1;
	}

	return TotalPacket;
}
/**************************************************************************
//��������Register_GetInitFlag(u8 Type)
//���ܣ���ȡ��ʼ����־
//���룺Type:���ͣ���ѡֵΪREGISTER_TYPE_SPEED��REGISTER_TYPE_POSITION��
//REGISTER_TYPE_DOUBT��REGISTER_TYPE_OVER_TIME��REGISTER_TYPE_DRIVER��
//REGISTER_TYPE_POWER��REGISTER_TYPE_PRAMATER��REGISTER_TYPE_SPEED_STATUS
//�������
//����ֵ����ʼ����־��1��ʾ�ô洢����ĳ�ʼ������ɣ�0��ʾδ��ɡ�
//��ע��ֻ�иô洢����ĳ�ʼ����־Ϊ1ʱ����������д���ݲŻ���Ч������дʧ��
***************************************************************************/
u8 Register_GetInitFlag(u8 Type)
{
        return Register[Type].InitFlag;
}

/**************************************************************************
//��������Register_CheckWritePram
//���ܣ����д����
//���룺д���������͡����ȡ�ʱ��
//�������
//����ֵ���ɹ���SUCCESS��ʧ�ܣ�ERROR
//��ע��
***************************************************************************/
static ErrorStatus Register_CheckWritePram(u8 Type,u16 length, u32 Time)
{
	if(Type >= REGISTER_TYPE_MAX)
	{
		return ERROR;
	}

	if(length != (RegisterStepLen[Type]-5))
	{
		return ERROR;
	}

	if(Time <= Register_GetNewestTime(Type))
	{
		return ERROR;
	}

	return SUCCESS;
}
/**************************************************************************
//��������Register_CheckReadPram
//���ܣ����д����
//���룺д���������͡����ȡ�ʱ��
//�������
//����ֵ���ɹ���SUCCESS��ʧ�ܣ�ERROR
//��ע��
***************************************************************************/
static ErrorStatus Register_CheckReadPram(u8 Type,TIME_T *StartTime,TIME_T *EndTime,u16 block)
{
	u32 	TimeCount;
	

	if(Type >= REGISTER_TYPE_MAX)
	{
		return ERROR;
	}

	if(0 == Public_CheckTimeStruct(EndTime))
	{
		return ERROR;
	}

	if(0 == Public_CheckTimeStruct(StartTime))
	{
		return ERROR;
	}

	if(block > RegisterPacketList[Type])
	{
		return ERROR;
	}

	TimeCount = ConverseGmtime(EndTime);
	if(TimeCount < Register_GetOldestTime(Type))
	{
		return ERROR;
	}

	TimeCount = ConverseGmtime(StartTime);
	if(TimeCount > Register_GetNewestTime(Type))
	{
		return ERROR;
	}

	return SUCCESS;
}
/**************************************************************************
//��������Register_CheckArea(u8 Type)
//���ܣ��Լ�洢��
//���룺Type:���ͣ���ѡֵΪREGISTER_TYPE_SPEED��REGISTER_TYPE_POSITION��
//REGISTER_TYPE_DOUBT��REGISTER_TYPE_OVER_TIME��REGISTER_TYPE_DRIVER��
//REGISTER_TYPE_POWER��REGISTER_TYPE_PRAMATER��REGISTER_TYPE_SPEED_STATUS
//�������
//����ֵ����
//��ע��
***************************************************************************/
static void Register_CheckArea(u8 Type)
{
	s16 	i;
	s16 	Step;
	u32 	Address;
	u32 	TimeCount;
	TIME_T	tt;
	

	if(Type >= REGISTER_TYPE_MAX)
	{
		return;
	}

	if(0 == CheckSector[Type])
	{
		Register[Type].StartSector = RegisterStartSector[Type];
		Register[Type].EndSector = RegisterEndSector[Type];
		Register[Type].StepLen = RegisterStepLen[Type];
		Register[Type].SectorStep = FLASH_ONE_SECTOR_BYTES/RegisterStepLen[Type];
		Register[Type].OldestSector = RegisterStartSector[Type];
		Register[Type].CurrentSector = RegisterStartSector[Type];
		Register[Type].CurrentStep = 0;
		Register[Type].LoopFlag = 0;
		CheckSector[Type] = RegisterStartSector[Type];
		CheckTimeCountMin[Type] = 0xffffffff;
		CheckTimeCountMax[Type] = 0;
		CheckErrorCount[Type] = 0;
		CheckSuccessCount[Type] = 0;
	}
	else if(CheckSector[Type] >= Register[Type].EndSector)
	{
		if(Register[Type].CurrentStep >= Register[Type].SectorStep)
		{
			Register[Type].CurrentStep = 0;
			Register[Type].CurrentSector++;
			if(Register[Type].CurrentSector >= Register[Type].EndSector)
			{
				Register[Type].CurrentSector = Register[Type].StartSector;
				Register[Type].LoopFlag = 1;
			}
			else
			{
				Address = (Register[Type].EndSector-1)*FLASH_ONE_SECTOR_BYTES+(Register[Type].SectorStep-1)*Register[Type].StepLen;
				sFLASH_ReadBuffer(RegisterBuffer,Address,Register[Type].StepLen);
				for(i=0; i<Register[Type].StepLen; i++)
				{
					if(0xff != RegisterBuffer[i])
					{
						Register[Type].LoopFlag = 1;
					}
				}
			}
			Address = Register[Type].CurrentSector*FLASH_ONE_SECTOR_BYTES;
			sFLASH_EraseSector(Address);
			if(1 == Register[Type].LoopFlag)
			{
				Register[Type].OldestSector++;
				if(Register[Type].OldestSector >= Register[Type].EndSector)
				{
					Register[Type].OldestSector = Register[Type].StartSector;
				}
			}
			
		}

		Register[Type].InitFlag = 1;

		if((0 == CheckSuccessCount[Type])&&(CheckErrorCount[Type] >= (2*Register[Type].SectorStep)))
		{
			Register_EraseOneArea(Type);
                        return ;
		}
	}
	else
	{
		IWDG_ReloadCounter();
		for(Step=0; Step<Register[Type].SectorStep; Step++)
		{
			Address = CheckSector[Type]*FLASH_ONE_SECTOR_BYTES+Step*Register[Type].StepLen;
			sFLASH_ReadBuffer(RegisterBuffer,Address,Register[Type].StepLen);
			TimeCount = Public_ConvertBufferToLong(RegisterBuffer);
			if(0xffffffff == TimeCount)
			{
				break;
			}
			else
			{
				if(RegisterBuffer[Register[Type].StepLen-1] == Public_GetSumVerify(RegisterBuffer,Register[Type].StepLen-1))
				{
					Gmtime(&tt,TimeCount);
					if(1 == Public_CheckTimeStruct(&tt))
					{
						CheckSuccessCount[Type]++;

						if(TimeCount < CheckTimeCountMin[Type])
						{
							CheckTimeCountMin[Type] = TimeCount;
							Register[Type].OldestSector = CheckSector[Type];
						}
						if(TimeCount > CheckTimeCountMax[Type])
						{
							CheckTimeCountMax[Type] = TimeCount;
							Register[Type].CurrentSector = CheckSector[Type];
							Register[Type].CurrentStep = Step+1;
						}
					}
					else
					{
						CheckErrorCount[Type]++;
						if(CheckErrorCount[Type] >= (2*Register[Type].SectorStep))
						{
							Register_EraseOneArea(Type);
                                                        return ;
						}
					}
				}
				else
				{
					CheckErrorCount[Type]++;
					if(CheckErrorCount[Type] >= (2*Register[Type].SectorStep))
					{
						Register_EraseOneArea(Type);
                                                return ;
					}
				}
			}
		}

		CheckSector[Type]++;	
	}	
	
}
/**************************************************************************
//��������Register_EraseOneArea(u8 Type)
//���ܣ�����ĳ���洢��������
//���룺Type:���ͣ���ѡֵΪREGISTER_TYPE_SPEED��REGISTER_TYPE_POSITION��
//REGISTER_TYPE_DOUBT��REGISTER_TYPE_OVER_TIME��REGISTER_TYPE_DRIVER��
//REGISTER_TYPE_POWER��REGISTER_TYPE_PRAMATER��REGISTER_TYPE_SPEED_STATUS
//�������
//����ֵ����
//��ע��
***************************************************************************/
static void Register_EraseOneArea(u8 Type)
{
	s16 	i;
	u32 	Address;
	
	if(Type >= REGISTER_TYPE_MAX)
	{
		return;
	}

	for(i=Register[Type].StartSector; i<Register[Type].EndSector; i++)
	{
		Address = i*FLASH_ONE_SECTOR_BYTES;
		sFLASH_EraseSector(Address);
		IWDG_ReloadCounter();
	}
	Register[Type].StartSector = RegisterStartSector[Type];
	Register[Type].EndSector = RegisterEndSector[Type];
	Register[Type].StepLen = RegisterStepLen[Type];
	Register[Type].SectorStep = FLASH_ONE_SECTOR_BYTES/RegisterStepLen[Type];
	Register[Type].OldestSector = RegisterStartSector[Type];
	Register[Type].CurrentSector = RegisterStartSector[Type];
	Register[Type].CurrentStep = 0;
	Register[Type].LoopFlag = 0;
	CheckSector[Type] = RegisterStartSector[Type];
	CheckTimeCountMin[Type] = 0xffffffff;
	CheckTimeCountMax[Type] = 0;
	CheckErrorCount[Type] = 0;
	CheckSuccessCount[Type] = 0;
        Register[Type].InitFlag = 1;
}