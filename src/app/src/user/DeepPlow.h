/*******************************************************************************
 * File Name:			DeepPlow.h 
 * Function Describe:	
 * Relate Module:		
 * Writer:				joneming
 * Date:				2013-05-25
 * Rewriter:
 * Date:		
 *******************************************************************************/
#ifndef __DEEPPLOW_H_
#define __DEEPPLOW_H_
/*******************************************************************************
** 函数名称: DeepPlow_GetSubjoinInfoCurDeepVal
** 功能描述: 取得当前耕深值附加信息包(包括附加信息ID、长度、附加信息体)
** 入口参数: 需要保存耕深值附加信息包的首地址
** 出口参数: 
** 返回参数: 耕深值附加信息包的总长度
*******************************************************************************/
unsigned char DeepPlow_GetSubjoinInfoCurDeepVal(unsigned char *data);
/*************************************************************
** 函数名称: DeepPlow_UpdatePram
** 功能描述: 
** 入口参数: 
** 出口参数: 无
** 返回参数: 无
** 全局变量: 无
** 调用模块: 无
*************************************************************/
void DeepPlow_UpdatePram(void);
/*******************************************************************************
** 函数名称:DeepPlow_GetResultIsQualified
** 功能描述: 是否合格
** 入口参数: 
** 出口参数: 
** 返回参数: 0合格,1不合格
*******************************************************************************/
unsigned char DeepPlow_GetResultIsQualified(void);
/*******************************************************************************
** 函数名称:DeepPlow_GetCheckParamResult
** 功能描述: 是否合格
** 入口参数: 
** 出口参数: 
** 返回参数: 0合格,1不合格
*******************************************************************************/
unsigned char DeepPlow_GetCheckParamResult(void);
/*******************************************************************************
** 函数名称:DeepPlow_GetCurDeepLength
** 功能描述: 
** 入口参数: 
** 出口参数: 
** 返回参数: 
*******************************************************************************/
unsigned short DeepPlow_GetCurDeepLength(void);
/*********************************************************************
//函数名称	:DeepPlow_TimeTask
//功能		:定时任务
//输入		:
//输出		:
//使用资源	:
//全局变量	:   
//调用函数	:
//中断资源	:  
//返回		:
//备注		:1秒调用1次
*********************************************************************/
FunctionalState DeepPlow_TimeTask(void);
/*************************************************************
** 函数名称: TaskSystemDeepBaseSet
** 功能描述: 耕深基准设置
** 入口参数: 无
** 出口参数: 无
** 返回参数: 无
** 全局变量: 
** 调用模块: 
*************************************************************/  
LZM_RET TaskSystemDeepBaseSet(LZM_MESSAGE *Msg);
/*************************************************************
** 函数名称: TaskSystemDeepMinCalib
** 功能描述: 耕深基准最小值标定
** 入口参数: 无
** 出口参数: 无
** 返回参数: 无
** 全局变量: 
** 调用模块: 
*************************************************************/  
LZM_RET TaskSystemDeepMinCalib(LZM_MESSAGE *Msg);
/*************************************************************
** 函数名称: TaskSystemDeepMaxCalib
** 功能描述: 耕深基准最大值标定
** 入口参数: 无
** 出口参数: 无
** 返回参数: 无
** 全局变量: 
** 调用模块: 
*************************************************************/  
LZM_RET TaskSystemDeepMaxCalib(LZM_MESSAGE *Msg);
/*************************************************************
** 函数名称: TaskSystemDeepBaseCalib
** 功能描述: 耕深基准标定
** 入口参数: 无
** 出口参数: 无
** 返回参数: 无
** 全局变量: 
** 调用模块: 
*************************************************************/  
LZM_RET TaskSystemDeepBaseCalib(LZM_MESSAGE *Msg);
#endif//__DEEPPLOW_H_
/*******************************************************************************
 *                             end of module
 *******************************************************************************/

