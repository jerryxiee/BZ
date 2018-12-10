/************************************************************************
//程序名称：Register.c
//功能：该模块提供行驶记录仪数据记录（写数据）、数据检索（读数据）接口
//版本号：V0.1
//版权说明：版权属于深圳市伊爱高新技术开发有限公司
//开发人：dxl
//开发时间：2015.3
//文件描述：
//版本记录：版本记录需包含版本、修改人、修改时间、修改原因、修改简要说明
//V0.1 董显林 2015.3.28 初版
*************************************************************************/

/********************文件包含*************************/
#include <stdio.h>
#include <string.h>

#include "Register.h"
#include "spi_flashapi.h"
#include "spi_flash.h"
#include "Public.h"



/********************本地变量*************************/
static REGISTER_STRUCT Register[REGISTER_TYPE_MAX];
static u8 	RegisterBuffer[REGISTER_BUFFER_SIZE] = {0};//读或写行驶记录仪数据时的缓存
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

/********************全局变量*************************/


/********************外部变量*************************/

/********************本地函数声明*********************/
static ErrorStatus Register_CheckWritePram(u8 Type,u16 length, u32 Time);
static ErrorStatus Register_CheckReadPram(u8 Type,TIME_T *StartTime,TIME_T *EndTime,u16 block);
static void Register_CheckArea(u8 Type);
static void Register_EraseOneArea(u8 Type);

