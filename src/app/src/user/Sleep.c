/********************************************************************
//版权说明	:Shenzhen E-EYE Co. Ltd., Copyright 2009- All Rights Reserved.
//文件名称	:Sleep.c		
//功能		:
//版本号	:V0.1
//开发人	:dxl
//开发时间	:2012.6 
//修改者	:
//修改时间	:
//修改简要说明	:
//备注		:
***********************************************************************/

//********************************头文件************************************
#include "stm32f2xx.h"
#include "stm32f2xx_lib.h"
#include "include.h"
//********************************自定义数据类型****************************

//********************************宏定义************************************

//********************************全局变量**********************************

//********************************外部变量**********************************

//********************************本地变量**********************************
static u32	AccOnCount = 0;
static u32	AccOffCount = 0;
#ifdef HUOYUN_DEBUG_OPEN
u8       SleepFlag = 0;//休眠标志,1为进入休眠,0为不休眠,货运平台要求ACC OFF后30分钟进入休眠上报
#endif
//********************************函数声明**********************************

/*********************************************************************
//函数名称	:Sleep_TimeTask(void)
//功能		:休眠定时任务
//输入		:
//输出		:
//使用资源	:
//全局变量	:
//调用函数	:
//中断资源	:  
//返回		:
//备注		:
*********************************************************************/
FunctionalState  Sleep_TimeTask(void)
{
        
	//u8	Buffer[REPORT_BUFFER_SIZE];//位置信息存储缓冲
	//u8	length;
    u8      				Acc = 0;
    static u8      	LastAcc = 0;
    static u16      SendCount = 0;
	  static u16     	ReportTimeCount = 0;
		static u8				authCnt = 0;//休眠过程中鉴权次数
    Acc = Io_ReadStatusBit(STATUS_BIT_ACC);
        
    if(Acc != LastAcc)
    {
        //进入休眠或退出休眠的第一秒,上报一个点
        //上报位置信息                
 // length = Report_GetPositionInformation(Buffer);
 //RadioProtocol_PostionInformationReport(Buffer, length);//位置信息汇报
        
    }
        
	
	if(DetectMultiStatus(0,2,DetectOption_functionTest,DetectOption_protocolTest))//部标功能检测,部标协议检测	
	{	
			if(1 == Acc)
			{
					ReportTimeCount = 0;
					SendCount = 0;
					AccOffCount = 0;
					AccOnCount++;
					if(1 == AccOnCount)
					{
							authCnt = 0;
							Report_ClearReportTimeCount();
							SetTimerTask(TIME_POSITION,1);//开位置汇报
							//SetTimerTask(TIME_STATUS_ALARM,1);//开状态变化或报警位上报
							//开启心跳包
              SetTimerTask(TIME_HEART_BEAT, SYSTICK_1SECOND);
							Communication_Open();
					}
			}
			else
			{
					AccOnCount = 0; 
					AccOffCount++;
					AccOffCount = AccOffCount%305;
					if(1 == AccOffCount)
					{
							ClrTimerTask(TIME_POSITION);//关位置汇报
							//暂停心跳包
              ClrTimerTask(TIME_HEART_BEAT);
							//ClrTimerTask( TIME_STATUS_ALARM);//关状态变化或报警位上报
					}
					else if(30 == AccOffCount)//关闭网络
					{
							authCnt++;
							if(authCnt <= 2)
							{
								ClearTerminalAuthorizationFlag(CHANNEL_DATA_1);//鉴权标志清0
								Communication_Close();
							}
					}
					else if(240 == AccOffCount)//开启网络
					{
							Communication_Open();
					}
				
					ReportTimeCount++;
					if((ReportTimeCount >= 300)&&(0 == SendCount))//第1次发送位置信息需滞后2-3秒
					{
							SendCount++;
							ReportTimeCount = 0;
							Report_UploadPositionInfo(CHANNEL_DATA_1|CHANNEL_DATA_2);
					}
					else if((ReportTimeCount >= 300)&&(SendCount > 0))
					{
							SendCount++;
							ReportTimeCount = 0;
							Report_UploadPositionInfo(CHANNEL_DATA_1|CHANNEL_DATA_2);
					}
			}
	}
	else
	{
			if(1 == Acc)
			{
					AccOffCount = 0;
					AccOnCount++;
					if(20 == AccOnCount)
					{
							CHARGE_ON(); 
							CAN_PWR_ON(); 
					}
					Io_WriteIoStatusBit(IO_STATUS_BIT_SLEEP, RESET);
			}
			else
			{
					AccOnCount = 0;
					AccOffCount++;
					if(20 == AccOffCount)
					{
							CHARGE_OFF();
							CAN_PWR_OFF();
					}
					Io_WriteIoStatusBit(IO_STATUS_BIT_SLEEP, SET);	 
			}
	} 	

  LastAcc = Acc;

  return ENABLE;
      
}
/*********************************************************************
//函数名称	:Sleep_Init(void)
//功能		:休眠初始化
//输入		:
//输出		:
//使用资源	:
//全局变量	:
//调用函数	:
//中断资源	:  
//返回		:
//备注		:
*********************************************************************/
void Sleep_Init(void)
{
	GPIO_InitTypeDef  GPIO_InitStructure;
  	
	/* 实用GPIO时钟*/
  	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOG, ENABLE);

  	/* 配置PG10脚 50Mhz推挽输出,弱上拉,用于控制备电充电 */
  	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_10;
  	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
  	GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
  	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;  //LED灯控制不能 设置上拉 GPIO_PuPd_UP
  	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  	GPIO_Init(GPIOG, &GPIO_InitStructure);
}




