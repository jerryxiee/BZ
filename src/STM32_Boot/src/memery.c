/*****************************************************************************
*
* Copyright (c) 2011,�������������¼����������޹�˾
* All rights reserved.
*
* �ļ����� : memery.c
* ����     :  ���ϴ洢�����Ĵ��� ������93C86��AT25DF321��Ƭ��FLASH
*
* ��ǰ�汾 : 1.0
* ������   : wangj
* �޸�ʱ�� : 2011��6��20��
*
* ��ʷ�汾 :
* ������   :
* ���ʱ�� :
*
* ��ע :
*******************************************************************************/
/* Includes ------------------------------------------------------------------*/
#include "config.h"
#include "stm32f2xx_lib.h"
#include "memery.h"
/* Private functions ---------------------------------------------------------*/
//--------------------------------internal Flash-----------------------------------

bool WriteToMemory(u32 Add_Flash, u8 *src, u16 NumByteToWrite)
{
    u16 WriteCounter = 0;
    u16 Number_Bytes_Transferred = 0;
	u8 *ptr;
	
	Number_Bytes_Transferred = NumByteToWrite;
	ptr = src;
	//д����
    for (WriteCounter=0; (WriteCounter < (Number_Bytes_Transferred)/2); WriteCounter++) {
		FLASH_ProgramHalfWord(Add_Flash + WriteCounter * 2, *((u16*)ptr + WriteCounter));
    }
    //�Ƚ�����
    for (WriteCounter=0; (WriteCounter < (Number_Bytes_Transferred)/2); WriteCounter++){
        if (*((u16*)Add_Flash + WriteCounter) != *((u16*)ptr + WriteCounter))
            return FALSE;
    }
    
    return TRUE;
}

////CRC-CCITTУ��
//u16 CrcCheck(u8 *pDataBuf, u16 DataLen)
//{
//	u16  CrcValue, n;
//	u8   i;
//
//	CrcValue = 0xFFFF;
//	for (n=0; n<DataLen; n++) {
//		for (i = 0x80; i != 0; i /= 2) {
//		    if ((CrcValue & 0x8000) != 0){
//			    CrcValue *= 2;
//				CrcValue ^= 0x1021;
//			} else { CrcValue *= 2; }
//			
//		    if((pDataBuf[n] & i) != 0)
//			    CrcValue ^= 0x1021;
//		}
//	}
//
//	return CrcValue;
//}
/***************************************END OF FILE********************************/

