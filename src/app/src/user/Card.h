#ifndef __CARD_H
#define __CARD_H

#include "stm32f2xx.h"
#include "stm32f2xx_lib.h"

#define CARD_STATE_IDLE                           0
#define CARD_STATE_CONNECT_NET                    1
#define CARD_STATE_AUTHENTICATION_REQUEST         2
#define CARD_STATE_DRIVER_LOGIN                   3
#define CARD_STATE_DRIVER_LOGOUT                  4


/**************************************************************************
//函数名：Card_TimeTask
//功能：部标驾驶员身份识别功能
//输入：无
//输出：无
//返回值：始终是ENABLE
//备注：锁定一定时任务，1秒钟进入1次，任务调度器需要调用此函数
***************************************************************************/
FunctionalState Card_TimeTask(void);
/**************************************************************************
//函数名：Card_GetLinkFlag
//功能：获取IC卡认证连接标志
//输入：无
//输出：无
//返回值：1：表示IC卡连接；0：不是IC卡连接
//备注：当为IC卡连接时，不能走注册鉴权流程
***************************************************************************/
u8 Card_GetLinkFlag(void);
/**************************************************************************
//函数名：Card_AuthenticationAck
//功能：认证应答
//输入：无
//输出：无
//返回值：无
//备注：下一个状态为空闲
***************************************************************************/
void Card_AuthenticationAck(u8 *pBuffer , u16 BufferLen);
/**************************************************************************
//函数名：Card_ParseCmd
//功能：解析IC卡读卡器的指令
//输入：无
//输出：无
//返回值：无
//备注：无
***************************************************************************/
void Card_ParseCmd(u8 *pBuffer , u16 BufferLen);
#endif