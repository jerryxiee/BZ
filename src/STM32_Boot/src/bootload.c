#include"stm32f10x_type.h"
#include"stm32f10x_lib.h"

#define  KEY1_VALUE  0x45670123
#define  KEY2_VALUE  0xCDEF89AB
#define  ApplicationAddress    0x80001000
/*
1. 解锁 
2. 判断是否保护,有保护的话要先关闭保护 
3. 擦除 
4. 编程 
5. 复位进入应用程序区 
*/
void WriteOnePage(u32 BaseAddr)
{
	  u16  addroffset,i;
	  u32 WriteProtectionValue;
	  FLASH_Status status;
	  u16 Data1;
	  u32 Address1;
	  pFunction  Jump_To_Application;
	  u32  JumpAddress;
	  /*
	  WriteProtectionValue = 0x0;
	  status = FLASH_COMPLETE; 
	  Data1 = 0x1234;
	  Address1 =0x08002004; 

	  //1. 解锁 
	  FLASH_Unlock();

	  //2. 判断是否保护,有保护的话要先关闭保护 
	  
	  WriteProtectionValue = FLASH_GetWriteProtectionOptionByte();
	  //3. 擦除 
	  //FLASE_ErasePage(BaseAddr);
	  status = FLASH_ErasePage(0x08002000);
	  //4. 编程 
	  for(i=0;i<4;i++)
	  {
	     	
	     	status = FLASH_ProgramHalfWord(Address1, Data1);
			Address1 +=2;            

	  }
	  */
	  NVIC_SetVectorTable(NVIC_VectTab_FLASH, 0x1000);
	  
	  
	  if (((*(vu32*)ApplicationAddress) & 0x2FFF0000 ) == 0x20000000)
	  { // Jump to user application 
 		//将用户代码的复位地址赋值给JumpAddress   
        JumpAddress = *(vu32*) (ApplicationAddress + 4); 
		Jump_To_Application = (pFunction) JumpAddress; 
 		// 初始化用户程序的堆栈指针  
		__MSR_MSP(*(vu32*) ApplicationAddress);   // Initialize user application's Stack Pointer 
        // 把用户代码的复位地址付给PC指针   
		Jump_To_Application(); 
   	}
		//这段代码是跳过IAP进入应用程序的，但是我通过调试窗口看到Jump_To_Application 它的值是0x00000000  不知道是哪出问题了    #define ApplicationAddress    0x8002000这个是没错 

	  
	  
	  
	
}







