/*
********************************************************************************
*
* Filename      : doubtpoint.c
* Version       : V1.00
* Programmer(s) : miaoyahan
* Time          : 20150130
********************************************************************************
*/

/*
********************************************************************************
*                               INCLUDES
********************************************************************************
*/
#include "doubtpoint.h"

/*
********************************************************************************
*                             LOCAL DEFINES
********************************************************************************
*/
#define DOUBT_FRAM_BASE    FRAM_DOUBT_POINT_ADDR
#define DOUBT_FRAM_LEN     FRAM_DOUBT_POINT_LEN

#define DOUBT_FRAM_CNT     DOUBT_FRAM_BASE       //疑点计数器 + 校验 = 2+1
#define DOUBT_FRAM_KEP     DOUBT_FRAM_BASE+3     //速度保持计数器 + 校验 = 2+1
#define DOUBT_FRAM_BUF     DOUBT_FRAM_BASE+6     //疑点缓存 = 300
#define DOUBT_FRAM_TIME    FRAM_STOP_DOUBT_TIME_ADDR//BCD结束时间

/*
********************************************************************************
*                         LOCAL DATA TYPES
********************************************************************************
*/



/*
********************************************************************************
*                          CONST VARIABLES
********************************************************************************
*/


/*
********************************************************************************
*                          LOCAL VARIABLES
********************************************************************************
*/
static u8  Doubt_Speed;//疑点速度
static u8  Doubt_State;//疑点状态
static u16 Doubt_SpdKeepCnt;//速度保持计数器

static u8  Doubt_CarRunCnt;//车辆行驶计数器 连续10s有速度
static u8  Doubt_CarStpCnt;//车辆停止计数器 连续10s无速度
static u8  Doubt_CarState;//车辆状态 0停驶状态  1行驶状态

/*
********************************************************************************
*                           FUNCTIONS EXTERN
********************************************************************************
*/

/*
********************************************************************************
*                              FUNCTIONS
********************************************************************************
*/

/**
  * @brief  向缓存中写入速度和状态
  * @param  None
  * @retval None
  */
void DoubtPoint_In(void)
{
    u8  buf[10];
    u16 cnt;

    Public_ConvertNowTimeToBCDEx(buf);
    FRAM_BufferWrite(DOUBT_FRAM_TIME,buf,6);    //保存结束时间 

    FRAM_BufferRead(buf,2,DOUBT_FRAM_CNT);      //读取疑点计数器
    cnt = (buf[0]<<8)|buf[1];    
    
    buf[0] = Doubt_Speed;
    buf[1] = Doubt_State;
    FRAM_BufferWrite(DOUBT_FRAM_BUF+cnt,buf,2); //保存疑点数据
    cnt += 3;
    if(cnt >= 450)
    {
        cnt = 0;
    }
    
    buf[0] = cnt>>8;
    buf[1] = cnt&0xff;
    FRAM_BufferWrite(DOUBT_FRAM_CNT,buf,2);      //保存疑点计数器
    
}
/**
  * @brief  从缓存中取出行驶结束前20秒数据
  * @param  None
  * @retval None
  */
void DoubtPoint_Out(u8 *pSrc)
{
    u8  buf[5];
    u16 cnt;
    u16 i;
    
    FRAM_BufferRead(buf,2,DOUBT_FRAM_CNT);        //读取疑点计数器
    cnt = (buf[0]<<8)|buf[1];  

    for(i=0;i<50;i++)
    {
        FRAM_BufferRead(buf,2,DOUBT_FRAM_BUF+cnt);//读取停车前10数据
        cnt -= 3;
        if(cnt >= 450)
        {
            cnt = 447;
        }         
    }
    
    for(i=0;i<100;i++)
    {
        FRAM_BufferRead(buf,2,DOUBT_FRAM_BUF+cnt);//读取行驶数据
        cnt -= 3;
        if(cnt >= 450)
        {
            cnt = 447;
        }
        *pSrc++ = buf[0];  
        *pSrc++ = buf[1];          
    }
}
/**
  * @brief  从缓存中取出断电前20秒数据
  * @param  None
  * @retval None
  */
