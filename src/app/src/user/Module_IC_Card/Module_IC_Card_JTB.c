/*************************************************************************
* Copyright (c) 2013,深圳市伊爱高新技术开发有限公司
* All rights reserved.
* 文件名称 : Module_IC_Card_JTB.c
* 当前版本 : 1.0
* 开发者   : Shigle
* 修改时间 : 2013年10月17日
* 2013年10月17日为基线版本1.0, 后续功能如有增减或修改，将要求以下追加说明
* 1、本版同时支持雄帝或成为交通部规定的驾驶员卡
* 2、本次上电，所有存储和全局变量全清零，一次全新的IC卡操作，与历史操作无关 
*************************************************************************/


//***************包含文件*****************
#include "stm32f2xx.h"
#include "stm32f2xx_lib.h"
#include "include.h"

#define LEN_AUTH_REQUEST_CODE 64
#define LEN_AUTH_ACK_CODE	  24
#define MAX_ICCARD_BUF	 256

typedef struct tagSTT_ICCARD_CTRL_JTB
{
    BOOL Flag_Radio_Connected;
    BOOL Flag_Radio_Opened;
    BOOL Flag_Init;
    u16 Com_Buffer_Length;
    ST_PROTOCOL_EXDEVICE stt_exdev808;
    u16 stt_exdev808_len;
    u8	AuthRequestCode[LEN_AUTH_REQUEST_CODE];
    u8	AuthCode[LEN_AUTH_ACK_CODE];
    u8  Flag_AuthCode_Success;
    u8	SM_Stage;
    u8	SM_Counter;
}STT_ICCARD_CTRL_JTB;


//***************本地全局变量定义区*****************
STT_ICCARD_CTRL_JTB gICCardJTBCtrl;


//*************** 函数定义区 *****************

/********************************************************************
* 名称 : ICCard_Clear_Buf_COM
* 功能 : 清零无线通讯的缓冲区
* 说明   mode: 0: 清空所的的字节 1：仅清空当前长度的字节
********************************************************************/
void ICCard_Clear_Buf_COM( u8 mode )
{
    gICCardJTBCtrl.Com_Buffer_Length = 0 ;
}

/********************************************************************
* 名称 : ICCard_Process_CMD_0x40_Request_COM_Ack_Code
* 功能 : 将应答状态字 伴随其它数据一起打包 （ 终端=>雄帝IC卡读卡器 ）
* 说明 : 终端在接到读卡器命令0x40后，根据不同情况回应给 读卡器相应数据。
********************************************************************/
void ICCard_Process_CMD_0x40_Request_COM_Ack_Code( u8 AckCode)
{
    ICCard_PackAndSendData(0x40,&AckCode,1);
}

/********************************************************************
* 名称 : ICCard_Process_CMD_0x40_Request_COM_Ack_Code
* 功能 : 将应答状态字 伴随其它数据一起打包 （ 终端=>雄帝IC卡读卡器 ）
* 说明 : 终端在接到读卡器命令0x40后，应答读卡器0x03:终端确认收到消息( IC卡认证请求读卡结果 = 0x01 ~ 0x04  时);
********************************************************************/
void ICCard_Process_CMD_0x40_Request_COM_Ack_Received( void )
{
    //IC卡认证请求应答 0x03:终端确认收到消息( IC卡认证请求读卡结果 = 0x01 ~ 0x04  时);
    ICCard_Process_CMD_0x40_Request_COM_Ack_Code(0x03);  //IC卡认证请求应答 0x03:终端确认收到消息( IC卡认证请求读卡结果 = 0x01 ~ 0x04  时);
}

