/************************************************************************
//程序名称：Gyro.c
//功能：实现陀螺仪的对接和急加速急减速功能
//版本号：V0.1
//版权说明：版权属于深圳市伊爱高新技术开发有限公司
//开发人：dxl
//开发时间：2015.6
//版本记录：版本记录需包含版本、修改人、修改时间、修改原因、修改简要说明
//V0.1(为节省资源和简化程序,第1版没有做指令重发功能)：
//陀螺仪的对接主要实现:
//1.陀螺仪参数(急转弯角度/陀螺仪信息)读写，远程方式或菜单操作方式均可；
//2.陀螺仪校准（通过显示屏菜单操作触发陀螺仪校准,相关的菜单程序不在本文件中,本文件只是提供相关命令发送接口）；
//3.陀螺仪固件升级
//急加速急减速主要实现：
//1.急加速判断；
//2.急减速判断；
//3.急加速参数读写，远程方式或菜单操作方式均可
//4.急减速参数读写，远程方式或菜单操作方式均可
*************************************************************************/

#ifdef GYRO_FUNCTION 

/********************文件包含*************************/
#include <stdio.h>
#include <string.h>
#include "Gyro.h"
#include "EepromPram.h"
#include "Public.h"
#include "fm25c160.h"
#include "RadioProtocol.h"
#include "Report.h"
#include "modem_lib.h"
#include "modem_app_com.h"
#include "Camera_App.h"
#include "Usart1.h"
#include "speedmonitor.h"
#include "Gdi.h"

/********************本地变量*************************/
static s8 AccelerationThreshold[4] = {15,10,7,5};//加速度阈值,从AccelerationThreshold[0]-[3]分别对应0~30,30~60,60~90,90~四段速度下的阈值
static s8 DecelerationThreshold[2] = {-25,-20};//减速度阈值,从DecelerationThreshold[0]-[1]分别对应0~30,30~两段速度下的阈值

static u8 TxBuffer[GYRO_TX_BUFFER_SIZE] = {0};//发送缓存
//static u8 RxBuffer[GYRO_RX_BUFFER_SIZE] = {0};//发送缓存

static u8 GyroPeripheralFlag = 0;//陀螺仪外设标志，为1表示外设1类型选择了陀螺仪，为0表示外设1类型没有选择陀螺仪，只有为1时才会解析或发送陀螺仪数据
static u8 GyroInfo[25] = {0};//陀螺仪信息,主要包括:制造商ID(5字节),硬件版本号(8字节),固件版本号(8字节),固件修改日期(3字节),
static u16 GyroReadSharpTurnAngle = 0;//陀螺仪读取的急转弯度角
//static u16 GyroWriteSharpTurnAngle = 0;//陀螺仪写入的急转弯度角
static u8 GyroCalibrationAckFlag = 0;//校准陀螺仪应答,1为成功,2为失败,0为无应答.当主机发送校准指令给陀螺仪时该变量清0
static u8 GyroSharpTurnAngleAckFlag = 0;//设置陀螺仪急转弯应答,0为成功,1为失败,当主机发送设置急转弯指令指令给陀螺仪时该变量清0
//static u8 GyroAccelerationAckFlag = 0;//设置陀螺仪急加速应答,0为成功,1为失败,当主机发送设置急加速指令指令给陀螺仪时该变量清0
//static u8 GyroDecelerationAckFlag = 0;//设置陀螺仪急减速应答,1为成功,2为失败,0为无应答.当主机发送设置急减速指令指令给陀螺仪时该变量清0
static u16 GyroCmdSerialNum = 0;//最近那条陀螺仪指令流水号,指令流水号由陀螺仪给出
static u16 ServerCmdSerialNum = 0;//最近那条平台下发指令流水号,指令流水号由平台给出
static u16 HostCmdSerialNum = 0;//主机(终端)命令流水号,发1条指令加1
static u8 GyroLastCmdChannel = 0;//最近那条陀螺仪指令通道号,0为终端,1为平台
//static u8 HostLastCmdChannel = 0;//最近那条主机指令通道号,0为终端,1为平台
static u8 GyroUploadTransFlag = 0;//陀螺仪上行透传标志,0:不需要透传;
/********************全局变量*************************/
u16 PositionReportEventFlag = 0;//位置信息上报事件标志,bit0:急加速;bit1:急减速;bit2:急转弯,当产生相关事件后相应位置1,上报1条位置信息后自动清0
u8  GyroUploadChannel = 0;//陀螺仪上行透传通道,有CHANNEL_SMS,CHANNEL_DATA_1,CHANNEL_DATA_2这几种可选值

/********************外部变量*************************/


/********************本地函数声明*********************/
static void Gyro_AccelerationOrDeceleration(void);
static void Gyro_CmdParse(u16 cmd, u8 *pBuffer, u16 BufferLen);
static u8 Gyro_SendCmd(u16 cmd, u8 *pBuffer, u16 BufferLen);
static void Gyro_UploadTrans(void);

