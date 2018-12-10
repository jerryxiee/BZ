/********************************************************************
//��Ȩ˵��	:Shenzhen E-EYE Co. Ltd., Copyright 2009- All Rights Reserved.
//�ļ�����	:Test.c		
//����		:ʵ����ʻ��¼�ǵļ춨���� 
//�汾��	:
//������	:dxl
//����ʱ��	:2013.3
//�޸���	:
//�޸�ʱ��	:
//�޸ļ�Ҫ˵��	:
//��ע		:
***********************************************************************/
//***************�����ļ�*****************
#include "stm32f2xx.h"
#include "stm32f2xx_lib.h"
#include "include.h"

//****************�궨��****************
//***************��������***************
//*****************��������****************
u8	TestFlag = 0;//0:�˳��˼춨״̬;1:��ǰ���ڼ춨״̬,�յ��춨����E0ʱ��1,�յ��춨����E4ʱ��0
u8	TestStatus = 0;//����״̬;E1H,�������������;E2H,��������ϵ��������;E3H,����ʵʱʱ��������
static u8 EnterE0TimeCount = 0;//����E0״̬��ʱ,�յ�E0��PC����6���ڷ���E1��E2��E3����춨��⣬����6����Զ��˳��춨״̬
//****************��������*****************
/*********************************************************************
//��������	:Test_GetFlag
//����		:��ü춨״ֵ̬
//����		:
//���		:
//ʹ����Դ	:
//ȫ�ֱ���	:   
//���ú���	:
//�ж���Դ	:  
//����		:0:�˳��˼춨״̬;1:��ǰ���ڼ춨״̬
*********************************************************************/
u8 Test_GetFlag(void)
{
	return TestFlag;
}
/*********************************************************************
//��������	:Test_EnterE0
//����		:E0H,����򱣳ּ춨״̬
//����		:
//���		:
//ʹ����Դ	:
//ȫ�ֱ���	:   
//���ú���	:
//�ж���Դ	:  
//����		:
//��ע		:�յ��춨����E0ʱ���ô˺���
*********************************************************************/
void Test_EnterE0(void)
{
        //if(0 == TestFlag)//��ǰ��Ϊ�춨״̬ʱPC������E0ָ����
        //{
                TestStatus = 0xE0;
	
	        TestFlag = 1;
                
                //������ʱ��4����ʱ1��(����ֵ20000��Ӧ1��)
	        Test_Tim4Init(20000);
        //}
        EnterE0TimeCount = 0;
}
/*********************************************************************
//��������	:Test_EnterE1
//����		:E1H,�������������
//����		:
//���		:
//ʹ����Դ	:
//ȫ�ֱ���	:   
//���ú���	:
//�ж���Դ	:  
//����		:
//��ע		:�յ��춨����E1ʱ���ô˺���
*********************************************************************/
void Test_EnterE1(void)
{
        //if(1 == TestFlag)
        //{	
    	        //��ʼ��DB9��7��Ϊ�ж�����
	        Test_ExtiInit();
        
                //�򿪶�ʱ��4,��ʱ1��(����ֵ20000��Ӧ1��),ÿ�뷢��һ��E1ָ�PC��
	        Test_Tim4Init(20000);
	
	        TestStatus = 0xE1;
        
                EnterE0TimeCount = 0;
        //}
}
/*********************************************************************
//��������	:Test_EnterE2
//����		:E2H,��������ϵ��������
//����		:
//���		:
//ʹ����Դ	:
//ȫ�ֱ���	:   
//���ú���	:
//�ж���Դ	:  
//����		:
//��ע		:�յ��춨����E2ʱ���ô˺���
*********************************************************************/
void Test_EnterE2(void)
{
      
        //if(1 == TestFlag)
        //{	
	        //��ʼ����������Ϊ���
	        Test_GpioInit();
                
                Pulse_ExtiInit2();
	
	        TestStatus = 0xE2;
        
                EnterE0TimeCount = 0;
        //}
	
}
/*********************************************************************
//��������	:Test_EnterE3
//����		:E3H,����ʵʱʱ��������
//����		:
//���		:
//ʹ����Դ	:
//ȫ�ֱ���	:   
//���ú���	:
//�ж���Դ	:  
//����		:
//��ע		:�յ��춨����E3ʱ���ô˺���
*********************************************************************/
void Test_EnterE3(void)
{
	
        //if(1 == TestFlag)
        //{	
	        //��ʼ����������Ϊ���
	        Test_GpioInit();
        
                //�򿪶�ʱ��4,��ʱ0.5��(����ֵ20000��Ӧ1��)
	        Test_Tim4Init(10000);
	
	        TestStatus = 0xE3;
        
                EnterE0TimeCount = 0;
        //}
	
}
/*********************************************************************
//��������	:Test_EnterE4
//����		:E4H,�˳��춨״̬,�ָ�������״̬
//����		:
//���		:
//ʹ����Դ	:
//ȫ�ֱ���	:   
//���ú���	:
//�ж���Դ	:  
//����		:
//��ע		:�յ��춨����E4ʱ���ô˺���
*********************************************************************/
void Test_EnterE4(void)
{
	//�رն�ʱ��4
        TIM_Cmd(TIM4, DISABLE);
        
        //DB9������Ϊ���
	Test_GpioInit();
        
        Pulse_ExtiInit();//�ָ�����������������
        
	TestStatus = 0;
	TestFlag = 0;
        EnterE0TimeCount = 0;
}
/*********************************************************************
//��������	:Test_ExtiInit
//����		:�ⲿ�жϳ�ʼ��
//����		:
//���		:
//ʹ����Դ	:
//ȫ�ֱ���	:   
//���ú���	:
//�ж���Դ	:  
//����		:
//��ע		:
//		:
*********************************************************************/
void Test_ExtiInit(void)
{
	EXTI_InitTypeDef   EXTI_InitStructure;
  	GPIO_InitTypeDef   GPIO_InitStructure;
  	NVIC_InitTypeDef   NVIC_InitStructure;
        
        //-------------------------PB10�ⲿ�жϣ��������ж�--------------------//

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
//��������	:Test_Tim4Init
//����		:��ʱ��4��ʼ��
//����		:
//���		:
//ʹ����Դ	:
//ȫ�ֱ���	:   
//���ú���	:
//�ж���Դ	:  
//����		:
//��ע		:Time:2000��Ӧ0.1��Ķ�ʱ
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
        //TIM_TimeBaseStructure.TIM_Period = 4000;//0.2��
        //TIM_TimeBaseStructure.TIM_Period = 20000;//1s,��2399��Ӧ
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
//��������	:Test_GpioInit
//����		:�������ų�ʼ��ΪGPIO
//����		:
//���		:
//ʹ����Դ	:
//ȫ�ֱ���	:   
//���ú���	:
//�ж���Դ	:  
//����		:
//��ע		:
//		:
*********************************************************************/
void Test_GpioInit(void)
{
	GPIO_InitTypeDef  GPIO_InitStructure;
  
  	/* ʵ��GPIOʱ��*/
  	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOB, ENABLE);

  	/* ����GPIO�� 50Mhz�������,������ */
  	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_14;
  	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
  	GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
  	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_UP;  
  	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  	GPIO_Init(GPIOB, &GPIO_InitStructure);

}
/*********************************************************************
//��������	:Test_ExtiIsr
//����		:�ⲿ�ж�
//����		:
//���		:
//ʹ����Դ	:
//ȫ�ֱ���	:   
//���ú���	:
//�ж���Դ	:  
//����		:
//��ע		:
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
//��������	:Test_Time4Isr
//����		:��ʱ��4�ж�
//����		:
//���		:
//ʹ����Դ	:
//ȫ�ֱ���	:   
//���ú���	:
//�ж���Դ	:  
//����		:
//��ע		:���ڼ춨���ܣ�����Ӧ��ʱ�رգ��춨ʱ��
*********************************************************************/
void Test_Tim4Isr(void)
{
        static u8 count = 0;
        
	if(TIM_GetITStatus(TIM4, TIM_IT_Update) != RESET)
  	{
    		TIM_ClearITPendingBit(TIM4, TIM_IT_Update);
		//��ʱ��4������0
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
			Recorder_MileageTest();//ÿ���ӷ���һ��Ӧ��֡
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