/********************************************************************
* 名称 : IC_Card_Terminal_Ack_Reader_Success
* 功能 : 终端=> 雄帝IC卡读卡器。 告之 终端已经成功接收了卡签到的卡片数据，或签退信息
* 说明 : 
********************************************************************/
void ICCard_Terminal_Ack_Reader_Success( u8 Cmd)
{
    //u8 SignInAckSuccessBuffer[9]  ={0x7E, 0x4D,0x00,0x01,0x01,0x00,0x0B,0x41,0x7E};
    //u8 SignOutAckSuccessBuffer[9] ={0x7E, 0x4E,0x00,0x01,0x01,0x00,0x0B,0x42,0x7E};    
    unsigned char TempBuf[1];
    ICCard_PackAndSendData(Cmd,TempBuf,0);
}

/********************************************************************
* 名称 : ICCard_Net_Process
* 功能 : IC卡认证中心，网络连接处理
* 说明 : 
********************************************************************/
void ICCard_Net_Process( void )
{
    /**************IC卡认证中心的网络连接 ********************/
    if(ICAUC_GetLnkStatus())
    { //查询IC卡认证中心GPRS连接是否已经建立成功/
        //已经建立连接
        //标志位0 表明: IC卡认证中心GPRS连接刚建立
        if( FALSE ==  gICCardJTBCtrl.Flag_Radio_Connected ) 
        {
            gICCardJTBCtrl.Flag_Radio_Connected = TRUE ; 
        }
        return ;              
    } 
    //尚未建立连接
    if( TRUE == gICCardJTBCtrl.Flag_Radio_Connected) 
    { //连接断开
        gICCardJTBCtrl.Flag_Radio_Connected = FALSE ; //清0 表明: IC卡认证中心GPRS连接未建立
        gICCardJTBCtrl.Flag_Radio_Opened = FALSE ;//如果还没有建立连接，则判断是否打开连接 
    }
    if( FALSE == gICCardJTBCtrl.Flag_Radio_Opened  )
    { //如果还没有建立连接，则判断是否打开连接

        if( ICAUC_RET_SUCCED == ICAUC_OpenLnk()  )
        {//开启IC卡认证中心的连接
            gICCardJTBCtrl.Flag_Radio_Opened= TRUE ;  //开启IC卡认证中心的连接成功后，打开
        }
    }
}
/********************************************************************
* 名称 : ICCard_Net_Rx
* 功能 : 回调函数, 拷贝IC卡认证中心网络发出的数据, 过滤提取有效的认证信息
* 说明 : 
********************************************************************/
void ICCard_Net_Rx( u8 * pInBuf, u16 InLength )
{
    gICCardJTBCtrl.AuthCode[0] = 1;
    gICCardJTBCtrl.Flag_AuthCode_Success = 1;
    if(InLength<14+LEN_AUTH_ACK_CODE)return;
    if((pInBuf[13]==0x0B)&&(pInBuf[14]==0x00))
    {
        memcpy(gICCardJTBCtrl.AuthCode,&pInBuf[14], LEN_AUTH_ACK_CODE);
    }
}
/*************************************************************
** 函数名称: ICCard_DisposeRecvExdeviceJTB
** 功能描述: 数据解析
** 入口参数: 无
** 出口参数: 无
** 返回参数: 无
** 全局变量: 
** 调用模块: 
*************************************************************/
void ICCard_DisposeRecvExdeviceJTB(ST_PROTOCOL_EXDEVICE stExdevice, unsigned short datalen)
{
    if(2 == gICCardJTBCtrl.SM_Stage)
    {
        gICCardJTBCtrl.SM_Stage = 0 ;
        gICCardJTBCtrl.SM_Counter = 0 ;
        ICCard_Clear_Buf_COM(0);
    }
    else
    {
        memcpy(&gICCardJTBCtrl.stt_exdev808,&stExdevice,sizeof(ST_PROTOCOL_EXDEVICE));
        gICCardJTBCtrl.Com_Buffer_Length = datalen;
        gICCardJTBCtrl.stt_exdev808_len  = datalen;
    }
}