/********************函数定义*************************/
/**************************************************************************
//函数名：Register_TimeTask(void)
//功能：记录仪数据存储定时任务
//输入：无
//输出：无
//返回值：始终为ENABLE
//备注：50ms调度1次，记录仪数据存储由各应用程序调用Register_Write函数实现，本任务只是对
//存储的变量做初始化，实时监测，发现问题进行纠错处理
***************************************************************************/
FunctionalState Register_TimeTask(void)
{
	u8 	i;
	u8 	flag;

	flag = 0;
	//检查是否初始化
	for(i=0; i<REGISTER_TYPE_MAX; i++)
	{
		if(0 == Register[i].InitFlag)//未自检完成
		{
			Register_CheckArea(i);

			flag = 1;
		}
	}

	if(1 == flag)
	{
		return ENABLE;
	}

	//检查变量是否超出范围
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
//函数名：Register_Write
//功能：写一条行驶记录仪数据
//输入：Type:类型，可选值为REGISTER_TYPE_SPEED、REGISTER_TYPE_POSITION、
//REGISTER_TYPE_DOUBT、REGISTER_TYPE_OVER_TIME、REGISTER_TYPE_DRIVER、
//REGISTER_TYPE_POWER、REGISTER_TYPE_PRAMATER、REGISTER_TYPE_SPEED_STATUS、
//pBuffer:指向数据首地址；length:数据长度；Time:32位hex表示的RTC时间
//输出：无
//返回值：成功SUCCESS,失败ERROR
//备注：行驶记录仪数据记录到flash的格式为：时间（4字节）+数据内容（固定长度）+校验和（1字节，是前面所有字节内容的校验和）
//REGISTER_TYPE_SPEED数据内容格式为：行驶记录仪标准表A.17规定的格式（126字节）+13字节预留空间
//REGISTER_TYPE_POSITION数据内容格式为：行驶记录仪标准表A.19规定的格式（666字节）+10字节预留空间
//REGISTER_TYPE_DOUBT数据内容格式为：行驶记录仪标准表A.21规定的格式（234字节）+12字节预留空间
//REGISTER_TYPE_OVER_TIME数据内容格式为：行驶记录仪标准表A.24规定的格式（50字节）+12字节预留空间
//REGISTER_TYPE_DRIVER数据内容格式为：行驶记录仪标准表A.26规定的格式（25字节）+6字节预留空间
//REGISTER_TYPE_POWER数据内容格式为：行驶记录仪标准表A.28规定的格式（7字节）+6字节预留空间
//REGISTER_TYPE_PRAMATER数据内容格式为：行驶记录仪标准表A.30规定的格式（7字节）+6字节预留空间
//REGISTER_TYPE_SPEED_STATUS数据内容格式为：行驶记录仪标准表A.32规定的格式（133字节）+6字节预留空间
***************************************************************************/
ErrorStatus Register_Write(u8 Type, u8 *pBuffer, u16 length, u32 Time)
{
	u16 	i,j;
	u32 	Address;
	u32 	TimeCount;
	u8 	VerifySum;
	u8 	flag;

	//参数正确性检查
	if(ERROR == Register_CheckWritePram(Type,length,Time))
	{
		return ERROR;
	}
	if(0 == Register[Type].InitFlag)
	{
		return ERROR;
	}

	//写之前判断flash区域是否被写过，写过的话则需擦除
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

	//写数据
        Public_ConvertLongToBuffer(Time,RegisterBuffer);
	memcpy(RegisterBuffer+4,pBuffer,length);
	VerifySum = Public_GetSumVerify(RegisterBuffer,length+4);
	RegisterBuffer[4+length] = VerifySum;
	sFLASH_WriteBuffer(RegisterBuffer,Address,length+5);

	//读数据
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

	//步数加1
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
//函数名：Register_Read
//功能：读取指定结束时间前的N块行驶记录仪数据
//输入：Type:类型，可选值为REGISTER_TYPE_SPEED、REGISTER_TYPE_POSITION、
//REGISTER_TYPE_DOUBT、REGISTER_TYPE_OVER_TIME、REGISTER_TYPE_DRIVER、
//REGISTER_TYPE_POWER、REGISTER_TYPE_PRAMATER、REGISTER_TYPE_SPEED_STATUS、
//pBuffer:指向数据首地址；EndTime:结束时间；block:块数
//输出：无
//返回值：读取的数据长度
//备注：采用闭区间的方式，即如果有一条记录的时间刚好等于结束时间，该记录将被检出
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
	//参数正确性检查
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

	//从最新的那个扇区倒推查找，先确定扇区
	Sector = Register[Type].CurrentSector;
	Step = 0;
	EndTimeCount = ConverseGmtime(&EndTime);
	StartTimeCount = ConverseGmtime(&StartTime);
	FindFlag = 0;
	for(;;)
	{
		flag = 0;
		for(Step=0; Step<Register[Type].SectorStep; Step++)//在该扇区找到一条有效数据，一般为第1条
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

	//读取数据
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
//函数名：Register_GetNewestTime(u8 Type)
//功能：获取存储的最新记录时间
//输入：Type:类型，可选值为REGISTER_TYPE_SPEED、REGISTER_TYPE_POSITION、
//REGISTER_TYPE_DOUBT、REGISTER_TYPE_OVER_TIME、REGISTER_TYPE_DRIVER、
//REGISTER_TYPE_POWER、REGISTER_TYPE_PRAMATER、REGISTER_TYPE_SPEED_STATUS
//输出：无
//返回值：32位hex值表示的时间
//备注：返回值为0表示该存储区还没有记录任何数据,返回值为0xffffffff表示参数出错
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
//函数名：Register_GetOldestTime(u8 Type)
//功能：获取存储的最老记录时间
//输入：Type:类型，可选值为REGISTER_TYPE_SPEED、REGISTER_TYPE_POSITION、
//REGISTER_TYPE_DOUBT、REGISTER_TYPE_OVER_TIME、REGISTER_TYPE_DRIVER、
//REGISTER_TYPE_POWER、REGISTER_TYPE_PRAMATER、REGISTER_TYPE_SPEED_STATUS
//输出：无
//返回值：32位hex值表示的时间
//备注：返回值为0表示还没有记录数据
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
//函数名：Register_EraseRecorderData(void)
//功能：擦除记录仪所有存储的数据
//输入：无
//输出：无
//返回值：无
//备注：擦除记录仪flash存储的数据，对于铁电或其他地方存储的记录仪数据没有去擦除
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
//函数名：Register_GetPacketData(u8 *pBuffer, u8 Type, u16 PacketNum)
//功能：获取分包数据
//输入：Type:类型，可选值为REGISTER_TYPE_SPEED、REGISTER_TYPE_POSITION、
//REGISTER_TYPE_DOUBT、REGISTER_TYPE_OVER_TIME、REGISTER_TYPE_DRIVER、
//REGISTER_TYPE_POWER、REGISTER_TYPE_PRAMATER、REGISTER_TYPE_SPEED_STATUS
//PacketNum:包序号，从1开始，该值不大于总包数，时间最新的那一包为第1包
//输出：分包数据
//返回值：读取的数据长度
//备注：数据长度最大为1000字节，组包条数见如下，该值为固定值：
//REGISTER_TYPE_SPEED_PACKET_LIST		7//打包传输时，每包最大的打包条数
//REGISTER_TYPE_POSITION_PACKET_LIST		1
//REGISTER_TYPE_DOUBT_PACKET_LIST		4
//REGISTER_TYPE_OVER_TIME_PACKET_LIST		20
//REGISTER_TYPE_DRIVER_PACKET_LIST		40
//REGISTER_TYPE_POWER_PACKET_LIST		142
//REGISTER_TYPE_PRAMATER_PACKET_LIST		142
//REGISTER_TYPE_SPEED_STATUS_PACKET_LIST	7
//--------------------------------特别注意-----------------------------------
//特别注意：在调用Register_GetPacketData之前需调用1次Register_GetTotalPacketNum！！！
//在反复调用Register_GetPacketData期间不能再调用Register_GetTotalPacketNum，否则可能数据出错
//要分包读取行驶记录仪数据的操作步骤是：
//1.调用Register_GetTotalPacketNum
//2.调用Register_GetPacketData
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
//函数名：Register_GetTotalPacketNum(u8 Type)
//功能：获取总包数
//输入：Type:类型，可选值为REGISTER_TYPE_SPEED、REGISTER_TYPE_POSITION、
//REGISTER_TYPE_DOUBT、REGISTER_TYPE_OVER_TIME、REGISTER_TYPE_DRIVER、
//REGISTER_TYPE_POWER、REGISTER_TYPE_PRAMATER、REGISTER_TYPE_SPEED_STATUS
//输出：无
//返回值：总包数 
//备注：数据长度最大为1000字节，组包条数见如下，该值为固定值：
//REGISTER_TYPE_SPEED_PACKET_LIST		7//打包传输时，每包最大的打包条数
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
//函数名：Register_GetInitFlag(u8 Type)
//功能：获取初始化标志
//输入：Type:类型，可选值为REGISTER_TYPE_SPEED、REGISTER_TYPE_POSITION、
//REGISTER_TYPE_DOUBT、REGISTER_TYPE_OVER_TIME、REGISTER_TYPE_DRIVER、
//REGISTER_TYPE_POWER、REGISTER_TYPE_PRAMATER、REGISTER_TYPE_SPEED_STATUS
//输出：无
//返回值：初始化标志，1表示该存储区域的初始化已完成；0表示未完成。
//备注：只有该存储区域的初始化标志为1时，往该区域写数据才会生效，否则写失败
***************************************************************************/
u8 Register_GetInitFlag(u8 Type)
{
        return Register[Type].InitFlag;
}

/**************************************************************************
//函数名：Register_CheckWritePram
//功能：检查写参数
//输入：写参数：类型、长度、时间
//输出：无
//返回值：成功：SUCCESS；失败：ERROR
//备注：
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
//函数名：Register_CheckReadPram
//功能：检查写参数
//输入：写参数：类型、长度、时间
//输出：无
//返回值：成功：SUCCESS；失败：ERROR
//备注：
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
//函数名：Register_CheckArea(u8 Type)
//功能：自检存储区
//输入：Type:类型，可选值为REGISTER_TYPE_SPEED、REGISTER_TYPE_POSITION、
//REGISTER_TYPE_DOUBT、REGISTER_TYPE_OVER_TIME、REGISTER_TYPE_DRIVER、
//REGISTER_TYPE_POWER、REGISTER_TYPE_PRAMATER、REGISTER_TYPE_SPEED_STATUS
//输出：无
//返回值：无
//备注：
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
//函数名：Register_EraseOneArea(u8 Type)
//功能：擦除某个存储区的数据
//输入：Type:类型，可选值为REGISTER_TYPE_SPEED、REGISTER_TYPE_POSITION、
//REGISTER_TYPE_DOUBT、REGISTER_TYPE_OVER_TIME、REGISTER_TYPE_DRIVER、
//REGISTER_TYPE_POWER、REGISTER_TYPE_PRAMATER、REGISTER_TYPE_SPEED_STATUS
//输出：无
//返回值：无
//备注：
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