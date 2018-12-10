#ifndef	__JTREPORT_H
#define	__JTREPORT_H

//*************文件包含***************
#include "stm32f2xx_gpio.h"
#include "stm32f2xx.h"
/*********************************************************************
//函数名称	:JTReport_TimeTask
//功能		:九通位置汇报（九通渣土车应用）
//输入		:
//输出		:
//使用资源	:
//全局变量	:   
//调用函数	:
//中断资源	:  
//返回		:
//备注		:
*********************************************************************/
FunctionalState JTReport_TimeTask(void);
/*********************************************************************
//函数名称	:JTReport_WriteIoStatusBit
//功能		:写九通自定义的状态位，
//输入		:
//输出		:
//使用资源	:
//全局变量	:   
//调用函数	:
//中断资源	:  
//返回		:
//备注		:附加ID E4会用到
*********************************************************************/
void JTReport_WriteIoStatusBit(u8 bit, FlagStatus state);
#endif