/********************************************************************
* 名称 : ICCard_Process_CMD_0x40_request_0
* 功能 : IC卡行标外设命令处理:  0x40 IC卡认证请求
* 说明:  认证请求结果 状态位 0: IC卡读卡成功
********************************************************************/
void ICCard_Process_CMD_0x40_Request_0x00( void )
{
    memcpy( &gICCardJTBCtrl.AuthRequestCode[0], &gICCardJTBCtrl.stt_exdev808.Data[1], LEN_AUTH_REQUEST_CODE ); //读卡器 发送64字节卡片基本信息及认证信息
    gICCardJTBCtrl.SM_Stage = 1;
    gICCardJTBCtrl.SM_Counter = 0 ;
}

/********************************************************************
* 名称 : ICCard_Process_CMD_0x40_request_1
* 功能 : IC卡行标外设命令处理:  0x40 IC卡认证请求
* 说明:  认证请求结果 状态位 1: IC卡未插入
********************************************************************/
void ICCard_Process_CMD_0x40_Request_0x01( void )
{
    //IC卡认证请求应答 0x02:终端透传认证中心超时无应答  
    Public_ShowTextInfo( "40IC卡认证请求失败原因1:IC卡未插入", 30 );
    ICCard_Process_CMD_0x40_Request_COM_Ack_Received();
    gICCardJTBCtrl.SM_Stage = 0;
    gICCardJTBCtrl.SM_Counter = 0 ;
}

/********************************************************************
* 名称 : ICCard_Process_CMD_0x40_request_2
* 功能 : IC卡行标外设命令处理:  0x40 IC卡认证请求
* 说明:  认证请求结果 状态位 2: IC卡读卡失败
********************************************************************/
void ICCard_Process_CMD_0x40_Request_0x02( void )
{
    Public_ShowTextInfo( "40IC卡认证请求失败原因2:IC卡读卡失败", 30 ); 
    ICCard_Process_CMD_0x40_Request_COM_Ack_Received();
    gICCardJTBCtrl.SM_Stage = 0;
    gICCardJTBCtrl.SM_Counter = 0 ;  
}

/********************************************************************
* 名称 : ICCard_Process_CMD_0x40_request_3
* 功能 : IC卡行标外设命令处理:  0x40 IC卡认证请求
* 说明:  认证请求结果 状态位 3: 非从业资格证IC卡
********************************************************************/
void ICCard_Process_CMD_0x40_Request_0x03( void )
{
    Public_ShowTextInfo( "40IC卡认证请求失败原因3:非从业资格证IC卡", 30 );
    ICCard_Process_CMD_0x40_Request_COM_Ack_Received();
    gICCardJTBCtrl.SM_Stage = 0;
    gICCardJTBCtrl.SM_Counter = 0 ;
   
}

/********************************************************************
* 名称 : ICCard_Process_CMD_0x40_request_4
* 功能 : IC卡行标外设命令处理:  0x40 IC卡认证请求
* 说明:  认证请求结果 状态位 4: //IC卡被锁定
********************************************************************/
void ICCard_Process_CMD_0x40_Request_0x04( void )
{
    Public_ShowTextInfo( "40IC卡认证请求失败原因4:IC卡被锁定", 30 );
    ICCard_Process_CMD_0x40_Request_COM_Ack_Received();
    gICCardJTBCtrl.SM_Stage = 0;
    gICCardJTBCtrl.SM_Counter = 0 ;
}

