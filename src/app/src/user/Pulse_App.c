/********************************************************************
//��Ȩ˵��	:Shenzhen E-EYE Co. Ltd., Copyright 2009- All Rights Reserved.
//�ļ�����	:Pulse_App.c		
//����		:�����ٶȼ�⹦��
//�汾��	:
//������	:dxl 
//����ʱ��	:2012.6
//�޸���	:
//�޸�ʱ��	:
//�޸ļ�Ҫ˵��	:
//��ע		:
***********************************************************************/
/*************************�޸ļ�¼*************************/
/*************************�ļ�����***********************/
#include "stm32f2xx.h"
#include "stm32f2xx_lib.h"
#include "include.h"
/*************************�궨��***********************/
#define	TIME_COUNT_ARRAY_SIZE	5
/*************************�ⲿ����***********************/
extern u8	SpeedFlag;//�ٶ�����,0Ϊ����,1ΪGPS
//extern vu32 	myPulseCnt;             //У׼����ʹ��
extern u32	VdrCoefficientPulseCount;//�����������1�����壬������1�����յ�PulseCoef������ʱ��ʾ����1����
extern u8	TestStatus;//����״̬;E1H,�������������;E2H,��������ϵ��������;E3H,����ʵʱʱ��������
extern u8	TestFlag;//0:�˳��˼춨״̬;1:��ǰ���ڼ춨״̬,�յ��춨����E0ʱ��1,�յ��춨����E4ʱ��0
/*************************ȫ�ֱ���***********************/
u32	PulseTotalMile = 0;//�ۼ���ʻ��̣��������,��λ��0.01����
u32	FeatureCoef = 0;//��������ϵ��
/*************************���ر���***********************/
static u16	TimeCountMin = 0;//��ʱ������������Сֵ��С�ڸ�ֵ��Ϊ�Ǹ���
static u16	TimeCountArray[TIME_COUNT_ARRAY_SIZE+1] = {0};
static  u8      LastMinuteSpeedData[60] = {0};//��һ����ÿ���ӵ��ٶ�ֵ��60��ÿ��ƽ���ٶȵ�ƽ��ֵΪÿ����ƽ���ٶȣ��ӵ�1�뿪ʼ������60�����
static  u8      MinuteSpeedData[60] = {0};//��ǰ����ÿ���ӵ��ٶ�ֵ��һ��δ��60��

#ifdef SPEED_PINGJUN
static u8	TimeCountArrayCount = 0;
#endif

