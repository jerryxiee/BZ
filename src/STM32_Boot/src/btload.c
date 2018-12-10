#include"stm32f10x_type.h"
#include"stm32f10x_lib.h"

/* Exported types ------------------------------------------------------------*/
typedef  void (*pFunction)(void);
/* Exported constants --------------------------------------------------------*/
/* Constants used by Serial Command Line Mode */
#define CMD_STRING_SIZE       128

#define ApplicationAddress    0x8003000

#if defined (STM32F10X_MD) || defined (STM32F10X_MD_VL)
 #define PAGE_SIZE                         (0x400)    /* 1 Kbyte */
 #define FLASH_SIZE                        (0x20000)  /* 128 KBytes */
#elif defined STM32F10X_CL
 #define PAGE_SIZE                         (0x800)    /* 2 Kbytes */
 #define FLASH_SIZE                        (0x40000)  /* 256 KBytes */
#elif defined STM32F10X_HD || defined (STM32F10X_HD_VL)
 #define PAGE_SIZE                         (0x800)    /* 2 Kbytes */
 #define FLASH_SIZE                        (0x80000)  /* 512 KBytes */
#elif defined STM32F10X_XL
 #define PAGE_SIZE                         (0x800)    /* 2 Kbytes */
 #define FLASH_SIZE                        (0x100000) /* 1 MByte */
#else 
 #error "Please select first the STM32 device to be used (in stm32f10x.h)"    
#endif

/* Compute the FLASH upload image size */  
#define FLASH_IMAGE_SIZE                   (uint32_t) (FLASH_SIZE - (ApplicationAddress - 0x08000000))



#define  KEY1_VALUE  0x45670123
#define  KEY2_VALUE  0xCDEF89AB

#define  ApplicationStartAddr   0x0807f800	 //2K byte / page
#define  ApplicationAddress1    0x08001000
#define  ApplicationAddress2    0x08040000


void RCC_Configuration(void);
u16 ReadDataFromFlash(u32 ProgramSelect);
void ProgramOnePage(u32 ProgramAddr,u16 dat);
void UsDelay(u16 dly);
ErrorStatus HSEStartUpStatus;

void ExitIAP(void)
{
	  pFunction  Jump_To_Application;
	  u32  JumpAddress;
	  
	  UsDelay(100);
    //����APP1 flash���ĳ���  
	if(ReadDataFromFlash(ApplicationStartAddr) !=0x5555)
	{ 	  
		if (((*(vu32*)ApplicationAddress1) & 0x2FFF0000 ) == 0x20000000)
		{ // Jump to user application 
			//���û�����ĸ�λ��ַ��ֵ��JumpAddress   
			//NVIC_SetVectorTable(NVIC_VectTab_FLASH, 0x1000);	//�޸��ж�������
			JumpAddress = *(vu32*) (ApplicationAddress1 + 4); 
			Jump_To_Application = (pFunction) JumpAddress; 
			// ��ʼ���û�����Ķ�ջָ��  
			__MSR_MSP(*(vu32*) ApplicationAddress1);   // Initialize user application's Stack Pointer 
			// ���û�����ĸ�λ��ַ����PCָ�� 
			
			ProgramOnePage(ApplicationStartAddr,0x5555);  //TEST ģ�������л�ִ�й��̡�
			Jump_To_Application(); 
		}
    }
	else  //����APP2 flash���ĳ���
	{
		if (((*(vu32*)ApplicationAddress2) & 0x2FFF0000 ) == 0x20000000)
		{ // Jump to user application 
			//���û�����ĸ�λ��ַ��ֵ��JumpAddress  
			//NVIC_SetVectorTable(NVIC_VectTab_FLASH, 0x40000);   //�޸��ж�������
			JumpAddress = *(vu32*) (ApplicationAddress2 + 4); 
			Jump_To_Application = (pFunction) JumpAddress; 
			// ��ʼ���û�����Ķ�ջָ��  
			__MSR_MSP(*(vu32*) ApplicationAddress2);   // Initialize user application's Stack Pointer 
			// ���û�����ĸ�λ��ַ����PCָ��  
			ProgramOnePage(ApplicationStartAddr,0xaaaa);  //TEST ģ�������л�ִ�й��̡�
			Jump_To_Application(); 
		}


	}
	
}


int main(void)
{
     RCC_Configuration();
	 ExitIAP();
     while(1);  
}



/*************************************
//��FLASH�ж�ȡһ��BYTE ������
*************************************/
u16 ReadDataFromFlash(u32 ProgramSelect)
{
   u16 tmp = *(vu32*)(ProgramSelect); 
   return (tmp);
}
/*************************************
//��FLASH��д��һ��HalfWord������
*************************************/
void ProgramOnePage(u32 ProgramAddr,u16 dat)
{
    FLASH_Unlock();
	FLASH_ErasePage(ProgramAddr);
	FLASH_ProgramHalfWord(ProgramAddr,dat);
}

/************************************
 
 clock config
************************************/

void RCC_Configuration(void)
{
  /* RCC system reset(for debug purpose) */
  RCC_DeInit();

  /* Enable HSE */
  RCC_HSEConfig(RCC_HSE_ON);

  /* Wait till HSE is ready */
  HSEStartUpStatus = RCC_WaitForHSEStartUp();

  if(HSEStartUpStatus == SUCCESS)
  {
    /* HCLK = SYSCLK */
    RCC_HCLKConfig(RCC_SYSCLK_Div1); 
  
    /* PCLK2 = HCLK */
    RCC_PCLK2Config(RCC_HCLK_Div1); 

    /* PCLK1 = HCLK/2 */
    RCC_PCLK1Config(RCC_HCLK_Div2);

    /* Flash 2 wait state */
    FLASH_SetLatency(FLASH_Latency_2);
    /* Enable Prefetch Buffer */
    FLASH_PrefetchBufferCmd(FLASH_PrefetchBuffer_Enable);

    /* PLLCLK = 8MHz * 9 = 72 MHz */
    RCC_PLLConfig(RCC_PLLSource_HSE_Div1, RCC_PLLMul_9);

    /* Enable PLL */ 
    RCC_PLLCmd(ENABLE);

    /* Wait till PLL is ready */
    while(RCC_GetFlagStatus(RCC_FLAG_PLLRDY) == RESET)
    {
    }

    /* Select PLL as system clock source */
    RCC_SYSCLKConfig(RCC_SYSCLKSource_PLLCLK);

    /* Wait till PLL is used as system clock source */
    while(RCC_GetSYSCLKSource() != 0x08)
    {
    }
  }
}


void UsDelay(u16 dly)
{

    u16 tmp;
   do{
     
	 for(tmp=0;tmp<1000;tmp++){ __nop();}
    
   }while(dly--);

   
}