/********************************************************************
* 名称 : ICCard_Process_CMD_0x40_request_4
* 功能 : IC卡行标外设命令处理:  0x40 IC卡认证请求
* 说明:  认证请求结果 状态位 4: //未知的原因
********************************************************************/
void ICCard_Process_CMD_0x40_Request_0xXX( void )
{
    Public_ShowTextInfo( "40IC卡认证请求失败原因X:未知", 30 );
    gICCardJTBCtrl.SM_Stage = 0;
    gICCardJTBCtrl.SM_Counter = 0 ;
}
/********************************************************************
* 名称 : ICCard_Process_CMD_0x40
* 功能 : IC卡行标外设命令处理:  0x40 IC卡认证请求
* 说明  
********************************************************************/
void ICCard_Process_CMD_0x40( void )
{
    u8 result_readcard = 0 ;    
    result_readcard = gICCardJTBCtrl.stt_exdev808.Data[0] ;
    switch( result_readcard )
    {
        case 0x00: //IC卡读卡成功
            ICCard_Process_CMD_0x40_Request_0x00();
            break;
        case 0x01: //IC卡未插入
            ICCard_Process_CMD_0x40_Request_0x01();
            break;
        case 0x02: //IC卡读卡失败；
            ICCard_Process_CMD_0x40_Request_0x02();
            break;
        case 0x03: //非从业资格证IC卡
            ICCard_Process_CMD_0x40_Request_0x03();
            break;
        case 0x04: //IC卡被锁定
            ICCard_Process_CMD_0x40_Request_0x04();
            break;
        default:
            ICCard_Process_CMD_0x40_Request_0xXX();
            break;
    }
}

/********************************************************************
* 名称 : ICCard_Process_CMD_0x41
* 功能 : IC卡行标外设命令处理:  0x41 IC卡读取结果通知
* 说明:  IC卡读卡器发出的 读取结果通知 状态位 0: IC卡读卡成功 ,此时有后续数据
********************************************************************/
void ICCard_Process_CMD_0x41_Result_0x00( void )
{
    ////////////////////
    ICCard_DisposeJTBCardDriverSignIn(&gICCardJTBCtrl.stt_exdev808.Data[1],gICCardJTBCtrl.stt_exdev808_len);
    /////////////////////
    ICCard_Terminal_Ack_Reader_Success( 0x41);
    gICCardJTBCtrl.SM_Stage = 5;
    gICCardJTBCtrl.SM_Counter = 0 ;
}

/********************************************************************
* 名称 : ICCard_Process_CMD_0x41
* 功能 : IC卡行标外设命令处理:  0x41 IC卡读取结果通知
* 说明:  IC卡读卡器发出的 读取结果通知 状态位 1: IC卡读卡失败 ,原因为卡片密钥认证未通过
********************************************************************/
void ICCard_Process_CMD_0x41_Result_0x01( void )
{
    Public_ShowTextInfo( "41读卡失败原因1:卡片密钥认证未通过", 30 );            
    gICCardJTBCtrl.SM_Stage = 0;
    gICCardJTBCtrl.SM_Counter = 0 ;  
}

/********************************************************************
* 名称 : ICCard_Process_CMD_0x41
* 功能 : IC卡行标外设命令处理:  0x41 IC卡读取结果通知
* 说明:  IC卡读卡器发出的 读取结果通知 状态位 2: IC卡读卡失败 ,原因为卡片已被锁定
********************************************************************/
void ICCard_Process_CMD_0x41_Result_0x02( void )
{
    Public_ShowTextInfo( "41读卡失败原因2:卡片已被锁定", 30 );
    gICCardJTBCtrl.SM_Stage = 0;
    gICCardJTBCtrl.SM_Counter = 0 ;
}

/********************************************************************
* 名称 : ICCard_Process_CMD_0x41
* 功能 : IC卡行标外设命令处理:  0x41 IC卡读取结果通知
* 说明:  IC卡读卡器发出的 读取结果通知 状态位 3: IC卡读卡失败 ,原因为卡片被拔出
********************************************************************/
void ICCard_Process_CMD_0x41_Result_0x03( void )
{
    Public_ShowTextInfo( "41读卡失败原因3:卡片被拔出", 30 );
    gICCardJTBCtrl.SM_Stage = 0;
    gICCardJTBCtrl.SM_Counter = 0 ;    
}