/********************函数定义*************************/
/**************************************************************************
//函数名：Gyro_UpdatePram  
//功能：更新急加速急减速变量 
//输入：无
//输出：无
//返回值：无 
//备注：主要是更新急加速阈值、急减速阈值
***************************************************************************/
void Gyro_UpdatePram(void)
{
    u8 Buffer[5] = {0};
    u8 BufferLen;
    u8 i;
    u8 count;
    u16 temp = 0;
        
    BufferLen = EepromPram_ReadPram(E2_LED_PORT_ID, Buffer);
    if(E2_LED_PORT_ID_LEN == BufferLen)
    {
        temp = Public_ConvertBufferToShort(Buffer); 
    }
    if((1<<4) == temp)//外设1类型是否设置为陀螺仪
    {
        GyroPeripheralFlag = 1;
    }
    else
    {
        GyroPeripheralFlag = 0;
    }
    
    //读急加速值 
    BufferLen = FRAM_BufferRead(Buffer, FRAM_GYRO_ACCELERATION_PARAM_LEN, FRAM_GYRO_ACCELERATION_PARAM_ADDR);
    if(0 == BufferLen)//没有读到有效数据
    {
        AccelerationThreshold[0] = 15;//赋给默认值
        AccelerationThreshold[1] = 10;
        AccelerationThreshold[2] = 7;
        AccelerationThreshold[3] = 5;
    }
    else//读取到有效数据
    {
        count = 0;
        for(i=0; i<FRAM_GYRO_ACCELERATION_PARAM_LEN; i++)
        {
            if(0 == Buffer[i])
            {
                count++;
            }
        }
        if(count == FRAM_GYRO_ACCELERATION_PARAM_LEN)//数据全为0(可以通过和校验)
        {
            AccelerationThreshold[0] = 15;
            AccelerationThreshold[1] = 10;
            AccelerationThreshold[2] = 7;
            AccelerationThreshold[3] = 5;
        }
        else
        {
            for(i=0; i<FRAM_GYRO_ACCELERATION_PARAM_LEN; i++)
            {
                AccelerationThreshold[i] = Buffer[i];
            }
        }
    }
    
    //读急减速值 
    BufferLen = FRAM_BufferRead(Buffer, FRAM_GYRO_DECELERATION_PARAM_LEN, FRAM_GYRO_DECELERATION_PARAM_ADDR);
    if(0 == BufferLen)//没有读到有效数据
    {
        DecelerationThreshold[0] = -25;//赋给默认值
        DecelerationThreshold[1] = -20;
    }
    else//读取到有效数据
    {
        count = 0;
        for(i=0; i<FRAM_GYRO_DECELERATION_PARAM_LEN; i++)
        {
            if(0 == Buffer[i])
            {
                count++;
            }
        }
        if(count == FRAM_GYRO_DECELERATION_PARAM_LEN)//数据全为0(可以通过和校验)
        {
            DecelerationThreshold[0] = -25;
            DecelerationThreshold[1] = -20;
        }
        else
        {
            for(i=0; i<FRAM_GYRO_DECELERATION_PARAM_LEN; i++)
            {
                DecelerationThreshold[i] = Buffer[i];
            }
        }
    } 
}
/**************************************************************************
//函数名：Gyro_TimeTask
//功能：实现陀螺仪固件升级、急加速急减速判断、数据上行透传
//输入：无
//输出：无
//返回值：
//备注：每秒调度1次,当检测到1次急加速或急减速时会立即上报1条位置信息,并触发拍照1张
***************************************************************************/
FunctionalState Gyro_TimeTask(void)
{
  
    return ENABLE;
    
    /*
    static u8 flag = 0;
    static u8 count = 0;
    
    
    
    
    if(1 == GyroPeripheralFlag)
    {
        count++;
        if((0 == flag)&&(count == 10))//进入主循环10秒后读取陀螺仪角度值
        {
            Gyro_ReadSharpTurnAngle(0, 0);
            //Gyro_Calibrate(0, 0);
            flag = 1;
        }
      
        Gyro_AccelerationOrDeceleration();//急加速急减速判断
        
        Gyro_UploadTrans();//陀螺仪急加速阈值、急减速阈值上行透传
        
        return ENABLE;
    }
    else
    {
        return ENABLE;
    }
    */
    
    
}
/**************************************************************************
//函数名：Gyro_WriteAccelerationThreshold(u8 *pBuffer, u8 BufferLen)
//功能：写急加速阈值
//输入：pBuffer:所指向的字节流分别对应0~30,30~60,60~90,90~四段速度下的急加速阈值
//输出：无
//返回值：无 
//备注：长度必须为4,否则写失败.
//收到平台下发的写急加速阈值指令或操作菜单设置急加速阈值时需要调用该函数
***************************************************************************/
void Gyro_WriteAccelerationThreshold(u8 *pBuffer, u8 BufferLen)
{
    if(4 == BufferLen)
    {
        FRAM_BufferWrite(FRAM_GYRO_ACCELERATION_PARAM_ADDR, pBuffer, FRAM_GYRO_ACCELERATION_PARAM_LEN);
    }
}
/**************************************************************************
//函数名：Gyro_WriteDecelerationThreshold(u8 *pBuffer, u8 BufferLen)
//功能：写急减速阈值
//输入：pBuffer:所指向的字节流分别对应0~30,30~两段速度下的急减速阈值
//输出：无
//返回值：无 
//备注：长度必须为2,否则写失败.
//收到平台下发的写急减速阈值指令或操作菜单设置急减速阈值时需要调用该函数
***************************************************************************/
void Gyro_WriteDecelerationThreshold(u8 *pBuffer, u8 BufferLen)
{
    if(2 == BufferLen)
    {
        FRAM_BufferWrite(FRAM_GYRO_DECELERATION_PARAM_ADDR, pBuffer, FRAM_GYRO_DECELERATION_PARAM_LEN);
    }
}
/**************************************************************************
//函数名：Gyro_WriteSharpTurnAngle(u8 Channel,  u16 SerialNum, u16 Angle)
//功能：写急转弯角度
//输入：Channel:通道,0为终端,1为平台,其它值为非法;Angle:角度值,单位是度;SerialNum:流水号
//输出：无
//返回值：0:成功;非0:失败 
//备注：当是平台设置急 转弯角度时需要指定流水号;当是终端设置急转弯角度时可以不在意流水号
//收到平台下发的写急转弯角度或操作菜单设置急转弯角度时需调用该函数
***************************************************************************/
u8 Gyro_WriteSharpTurnAngle(u8 Channel, u16 SerialNum, u16 Angle)
{
    u8 Buffer[20];
    
    if(Channel > 1)
    {
        return 1;
    }
    
    Buffer[0] = Channel;//传输通道标识,1字节
    
    if(0 == Channel)//流水号,2字节
    {
        Buffer[1] = (HostCmdSerialNum&0xff00) >> 8;
        Buffer[2] = HostCmdSerialNum&0xff;
    }
    else
    {
        Buffer[1] = (SerialNum&0xff00) >> 8;
        Buffer[2] = SerialNum&0xff;
    }
    
    Buffer[3] = 1;//读写标识,1字节
    
    Buffer[4] = 1;//参数ID,1字节
    
    Buffer[5] = 4;//参数项长度,1字节,参数项长度 = 参数ID长度+参数项长度+参数内容长度
    
    Buffer[6] = (Angle&0xff00) >> 8;
    Buffer[7] = Angle&0xff;
    
    GyroSharpTurnAngleAckFlag = 0;
    
    return Gyro_SendCmd(GYRO_CMD_READ_WRITE_PARAMETER, Buffer, 8);
    
}
/**************************************************************************
//函数名：Gyro_ReadAccelerationThreshold(u8 *pBuffer)
//功能：读急加速阈值
//输入：pBuffer:所指向的字节流分别对应0~30,30~60,60~90,90~四段速度下的急加速阈值
//输出：无
//返回值：长度为4表示读取成功,为0表示读取失败
//备注：无
//收到平台下发的读急加速阈值指令或操作菜单读急加速阈值时需要调用该函数
***************************************************************************/
u8 Gyro_ReadAccelerationThreshold(u8 *pBuffer)
{
    u8 Buffer[5] = {0};
    u8 BufferLen;
    
    BufferLen = FRAM_BufferRead(Buffer, FRAM_GYRO_ACCELERATION_PARAM_LEN, FRAM_GYRO_ACCELERATION_PARAM_ADDR);
    
    if(FRAM_GYRO_ACCELERATION_PARAM_LEN == BufferLen)
    {
        memcpy(pBuffer, Buffer, BufferLen);
        return 4;
    }
    else
    {
        return 0;
    }
}
/**************************************************************************
//函数名：Gyro_ReadDecelerationThreshold(u8 *pBuffer)
//功能：读急减速阈值
//输入：pBuffer:所指向的字节流分别对应0~30,30~两段速度下的急减速阈值
//输出：无
//返回值：长度为2表示读取成功,为0表示读取失败
//备注：无
//收到平台下发的读急减速阈值指令或操作菜单读急减速阈值时需要调用该函数
***************************************************************************/
u8 Gyro_ReadDecelerationThreshold(u8 *pBuffer)
{
    u8 Buffer[5] = {0};
    u8 BufferLen;
    
    BufferLen = FRAM_BufferRead(Buffer, FRAM_GYRO_DECELERATION_PARAM_LEN, FRAM_GYRO_DECELERATION_PARAM_ADDR);
    
    if(FRAM_GYRO_DECELERATION_PARAM_LEN == BufferLen)
    {
        memcpy(pBuffer, Buffer, BufferLen);
        return 2;
    }
    else
    {
        return 0;
    }
}
/**************************************************************************
//函数名：Gyro_ReadSharpTurnAngle(u8 Channel,  u16 SerialNum)
//功能：读急转弯角度
//输入：Channel:通道,0为终端,1为平台,其它值为非法;SerialNum:流水号
//输出：无
//返回值：无 
//备注：当是平台设置急 转弯角度时需要指定流水号;当是终端设置急转弯角度时可以不在意流水号
//收到平台下发的读急转弯角度或操作菜单读急转弯角度时需调用该函数
***************************************************************************/
void Gyro_ReadSharpTurnAngle(u8 Channel, u16 SerialNum)
{
    u8 Buffer[20];
    
    if(Channel > 1)
    {
        return;
    }
    
    Buffer[0] = Channel;//传输通道标识,1字节
    
    if(0 == Channel)//流水号,2字节
    {
        Buffer[1] = (HostCmdSerialNum&0xff00) >> 8;
        Buffer[2] = HostCmdSerialNum&0xff;
    }
    else
    {
        Buffer[1] = (SerialNum&0xff00) >> 8;
        Buffer[2] = SerialNum&0xff;
    }
    
    Buffer[3] = 0;//读写标识,1字节
    
    Buffer[4] = 1;//参数ID,1字节
    
    Buffer[5] = 2;//参数项长度,1字节,参数项长度 = 参数ID长度+参数项长度+参数内容长度
    
    Gyro_SendCmd(GYRO_CMD_READ_WRITE_PARAMETER, Buffer, 6);
    
}
/**************************************************************************
//函数名：Gyro_GetSharpTurnAngle(void)
//功能：获取急转弯角度
//输入：无
//输出：无
//返回值：急转弯角度
//备注：操作菜单读急转弯角度时需调用该函数
***************************************************************************/
u16 Gyro_GetSharpTurnAngle(void)
{
    return GyroReadSharpTurnAngle;
}
/**************************************************************************
//函数名：Gyro_Calibrate(u8 Channel,  u16 SerialNum)
//功能：校准陀螺仪
//输入：Channel:通道,0为终端,1为平台,其它值为非法;SerialNum:流水号
//输出：无
//返回值：0:表示发送成功;非0表示发送失败
//备注：当是平台设置急 转弯角度时需要指定流水号;当是终端设置急转弯角度时可以不在意 流水号
//收到平台下发的校准陀螺仪或操作菜单校准陀螺仪时需调用该函数
***************************************************************************/
u8 Gyro_Calibrate(u8 Channel, u16 SerialNum)
{
    u8 Buffer[20];
    
    if(Channel > 1)
    {
        return 1;
    }
    
    Buffer[0] = Channel;//传输通道标识,1字节
    
    if(0 == Channel)//流水号,2字节
    {
        Buffer[1] = (HostCmdSerialNum&0xff00) >> 8;
        Buffer[2] = HostCmdSerialNum&0xff;
    }
    else
    {
        Buffer[1] = (SerialNum&0xff00) >> 8;
        Buffer[2] = SerialNum&0xff;
    }
    
    return Gyro_SendCmd(GYRO_CMD_CALIBRATE, Buffer, 3);
    
}
/**************************************************************************
//函数名：Gyro_GetSubjoinInfo(u8 *pBuffer)
//功能：获取陀螺仪事件信息
//输入：无
//输出：无
//返回值：无 
//备注：当有急加速、急减速、急转弯事件发生时，位置汇报中需调用该函数(添加附加ID 0xE9)
***************************************************************************/
u8 Gyro_GetSubjoinInfo(u8 *pBuffer)
{
    u8 *p = NULL;
    
    if(1 == GyroPeripheralFlag)
    {
        if(PositionReportEventFlag == 0)
        {
            return 0;
        }
        else
        {
            p = pBuffer;
            *p++ = 0xE9;//附加ID
            *p++ = 2;//长度
            *p++ = (PositionReportEventFlag&0xff00) >> 8;
            *p++ = PositionReportEventFlag&0xff;
            
            PositionReportEventFlag = 0;//获取完事件信息后自动清0
            
            return 4;
            
        }
    }
    else
    {
        return 0;
    }
}
/**************************************************************************
//函数名：Gyro_UploadTrans
//功能：上行透传急加速或急减速阈值
//输入：无
//输出：无
//返回值：无 
//备注：GyroUploadTransFlag!=0时调用该函数，调用完后GyroUploadTransFlag自动清0
***************************************************************************/
static void Gyro_UploadTrans(void)
{
    u8 Buffer[20] = {0};
    u8 BufferLen = 0;
    u8 length;
    u16 SerialNum;
    u8 Channel;
    
    
    if(GYRO_UPLOAD_CMD_READ_ACCELERATION == GyroUploadTransFlag)//读急加速阈值透传
    {
        length = 0;
        Buffer[length++] = 0x01;
        Buffer[length++] = 0x01;
        Buffer[length++] = 0xf7;
        Buffer[length++] = 0x02;
        Buffer[length++] = 0x00;
        Buffer[length++] = 0x07;//这两字节是后续字节长度
        Buffer[length++] = (ServerCmdSerialNum&0xff00)>>8;
        Buffer[length++] = ServerCmdSerialNum&0xff;//平台下发的流水号
        Buffer[length++] = 0x00;
        BufferLen = Gyro_ReadAccelerationThreshold(Buffer+length);
        length += BufferLen;
        if(4 == BufferLen)
        {
            Channel = RadioProtocol_GetDownloadCmdChannel(0x8900, &SerialNum);
            //Channel = CHANNEL_DATA_1|CHANNEL_DATA_2;//调试使用
            if(ACK_OK == RadioProtocol_OriginalDataUpTrans(Channel, 0xfd, Buffer, length))
            {
                GyroUploadTransFlag = 0;
            }
        }
        else
        {
            GyroUploadTransFlag = 0;
        }
                        
        
    }
    else if(GYRO_UPLOAD_CMD_WRITE_ACCELERATION == GyroUploadTransFlag)//写急加速阈值透传
    {
        length = 0;
        Buffer[length++] = 0x01;
        Buffer[length++] = 0x01;
        Buffer[length++] = 0xf7;
        Buffer[length++] = 0x02;
        Buffer[length++] = 0x00;
        Buffer[length++] = 0x04;//这两字节是后续字节长度
        Buffer[length++] = (ServerCmdSerialNum&0xff00)>>8;
        Buffer[length++] = ServerCmdSerialNum&0xff;//平台下发的流水号
        Buffer[length++] = 0x01;
        Buffer[length++] = 0x00;//写的结果，0为成功，1为失败
        
        Channel = RadioProtocol_GetDownloadCmdChannel(0x8900, &SerialNum);
        //Channel = CHANNEL_DATA_1|CHANNEL_DATA_2;//调试使用
        if(ACK_OK == RadioProtocol_OriginalDataUpTrans(Channel, 0xfd, Buffer, length))
        {
             GyroUploadTransFlag = 0;
        }
    }
    else if(GYRO_UPLOAD_CMD_READ_DECELERATION == GyroUploadTransFlag)//读急减速阈值透传
    {
        length = 0;
        Buffer[length++] = 0x01;
        Buffer[length++] = 0x01;
        Buffer[length++] = 0xf7;
        Buffer[length++] = 0x03;
        Buffer[length++] = 0x00;
        Buffer[length++] = 0x05;//这两字节是后续字节长度
        Buffer[length++] = (ServerCmdSerialNum&0xff00)>>8;
        Buffer[length++] = ServerCmdSerialNum&0xff;//平台下发的流水号
        Buffer[length++] = 0x00;
        BufferLen = Gyro_ReadDecelerationThreshold(Buffer+length);
        length += BufferLen;
        if(2 == BufferLen)
        {
            Channel = RadioProtocol_GetDownloadCmdChannel(0x8900, &SerialNum);
            //Channel = CHANNEL_DATA_1|CHANNEL_DATA_2;//调试使用
            if(ACK_OK == RadioProtocol_OriginalDataUpTrans(Channel, 0xfd, Buffer, length))
            {
                GyroUploadTransFlag = 0;
            }
        }
        else
        {
            GyroUploadTransFlag = 0;
        }
        
    }
    else if(GYRO_UPLOAD_CMD_WRITE_DECELERATION == GyroUploadTransFlag)//写急减速阈值透传
    {
        length = 0;
        Buffer[length++] = 0x01;
        Buffer[length++] = 0x01;
        Buffer[length++] = 0xf7;
        Buffer[length++] = 0x03;
        Buffer[length++] = 0x00;
        Buffer[length++] = 0x04;//这两字节是后续字节长度
        Buffer[length++] = (ServerCmdSerialNum&0xff00)>>8;
        Buffer[length++] = ServerCmdSerialNum&0xff;//平台下发的流水号
        Buffer[length++] = 0x01;
        Buffer[length++] = 0x00;//写的结果，0为成功，1为失败
        Channel = RadioProtocol_GetDownloadCmdChannel(0x8900, &SerialNum);
        //Channel = CHANNEL_DATA_1|CHANNEL_DATA_2;//调试使用
        if(ACK_OK == RadioProtocol_OriginalDataUpTrans(Channel, 0xfd, Buffer, length))
        {
            GyroUploadTransFlag = 0;
        }
    }
    else if(GYRO_UPLOAD_CMD_READ_SHARP_TURN == GyroUploadTransFlag)//读急转弯透传
    {
        length = 0;
        Buffer[length++] = 0x01;
        Buffer[length++] = 0x01;
        Buffer[length++] = 0xf5;
        Buffer[length++] = 0x04;
        Buffer[length++] = 0x00;
        Buffer[length++] = 0x06;//这两字节是后续字节长度
        Buffer[length++] = 0x14;
        Buffer[length++] = (ServerCmdSerialNum&0xff00)>>8;
        Buffer[length++] = ServerCmdSerialNum&0xff;//平台下发的流水号
        Buffer[length++] = 0x00;
        Buffer[length++] = (GyroReadSharpTurnAngle&0xff00)>>8;
        Buffer[length++] = GyroReadSharpTurnAngle&0xff;
        Channel = RadioProtocol_GetDownloadCmdChannel(0x8900, &SerialNum);
        //Channel = CHANNEL_DATA_1|CHANNEL_DATA_2;//调试使用
        if(ACK_OK == RadioProtocol_OriginalDataUpTrans(Channel, 0xfd, Buffer, length))
        {
            GyroUploadTransFlag = 0;
        }
    }
    else if(GYRO_UPLOAD_CMD_WRITE_SHARP_TURN == GyroUploadTransFlag)//写急转弯透传
    {
        length = 0;
        Buffer[length++] = 0x01;
        Buffer[length++] = 0x01;
        Buffer[length++] = 0xf5;
        Buffer[length++] = 0x04;
        Buffer[length++] = 0x00;
        Buffer[length++] = 0x05;//这两字节是后续字节长度
        Buffer[length++] = 0x14;
        Buffer[length++] = (ServerCmdSerialNum&0xff00)>>8;
        Buffer[length++] = ServerCmdSerialNum&0xff;//平台下发的流水号
        Buffer[length++] = 0x01;
        Buffer[length++] = GyroSharpTurnAngleAckFlag;
        Channel = RadioProtocol_GetDownloadCmdChannel(0x8900, &SerialNum);
        //Channel = CHANNEL_DATA_1|CHANNEL_DATA_2;//调试使用
        if(ACK_OK == RadioProtocol_OriginalDataUpTrans(Channel, 0xfd, Buffer, length))
        {
            GyroUploadTransFlag = 0;
        }
    }
    else if(GYRO_UPLOAD_CMD_CALIBRATION == GyroUploadTransFlag)//校准陀螺仪透传
    {
        length = 0;
        Buffer[length++] = 0x01;
        Buffer[length++] = 0x01;
        Buffer[length++] = 0xf5;
        Buffer[length++] = 0x04;
        Buffer[length++] = 0x00;
        Buffer[length++] = 0x04;//这两字节是后续字节长度
        Buffer[length++] = 0x13;
        Buffer[length++] = (ServerCmdSerialNum&0xff00)>>8;
        Buffer[length++] = ServerCmdSerialNum&0xff;//平台下发的流水号
        Buffer[length++] = GyroCalibrationAckFlag-1;
        Channel = RadioProtocol_GetDownloadCmdChannel(0x8900, &SerialNum);
        //Channel = CHANNEL_DATA_1|CHANNEL_DATA_2;//调试使用
        if(ACK_OK == RadioProtocol_OriginalDataUpTrans(Channel, 0xfd, Buffer, length))
        {
            GyroUploadTransFlag = 0;
        }
    }
}
/**************************************************************************
//函数名：Gyro_AccelerationOrDeceleration
//功能：判断是急加速还是急减速
//输入：无
//输出：无
//返回值：无 
//备注：判断为急加速或急减速后需立即上报一条位置信息，拍照1张
//当为连续急加速时,只能判断为1次,上报1条位置信息,拍照1次
//当为连续急减速时,只能判断为1次,上报1条位置信息,拍照1次
***************************************************************************/
static void Gyro_AccelerationOrDeceleration(void)
{
    static s16 LastSpeed = 0x00ff;//上一次的速度
    static u8 AccelerationFlag = 0;//速度增标志
    static u8 DecelerationFlag = 0;//速度减标志
    
    s16 CurrentSpeed;//当前速度
    s16 temp;
    u8 flag = 0;

    
    CurrentSpeed = SpeedMonitor_GetCurSpeed();
    
    if(0x00ff == LastSpeed)
    {
        AccelerationFlag = 0;
        DecelerationFlag = 0;
    }
    else
    {
        temp = CurrentSpeed - LastSpeed;
        if(CurrentSpeed > LastSpeed)//速度增
        {
            if(LastSpeed <= 30)
            {
                if(temp >= AccelerationThreshold[0])
                {
                    flag = 1;
                }
            }
            else if(LastSpeed <= 60)
            {
                    if(temp >= AccelerationThreshold[1])
                    {
                        flag = 1;
                    }
            }
            else if(LastSpeed <= 90)
            {
                    if(temp >= AccelerationThreshold[2])
                    {
                        flag = 1;
                    }
            }
            else
            {
                    if(temp >= AccelerationThreshold[3])
                    {
                        flag = 1;
                    }
            }
            if((0 == AccelerationFlag)&&(1 == flag))
            {
                    AccelerationFlag = 1;
                    PositionReportEventFlag = PositionReportEventFlag|0x0001;
                    Report_UploadPositionInfo(CHANNEL_DATA_1|CHANNEL_DATA_2);
                    Camera_Photo(CHANNEL_DATA_1|CHANNEL_DATA_2,0,1,30,1,1, 1, 8);
                    
            }
            DecelerationFlag = 0;//速度减标志清0
        }
        else//速度减
        {
            if(LastSpeed <= 30)
            {
                if(temp <= DecelerationThreshold[0])
                {
                    flag = 1;
                }
            }
            else
            {
                if(temp <= DecelerationThreshold[1])
                {
                    flag = 1;
                }
            }
            if((0 == DecelerationFlag)&&(1 == flag))
            {
                 DecelerationFlag = 1;
                 PositionReportEventFlag = PositionReportEventFlag|0x0002;
                 Report_UploadPositionInfo(CHANNEL_DATA_1|CHANNEL_DATA_2);
                 Camera_Photo(CHANNEL_DATA_1|CHANNEL_DATA_2,0,1,30,1,1, 1, 9);
            }
            AccelerationFlag = 0;//速度增标志清0
        }
    }
    
    LastSpeed = CurrentSpeed;
}
/**************************************************************************
//函数名：Gyro_DisposeRadioProtocol(u8 *pBuffer, u16 BufferLen)
//功能：陀螺仪无线协议解析
//输入：无
//输出：无
//返回值：无 
//备注：收到平台下发的透传指令0x8900,透传类型为0xFD,子协议号为0xF504
//只在函数EIExpand_DisposeFunctionProtocol里调用了该函数
***************************************************************************/
void Gyro_DisposeRadioProtocol(u8 cmd, u8 *pBuffer, u16 BufferLen)
{
    u16 Angle;
    u8 *p = NULL;
    
    if(0x04 == cmd)//OBD蓝牙模组
    {
        p = pBuffer;
        ServerCmdSerialNum = 0;
        ServerCmdSerialNum |= *(p+1) << 8;
        ServerCmdSerialNum |= *(p+2);
        if((0x13 == *p)&&(3 == BufferLen))//陀螺仪校准
        {
            Gyro_Calibrate(1, ServerCmdSerialNum);
            
            //GyroUploadTransFlag = GYRO_UPLOAD_CMD_CALIBRATION;
        }
        else if(0x14 == *p)//陀螺仪角度
        {
            if((0 == *(p+3))&&(4 == BufferLen))//读
            {
                Gyro_ReadSharpTurnAngle(1, ServerCmdSerialNum);
                
                //GyroUploadTransFlag = GYRO_UPLOAD_CMD_READ_SHARP_TURN;
            }
            else if((1 == *(p+3))&&(6 == BufferLen))//写
            {
                Angle = 0;
                Angle |= *(p+4) << 8;
                Angle |= *(p+5);
                Gyro_WriteSharpTurnAngle(1, ServerCmdSerialNum, Angle);
                
                //GyroUploadTransFlag = GYRO_UPLOAD_CMD_WRITE_SHARP_TURN;
            }
        }
    }
    else if(0x02 == cmd)//读写急加速阈值
    {
        p = pBuffer;
        ServerCmdSerialNum = 0;
        ServerCmdSerialNum |= *p << 8;
        ServerCmdSerialNum |= *(p+1);
        if((0 == *(p+2))&&(3 == BufferLen))//读
        {
            GyroUploadTransFlag = GYRO_UPLOAD_CMD_READ_ACCELERATION;
        }
        else if((1 == *(p+2))&&(7 == BufferLen))//写
        {
            Gyro_WriteAccelerationThreshold(p+3, BufferLen-3);
            
            GyroUploadTransFlag = GYRO_UPLOAD_CMD_WRITE_ACCELERATION;
        }
    }
    else if(0x03 == cmd)//读写急减速阈值
    {
        p = pBuffer;
        ServerCmdSerialNum = 0;
        ServerCmdSerialNum |= *p << 8;
        ServerCmdSerialNum |= *(p+1);
        if((0 == *(p+2))&&(3 == BufferLen))//读
        {
            GyroUploadTransFlag = GYRO_UPLOAD_CMD_READ_DECELERATION;
        }
        else if((1 == *(p+2))&&(5 == BufferLen))//写
        {
            Gyro_WriteDecelerationThreshold(p+3, BufferLen-3);
            
            GyroUploadTransFlag = GYRO_UPLOAD_CMD_WRITE_DECELERATION;
        }
    }
}
/**************************************************************************
//函数名：Gyro_ProtocolParse(u8 *pBuffer, u16 BufferLen)
//功能：陀螺仪串口协议解析
//输入：无
//输出：无
//返回值：无 
//备注：串口收到陀螺仪发送的指令后需要调用该函数解析
***************************************************************************/
void Gyro_ProtocolParse(u8 *pBuffer, u16 BufferLen)
{
    u8 *p = NULL;
    u16 i;
    u16 j = 0xffff;
    u16 length;
    u16 cmd;
    u8 VerifyCode;
    
    p = pBuffer;
    for(i=0; i<BufferLen; i++)
    {
        if((0xff == *(p+i))&&(0x55 == *(p+i+1))&&(0xaa == *(p+i+2)))
        {
            j = i;
            break;
        }
    }
    if(0xffff != j)//已找到数据帧头
    {
        length = 0;
        length |= *(p+j+3) << 8;
        length |= *(p+j+4);
        if(length >= 4)
        {
            VerifyCode = 0;
            for(i=0; i<(length+2); i++)
            {
                VerifyCode = VerifyCode ^ (*(p+j+3+i));
            }
            if((VerifyCode == *(p+j+3+2+length))&&(0x55 == *(p+j+3+2+length+1))&&(0xaa == *(p+j+3+2+length+2)))//校验
            {
                if(0xF1 == *(p+j+5))//设备类型正确
                {
                    cmd = 0;
                    cmd |= *(p+j+7) << 8;
                    cmd |= *(p+j+8);
                    Gyro_CmdParse(cmd, p+j+9, length-4);
                }
            }
        }
    }
    
}
/**************************************************************************
//函数名：Gyro_CmdParse(u8 *pBuffer, u16 BufferLen)
//功能：陀螺仪指令解析
//输入：无
//输出：无
//返回值：无 
//备注：Gyro_ProtocolParse函数调用此函数
***************************************************************************/
void Gyro_CmdParse(u16 cmd, u8 *pBuffer, u16 BufferLen)
{
    u8 *p = NULL;
    //u8 Buffer[50];
    
    p = pBuffer;
    switch(cmd)
    {
    case 0x0120://车辆事件信息上报
        {
            GyroLastCmdChannel = *p;
            //GyroLastCmdChannel = 1;//调试使用
            GyroCmdSerialNum = 0;
            GyroCmdSerialNum |= *(p+1) << 8;
            GyroCmdSerialNum |= *(p+2);
            if(3 == *(p+17))//判断驾驶行为类别是否为急转弯
            {
                PositionReportEventFlag = PositionReportEventFlag|0x0004;
                Report_UploadPositionInfo(CHANNEL_DATA_1|CHANNEL_DATA_2);
                //Camera_Photo(CHANNEL_DATA_1|CHANNEL_DATA_2,0,1,30,1,1, 1, 10);
            }
            break;
        }
    case GYRO_CMD_READ_WRITE_PARAMETER://陀螺仪参数读写
        {
            GyroLastCmdChannel = *p;
            //GyroLastCmdChannel = 1;//调试使用
            GyroCmdSerialNum = 0;
            GyroCmdSerialNum |= *(p+1) << 8;
            GyroCmdSerialNum |= *(p+2);
            if(0 == *(p+3))//读,应答
            {
                if((0 == *(p+4))&&(28 == *(p+5)))//读陀螺仪信息
                {
                    memcpy(GyroInfo,p+8,24);//p+6:应答项长度,此处值应为26;p+7:错误码,一般为0
                }
                else if((1 == *(p+4))&&(6 == *(p+5)))//读急转弯角度
                {
                    GyroSharpTurnAngleAckFlag = *(p+7);
                
                    GyroReadSharpTurnAngle = 0;
                    GyroReadSharpTurnAngle |= *(p+8) << 8;//p+6:应答项长度,此处值应为4;p+7:错误码,一般为0
                    GyroReadSharpTurnAngle |= *(p+9);
                    
                    //用上行透传指令回复平台
                    if((1 == GyroLastCmdChannel)&&(0 == *(p+7)))
                    {
                        GyroUploadTransFlag = GYRO_UPLOAD_CMD_READ_SHARP_TURN;
                        
                    }
                }
            }
            else if(1 == *(p+3))//写,应答
            {
                if((1 == *(p+4))&&(4 == *(p+5)))//急转弯角度
                {
                  //p+6:应答项长度;p+7:错误码
                    GyroSharpTurnAngleAckFlag = *(p+7);
                    //用上行透传指令回复平台
                    if((1 == GyroLastCmdChannel)&&(0 == *(p+7)))
                    {
                        GyroUploadTransFlag = GYRO_UPLOAD_CMD_WRITE_SHARP_TURN;
                    }
                    
                }
            }
            break;
        }
    case GYRO_CMD_CALIBRATE://陀螺仪校准
        {
            GyroLastCmdChannel = *p;
            //GyroLastCmdChannel = 1;//调试使用
            GyroCmdSerialNum = 0;
            GyroCmdSerialNum |= *(p+1) << 8;
            GyroCmdSerialNum |= *(p+2);
            GyroCalibrationAckFlag = *(p+3)+1;//GyroCalibrationAckFlag:0是无应答,1是成功,2是失败,
            
            if(1 == GyroCalibrationAckFlag)
            {
              LcdClearArea(0,19,131,44);
              LcdShowCaption("陀螺仪校准成功", 24);
            }
            else
            {
              LcdClearArea(0,19,131,44);
              LcdShowCaption("陀螺仪校准失败", 24);
            }
            
            
            
            //用上行透传指令回复平台
            if((1 == GyroLastCmdChannel)&&(GyroCalibrationAckFlag < 3))
            {
                GyroUploadTransFlag = GYRO_UPLOAD_CMD_CALIBRATION;
                
                
            }
            break;
        }
    case GYRO_CMD_UPDATE://陀螺仪固件升级
        {
            GyroLastCmdChannel = *p;
            //GyroLastCmdChannel = 1;//调试使用
            GyroCmdSerialNum = 0;
            GyroCmdSerialNum |= *(p+1) << 8;
            GyroCmdSerialNum |= *(p+2);
            
            break;
        }
    default: break;
    }
}

