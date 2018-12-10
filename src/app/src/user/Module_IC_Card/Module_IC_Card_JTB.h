/*************************************************************************
* Copyright (c) 2013,深圳市伊爱高新技术开发有限公司
* All rights reserved.
* 文件名称 : Module_IC_Card_JTB.h
* 当前版本 : 1.0
* 开发者   : Shigle
* 修改时间 : 20113年6月15日
*************************************************************************/

#ifndef __MODULE_IC_CARD_XIONGDI_H_
#define __MODULE_IC_CARD_XIONGDI_H_


//*************文件包含***************
#include "stm32f2xx.h"


#define IC_AUTHENTICATION_REQUEST_CODE  0x40  //IC卡认证请求
#define IC_AUTHENTICATION_RESULT_CODE   0x41  //道路运输证IC卡读取结果通知
#define IC_SIGN_OUT_CODE                0x42  //卡片拔出通知
#define IC_ACTIVE_REQUEST_CODE          0x43  //主动触发读取IC卡


#define IC_RESULT_REQUEST_SUCCESS     0x00
#define IC_RESULT_REQUEST_NOINSERT    0x01
#define IC_RESULT_REQUEST_FAIL        0x02
#define IC_RESULT_REQUEST_NOSUPPORT   0x03
#define IC_RESULT_REQUEST_LOCK        0x04



#define TIMEOUT_REQUEST_AUTH     (10*SECOND)  //标称35秒


//////////////////////////
extern FunctionalState Task_IC_Card_JTB(void);
/*************************************************************
** 函数名称: ICCard_DisposeRecvExdeviceJTB
** 功能描述: 数据解析
** 入口参数: 无
** 出口参数: 无
** 返回参数: 无
** 全局变量: 
** 调用模块: 
*************************************************************/
void ICCard_DisposeRecvExdeviceJTB(ST_PROTOCOL_EXDEVICE stExdevice, unsigned short datalen);
/********************************************************************
* 名称 : ICCard_SendCmdForClearElectronicCertificate
* 功能 : 清除内置电子证件信息
* 参数 : dataType 0x00:从业人员资格证(主)  0x10:道路运输证  0x20:道路运输证(从)
* 说明   终端=>卡 0xA2
********************************************************************/
unsigned char ICCard_SendCmdForClearElectronicCertificate(u8	cmdType,u8 dataType);
#endif