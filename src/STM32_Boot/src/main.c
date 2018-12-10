/*****************************************************************************
*
* Copyright (c) 2011,深圳市伊爱高新技术开发有限公司
* All rights reserved.
*
* 文件名称 : main.c
* 功能     :  主功能函数；上电启动时判断是否需要升级需求、程序Updata及boot
               功能
*
* 当前版本 : 1.0
* 开发者   : wangj
* 修改时间 : 2011年6月20日
*
* 历史版本 :
* 开发者   :									
* 完成时间 :
*
* 备注 :
*******************************************************************************/
/* Includes ------------------------------------------------------------------*/
#include "config.h"
#include "stm32f2xx_lib.h"
#include "memery.h"
#include "misc.h"
/* Exported types ------------------------------------------------------------*/
typedef  void (*pFunction)(void);
/* Private define ------------------------------------------------------------*/
/*应用程序地址*/
#define  ApplicationAddress    0x08004000
#define	FLASH_UPDATE_START_SECTOR		67//程序升级固件存储区域
#define FLASH_UPDATE_END_SECTOR			223//640K byte

#define EEPROM_PRAM_BASE_ADDR  10
//参数的起始地址
#define E2_PROGRAM_UPDATA_REQUEST_ID_ADDR		(EEPROM_PRAM_BASE_ADDR+725)
//消息ID0x0202，自定义，程序升级请求标志
#define E2_PROGRAM_UPDATA_VERIFYCODE_ID_ADDR	(EEPROM_PRAM_BASE_ADDR+730)
//消息ID0x0203，自定义，程序升级校验码
#define E2_PROGRAM_UPDATA_LENGTH_ID_ADDR		(EEPROM_PRAM_BASE_ADDR+735)
//消息ID0x0204，自定义，程序升级长度