void DoubtPoint_OutPower(u8 *pSrc)
{
    u8  buf[5];
    u16 cnt;
    u16 i;
    
    FRAM_BufferRead(buf,2,DOUBT_FRAM_CNT);        //读取疑点计数器
    cnt = (buf[0]<<8)|buf[1];  
 
    for(i=0;i<100;i++)
    {
        FRAM_BufferRead(buf,2,DOUBT_FRAM_BUF+cnt);//读取行驶数据
        cnt -= 3;
        if(cnt >= 450)
        {
            cnt = 447;
        }
        *pSrc++ = buf[0];  
        *pSrc++ = buf[1];          
    }
}
/**
  * @brief  数据保存到FLASH中
  * @param  pSrc->指向行驶状态前20秒数据
  * @retval None
  */
void DoubtPoint_ToFlash(u8 *pSrc)
{
    u8 buf[235];
    u8 *p=buf;

    FRAM_BufferRead(p,6,DOUBT_FRAM_TIME);//读取结束时间
    p += 6;

    if(EepromPram_ReadPram(E2_CURRENT_LICENSE_ID,p)==0)//驾驶员证号
    {                                                            
        memset(p,0,18);//缺省0
    }
    p += 18;

    memcpy(p,pSrc,200);//行驶结束前20s速度和状态
    p += 200;

    if(Io_ReadStatusBit(STATUS_BIT_NAVIGATION))//位置信息
    {
        Public_GetCurPositionInfoDataBlock(p);
    }
    else
    {
        memset(p,0,10);//缺省0
    }

    Register_Write(REGISTER_TYPE_DOUBT,buf,246,RTC_GetCounter());//写入FLASH
    
}

/**
  * @brief  停车疑点
  * @param  None
  * @retval None
  */
void DoubtPoint_Stop(void)
{
    u8  buf[200];
    TIME_T time;
    u32    timecnt;

    FRAM_BufferRead(buf,6,DOUBT_FRAM_TIME);  //读取结束时间
    Public_ConvertBCDToTimeEx(&time,buf);
    timecnt = ConverseGmtime(&time)-10;      //停车结束时间去掉10秒
    Gmtime(&time,timecnt);
    Public_ConvertTimeToBCDEx(time,buf);
    FRAM_BufferWrite(DOUBT_FRAM_TIME,buf,6); //保存结束时间
    
    DoubtPoint_Out(buf);                     //读取疑点数据 
    
    DoubtPoint_ToFlash(buf);                 //写入FLASH
}
/**
  * @brief  断电疑点
  * @param  None
  * @retval None
  */
void DoubtPoint_SavePowerLow(void)
{
    u8  buf[200];
    u16 keep;

    FRAM_BufferRead(buf,6,DOUBT_FRAM_KEP);//读取速度持续时间
    keep = (buf[0]<<8)|buf[1];

    if(keep < 50)
    {
        return;//断电前不处于行驶状态
    }
    DoubtPoint_OutPower(buf);
    
    DoubtPoint_ToFlash(buf);
}
/**
  * @brief  断电疑点
  * @param  None
  * @retval None
  */
void DoubtPoint_Power(void)
{
    static u8 firstRunflag=0;
    static u8 prepowerflag = 0xff;
    u8 powerflag;
    if(0==firstRunflag)
    {   
        firstRunflag = 1;
        DoubtPoint_SavePowerLow();
        return;
    }
    //////有备电的情况下////////////
    powerflag = Power_GetLowPowerFlag();//断电为2,通电为1,0未知
    ////////////////////////
    if((1==prepowerflag)&&(2==powerflag))//由通电到断电,则保存
    {
        DoubtPoint_SavePowerLow();
    }
    prepowerflag = powerflag;
    ////////////////////
}

/**
  * @brief  位置信息无变化疑点
  * @param  None
  * @retval None
  */
void DoubtPoint_Position(void)
{
    static GPS_STRUCT positioncmp;
    GPS_STRUCT position;
    static u16 keeptime;                      
    u8 buf[200];

    if(Io_ReadStatusBit(STATUS_BIT_NAVIGATION) == 0)
    {
        return;//不定位
    }
    if(Doubt_CarState == 0)
    {
        return;//停驶
    }
    
    Gps_CopygPosition(&position);//获取有效位置信息
    if(((position.Latitue_D   == positioncmp.Latitue_D)
        ||(position.Latitue_F  == positioncmp.Latitue_F))
        ||(position.Latitue_FX == positioncmp.Latitue_FX))    
    { 
        if(keeptime < 50)
        {
            keeptime++;        
        }
        else if(keeptime == 50)//10秒位置无变化
        {
            keeptime++;
            DoubtPoint_Out(buf); 
            DoubtPoint_ToFlash(buf);                
        }
    }
    else if(((position.Latitue_D  != positioncmp.Latitue_D)
            ||(position.Latitue_F  != positioncmp.Latitue_F))
            ||(position.Latitue_FX != positioncmp.Latitue_FX))
    {   
        keeptime = 0;
    }
    Gps_CopygPosition(&positioncmp);//刷新位置信息
}
/**
  * @brief  获取速度和状态
  * @param  None
  * @retval None
  */