/********************************************************************
* 名称 : ICCard_Process_CMD_0x41
* 功能 : IC卡行标外设命令处理:  0x41 IC卡读取结果通知
* 说明:  IC卡读卡器发出的 读取结果通知 状态位 4: IC卡读卡失败 ,原因为数据校检错误
********************************************************************/
void ICCard_Process_CMD_0x41_Result_0x04( void )
{
    Public_ShowTextInfo( "41读卡失败原因4:卡片数据校检错误", 30 );
    gICCardJTBCtrl.SM_Stage = 0;
    gICCardJTBCtrl.SM_Counter = 0 ;    
}
/********************************************************************
* 名称 : ICCard_Process_CMD_0x41
* 功能 : IC卡行标外设命令处理:  0x41 IC卡读取结果通知
* 说明:  IC卡读卡器发出的 读取结果通知 状态位 其它: IC卡读卡失败 ,原因未知
********************************************************************/
void ICCard_Process_CMD_0x41_Result_0xXX( void )
{
    Public_ShowTextInfo( "41读卡失败原因X: 未知", 30 );
    gICCardJTBCtrl.SM_Stage = 0;
    gICCardJTBCtrl.SM_Counter = 0 ;
}

/********************************************************************
* 名称 : ICCard_Process_CMD_0x41
* 功能 : IC卡行标外设命令处理:  0x41 IC卡读取结果通知
* 说明  
********************************************************************/
void ICCard_Process_CMD_0x41( void )
{
    u8 Result = 0 ;
    Result = gICCardJTBCtrl.stt_exdev808.Data[0] ;    
    switch(Result )
    {
        case 0x00: //IC卡读卡成功 ,此时有后续数据
            ICCard_Process_CMD_0x41_Result_0x00();
            break;
        case 0x01: //IC卡读卡失败 ,原因为卡片密钥认证未通过
            ICCard_Process_CMD_0x41_Result_0x01();
            break;
        case 0x02: //IC卡读卡失败 ,原因为卡片已被锁定
            ICCard_Process_CMD_0x41_Result_0x02();
            break;
        case 0x03: //IC卡读卡失败 ,原因为卡片被拔出
            ICCard_Process_CMD_0x41_Result_0x03();
            break;
        case 0x04: //IC卡读卡失败 ,原因为数据校检错误
            ICCard_Process_CMD_0x41_Result_0x04();
            break;
        default: //IC卡读卡失败 ,原因未知
            ICCard_Process_CMD_0x41_Result_0xXX();
            break;
    }
}

/********************************************************************
* 名称 : ICCard_Process_CMD_0x42
* 功能 : IC卡行标外设命令处理:  0x42 IC卡拔出通知
* 说明  
********************************************************************/
void ICCard_Process_CMD_0x42( void )
{
    ICCard_DisposeExternalCardDriverSignOut();
}

/********************************************************************
* 名称 : ICCard_Process_CMD_0x43
* 功能 : IC卡行标外设命令处理:  0x43 主动触发读取IC卡
* 说明  
********************************************************************/
void ICCard_Process_CMD_0x43( void )
{
    //u8 Array_43_ActiveReadICCard[9] = { 0x7E,0x4F,0x00,0x01,0x01,0x00,0x0B,0x43,0x7E };  
    ICCard_Terminal_Ack_Reader_Success(0x43);
}
/********************************************************************
* 名称 : ICCard_SendCmdForClearElectronicCertificate
* 功能 : 清除内置电子证件信息
* 参数 : dataType 0x00:从业人员资格证(主)  0x10:道路运输证  0x20:道路运输证(从)
* 说明   终端=>卡 0xA2
********************************************************************/
unsigned char ICCard_SendCmdForClearElectronicCertificate(u8	cmdType,u8 dataType)
{  
    u8 TempData;

		TempData = dataType;
		
    return ICCard_PackAndSendData(cmdType,&TempData,1);
}

