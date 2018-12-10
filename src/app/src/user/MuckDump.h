/*******************************************************************************
 * File Name:			MuckDump.h 
 * Function Describe:	
 * Relate Module:		渣土倾倒区域功能
 * Writer:				Joneming
 * Date:				2013-11-29
 * ReWriter:			
 * Date:				
 *******************************************************************************/
#ifndef __MUCKDUMP_H_
#define __MUCKDUMP_H_

/*************************************************************
** 函数名称: MuckDump_ParameterInitialize
** 功能描述: 渣土倾倒区域参数初始化
** 入口参数: 
** 出口参数: 
** 返回参数: 
** 全局变量: 无
** 调用模块: 无
*************************************************************/
void MuckDump_ParameterInitialize(void);  //区域初始化
/*************************************************************
** 函数名称: MuckDump_TimeTask
** 功能描述: 渣土倾倒区域功能定时器处理函数
** 入口参数: 
** 出口参数: 
** 返回参数: 
** 全局变量: 无
** 调用模块: 无
*************************************************************/
FunctionalState MuckDump_TimeTask(void) ; //区域管理
/*************************************************************
** 函数名称: MuckDump_SetRectAreaMuckDumpPlace
** 功能描述: 设置渣土倾倒区域(0x860a)
** 入口参数: 数据首地址
** 出口参数: 数据长度
** 返回参数: 0成功,1:失败;2数据有误
** 全局变量: 无
** 调用模块: 无
*************************************************************/
unsigned char MuckDump_SetArea(unsigned char *pBuffer, unsigned short BufferLen);
/*************************************************************
** 函数名称: MuckDump_DeleteArea
** 功能描述: :删除渣土倾倒区域
** 入口参数: 
** 出口参数: 
** 返回参数: 
** 全局变量: 无
** 调用模块: 无
*************************************************************/
unsigned char MuckDump_DeleteArea(unsigned char *pBuffer, unsigned short BufferLen);
/*************************************************************
** 函数名称: MuckDump_QueryArea
** 功能描述: 查询渣土倾倒区域(0x860c)
** 入口参数: 数据首地址
** 出口参数: 数据长度
** 返回参数: 
** 全局变量: 无
** 调用模块: 无
*************************************************************/
unsigned short MuckDump_QueryArea(unsigned char *pBuffer);
/*************************************************************
** 函数名称: MuckDump_GetCurMuckDumpAreaID
** 功能描述: 获得当前渣土倾倒区域ID
** 入口参数: 无
** 出口参数: 
** 返回参数: 0:不在任何渣土倾倒区域内,非零:为渣土倾倒区域ID
** 全局变量: 无
** 调用模块: 无
*************************************************************/
unsigned long MuckDump_GetCurMuckDumpAreaID(void);
#endif

/*******************************************************************************
 *                             end of module
 *******************************************************************************/
 