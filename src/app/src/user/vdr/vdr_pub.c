/*
********************************************************************************
*
*
* Filename      : vdr_pub.c
* Version       : V1.00
* Programmer(s) : miaoyahan
* Time          : 20140829
********************************************************************************
*/

/*
********************************************************************************
*                               INCLUDES
********************************************************************************
*/
#include "vdr.h"
#include "Gyro.h"
/*
********************************************************************************
*                             LOCAL DEFINES
********************************************************************************
*/

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
static u8  SerOutTmrCnt;//串口超时计数器
static u8  SerBusyFlag;//串口忙标志  1为忙 0为空闲
static u8  SerRxBuf[1024];//串口接收缓存
static u16 SerRxLen;//串口接收长度

/*
********************************************************************************
*                         EXTERN GLOBAL VARIABLES
********************************************************************************
*/

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
/*********************************************************************
//函数名称	:Recorder_GetCarInformation
//功能		:获取车辆信息，包括车辆VIN，车牌号码，车牌分类
//输入		:
//输出		:
//使用资源	:
//全局变量	:   
//调用函数	:
//中断资源	:  
//返回		:
//备注		:命令字06H
*********************************************************************/
u8 Recorder_GetCarInformation(u8 *pBuffer)
{
	VDR_HEAD head;

    head.pbuf = pBuffer;
    Vdr_Get_CarInfor(&head);

	return 41;
}
/*******************************************************************************
* Function Name  : Recorder_Stop15MinuteSpeed
* Description    : 停车前15分钟速度，内容包括VIN、停车时间、停车前15分钟平均速度
* Input          : *p  : 指向15分钟平均速度信息打包数据              
* Output         : None
* Return         : 返回数据长度
*******************************************************************************/
u8 Recorder_Stop15MinuteSpeed(u8 *p)
{
    u8 buf[70];
    u8 buftm[10];
    u8 *pDst=p;
    u8 *pSrc;
    u8 i;
    TIME_T time;
    u32    timecnt;

    ////////////////////////////////////////////////////////////////////停车时间 
    FRAM_BufferRead(buftm,6 ,FRAM_STOP_15MIN_TIME_ADDR);
    if(SpeedMonitor_GetCurRunStatus())
    {
       Public_ConvertNowTimeToBCDEx(buftm);;//行驶中使用当前时间
    }
    
    memcpy(pDst,buftm,6);
    pDst += 6;

    Public_ConvertBCDToTimeEx(&time,buftm);
    timecnt = ConverseGmtime(&time)-60;
    Gmtime(&time,timecnt);
    Public_ConvertTimeToBCDEx(time,buftm);
    
    ///////////////////////////////////////////////////////////////////15min速度 
    FRAM_BufferRead(buf, 48, FRAM_STOP_15MINUTE_SPEED_ADDR);

    pSrc = buf;
    if((buftm[3]!=pSrc[0])||(buftm[4]!=pSrc[1]))
    {
        pSrc += 3;
    }

    for(i=0;i<15;i++)
    {
        memcpy(pDst,pSrc,3);//时分+速度
        if(i==0)
        {
            if((buftm[3]==pDst[0])&&(buftm[4]==pDst[1]))
            {
                pSrc += 3;
            }
            else
            {
                pDst[0] = buftm[3];
                pDst[1] = buftm[4];
                pDst[2] = 0;
            }
        }
        else if((buftm[3]==pDst[0])&&(buftm[4]==pDst[1]))
        {
            pSrc += 3;
        }    
        else
        {
            pDst[0] = buftm[3];
            pDst[1] = buftm[4];
            pDst[2] = 0;
        }
       
        buftm[3] = pDst[0];
        buftm[4] = pDst[1];
        Public_ConvertBCDToTimeEx(&time,buftm);
        timecnt = ConverseGmtime(&time)-60;
        Gmtime(&time,timecnt);
        Public_ConvertTimeToBCDEx(time,buftm);

        pDst += 3;
    }
    
    return 51;
}

