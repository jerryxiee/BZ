#include"stm32f10x_type.h"
#include"stm32f10x_lib.h"

#define  KEY1_VALUE  0x45670123
#define  KEY2_VALUE  0xCDEF89AB
#define  ApplicationAddress    0x80001000
/*
1. ���� 
2. �ж��Ƿ񱣻�,�б����Ļ�Ҫ�ȹرձ��� 
3. ���� 
4. ��� 
5. ��λ����Ӧ�ó����� 
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

	  //1. ���� 
	  FLASH_Unlock();

	  //2. �ж��Ƿ񱣻�,�б����Ļ�Ҫ�ȹرձ��� 
	  
	  WriteProtectionValue = FLASH_GetWriteProtectionOptionByte();
	  //3. ���� 
	  //FLASE_ErasePage(BaseAddr);
	  status = FLASH_ErasePage(0x08002000);
	  //4. ��� 
	  for(i=0;i<4;i++)
	  {
	     	
	     	status = FLASH_ProgramHalfWord(Address1, Data1);
			Address1 +=2;            

	  }
	  */
	  NVIC_SetVectorTable(NVIC_VectTab_FLASH, 0x1000);
	  
	  
	  if (((*(vu32*)ApplicationAddress) & 0x2FFF0000 ) == 0x20000000)
	  { // Jump to user application 
 		//���û�����ĸ�λ��ַ��ֵ��JumpAddress   
        JumpAddress = *(vu32*) (ApplicationAddress + 4); 
		Jump_To_Application = (pFunction) JumpAddress; 
 		// ��ʼ���û�����Ķ�ջָ��  
		__MSR_MSP(*(vu32*) ApplicationAddress);   // Initialize user application's Stack Pointer 
        // ���û�����ĸ�λ��ַ����PCָ��   
		Jump_To_Application(); 
   	}
		//��δ���������IAP����Ӧ�ó���ģ�������ͨ�����Դ��ڿ���Jump_To_Application ����ֵ��0x00000000  ��֪�����ĳ�������    #define ApplicationAddress    0x8002000�����û�� 

	  
	  
	  
	
}







