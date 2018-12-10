/******************** (C) COPYRIGHT 2008 STMicroelectronics ********************
* File Name          : timer.c
* Author             : MCD Application Team 
* Version            : V1.0.0
* Date               : 04/07/2009
* Description        : 定时器程序.
*                      This file provides template for all exceptions handler
*                      and peripherals interrupt service routine.
*******************************************************************************/

/* Includes ------------------------------------------------------------------*/
#include "stm32f2xx.h"
#include "stm32f2xx_lib.h"
#include "include.h"
//*******************外部变量************************
extern u8 UART4_TxBuffer[];
extern u8 UART4_TxBuffer2[];
extern TIME_T CurrentTime;

//*******************全局变量************************
u32  TimerCount = 0;
u8 SecTimer;
u8 MyClock[6];
const u8 Month[] = {31,28,31,30,31,30,31,31,30,31,30,31};

//*******************函数声明*************************
void Ajust_Clock();

/*******************************************************************************
* Function Name  : Timer_Val
* Description    : This function .
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
u32 Timer_Val()
{
  return TimerCount; 
}

/*******************************************************************************
* Function Name  : Timer_ISR
* Description    : This function .
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void Timer_ISR()
{
	TimerCount++;
    	communication_CalTimer();
}

/*******************************************************************************
* Function Name  : Timer_SetClock
* Description    : This function .
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void Timer_SetClock(u8 *clock)
{
  u8 ch;
  
  ch = *clock++;
  MyClock[0] = ch & 0x3F;
  memcpy((u8*)&MyClock[1], clock, 5);
}

/*******************************************************************************
* Function Name  : Timer_GetClock
* Description    : This function .
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void Timer_GetClock(u8 *clock)
{
  *clock &= 0xC0;
  *clock++ |= MyClock[0] & 0x3F;
  memcpy(clock, (u8*)&MyClock[1], 5);
}

/*******************************************************************************
* Function Name  : Ajust_Clock
* Description    : 内部时钟 .
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void Ajust_Clock()
{
  u8 year,date;
	
	//秒
	MyClock[5]++;
	if(MyClock[5] > 59)
	{
		MyClock[5] = 0;//%= 60;
		MyClock[4]++;
		//分
		if(MyClock[4] > 59)
		{
			MyClock[4] = 0;//%= 60;
			MyClock[3]++;
			//时
			if(MyClock[3] > 23)
			{
				MyClock[3] = 0;//24;
				//日
				MyClock[2]++;
				date = Month[MyClock[1] - 1];
				//判断润年,判断是否2月份
				if(MyClock[1] == 2)
				{
					year = MyClock[0] & 0x03;
					if(year == 0)
						date++;// = 29;
				}
				
				if(MyClock[2] > date)
				{
					MyClock[2] = 1;
					//月	
					MyClock[1]++;
					if(MyClock[1] > 12)
					{
						MyClock[1] = 1;
						//年
						MyClock[0]++;
					}
				}
			}
		}
	}
}