/*******************************************************************************
* Function Name  : Recorder_MileageTest
* Description    : 记录仪鉴定命令->里程误差,需每秒调用一次
* Input          : None            
* Output         : None
* Return         : None
*******************************************************************************/
void Recorder_MileageTest(void)
{
    u8 nTab[55];
    u8 nBuff[5];
 
    u16 temp;
    u32 temp_hex;
    
    u8  nData;
    u8  i;
    u8  verify;

    //VDR_HEAD head;
    
    memset(nTab,0,sizeof(nTab));                                              /*清空缓存区      */           
    
    nTab[0] = 0x55;
    nTab[1] = 0x7a;
    nTab[2] = 0xe1;
    nTab[3] = 0;
    nTab[4] = 44;
    nTab[5] = PRO_DEF_RETAINS;
    
    //Vdr_Get_OnlyNum(&head);//dxl,2015.3.19,有问题
    //memcpy(nTab+6,head.pbuf,head.len);
    
    EepromPram_ReadPram(E2_CAR_ONLY_NUM_ID,nTab+6);
    
    EepromPram_ReadPram(E2_CAR_FEATURE_COEF_ID,nBuff);                        /*脉冲系数        */

    nTab[35+6] = nBuff[1];
    nTab[36+6] = nBuff[2];
    
    temp = SpeedMonitor_GetCurSpeed();                                        /*获取实时速度    */
    temp = temp * 10;
    nTab[37+6] = (temp&0xff00)>>8;
    nTab[38+6] = temp;
      
    temp_hex = Pulse_GetTotalMile()*10;                                          /*累计行驶里程    */    
    nTab[39+6] = temp_hex>>24;
    nTab[40+6] = (temp_hex>>16)&0x0000ff;
    nTab[41+6] = (temp_hex>>8) &0x0000ff;
    nTab[42+6] = temp_hex & 0x000000ff; 
        
    nData = Io_ReadExtCarStatus();                                            /*制动            */
    nData = (nData<<1) | Io_ReadExtCarStatusBit(CAR_STATUS_BIT_LEFT_LIGHT);   /*左转            */
    nData = (nData<<1) | Io_ReadExtCarStatusBit(CAR_STATUS_BIT_RIGHT_LIGHT);  /*右转            */
    nData = (nData<<1) | Io_ReadExtCarStatusBit(CAR_STATUS_BIT_FAR_LIGHT);    /*远光            */
    nData = (nData<<1) | Io_ReadExtCarStatusBit(CAR_STATUS_BIT_NEAR_LIGHT);   /*近光            */ 
    nData = (nData<<3);                                                       /*D0-D2用户自定义 */    
       
    nTab[43+6] = nData;     
        
    verify = 0;    
    for(i=0; i<(44+6); i++)
    {
         verify ^= nTab[i];
    }
    nTab[50] = verify;
    
    COM1_WriteBuff(nTab,51);	
  
}

/**
  * @brief  记录仪U盘导出处理
  * @param  None
  * @retval None
  */
void Recorder_USBHandle(void)
{
    u8 buf[5];
    
    //读取升级标志
    E2prom_ReadByte(E2_PROGRAM_UPDATA_REQUEST_ID_ADDR,buf,5);
    if((buf[0]==0xaa)&&(buf[1]==0xaa))
    {
        return;//升级估计时不导出数据
    }
    Vdr_Usb_Handle();
}

/*********************************************************************
//函数名称	:RecorderCom_WirelessTimeTask
//功能		:无线行驶记录仪定时任务
//输入		:
//输出		:
//使用资源	:
//全局变量	:   
//调用函数	:
//中断资源	:  
//返回		:
//备注		:
*********************************************************************/
FunctionalState RecorderWireless_TimeTask(void)
{
    if(Vdr_Wire_Handle())
    {
        return ENABLE;
    }

    return DISABLE;
}
/*******************************************************************************
* Function Name  : Vdr_SerOutTime
* Description    : 记录仪串口一帧数据超时判断
* Input          : - *pData  : 指向串口
*                  - Length  : 来自串口数据的长度 
* Output         : None
* Return         : - 收到一帧完整且正确数据返回真，否则返回假
*******************************************************************************/

u8 Recorder_SerOutTime(u8 *p,u16 len)
{
    if(len == 0)
    {
        if(SerRxLen)
        {
            if((SerOutTmrCnt++)>2)
            {
                SerOutTmrCnt = 0;//超时
                SerBusyFlag  = 1;//忙
                return 1;
            }
        }
        return 0;//串口无数据
    }
    
    SerOutTmrCnt = 0;//串口有数据清超时计数器
    
    if(SerBusyFlag)
    {
        return 0;//上次的数据还没处理完毕
    }

    if((SerRxLen + len) < sizeof(SerRxBuf))//判断溢出
    {
        memcpy(SerRxBuf+SerRxLen,p,len);
        SerRxLen += len;
    }
    return 0;
}


/*******************************************************************************
* Function Name  : RecorderWired_TimeTask
* Description    : 记录仪事件处理,100ms调用一次
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
FunctionalState RecorderWired_TimeTask(void)
{
    u16 nRecLen = 0;
    u8  nRecTab[512];
    
    ////////////////////////////////////////////////////////////////////////////接收
    nRecLen = COM1_ReadBuff(nRecTab,512);  
    
    #ifdef EYE_MODEM
    Modem_Debug_UartRx(nRecTab,nRecLen);
    #endif
    
    ////////////////////////////////////////////////////////////////////////////一帧数据
    if(Recorder_SerOutTime(nRecTab,nRecLen) == 0)
    {
        return ENABLE;
    }
    
    //LcdShowStr(0,48,(char *)"收到命令       ",0);
    ////////////////////////////////////////////////////////////////////////////数据处理
    ///// 接收到完整一帧数据 -> SerRxBuf
    ///// ..............长度 -> SerRxLen

    ///// 其他协议处理
    
    CarLoad_CommProtocolParse(SerRxBuf,SerRxLen);//外设1类型bit3
    
    //Gyro_ProtocolParse(SerRxBuf, SerRxLen);//dxl,2015.6.29,外设1类型bit3,陀螺仪协议解析,只有外设1类型选择了相应的位会开启 

    /////记录仪协议处理,该协议需放到最后
    Vdr_Data_Rec(VDR_COM,0,SerRxBuf,SerRxLen);

    memset(SerRxBuf,0,SerRxLen);
    SerBusyFlag = 0;
    SerRxLen    = 0;
    
    return ENABLE;
}


/*
********************************************************************************
*                               END
********************************************************************************
*/
  