void DoubtPoint_GetSpdSta(void)
{
    u8 temp=0;
    u8 buf[5];

    temp = Io_ReadExtCarStatusBit(CAR_STATUS_BIT_BRAKE);                  //*制动
    temp = (temp<<1) | Io_ReadExtCarStatusBit(CAR_STATUS_BIT_LEFT_LIGHT); //*左转
    temp = (temp<<1) | Io_ReadExtCarStatusBit(CAR_STATUS_BIT_RIGHT_LIGHT);//*右转
    temp = (temp<<1) | Io_ReadExtCarStatusBit(CAR_STATUS_BIT_FAR_LIGHT);  //*远光
    temp = (temp<<1) | Io_ReadExtCarStatusBit(CAR_STATUS_BIT_NEAR_LIGHT); //*近光
    temp = (temp<<2);                                                     //*D1-D2
    temp = (temp<<1) | Io_ReadStatusBit(STATUS_BIT_ACC);                  //*ACC

    Doubt_State = temp;                      //获取疑点状态
    //获取速度选择
    if(0 == SpeedMonitor_GetCurSpeedType())
    {
        Doubt_Speed = Pulse_GetSpeed();//只有疑点数据和秒平均计算时才使用瞬时速度
    }
    else
    {
        Doubt_Speed = Gps_ReadSpeed();//只有秒速度，没有瞬时速度
    } 
    
    if((Doubt_CarState==1)&&(Doubt_SpdKeepCnt < 150))
    {
        Doubt_SpdKeepCnt++;
    }
    else if((Doubt_CarState==0)&&(Doubt_Speed==0))
    {
        Doubt_SpdKeepCnt = 0;
    }
    buf[0] = Doubt_SpdKeepCnt>>8;
    buf[1] = Doubt_SpdKeepCnt&0xff;
    FRAM_BufferWrite(DOUBT_FRAM_KEP,buf,2); //保存速度保持
    
}
/**
  * @brief  获取车辆行驶状态
  * @param  None
  * @retval None
  */
void DoubtPoint_GetCarSta(void)
{
    static u8 stateback;//状态备份
    
    ////////////////////////////////////////////////////////////////行驶状态判断
    if(Doubt_Speed == 0)//停驶
    {   
        if(Doubt_CarStpCnt < 50)
        {
            Doubt_CarStpCnt++;
        }
        else if(Doubt_CarStpCnt==50)
        {
            Doubt_CarState = 0;//连续10s停驶
        }
        Doubt_CarRunCnt =0;
    }
    else//行驶
    {
        if(Doubt_CarRunCnt < 50)
        {
            DoubtPoint_In();
            Doubt_CarRunCnt++;
            Doubt_SpdKeepCnt++;
        }
        else if(Doubt_CarRunCnt==50)
        {
            Doubt_CarState = 1;//连续10s行驶 
        }        
        Doubt_CarStpCnt=0;
    }    
    ////////////////////////////////////////////////////////////////数据存入缓存
    if((Doubt_CarState)&&(stateback==0))//停驶->行驶
    {
        DoubtPoint_In();
    }
    else if((Doubt_CarState==0)&&stateback)//行驶->停驶
    {
        DoubtPoint_Stop();//停车疑点
    }
    else if((Doubt_CarState)&&(stateback))//行驶
    {
        DoubtPoint_In();
    }
    stateback = Doubt_CarState;//刷新状态
}
/**
  * @brief  事故疑点数据(200ms调用一次)
  * @param  None
  * @retval None
  */
FunctionalState DoubtPoint_TimeTask(void)
{
    ////////////////////////////////////////////////////////////////////断电疑点
    DoubtPoint_Power();
    
    //////////////////////////////////////////////////////////////获取速度和状态
    DoubtPoint_GetSpdSta();
    
    ////////////////////////////////////////////////////////////获取车辆行驶状态
    DoubtPoint_GetCarSta();

    //////////////////////////////////////////////////////////位置信息无变化疑点
    DoubtPoint_Position();
    
    return ENABLE;
}


