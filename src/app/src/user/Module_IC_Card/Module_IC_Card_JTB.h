/*************************************************************************
* Copyright (c) 2013,�������������¼����������޹�˾
* All rights reserved.
* �ļ����� : Module_IC_Card_JTB.h
* ��ǰ�汾 : 1.0
* ������   : Shigle
* �޸�ʱ�� : 20113��6��15��
*************************************************************************/

#ifndef __MODULE_IC_CARD_XIONGDI_H_
#define __MODULE_IC_CARD_XIONGDI_H_


//*************�ļ�����***************
#include "stm32f2xx.h"


#define IC_AUTHENTICATION_REQUEST_CODE  0x40  //IC����֤����
#define IC_AUTHENTICATION_RESULT_CODE   0x41  //��·����֤IC����ȡ���֪ͨ
#define IC_SIGN_OUT_CODE                0x42  //��Ƭ�γ�֪ͨ
#define IC_ACTIVE_REQUEST_CODE          0x43  //����������ȡIC��


#define IC_RESULT_REQUEST_SUCCESS     0x00
#define IC_RESULT_REQUEST_NOINSERT    0x01
#define IC_RESULT_REQUEST_FAIL        0x02
#define IC_RESULT_REQUEST_NOSUPPORT   0x03
#define IC_RESULT_REQUEST_LOCK        0x04



#define TIMEOUT_REQUEST_AUTH     (10*SECOND)  //���35��


//////////////////////////
extern FunctionalState Task_IC_Card_JTB(void);
/*************************************************************
** ��������: ICCard_DisposeRecvExdeviceJTB
** ��������: ���ݽ���
** ��ڲ���: ��
** ���ڲ���: ��
** ���ز���: ��
** ȫ�ֱ���: 
** ����ģ��: 
*************************************************************/
void ICCard_DisposeRecvExdeviceJTB(ST_PROTOCOL_EXDEVICE stExdevice, unsigned short datalen);
/********************************************************************
* ���� : ICCard_SendCmdForClearElectronicCertificate
* ���� : ������õ���֤����Ϣ
* ���� : dataType 0x00:��ҵ��Ա�ʸ�֤(��)  0x10:��·����֤  0x20:��·����֤(��)
* ˵��   �ն�=>�� 0xA2
********************************************************************/
unsigned char ICCard_SendCmdForClearElectronicCertificate(u8	cmdType,u8 dataType);
#endif