/********************************************************************
* 名称 : SM_Stage_Process_0
* 功能 : IC卡认证状态机处理， 阶段0
* 说明  读卡器=>终端 IC卡请求认证
********************************************************************/
void ICCard_SM_Stage_Process_0( void )
{
    if(gICCardJTBCtrl.Com_Buffer_Length < 1)return; 
    //////////////////////////
    if( gICCardJTBCtrl.stt_exdev808.Cmd == 0x40 )
    {
        ICCard_Process_CMD_0x40();
    } 
    else 
    if( gICCardJTBCtrl.stt_exdev808.Cmd == 0x42 )
    {
        ICCard_Process_CMD_0x42();
    } 
    else 
    {
    }
    ICCard_Clear_Buf_COM( 1);
    return;
}

/********************************************************************
* 名称 : SM_Stage_Process_1
* 功能 : IC卡认证状态机处理， 阶段1
* 说明   终端=>认证中心
********************************************************************/
void ICCard_SM_Stage_Process_1( void )
{
    u8 Radio_Buffer[MAX_ICCARD_BUF];
    u16 Radio_Buffer_Length;
    Radio_Buffer_Length = RadioProtocol_Packet_ICCard_AuthInfo( 0x0900, 0x0B , gICCardJTBCtrl.AuthRequestCode , LEN_AUTH_REQUEST_CODE, (u8 *)Radio_Buffer  );//用透传上发(0x0900)指令打包卡片基本信息及认证信息

    if(  TRUE == gICCardJTBCtrl.Flag_Radio_Connected )
    {
        ICAUC_SendBuff( Radio_Buffer ,  Radio_Buffer_Length  ); //向IC卡认证中心透传上发(0x0900)卡片基本信息及认证信息
        gICCardJTBCtrl.SM_Stage = 2;
        gICCardJTBCtrl.SM_Counter = 0 ;
    }
    else
    {
        //IC卡认证请求应答 0x01:终端不在线
        ICCard_Process_CMD_0x40_Request_COM_Ack_Code( 0x01);//IC卡认证请求应答 0x01:终端不在线
        Public_ShowTextInfo( "IC卡认证中心尚未连接", 30 );
        gICCardJTBCtrl.SM_Stage = 0;
        gICCardJTBCtrl.SM_Counter = 0 ;
    }
}


/********************************************************************
* 名称 : SM_Stage_Process_2
* 功能 : IC卡认证状态机处理， 阶段2
* 说明  认证中心=>终端
********************************************************************/
void ICCard_SM_Stage_Process_2( void )
{
    if( gICCardJTBCtrl.SM_Counter++ > TIMEOUT_REQUEST_AUTH )
    {//标准35秒
        //IC卡认证请求应答 0x02:终端透传认证中心超时无应答
        ICCard_Process_CMD_0x40_Request_COM_Ack_Code( 0x02 );//IC卡认证请求应答 0x02:终端透传认证中心超时无应答
        gICCardJTBCtrl.SM_Stage = 0;
        gICCardJTBCtrl.SM_Counter = 0 ;
        return ;
    }
    if(0 == gICCardJTBCtrl.Flag_AuthCode_Success )return;
    ///////////////////
    gICCardJTBCtrl.Flag_AuthCode_Success = 0 ;
    ////////////////////////////////
    if( 0x00 == gICCardJTBCtrl.AuthCode[0])
    {
        gICCardJTBCtrl.SM_Stage = 3;
        gICCardJTBCtrl.SM_Counter = 0 ;
    }
    else
    {
        gICCardJTBCtrl.SM_Stage = 0;
        gICCardJTBCtrl.SM_Counter = 0 ;
    }
}
/********************************************************************
* 名称 : SM_Stage_Process_3
* 功能 : IC卡认证状态机处理， 阶段3
* 说明   终端=>读卡器
********************************************************************/
void ICCard_SM_Stage_Process_3( void )
{ 
    u8 TempBuf[LEN_AUTH_ACK_CODE+1];
    ///////////////////////
    TempBuf[0] = 0x00 ;
    memcpy(&TempBuf[1],gICCardJTBCtrl.AuthCode,LEN_AUTH_ACK_CODE ); 
    ICCard_PackAndSendData(0x40,TempBuf,(LEN_AUTH_ACK_CODE+1 ));
    gICCardJTBCtrl.SM_Stage = 4;
    gICCardJTBCtrl.SM_Counter = 0 ;  
}