/* Private macro -----------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
pFunction Jump_To_Application;
uint32_t JumpAddress;

u8 ReceiveDataBuf[550];
u8 ucTmp[20];

/* Private functions ---------------------------------------------------------*/
/*
static void Delay_Cnt(__IO uint32_t nCount)
{
  for (; nCount != 0; nCount--);
}
*/
void NVIC_Configuration(void);
/*******************************************************************************
* Function Name  : main
* Description    : Main program.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
static u32 ulLen = 0;
static u16 rdPage = 0;
static u8 temp[6] = {0};
	//u32	length = 189886;
	
static u32 temp2 = 0;
static u32 i = 0;
	

int main(void)
{
	u8	BootPramCheckFlag = 0;//升级参数检查,1为参数错误,0为参数正确
	u8	BootPramCheckSum = 0;//升级参数校验和
	
	if(0 == BootPramCheckFlag)
	{
	
	}
	if(0 == ulLen)
	{
	
	}
	if(0 == rdPage)
	{
	
	}
	
	for(i=0; i<100000; i++)
	{
		//延时一段时间
	}
	E2prom_InitIO();
        
        sFLASH_DeInit();
	sFLASH_Init();
	SPI_FLASH_AllUnprotect();
        
	for(i=0; i<100000; i++)
	{
		//延时一段时间
	}
	E2prom_ReadByte(E2_PROGRAM_UPDATA_REQUEST_ID_ADDR,&temp[0], 2);
	if((temp[0] != temp[1])||(0xaa != temp[0]))
	{
		BootPramCheckFlag = 1;
	}
	E2prom_ReadByte(E2_PROGRAM_UPDATA_LENGTH_ID_ADDR, &temp[0], 5);
	BootPramCheckSum = 0;
	for(i=0; i<4; i++)
	{
		BootPramCheckSum += temp[i];
	}
	if(BootPramCheckSum != temp[4])
	{
		BootPramCheckFlag = 1;
		ulLen = 0;
	}
	else
	{
		ulLen = (temp[0] << 24) + (temp[1] << 16) + (temp[2] << 8) + temp[3];
	}
	
	if((0 == BootPramCheckFlag)
	   &&(ulLen != 0)
	   &&(ulLen < 0x80000)) 
	{
		
		sFLASH_Init();
		FLASH_Unlock();
	
		//擦除所需扇区
		FLASH_EraseSector(FLASH_Sector_1, VoltageRange_3);
		FLASH_EraseSector(FLASH_Sector_2, VoltageRange_3);
		FLASH_EraseSector(FLASH_Sector_3, VoltageRange_3);
		FLASH_EraseSector(FLASH_Sector_4, VoltageRange_3);
		FLASH_EraseSector(FLASH_Sector_5, VoltageRange_3);
		FLASH_EraseSector(FLASH_Sector_6, VoltageRange_3);
		FLASH_EraseSector(FLASH_Sector_7, VoltageRange_3);
		FLASH_EraseSector(FLASH_Sector_8, VoltageRange_3);
		FLASH_EraseSector(FLASH_Sector_9, VoltageRange_3);
		FLASH_EraseSector(FLASH_Sector_10, VoltageRange_3);
		FLASH_EraseSector(FLASH_Sector_11, VoltageRange_3);
		
		while (ulLen > 0) {
			if (ulLen >= 512) {
				sFLASH_ReadBuffer(ReceiveDataBuf, (FLASH_UPDATE_START_SECTOR * SECTOR_SIZE) + (rdPage*512), 512);
				ulLen -= 512;	
				WriteToMemory(ApplicationAddress + (rdPage*512), ReceiveDataBuf, 512);
				rdPage++;
			} else {
				sFLASH_ReadBuffer(ReceiveDataBuf, (FLASH_UPDATE_START_SECTOR *SECTOR_SIZE) + (rdPage*512), ulLen);
				WriteToMemory(ApplicationAddress + (rdPage*512), ReceiveDataBuf, ulLen);
				ulLen = 0;
			}
		}
		temp[0] = 0xbb;
		E2prom_WriteByte(E2_PROGRAM_UPDATA_REQUEST_ID_ADDR, temp[0]);
		E2prom_WriteByte(E2_PROGRAM_UPDATA_REQUEST_ID_ADDR+1, temp[0]);

		temp2 = *(__IO uint32_t*)ApplicationAddress;
		if (( temp2& 0xFF000000 ) == 0x20000000) 
		{
		// Jump to user application 
		JumpAddress = *(__IO uint32_t*) (ApplicationAddress + 4);
		Jump_To_Application = (pFunction) JumpAddress;
		// Initialize user application's Stack Pointer 
		__set_MSP(*(__IO uint32_t*) ApplicationAddress);
		Jump_To_Application();
		}
		else
		{
			//temp[0] = 0xaa;//再升一遍
			//temp[0] = 0xbb;
			//E2prom_WriteByte(E2_PROGRAM_UPDATA_REQUEST_ID_ADDR, temp[0]);
			//E2prom_WriteByte(E2_PROGRAM_UPDATA_REQUEST_ID_ADDR+1, temp[0]);
			
		}
	} 
	else 
	{
		
		// Test if user code is programmed starting from address "ApplicationAddress" 
		temp2 = *(__IO uint32_t*)ApplicationAddress;
		if (( temp2& 0xFF000000 ) == 0x20000000) 
		{
      		// Jump to user application 
			JumpAddress = *(__IO uint32_t*) (ApplicationAddress + 4);
			Jump_To_Application = (pFunction) JumpAddress;
			// Initialize user application's Stack Pointer 
			__set_MSP(*(__IO uint32_t*) ApplicationAddress);
			Jump_To_Application();
		}
	}
	
	/* fail:  */
	while (1){	
		
		NVIC_SystemReset();
	}
}
/*******************************************************************************
* Function Name  : NVIC_Configuration
* Description    : Configures the nested vectored interrupt controller.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void NVIC_Configuration(void)
{

//#ifdef  VECT_TAB_RAM  
  /* Set the Vector Table base location at 0x20000000 */ 
  //NVIC_SetVectorTable(NVIC_VectTab_RAM, 0x0); 
//#else  /* VECT_TAB_FLASH  */
  /* Set the Vector Table base location at 0x08000000 */ 
  NVIC_SetVectorTable(NVIC_VectTab_FLASH, 0x0);   
//#endif 
}
#ifdef  DEBUG
/*******************************************************************************
* Function Name  : assert_failed
* Description    : Reports the name of the source file and the source line number
*                  where the assert error has occurred.
* Input          : - file: pointer to the source file name
*                  - line: assert error line source number
* Output         : None
* Return         : None
*******************************************************************************/
void assert_failed(u8* file, u32 line)
{
  /* User can add his own implementation to report the file name and line number */

  //printf("\n\r Wrong parameter value detected on\r\n");
  //printf("       file  %s\r\n", file);
  //printf("       line  %d\r\n", line);

  /* Infinite loop */
  /* while (1)
  {
  } */
}
#endif
/***************************************END OF FILE********************************/




