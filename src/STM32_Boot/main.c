/**
  ******************************************************************************
  * @file    Project/STM32F10x_StdPeriph_Template/main.c
  * @author  MCD Application Team
  * @version V3.5.0
  * @date    08-April-2011
  * @brief   Main program body
  ******************************************************************************
  * @attention
  *
  * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
  * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
  * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
  * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
  *
  * <h2><center>&copy; COPYRIGHT 2011 STMicroelectronics</center></h2>
  ******************************************************************************
  */

/* Includes ------------------------------------------------------------------*/
#include "stm32f10x.h"
#include "config.h"



/* Private functions ---------------------------------------------------------*/

/**
  * @brief  Main program.
  * @param  None
  * @retval None
  */
int main(void)
{
  /*!< At this stage the microcontroller clock setting is already configured,
       this is done through SystemInit() function which is called from startup
       file (startup_stm32f10x_xx.s) before to branch to application main.
       To reconfigure the default setting of SystemInit() function, refer to
       system_stm32f10x.c file
  */
  const u8 sendbuffer[512] = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";

  GPIO_InitTypeDef GPIO_InitStructure;
  USART_InitTypeDef USART_InitStructure;

  RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB | RCC_APB2Periph_GPIOD | RCC_APB2Periph_AFIO | RCC_APB2Periph_GPIOA
  	                     |RCC_APB2Periph_USART1,  ENABLE);
  RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART2, ENABLE);

    /* NVIC configuration */
  NVIC_Configuration();
   /* Configure GPIOB ALL pin as Output push-pull */
  GPIO_InitStructure.GPIO_Pin = ~(GPIO_Pin_11 | GPIO_Pin_10);
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  GPIO_Init(GPIOB, &GPIO_InitStructure);

  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_2;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  GPIO_Init(GPIOD, &GPIO_InitStructure);
  /* USART2 configured as follow:
        - BaudRate = 9600 baud
        - Word Length = 8 Bits
        - One Stop Bit
        - No parity
        - Hardware flow control disabled (RTS and CTS signals)
        - Receive and transmit enabled
  */
  /*-----------------设置相应UART2 IO-----------------------------------------*/
  GPIO_InitStructure.GPIO_Pin	  = GPIO_Pin_2; 				  //设置PA9为UART1 TX
  GPIO_InitStructure.GPIO_Mode	  = GPIO_Mode_AF_PP;
  GPIO_InitStructure.GPIO_Speed   = GPIO_Speed_50MHz;
  GPIO_Init(GPIOA, &GPIO_InitStructure);

  GPIO_InitStructure.GPIO_Pin	  = GPIO_Pin_3; 				 //设置PA10为UART1 RX
  GPIO_InitStructure.GPIO_Mode	  = GPIO_Mode_IN_FLOATING;
  GPIO_InitStructure.GPIO_Speed   = GPIO_Speed_50MHz;
  GPIO_Init(GPIOA, &GPIO_InitStructure);


  GPIO_InitStructure.GPIO_Pin	  = GPIO_Pin_9; 				  //设置PA9为UART1 TX
  GPIO_InitStructure.GPIO_Mode	  = GPIO_Mode_AF_PP;
  GPIO_InitStructure.GPIO_Speed   = GPIO_Speed_50MHz;
  GPIO_Init(GPIOA, &GPIO_InitStructure);

  GPIO_InitStructure.GPIO_Pin	  = GPIO_Pin_10; 				 //设置PA10为UART1 RX
  GPIO_InitStructure.GPIO_Mode	  = GPIO_Mode_IN_FLOATING;
  GPIO_InitStructure.GPIO_Speed   = GPIO_Speed_50MHz;
  GPIO_Init(GPIOA, &GPIO_InitStructure);
  /*------------------用与USART的初始化---------------------------------------*/
  USART_InitStructure.USART_BaudRate	  = 9600; 			  //通信波特路115200
  USART_InitStructure.USART_WordLength	  = USART_WordLength_8b;   //8位数据位
  USART_InitStructure.USART_StopBits	  = USART_StopBits_1;		 //1位停止位
  USART_InitStructure.USART_Parity		  = USART_Parity_No;		   //无校验
  USART_InitStructure.USART_HardwareFlowControl   = USART_HardwareFlowControl_None;
  USART_InitStructure.USART_Mode		  = USART_Mode_Rx | USART_Mode_Tx;
  USART_Init(USART2, &USART_InitStructure); 		//配置串口2

  USART_ITConfig(USART2, USART_IT_RXNE, ENABLE);	//使能发送空中断和接收空中断
  USART_Cmd(USART2, ENABLE);	

  USART_InitStructure.USART_BaudRate = 115200;
  USART_InitStructure.USART_WordLength = USART_WordLength_8b;
  USART_InitStructure.USART_StopBits = USART_StopBits_1;
  USART_InitStructure.USART_Parity = USART_Parity_No;
  USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
  USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;

  /* Configure USART1 */
  USART_Init(USART1, &USART_InitStructure);
  USART_Cmd(USART1, ENABLE);	
 	
  if (SysTick_Config(SystemCoreClock / 100)) //10ms
  {
    /* Capture error */
    while (1);
  }
  strcpy((char *)gSmsRecord.msgParam.TPA, "13798572016");
  Communication_Init();
  /* Infinite loop */
  while (1)
  {
	static u32 timer = 0;
	static u16 num = 1;
	u8   temp[100];
	Communication_timeTask();

	//if (num == 1)
	//	if (Communication_SndMsg2Svr((u8 *)sendbuffer, strlen((char *)sendbuffer), 0))
	//		num = 0;

    if (Timer_Val() - timer >= 2*SECOND) {
		timer = Timer_Val();

		sprintf((char *)temp, "Device is working! Sending data: %d\r\n", num);

		if (Communication_SndMsg2Svr(temp, strlen((char *)temp), 0))
			num++;
	}

  }
}

/**
  * @brief  Retargets the C library printf function to the USART.
  * @param  None
  * @retval None
  */
//PUTCHAR_PROTOTYPE
//{
  /* Place your implementation of fputc here */
  /* e.g. write a character to the USART */
 // USART_SendData(EVAL_COM1, (uint8_t) ch);

  /* Loop until the end of transmission */
//  while (USART_GetFlagStatus(EVAL_COM1, USART_FLAG_TC) == RESET)
 // {}

 // return ch;
//}

#ifdef  USE_FULL_ASSERT

/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t* file, uint32_t line)
{
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */

  /* Infinite loop */
  while (1)
  {
  }
}
#endif

/**
  * @}
  */


/******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