/********************************************************************
* 名称 : SM_Stage_Process_4
* 功能 : IC卡认证状态机处理， 阶段4
* 说明  读卡器=>终端
********************************************************************/
void ICCard_SM_Stage_Process_4( void )
{
    if( gICCardJTBCtrl.SM_Counter++ > (3*SECOND)  )
    {
        gICCardJTBCtrl.SM_Stage = 0;
        gICCardJTBCtrl.SM_Counter = 0 ;
        return;
    }
    ///////////////
    if( gICCardJTBCtrl.Com_Buffer_Length < 1)return; 
    /***** IC卡读卡器 外设命令处理 *****/
    if( 0x41 == gICCardJTBCtrl.stt_exdev808.Cmd)
    {        
        ICCard_Process_CMD_0x41();
        ICCard_Clear_Buf_COM(1);
    }
    else
    {
        ICCard_Clear_Buf_COM(1);
        gICCardJTBCtrl.SM_Stage = 0;
        gICCardJTBCtrl.SM_Counter = 0 ;
    }
}

/********************************************************************
* 名称 : SM_Stage_Process_5
* 功能 : IC卡认证状态机处理， 阶段5
* 说明  终端=>归属平台
********************************************************************/
void ICCard_SM_Stage_Process_5( void )
{
    //ICCard_Process_Radio_Report();
    gICCardJTBCtrl.SM_Stage = 0;
    gICCardJTBCtrl.SM_Counter = 0 ;
}

/********************************************************************
* 名称 : ICCard_SM_Stage_Process
* 功能 : IC卡认证状态机处理
* 说明  
********************************************************************/
void ICCard_SM_Stage_Process( void )
{  
    switch( gICCardJTBCtrl.SM_Stage )
    {
        case 0:
        	ICCard_SM_Stage_Process_0();
        	break;		
        case 1:
        	ICCard_SM_Stage_Process_1();
        	break;		
        case 2:
        	ICCard_SM_Stage_Process_2();
        	break;
        case 3:
        	ICCard_SM_Stage_Process_3();    
        	break;
        case 4:    
        	ICCard_SM_Stage_Process_4();    
        	break;
        	case 5:
        	ICCard_SM_Stage_Process_5();    
        	break;
        default:
        	gICCardJTBCtrl.SM_Stage = 0;    
        	break;
    }  
}
/********************************************************************
* 名称 : Task_IC_Card_JTB_Init
* 功能 : 交通部IC卡任务初始化
* 说明  
********************************************************************/
void Task_IC_Card_JTB_Init( void )
{
    if( !gICCardJTBCtrl.Flag_Init )
    {
        SetTimerTask(TIME_ICAUC,ICAUC_TIME_TICK);
        /* 清零整个结构体STT_ICCARD_CTRL_JTB变量 , 然后置位1， 表明初始化完成 */
        memset( ( u8 *)&gICCardJTBCtrl, 0 , sizeof( STT_ICCARD_CTRL_JTB ) );
        gICCardJTBCtrl.Flag_Init = TRUE;  
        /* 注册IC卡认证中心GPRS连接的 接收回调函数 */
        ICAUC_RegReadFun( ICCard_Net_Rx );    
        ///* 再次设置IC卡任务的周期 */        
    } 
}

/********************************************************************
* 名称 : Task_IC_Card_JTB
* 功能 : 交通部IC卡任务
* 说明  
********************************************************************/
FunctionalState Task_IC_Card_JTB(void)
{
    Task_IC_Card_JTB_Init();
    ////////////////////
    ICCard_Net_Process();
    ///////////////////
    //ICCard_COM_Process();
    ///////////////
    ICCard_SM_Stage_Process();
    /////////////
    return ENABLE;  
}
/******************************************************************************
**                            End Of File
******************************************************************************/

