/********************************************************************
//版权说明	:Shenzhen E-EYE Co. Ltd., Copyright 2009- All Rights Reserved.
//文件名称	:Test.c		
//功能		:实现行驶记录仪的检定功能 
//版本号	:
//开发人	:dxl
//开发时间	:2013.3
//修改者	:
//修改时间	:
//修改简要说明	:
//备注		:
***********************************************************************/
//***************包含文件*****************
#include "stm32f2xx.h"
#include "stm32f2xx_lib.h"
#include "include.h"

//****************宏定义****************
//***************常量定义***************
//*****************变量定义****************
u8	TestFlag = 0;//0:退出了检定状态;1:当前处于检定状态,收到检定命令E0时置1,收到检定命令E4时清0
u8	TestStatus = 0;//测试状态;E1H,进入里程误差测量;E2H,进入脉冲系数误差测量;E3H,进入实时时钟误差测量
static u8 EnterE0TimeCount = 0;//进入E0状态计时,收到E0后，PC机需6秒内发送E1或E2或E3进入检定检测，否则6秒后自动退出检定状态
//****************函数定义*****************
/*********************************************************************
//函数名称	:Test_GetFlag
//功能		:获得检定状态值
//输入		:
//输出		:
//使用资源	:
//全局变量	:   
//调用函数	:
//中断资源	:  
//返回		:0:退出了检定状态;1:当前处于检定状态
*********************************************************************/
u8 Test_GetFlag(void)
{
	return TestFlag;
}
/*********************************************************************
//函数名称	:Test_EnterE0
//功能		:E0H,进入或保持检定状态
//输入		:
//输出		:
//使用资源	:
//全局变量	:   
//调用函数	:
//中断资源	:  
//返回		:
//备注		:收到检定命令E0时调用此函数
*********************************************************************/
void Test_EnterE0(void)
{
        //if(0 == TestFlag)//当前已为检定状态时PC机发送E0指令不理会
        //{
                TestStatus = 0xE0;
	
	        TestFlag = 1;
                
                //开启定时器4，定时1秒(参数值20000对应1秒)
	        Test_Tim4Init(20000);
        //}
        EnterE0TimeCount = 0;
}
/*********************************************************************
//函数名称	:Test_EnterE1
//功能		:E1H,进入里程误差测量
//输入		:
//输出		:
//使用资源	:
//全局变量	:   
//调用函数	:
//中断资源	:  
//返回		:
//备注		:收到检定命令E1时调用此函数
*********************************************************************/
void Test_EnterE1(void)
{
        //if(1 == TestFlag)
        //{	
    	        //初始化DB9的7脚为中断输入
	        Test_ExtiInit();
        
                //打开定时器4,定时1秒(参数值20000对应1秒),每秒发送一条E1指令到PC机
	        Test_Tim4Init(20000);
	
	        TestStatus = 0xE1;
        
                EnterE0TimeCount = 0;
        //}
}
/*********************************************************************
//函数名称	:Test_EnterE2
//功能		:E2H,进入脉冲系数误差测量
//输入		:
//输出		:
//使用资源	:
//全局变量	:   
//调用函数	:
//中断资源	:  
//返回		:
//备注		:收到检定命令E2时调用此函数
*********************************************************************/
void Test_EnterE2(void)
{
      
        //if(1 == TestFlag)
        //{	
	        //初始化测试引脚为输出
	        Test_GpioInit();
                
                Pulse_ExtiInit2();
	
	        TestStatus = 0xE2;
        
                EnterE0TimeCount = 0;
        //}
	
}
/*********************************************************************
//函数名称	:Test_EnterE3
//功能		:E3H,进入实时时钟误差测量
//输入		:
//输出		:
//使用资源	:
//全局变量	:   
//调用函数	:
//中断资源	:  
//返回		:
//备注		:收到检定命令E3时调用此函数
*********************************************************************/
void Test_EnterE3(void)
{
	
        //if(1 == TestFlag)
        //{	
	        //初始化测试引脚为输出
	        Test_GpioInit();
        
                //打开定时器4,定时0.5秒(参数值20000对应1秒)
	        Test_Tim4Init(10000);
	
	        TestStatus = 0xE3;
        
                EnterE0TimeCount = 0;
        //}
	
}
/*********************************************************************
//函数名称	:Test_EnterE4
//功能		:E4H,退出检定状态,恢复成正常状态
//输入		:
//输出		:
//使用资源	:
//全局变量	:   
//调用函数	:
//中断资源	:  
//返回		:
//备注		:收到检定命令E4时调用此函数
*********************************************************************/
void Test_EnterE4(void)
{
	//关闭定时器4
        TIM_Cmd(TIM4, DISABLE);
        
        //DB9脚设置为输出
	Test_GpioInit();
        
        Pulse_ExtiInit();//恢复正常的脉冲线设置
        
	TestStatus = 0;
	TestFlag = 0;
        EnterE0TimeCount = 0;
}
/*********************************************************************
//函数名称	:Test_ExtiInit
//功能		:外部中断初始化
//输入		:
//输出		:
//使用资源	:
//全局变量	:   
//调用函数	:
//中断资源	:  
//返回		:
//备注		:
//		:
*********************************************************************/
void Test_ExtiInit(void)
{
	EXTI_InitTypeDef   EXTI_InitStructure;
  	GPIO_InitTypeDef   GPIO_InitStructure;
  	NVIC_InitTypeDef   NVIC_InitStructure;
        
        //-------------------------PB10外部中断，上升沿中断--------------------//

  	/* Enable GPIOB clock */
  	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOB, ENABLE);
  	/* Enable SYSCFG clock */
  	RCC_APB2PeriphClockCmd(RCC_APB2Periph_SYSCFG, ENABLE);
  
  	/* Configure PB14 pin as input floating */
  	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN;
  	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;
  	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_14;
  	GPIO_Init(GPIOB, &GPIO_InitStructure);

  	/* Connect EXTI Line14 to PB14 pin */
  	SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOB, EXTI_PinSource14);

  	/* Configure EXTI Line14 */
  	EXTI_InitStructure.EXTI_Line = EXTI_Line14;
  	EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
  	EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Rising;
  	EXTI_InitStructure.EXTI_LineCmd = ENABLE;
  	EXTI_Init(&EXTI_InitStructure);

  	/* Enable and set EXTI14 Interrupt to the lowest priority */
        NVIC_InitStructure.NVIC_IRQChannel = EXTI15_10_IRQn;
  	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;
  	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
  	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
	NVIC_Init(&NVIC_InitStructure);
        
       
}
/*********************************************************************
//函数名称	:Test_Tim4Init
//功能		:定时器4初始化
//输入		:
//输出		:
//使用资源	:
//全局变量	:   
//调用函数	:
//中断资源	:  
//返回		:
//备注		:Time:2000对应0.1秒的定时
//		:
*********************************************************************/
void Test_Tim4Init(u32 Time)
{
	NVIC_InitTypeDef NVIC_InitStructure;
	TIM_TimeBaseInitTypeDef  TIM_TimeBaseStructure;
	
	u16	PrescalerValue;
	 /* TIM3 clock enable */
        RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM4, ENABLE);

        /* Enable the TIM3 gloabal Interrupt */
        NVIC_InitStructure.NVIC_IRQChannel = TIM4_IRQn;
        NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;
        NVIC_InitStructure.NVIC_IRQChannelSubPriority = 1;
        NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
        NVIC_Init(&NVIC_InitStructure);

        /* Compute the prescaler value */
        PrescalerValue = 2399;

        /* Time base configuration */
        //TIM_TimeBaseStructure.TIM_Period = 4000;//0.2秒
        //TIM_TimeBaseStructure.TIM_Period = 20000;//1s,与2399对应
        TIM_TimeBaseStructure.TIM_Period = Time;
        TIM_TimeBaseStructure.TIM_Prescaler = 0;
        TIM_TimeBaseStructure.TIM_ClockDivision = 0;
        TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Up;

        TIM_TimeBaseInit(TIM4, &TIM_TimeBaseStructure);

        TIM_SetCounter(TIM4, 0);
  
        /* Prescaler configuration */
        TIM_PrescalerConfig(TIM4, PrescalerValue, TIM_PSCReloadMode_Immediate);

        /* TIM Interrupts enable */
        TIM_ITConfig(TIM4, TIM_IT_Update, ENABLE);

        /* TIM4 enable counter */
        TIM_Cmd(TIM4, ENABLE);
}
/*********************************************************************
//函数名称	:Test_GpioInit
//功能		:测试引脚初始化为GPIO
//输入		:
//输出		:
//使用资源	:
//全局变量	:   
//调用函数	:
//中断资源	:  
//返回		:
//备注		:
//		:
*********************************************************************/
void Test_GpioInit(void)
{
	GPIO_InitTypeDef  GPIO_InitStructure;
  
  	/* 实用GPIO时钟*/
  	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOB, ENABLE);

  	/* 配置GPIO脚 50Mhz推挽输出,弱上拉 */
  	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_14;
  	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
  	GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
  	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_UP;  
  	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  	GPIO_Init(GPIOB, &GPIO_InitStructure);

}
/*********************************************************************
//函数名称	:Test_ExtiIsr
//功能		:外部中断
//输入		:
//输出		:
//使用资源	:
//全局变量	:   
//调用函数	:
//中断资源	:  
//返回		:
//备注		:
//		:
*********************************************************************/
void Test_ExtiIsr(void)
{
        if((0xE1 == TestStatus)&&(1 == TestFlag))
        {
	        Pulse_MileAdd();
        }
	/* Clear the EXTI line 0 pending bit */
    	EXTI_ClearITPendingBit(EXTI_Line14);
}
/*********************************************************************
//函数名称	:Test_Time4Isr
//功能		:定时器4中断
//输入		:
//输出		:
//使用资源	:
//全局变量	:   
//调用函数	:
//中断资源	:  
//返回		:
//备注		:用于检定功能，正常应用时关闭，检定时打开
*********************************************************************/
void Test_Tim4Isr(void)
{
        static u8 count = 0;
        
	if(TIM_GetITStatus(TIM4, TIM_IT_Update) != RESET)
  	{
    		TIM_ClearITPendingBit(TIM4, TIM_IT_Update);
		//定时器4计数清0
		TIM_SetCounter(TIM4, 0);
                if((0xE0 == TestStatus)&&(1 == TestFlag))//
                {
                        EnterE0TimeCount++;
                        if(EnterE0TimeCount >= 6)
                        {
                                Test_EnterE4();
                        }
                }
                else if((0xE1 == TestStatus)&&(1 == TestFlag))
		{
			Recorder_MileageTest();//每秒钟发送一个应答帧
		}
		else if((0xE3 == TestStatus)&&(1 == TestFlag))
                {
                        count++;
                        if(count >= 2)
                        {
                                count = 0;
                        }
		        if(0 == count)
		        {
			        GPIO_SetBits(GPIOB, GPIO_Pin_14);
		        }
		        else
		        {
			        GPIO_ResetBits(GPIOB, GPIO_Pin_14);
		        }
                }
	}
}