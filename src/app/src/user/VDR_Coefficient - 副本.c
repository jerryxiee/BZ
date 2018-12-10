#include "VDR_Coefficient.h"
#include "stm32f2xx.h"
#include "stm32f2xx_rtc.h"
//#include "stm32f10x.h"
//#include "stm32f10x_rtc.h"
#include "misc.h"
#include "MileMeter.h"
#include "Gps_App.h"
#include "Io.h"
#include "EepromPram.h"
#include "Public.h"
#include "taskschedule.h"
#include "Pulse_App.h"
#include "SysTickApp.h"

#include <string.h>

u32	VdrCoefficientPulseCount = 0;//�����������1�����壬������1�����յ�PulseCoef������ʱ��ʾ����1����

static  u8  VdrCoefficientInitFlag = 0;
static u8  VdrCoefficientEnableFlag = 0;
static Point_Struct VdrCoefficientOldPoint;
static Point_Struct VdrCoefficientPoint;
//static  u32 VdrCoefficientOldTimeCount = 0;
//static  u32 VdrCoefficientTimeCount = 0;
static d64 VdrCoefficientGpsMileMeter = 0;
static u32 VdrCoefficientGpsMile = 0;
//static u32 VdrCoefficientPulseMile = 0;
static 	 u32 VdrCoefficientPulseCoef = 0;
static  u32  VdrCoefficientNewCoef = 0;//������3�Σ�ȡ�м�ֵ��ΪУ׼�����ϵ��
static  u8 CalStartFlag = 0;
static  u8 CalEndFlag = 0;

///static d64 PointDistanceArray[100];
//static GPS_STRUCT GpsDataArray[100];
//static u32 OldTotalPulseCount = 0;
//static u32 NewTotalPulseCount = 0;

static void VDRCoefficient_CalGpsMile(void);//����gps���
static void VDRCoefficient_GetFirstPoint(Point_Struct *Point);//��ȡ��1��λ�õ�
static void VDRCoefficient_GetPoint(Point_Struct *Point);//��ȡ��ǰ��λ�õ�
static d64 VDRCoefficient_CalDistance(Point_Struct *Point1,Point_Struct *Point2);//������������
static void VDRCoefficient_ModifyPulseCoef(void);//�޸�����ϵ��
static void VDRCoefficient_MileInit(void);

FunctionalState VDRCoefficient_TimeTask(void) 
{
  u8  PulseSpeed = 0;
  u8  GpsSpeed = 0;
  u8  NavigationFlag = 0;
  u8  Acc = 0;
  
  static u8 State = 0;
  
  if(0 == VdrCoefficientInitFlag)
  {
    VDRCoefficient_Init();
    CalStartFlag = 0;
    CalEndFlag = 0;
    VdrCoefficientInitFlag = 1;
    State = 0;
    
  }
  else if(1 == VdrCoefficientEnableFlag)
  {
    //PulseSpeed = VDRPulse_GetSecondSpeed(); dxl,2015.9.22
    PulseSpeed = Pulse_GetSecondSpeed();
    GpsSpeed = Gps_ReadSpeed();
    NavigationFlag = Io_ReadStatusBit(STATUS_BIT_NAVIGATION);
    Acc = Io_ReadStatusBit(STATUS_BIT_ACC);
    if((GpsSpeed > 40)&&(PulseSpeed > 0)&&(1 == NavigationFlag)&&(1 == Acc)) 
    {
      if(0 == CalStartFlag)//ͳһ���
      {
         VDRCoefficient_MileInit();
         CalStartFlag = 1;
         CalEndFlag = 0;
      }
      else if(1 == CalEndFlag)
      {
        VDRCoefficient_MileInit();
        CalStartFlag = 0;
        CalEndFlag = 0;
        VdrCoefficientInitFlag = 0;
        VDRCoefficient_ModifyPulseCoef();
        VdrCoefficientEnableFlag = 0;
        return DISABLE;
      }
      else
      {
          VDRCoefficient_CalGpsMile();
      }
    }
    else
    {
      VDRCoefficient_MileInit();
      CalStartFlag = 0;
      CalEndFlag = 0;
    }
  }
  else
  {
    VdrCoefficientInitFlag = 0;
    VdrCoefficientEnableFlag = 0;
    CalStartFlag = 0;
    CalEndFlag = 0;
    VDRCoefficient_MileInit();
    return DISABLE;
  }
  
  return ENABLE;
}

void VDRCoefficient_EnableCalibration(void) //ʹ��У׼
{
  VdrCoefficientInitFlag = 0;
  VdrCoefficientEnableFlag = 1;
  SetTimerTask(TIME_PULSE_ADJUST, 1);
}