u32 	ExtiCount = 0;//�ⲿ�жϽ����������
u32	PulseMileCount = 0;//�����������̣�����
u8	PulseInstantSpeed = 0;//����˲ʱ�ٶȣ�km/h
u8	LastPulseInstantSpeed = 0;//��һ�������ٶ�
u8	PulseMinuteSpeed = 0;//����ÿ����ƽ���ٶ�,
u8      PulseSecondSpeed = 0;//����ÿ��ƽ���ٶ�
/*********************************************************************
//��������	:Pulse_UpdataPram
//����		:����ģ����±���
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
void Pulse_UpdataPram(void)
{
	u8	TmpData[4] = {0};
	u8	PramLen = 0;
	u32	temp;
	//������ϵ��
	PramLen = EepromPram_ReadPram(E2_CAR_FEATURE_COEF_ID, TmpData);
	if(3 != PramLen)
	{
			FeatureCoef = 7200;//Ĭ��Ϊ7200��ȡ�����ٶȴ�����ϵ��
	}
	else
	{
			FeatureCoef = 0;
			FeatureCoef |= (TmpData[0]<<16);//��ȡ��λ
			FeatureCoef |= (TmpData[1] << 8);//���ֽ�
			FeatureCoef |= TmpData[2];//���ֽ�λ
	}
	//��ʱ��������С����ֵ
	temp = (3600*(u32)1000000)/(50*FeatureCoef*255);
	TimeCountMin = temp&0xffff;
	//���ۼ���ʻ���
	PramLen = FRAM_BufferRead(TmpData, FRAM_MILEAGE_LEN, FRAM_MILEAGE_ADDR);
	if(FRAM_MILEAGE_LEN == PramLen)//У�����ȷ
	{
		PulseTotalMile = 0;
		PulseTotalMile |= TmpData[0] << 24;	//���ֽ�
		PulseTotalMile |= TmpData[1] << 16;	//�θ��ֽ�
		PulseTotalMile |= TmpData[2] << 8;		//���ֽ�
		PulseTotalMile |= TmpData[3];		//���ֽ�
	}
        else
        {
                //�����ݵ��ۼ���ʻ���,dxl,2015.4.9
	        PramLen = FRAM_BufferRead(TmpData, FRAM_MILEAGE_BACKUP_LEN, FRAM_MILEAGE_BACKUP_ADDR);
	        if(FRAM_MILEAGE_BACKUP_LEN == PramLen)//У�����ȷ
	        {
		        PulseTotalMile = 0;
		        PulseTotalMile |= TmpData[0] << 24;	//���ֽ�
		        PulseTotalMile |= TmpData[1] << 16;	//�θ��ֽ�
		        PulseTotalMile |= TmpData[2] << 8;		//���ֽ�
		        PulseTotalMile |= TmpData[3];		//���ֽ�
	        }
                else
                {
                        PulseTotalMile = 0;
                }
        }
	//�������ϵ��ΪĬ��ֵ7200��3600,���Զ���������ϵ��У׼����
	if((7200 == FeatureCoef)||(3600 == FeatureCoef))
	{
		//setAdjustFunction(ENABLE);//��������ϵ��У׼���� dxl,2015.9.22
                VDRCoefficient_EnableCalibration();
	}
	
}
/*********************************************************************
//��������	:Pulse_GetSpeed
//����		:��ȡ����˲ʱ�ٶ�,��λkm/h
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
u8 Pulse_GetSpeed(void)
{
	return PulseInstantSpeed;
}
/*********************************************************************
//��������	:Pulse_GetSecondSpeed
//����		:��ȡ������ƽ���ٶ�,��λkm/h
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
u8 Pulse_GetSecondSpeed(void)
{
	if(DetectStatus(DetectOption_gbTest))
	{
		#if 0
      if((1 == VDRSpeedStatus_GetFlag())&&(0 == PulseSecondSpeed))
      {
          return Gps_ReadSpeed();
      }
      else
      {
          return PulseSecondSpeed;
      }
    #else
      return PulseSecondSpeed;
		#endif
  }
	else
	{
	    return PulseSecondSpeed;
	}
}

/*********************************************************************
//��������	:Pulse_GetMinuteSpeed
//����		:��ȡ����ÿ����ƽ���ٶ�
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
u8 Pulse_GetMinuteSpeed(void)
{
	return PulseMinuteSpeed;
}
/*********************************************************************
//��������	:Pulse_GetMinuteSpeedData
//����		:��ȡ��ǰ���ӵĸ����ӵ��ٶ�ֵ
//����		:
//���		:
//ʹ����Դ	:
//ȫ�ֱ���	:   
//���ú���	:
//�ж���Դ	:  
//����		:
//��ע		:���ȹ̶�Ϊ60����1������ǰ��
//		:
*********************************************************************/
u8 Pulse_GetMinuteSpeedData(u8 *pBuffer)
{
	memcpy(pBuffer,MinuteSpeedData,60);
        return 60;
}
/*********************************************************************
//��������	:Pulse_GetLastMinuteSpeedData
//����		:��ȡ��һ���ӵĸ����ӵ��ٶ�ֵ
//����		:
//���		:
//ʹ����Դ	:
//ȫ�ֱ���	:   
//���ú���	:
//�ж���Դ	:  
//����		:
//��ע		:���ȹ̶�Ϊ60����1������ǰ��
//		:
*********************************************************************/
u8 Pulse_GetLastMinuteSpeedData(u8 *pBuffer)
{
	memcpy(pBuffer,LastMinuteSpeedData,60);
        return 60;
}
/*********************************************************************
//��������	:Pulse_GetTotalMile
//����		:��ȡ���������
//����		:
//���		:
//ʹ����Դ	:
//ȫ�ֱ���	:   
//���ú���	:
//�ж���Դ	:  
//����		:
//��ע		:��λ��0.01����
//		:
*********************************************************************/
u32 Pulse_GetTotalMile(void)
{
	return PulseTotalMile;
}
/*********************************************************************
//��������	:Pulse_Time3Isr
//����		:��ʱ��3�ж�
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
void Pulse_Tim3Isr(void)
{
	u8	i = 0;

	if(TIM_GetITStatus(TIM3, TIM_IT_Update) != RESET)
  	{
                TIM_ClearITPendingBit(TIM3, TIM_IT_Update);
		//��ʱ��3������0
	        TIM_SetCounter(TIM3, 0);
                //�رն�ʱ��3
		TIM_Cmd(TIM3, DISABLE);
		ExtiCount = 0;
        TurnSpeed_InsertCurPulseVal(0);//modify by joneming
		PulseInstantSpeed = 0;
		LastPulseInstantSpeed = 0;
		for(i=0; i<TIME_COUNT_ARRAY_SIZE; i++)
		{
			TimeCountArray[i] = 0;
		}
			//TimeCountArrayCount = 0;
		
	}
}

/*********************************************************************
//��������	:Pulse_ExtiIsr
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
void Pulse_ExtiIsr(void)
{
	
	
	static u8	count = 0;
	
	//��ȡ�ٶ����ͼ�ACC״̬
	//if((0 != SpeedFlag)||(0 == Io_ReadStatusBit(STATUS_BIT_ACC)))
	//{
		/* Clear the EXTI line 0 pending bit */
    		//EXTI_ClearITPendingBit(PULSE_EXTI_LINE);
		//return ;
	//}
	
	if((0xE2 == TestStatus)&&(1 == TestFlag))//�춨����E2
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
	else if((0 == TestFlag)&&(0 == TestStatus))//����Ӧ��
	{
		Pulse_MileAdd();
	}
	/* Clear the EXTI line 0 pending bit */
    	EXTI_ClearITPendingBit(PULSE_EXTI_LINE);
        
}
/*********************************************************************
//��������	:Pulse_MileAdd
//����		:����ۼ�
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
void Pulse_MileAdd(void)
{
	u16	TimeCount = 0;
        
	u32	sum = 0;
	u16	temp;
        float   v = 0.0;//modify by joneming
        u8      Acc = 0;
		
		
	
	static  u8	Count3 = 0;
        
        Acc = Io_ReadStatusBit(STATUS_BIT_ACC);//dxl,2013.11.21����ACC������
        
	ExtiCount++;
	PulseMileCount++;
	//myPulseCnt++;          //У׼�������+1,dxl,2015.9.22
        VdrCoefficientPulseCount++;
	if(1 == ExtiCount)
	{
		//��ʱ��3������0
		TIM_SetCounter(TIM3, 0);
		//�򿪶�ʱ��3
		TIM_Cmd(TIM3, ENABLE);
	}
	else 
	{
		//����������ֵ
		TimeCount = TIM_GetCounter(TIM3);
		if(TimeCount >= TimeCountMin)
		{
			//�������
			if((PulseMileCount > (FeatureCoef/50))&&(1 == Acc))//���ڵ���0.02����
			{
				PulseTotalMile += PulseMileCount*100/FeatureCoef;
				PulseMileCount = 0;
			}
#ifdef SPEED_PINGJUN
			TimeCountArrayCount++;
			if(TimeCountArrayCount >= TIME_COUNT_ARRAY_SIZE)
			{
				TimeCountArrayCount = 0;
			}
			TimeCountArray[TimeCountArrayCount] = TimeCount;
#else 
                        TimeCountArray[0] = TimeCount; 
                	sum = TimeCountArray[0];
#endif
#ifdef  SPEED_PINGJUN
        u8	i = 0;
	u16	CountMin = 0xffff;
	u16	CountMax = 0;
                sum = 0;
		for(i=0; i<TIME_COUNT_ARRAY_SIZE; i++)
		{
			if(TimeCountArray[i] > CountMax)
			{
				CountMax = TimeCountArray[i];
			}
			if(TimeCountArray[i] < CountMin)
			{
				CountMin = TimeCountArray[i];
			}
			sum += TimeCountArray[i];
                }
		sum -= CountMin;
		sum -= CountMax;
		sum = sum/3;        
#endif
                if(0 == sum)
                {
                    return;
                }
				///////////////////////
				v=1000000.0/((float)sum*50.0);////��Ӧ50us������λ//modify by joneming
                TurnSpeed_InsertCurPulseVal(v);//modify by joneming
				////////////////////
                if(1 == Acc)
                {
//                    v = (3600.0*(u32)1000000)/((float)sum*50.0*(float)FeatureCoef);//��Ӧ50us������λ//modify by joneming
                    v = 3600.0*v/(float)FeatureCoef;//��Ӧ50us������λ//modify by joneming
                temp = (int)(v);
                if((v-temp)>=0.5)
                {
                    temp += 1;
                }
#ifdef SPEED_LVBO
		if(temp > LastPulseInstantSpeed)
		{
			if((temp-LastPulseInstantSpeed) >= 50)//��������50��Ϊ�Ǹ���
			{
				Count3++;
				if(Count3 >= 100)//���Ų�������100�Σ���Ϊ���쳣�������ͻ��
				{
					Count3 = 0;
					PulseInstantSpeed = temp;
					LastPulseInstantSpeed = temp;
				}
			}
			else
			{
				Count3 = 0;
				PulseInstantSpeed = temp;
				LastPulseInstantSpeed = temp;
			}
		}
		else
		{
			PulseInstantSpeed = temp;
			LastPulseInstantSpeed = temp;
		}
#else
                PulseInstantSpeed = temp;
		LastPulseInstantSpeed = temp;
#endif
                }
                else
                {
                        PulseInstantSpeed = 0;
		        LastPulseInstantSpeed = 0;
                }
                
                // Ϊ���벻��������
                if(0 == Count3)
                {
                
                }
                if(0 == LastPulseInstantSpeed)
                {
                
                }
                        
                
		}
		else
		{
            if(TimeCount>=25)//modify by joneming
            {
                v=1000000.0/((float)TimeCount*50.0);////��Ӧ50us������λ//modify by joneming
                TurnSpeed_InsertCurPulseVal(v);//modify by joneming
            }
			PulseMileCount--;//�������
			//myPulseCnt--;dxl,2015.9.22
                        VdrCoefficientPulseCount--;
		}
		//��ʱ��3������0
		TIM_SetCounter(TIM3, 0);
	}	
}
/*********************************************************************
//��������	:Pulse_TimeTask
//����		:�����ⶨʱ����
//����		:
//���		:
//ʹ����Դ	:
//ȫ�ֱ���	:   
//���ú���	:
//�ж���Դ	:  
//����		:
//��ע		:50ms�����1��
*********************************************************************/
FunctionalState  Pulse_TimeTask(void)
{
	
        static  u16	Count1 = 0;
	static	u16	Count2 = 0;
	static	u16	Count3 = 0;
	static  u32	LasePulseTotalMile = 0;//��һ���ۼ���ʻ��̣��������,��λ��0.01����
        static  u8      SecondSpeedData[20] = {0};//50ms��ȡһ��˲ʱ�ٶȣ�20��˲ʱ�ٶȵ�ƽ��ֵΪÿ��ƽ���ٶ�
        static  u8      SecondSpeedCount = 0;
        
       
        static TIME_T t1;
        static TIME_T t2;
        
        u8	TmpData[5];
        u8	Speed1 = 0;//�����ٶ�
	u8	Speed2 = 0;//GPS�ٶ�
        u8  flag = 0;
        u8      i;
        u16     sum;
	TIME_T CurTime;
        
        
        if(0 == (SpeedFlag&0x01))//�����ٶ�
	{
	        //�����ۼ����
	        Count1++;
	        if(Count1 >= 20)//1��дһ�����,50ms����һ��
	        {
		        Count1 = 0;
                        if(LasePulseTotalMile != PulseTotalMile)
                        {
			                TmpData[3] = PulseTotalMile;	//���ֽ�
			                TmpData[2] = PulseTotalMile>>8;	//���ֽ�
			                TmpData[1] = PulseTotalMile>>16;	//���ֽ�
			                TmpData[0] = PulseTotalMile>>24;	//���ֽ�
			                FRAM_BufferWrite(FRAM_MILEAGE_ADDR, TmpData, FRAM_MILEAGE_LEN); //�洢�����
                                        FRAM_BufferWrite(FRAM_MILEAGE_BACKUP_ADDR, TmpData, FRAM_MILEAGE_BACKUP_LEN); //�洢�����
                        }
	        }        
        }
      
        RTC_GetCurTime(&CurTime);
        //������ƽ���ٶ�
        if(CurTime.sec != t1.sec)//��仯ʱ��
        {  
                if(SecondSpeedCount >= 20)
                {
                        SecondSpeedCount = 19;
                }
                SecondSpeedData[SecondSpeedCount++] = Pulse_GetSpeed();
                sum = 0;
                for(i=0; i<SecondSpeedCount; i++)
                {
                        sum += SecondSpeedData[i];
                }
                PulseSecondSpeed = sum/SecondSpeedCount;
                        
                SecondSpeedCount = 0;
                for(i=0; i<20; i++)
                {
                        SecondSpeedData[i] = 0;
                }
                t1.sec = CurTime.sec;
        }
        else
        {
                if(SecondSpeedCount >= 20)
                {
                        SecondSpeedCount = 19;
                }
                SecondSpeedData[SecondSpeedCount++] = Pulse_GetSpeed();
         }
                
         //����ÿ����ƽ���ٶ�
         if(CurTime.sec != t2.sec)//��仯ʱ��
         {  
                if(59 == CurTime.sec)
                {
                        i = CurTime.sec;
                        if(i >= 60)
                        {
                                i = 0;
                        }
                        MinuteSpeedData[i] = Pulse_GetSecondSpeed();
                                
                        sum = 0;
                        for(i=0; i<60; i++)
                        {
                                sum += MinuteSpeedData[i];
                                LastMinuteSpeedData[i] = MinuteSpeedData[i];
                                if(0 == LastMinuteSpeedData[i])
                                {
                                        
                                }
                        }
                        PulseMinuteSpeed = sum/60;
                                
                        for(i=0; i<60; i++)
                        {
                                MinuteSpeedData[i] = 0;
                        }      
              }
              else
              {
                        i = CurTime.sec;
                        if(i >= 60)
                        {
                                i = 0;
                        }
                        MinuteSpeedData[i] = Pulse_GetSecondSpeed();
               }
               t2.sec = CurTime.sec;
        }
	//��λ�����ٶȴ���������
        //�б���ʱ���ο�ʼ
	Speed1 = Pulse_GetSecondSpeed();
	Speed2 = Gps_ReadSpeed();
	if((1 == Io_ReadStatusBit(STATUS_BIT_ACC))
	   &&(1 == Io_ReadStatusBit(STATUS_BIT_NAVIGATION)))
		  // &&(0==SpeedMonitor_GetCurSpeedType()))
	{
		if(Speed2 > 15)
		{
			if(0 == Speed1)
			{
				Count3 = 0;
				Count2++;
				if(Count2 >= 1200)//����1����,50ms����һ��
				{
					Count2 = 0;
					//��λ�ٶȴ���������
                                        Io_WriteAlarmBit(ALARM_BIT_VSS_FAULT, SET);
                                        
                                        //�����ٶ�����Ϊgps�ٶ�����
                                        if((0x03 != SpeedFlag)&&(0x02 == SpeedFlag))//dxl,2015.5.11,0x00:�ֶ�����,0x01:�ֶ�GPS,0x02:�Զ�����,0x03:�Զ�GPS
                                        {
                                                //֮ǰ�������л�Ϊgps
                                                flag = 0x03;//dxl,2015.5.11
                                                EepromPram_WritePram(E2_SPEED_SELECT_ID, &flag, 1);
                                                SpeedFlagUpdatePram();
                                        }
				}
			}
			else
			{
				Count2 = 0;
				Count3++;
				if(Count3 >= 1200)//����1����,50ms����һ��
				{
					Count3 = 0;
					//����ٶȴ���������
					Io_WriteAlarmBit(ALARM_BIT_VSS_FAULT, RESET);
                                        //�����ٶ�����Ϊ�����ٶ�����
                                        if((0x02 != SpeedFlag)&&(0x03 == SpeedFlag))//dxl,2015.5.11
                                        {
                                                  //֮ǰ��gps�л�Ϊ����
                                                flag = 0x02;//dxl,2015.5.11
                                                EepromPram_WritePram(E2_SPEED_SELECT_ID, &flag, 1);
                                                SpeedFlagUpdatePram();
                                        }
				}
			}
		}
		else
		{
			Count2 = 0;
			Count3 = 0;
		}
	}
	else
	{
		Count2 = 0;
		Count3 = 0;
	}
	return ENABLE;
}