/**************************************************************************
//函数名：Gyro_SendCmd(u16 cmd, u8 *pBuffer, u16 BufferLen)
//功能：发送命令给陀螺仪
//输入：无
//输出：无
//返回值：无 
//备注：0表示成功，非0表示失败。发送失败后由Gyro_TimeTask定时任务负责重发，最多重发3次
//注意不要在中断服务函数中调用此接口
***************************************************************************/
static u8 Gyro_SendCmd(u16 cmd, u8 *pBuffer, u16 BufferLen)
{
    u16 length;
    u8 VerifyCode = 0;
    u8 i;
    
    if(1 == GyroPeripheralFlag)
    {
    
        if((BufferLen+13) >= GYRO_TX_BUFFER_SIZE)
        {
            return 1;//长度超出
        }
    
        length  = BufferLen + 4;
        TxBuffer[0] = 0xff;
        TxBuffer[1] = 0x55;
        TxBuffer[2] = 0xaa;
        TxBuffer[3] = (length&0xff00) >> 8;
        TxBuffer[4] = length&0xff;
        TxBuffer[5] = 0xF1;//设备类型
        TxBuffer[6] = 0x00;//厂商标示
        TxBuffer[7] = (cmd&0xff00) >> 8;
        TxBuffer[8] = cmd&0xff;
        memcpy(TxBuffer+9,pBuffer,BufferLen);
        for(i=3; i<9+BufferLen; i++)
        {
            VerifyCode = VerifyCode ^ TxBuffer[i];
        }
        TxBuffer[9+BufferLen] = VerifyCode;
        TxBuffer[10+BufferLen] = 0x55;
        TxBuffer[11+BufferLen] = 0xaa;
        TxBuffer[12+BufferLen] = 0xff;
    
        if(0 == COM1_WriteBuff(TxBuffer, BufferLen+13))
        {
            return 2;//发送缓存满
        }
    
    }
    else
    {
        return 3;//未使用陀螺仪
    }
     
    HostCmdSerialNum++;
    
    return 0;
}
#endif