void VDRCoefficient_DisableCalibration(void) //�ر�У׼
{
  VdrCoefficientEnableFlag = 0;
}

u8 VDRCoefficient_GetFlag(void) //1:У׼�У�æ��,0:У׼��ϣ����У�
{
  return VdrCoefficientEnableFlag;
}


 void VDRCoefficient_Init(void)
{
  u8  TmpData[4] = {0};
  u8  PramLen = 0;
 

  PramLen = EepromPram_ReadPram(E2_CAR_FEATURE_COEF_ID, TmpData);
  if(E2_CAR_FEATURE_COEF_LEN != PramLen)
  {		
    VdrCoefficientPulseCoef = 7200;//Ĭ��Ϊ7200��ȡ�����ٶȴ�����ϵ��
  }
  else
  {		
    VdrCoefficientPulseCoef = 0;	
    VdrCoefficientPulseCoef |= (TmpData[0] << 16);//���������TmpData[0]==0
    VdrCoefficientPulseCoef |= (TmpData[1] << 8);//���ֽ�		
    VdrCoefficientPulseCoef |= TmpData[2];//���ֽ�λ
  }
  
  if((7200 == VdrCoefficientPulseCoef)||(3600 == VdrCoefficientPulseCoef))
  {
    VdrCoefficientEnableFlag = 1;
  }
  
  VDRCoefficient_MileInit();
}

static void VDRCoefficient_MileInit(void)
{
   //u8 i;
   
   VdrCoefficientOldPoint.LonDegree = 0;
   VdrCoefficientOldPoint.LatDegree = 0;
   VdrCoefficientGpsMileMeter = 0;
   VdrCoefficientGpsMile = 0;
   VdrCoefficientPulseCount = 0;
   //VdrCoefficientPulseMile = 0;
   VDRCoefficient_GetFirstPoint(&VdrCoefficientOldPoint);	//��ʼ����һ��OldPoint
   //for(i=0; i<100; i++)
   //{
     //PointDistanceArray[i] = 0;
  //}
}
  
static void VDRCoefficient_CalGpsMile(void)//����gps���
{

  //static u8 i = 0;
  
  d64 PointDistance = 0;
  static u8 PointCalCount = 0;
  
  VDRCoefficient_GetPoint(&VdrCoefficientPoint);//��ȡ��ǰ��
  
  if((VdrCoefficientPoint.LonDegree != VdrCoefficientOldPoint.LonDegree)
     ||(VdrCoefficientPoint.LatDegree != VdrCoefficientOldPoint.LatDegree))
  {
  
    PointCalCount++;
    if(1 == PointCalCount)
    {
      VdrCoefficientGpsMileMeter = 0;
      VdrCoefficientGpsMile = 0;
      VdrCoefficientPulseCount = 0;
    }
    else if(PointCalCount >= 61)//����60������
    {
      PointDistance = VDRCoefficient_CalDistance(&VdrCoefficientOldPoint, &VdrCoefficientPoint);	
    
      VdrCoefficientGpsMileMeter += PointDistance;			
      VdrCoefficientGpsMile = (u32)VdrCoefficientGpsMileMeter;//��λ��						
	
      VdrCoefficientOldPoint.LonDegree = VdrCoefficientPoint.LonDegree;			
      VdrCoefficientOldPoint.LatDegree = VdrCoefficientPoint.LatDegree;	
      
      VdrCoefficientNewCoef = 1000*VdrCoefficientPulseCount/VdrCoefficientGpsMile;
      VdrCoefficientPulseCount = 0;
      
      PointCalCount = 0;
      
      if((VdrCoefficientNewCoef > 0)&&(VdrCoefficientNewCoef <= 12000))
      {
        CalEndFlag = 1;
      }
      else
      {
        VdrCoefficientInitFlag = 0;
      }
    }
    else
    {
      PointDistance = VDRCoefficient_CalDistance(&VdrCoefficientOldPoint, &VdrCoefficientPoint);	
    
      VdrCoefficientGpsMileMeter += PointDistance;			
      VdrCoefficientGpsMile = (u32)VdrCoefficientGpsMileMeter;//��λ��						
	
      VdrCoefficientOldPoint.LonDegree = VdrCoefficientPoint.LonDegree;			
      VdrCoefficientOldPoint.LatDegree = VdrCoefficientPoint.LatDegree;	
    }
    
    //PointDistanceArray[i++] = PointDistance;
    //if(i >= 100)
    //{
      //i = 0;
    //}
    
  }
}

static void VDRCoefficient_GetFirstPoint(Point_Struct *Point)//��ȡ��1��λ�õ�
{
        GPS_STRUCT GpsData;
        d64 temp;
        
	if((Point->LonDegree == 0)&&(Point->LatDegree == 0)) 
	{   
                 Gps_CopygPosition(&GpsData);
                
                //Gps_CopygPosition(&GpsDataArray[0]);
                
	        temp = GpsData.Longitue_FX/10000.0;
	        temp = temp + GpsData.Longitue_F;
	        temp = temp/60.0;
	        temp = temp + GpsData.Longitue_D;
	        Point->LonDegree = temp;
	        temp = GpsData.Latitue_FX/10000.0;
	        temp = temp + GpsData.Latitue_F;
	        temp = temp/60.0;
	        temp = temp + GpsData.Latitue_D;
	        Point->LatDegree = temp;	
                
                VdrCoefficientGpsMileMeter = 0;
                VdrCoefficientGpsMile = 0;
                //VdrCoefficientPulseMile = 0;
                VdrCoefficientPulseCount = 0;//ֻ��VDRPulse_AddMile������++
	}
}

static void VDRCoefficient_GetPoint(Point_Struct *Point)//��ȡ��ǰ��λ�õ�
{
        //static  u8  count = 0;
        
        GPS_STRUCT GpsData;
        d64 temp;
	
        Gps_CopygPosition(&GpsData);
        
        //count++;
        //if(count >= 100)
        //{
          //count = 1;
        //}
        //Gps_CopygPosition(&GpsDataArray[count]);
        
	temp = GpsData.Longitue_FX/10000.0;
	temp = temp + GpsData.Longitue_F;
	temp = temp/60.0;
	temp = temp + GpsData.Longitue_D;
	Point->LonDegree = temp;
	temp = GpsData.Latitue_FX/10000.0;
	temp = temp + GpsData.Latitue_F;
	temp = temp/60.0;
	temp = temp + GpsData.Latitue_D;
	Point->LatDegree = temp;	
	
}

static d64 VDRCoefficient_CalDistance(Point_Struct *Point1,Point_Struct *Point2)//������������
{

	d64 distance,temp,RadLon1,RadLat1,RadLon2,RadLat2;
	u8	flag = 0;
		
	RadLon1 = Point1->LonDegree*PI/180.0;
	RadLat1 = Point1->LatDegree*PI/180.0;
	RadLon2 = Point2->LonDegree*PI/180.0;
	RadLat2 = Point2->LatDegree*PI/180.0;
	
	//γ�Ȼ򾭶ȱ仯Ҫ����һ����Χ,(1��==1852��,�Ƴ�1��==0.000009��)
	temp = (d64)fabs(Point1->LonDegree-Point2->LonDegree);
	if(temp > 0.000009)
	{
		flag = 1;
	}
	temp = (d64)fabs(Point1->LatDegree-Point2->LatDegree);
	if(temp > 0.000009)
	{
		flag = 1;
	}
	if(1 == flag)
	{
		temp = 2.0-2.0*cos(RadLat1)*cos(RadLat2)*cos(RadLon2-RadLon1)-2.0*sin(RadLat2)*sin(RadLat1);
		if(temp > 0)//��֤Ϊ��
		{
			distance = REarth*sqrt(temp);
			return distance;
		}
		else
		{
			return 0;
		}
	}
	else
	{
		return 0;
	}		
}

static void VDRCoefficient_ModifyPulseCoef(void)//�޸�����ϵ��
{
  /*
  u8  i;
  u8  Buffer[5];
  u16 Min = 0xffff;
  u16 Max = 0;
  u32 sum = 0;
  
  for(i=0; i<3; i++)
  {
    if(VdrCoefficientNewCoef[i] < Min)
    {
      Min = VdrCoefficientNewCoef[i];
    }
    if(VdrCoefficientNewCoef[i] > Max)
    {
      Max = VdrCoefficientNewCoef[i];
    }
    sum += VdrCoefficientNewCoef[i];
  }
  
  sum -= Min;
  sum -= Max;
  */
  u32 sum = 0;
  u8  Buffer[5];
  
  sum = VdrCoefficientNewCoef;
  
  if((sum > 0)&&(sum <= 12000))
  {
    Public_ConvertLongToBuffer(sum, Buffer);
    if(0 == EepromPram_WritePram(E2_CAR_FEATURE_COEF_ID, &Buffer[1], E2_CAR_FEATURE_COEF_LEN))
    {
      EepromPram_WritePram(E2_CAR_FEATURE_COEF_ID, &Buffer[1], E2_CAR_FEATURE_COEF_LEN);
    }
    Pulse_UpdataPram();
  }
 
}