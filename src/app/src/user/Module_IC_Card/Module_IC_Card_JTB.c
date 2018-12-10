/*************************************************************************
* Copyright (c) 2013,�������������¼����������޹�˾
* All rights reserved.
* �ļ����� : Module_IC_Card_JTB.c
* ��ǰ�汾 : 1.0
* ������   : Shigle
* �޸�ʱ�� : 2013��10��17��
* 2013��10��17��Ϊ���߰汾1.0, �������������������޸ģ���Ҫ������׷��˵��
* 1������ͬʱ֧���۵ۻ��Ϊ��ͨ���涨�ļ�ʻԱ��
* 2�������ϵ磬���д洢��ȫ�ֱ���ȫ���㣬һ��ȫ�µ�IC������������ʷ�����޹� 
*************************************************************************/


//***************�����ļ�*****************
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


//***************����ȫ�ֱ���������*****************
STT_ICCARD_CTRL_JTB gICCardJTBCtrl;


//*************** ���������� *****************

/********************************************************************
* ���� : ICCard_Clear_Buf_COM
* ���� : ��������ͨѶ�Ļ�����
* ˵��   mode: 0: ������ĵ��ֽ� 1������յ�ǰ���ȵ��ֽ�
********************************************************************/
void ICCard_Clear_Buf_COM( u8 mode )
{
    gICCardJTBCtrl.Com_Buffer_Length = 0 ;
}

/********************************************************************
* ���� : ICCard_Process_CMD_0x40_Request_COM_Ack_Code
* ���� : ��Ӧ��״̬�� ������������һ���� �� �ն�=>�۵�IC�������� ��
* ˵�� : �ն��ڽӵ�����������0x40�󣬸��ݲ�ͬ�����Ӧ�� ��������Ӧ���ݡ�
********************************************************************/
void ICCard_Process_CMD_0x40_Request_COM_Ack_Code( u8 AckCode)
{
    ICCard_PackAndSendData(0x40,&AckCode,1);
}

/********************************************************************
* ���� : ICCard_Process_CMD_0x40_Request_COM_Ack_Code
* ���� : ��Ӧ��״̬�� ������������һ���� �� �ն�=>�۵�IC�������� ��
* ˵�� : �ն��ڽӵ�����������0x40��Ӧ�������0x03:�ն�ȷ���յ���Ϣ( IC����֤���������� = 0x01 ~ 0x04  ʱ);
********************************************************************/
void ICCard_Process_CMD_0x40_Request_COM_Ack_Received( void )
{
    //IC����֤����Ӧ�� 0x03:�ն�ȷ���յ���Ϣ( IC����֤���������� = 0x01 ~ 0x04  ʱ);
    ICCard_Process_CMD_0x40_Request_COM_Ack_Code(0x03);  //IC����֤����Ӧ�� 0x03:�ն�ȷ���յ���Ϣ( IC����֤���������� = 0x01 ~ 0x04  ʱ);
}

/********************************************************************
* ���� : IC_Card_Terminal_Ack_Reader_Success
* ���� : �ն�=> �۵�IC���������� ��֮ �ն��Ѿ��ɹ������˿�ǩ���Ŀ�Ƭ���ݣ���ǩ����Ϣ
* ˵�� : 
********************************************************************/
void ICCard_Terminal_Ack_Reader_Success( u8 Cmd)
{
    //u8 SignInAckSuccessBuffer[9]  ={0x7E, 0x4D,0x00,0x01,0x01,0x00,0x0B,0x41,0x7E};
    //u8 SignOutAckSuccessBuffer[9] ={0x7E, 0x4E,0x00,0x01,0x01,0x00,0x0B,0x42,0x7E};    
    unsigned char TempBuf[1];
    ICCard_PackAndSendData(Cmd,TempBuf,0);
}

/********************************************************************
* ���� : ICCard_Net_Process
* ���� : IC����֤���ģ��������Ӵ���
* ˵�� : 
********************************************************************/
void ICCard_Net_Process( void )
{
    /**************IC����֤���ĵ��������� ********************/
    if(ICAUC_GetLnkStatus())
    { //��ѯIC����֤����GPRS�����Ƿ��Ѿ������ɹ�/
        //�Ѿ���������
        //��־λ0 ����: IC����֤����GPRS���Ӹս���
        if( FALSE ==  gICCardJTBCtrl.Flag_Radio_Connected ) 
        {
            gICCardJTBCtrl.Flag_Radio_Connected = TRUE ; 
        }
        return ;              
    } 
    //��δ��������
    if( TRUE == gICCardJTBCtrl.Flag_Radio_Connected) 
    { //���ӶϿ�
        gICCardJTBCtrl.Flag_Radio_Connected = FALSE ; //��0 ����: IC����֤����GPRS����δ����
        gICCardJTBCtrl.Flag_Radio_Opened = FALSE ;//�����û�н������ӣ����ж��Ƿ������ 
    }
    if( FALSE == gICCardJTBCtrl.Flag_Radio_Opened  )
    { //�����û�н������ӣ����ж��Ƿ������

        if( ICAUC_RET_SUCCED == ICAUC_OpenLnk()  )
        {//����IC����֤���ĵ�����
            gICCardJTBCtrl.Flag_Radio_Opened= TRUE ;  //����IC����֤���ĵ����ӳɹ��󣬴�
        }
    }
}
/********************************************************************
* ���� : ICCard_Net_Rx
* ���� : �ص�����, ����IC����֤�������緢��������, ������ȡ��Ч����֤��Ϣ
* ˵�� : 
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
** ��������: ICCard_DisposeRecvExdeviceJTB
** ��������: ���ݽ���
** ��ڲ���: ��
** ���ڲ���: ��
** ���ز���: ��
** ȫ�ֱ���: 
** ����ģ��: 
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
* ���� : ICCard_Process_CMD_0x40_request_0
* ���� : IC���б����������:  0x40 IC����֤����
* ˵��:  ��֤������ ״̬λ 0: IC�������ɹ�
********************************************************************/
void ICCard_Process_CMD_0x40_Request_0x00( void )
{
    memcpy( &gICCardJTBCtrl.AuthRequestCode[0], &gICCardJTBCtrl.stt_exdev808.Data[1], LEN_AUTH_REQUEST_CODE ); //������ ����64�ֽڿ�Ƭ������Ϣ����֤��Ϣ
    gICCardJTBCtrl.SM_Stage = 1;
    gICCardJTBCtrl.SM_Counter = 0 ;
}

/********************************************************************
* ���� : ICCard_Process_CMD_0x40_request_1
* ���� : IC���б����������:  0x40 IC����֤����
* ˵��:  ��֤������ ״̬λ 1: IC��δ����
********************************************************************/
void ICCard_Process_CMD_0x40_Request_0x01( void )
{
    //IC����֤����Ӧ�� 0x02:�ն�͸����֤���ĳ�ʱ��Ӧ��  
    Public_ShowTextInfo( "40IC����֤����ʧ��ԭ��1:IC��δ����", 30 );
    ICCard_Process_CMD_0x40_Request_COM_Ack_Received();
    gICCardJTBCtrl.SM_Stage = 0;
    gICCardJTBCtrl.SM_Counter = 0 ;
}

/********************************************************************
* ���� : ICCard_Process_CMD_0x40_request_2
* ���� : IC���б����������:  0x40 IC����֤����
* ˵��:  ��֤������ ״̬λ 2: IC������ʧ��
********************************************************************/
void ICCard_Process_CMD_0x40_Request_0x02( void )
{
    Public_ShowTextInfo( "40IC����֤����ʧ��ԭ��2:IC������ʧ��", 30 ); 
    ICCard_Process_CMD_0x40_Request_COM_Ack_Received();
    gICCardJTBCtrl.SM_Stage = 0;
    gICCardJTBCtrl.SM_Counter = 0 ;  
}

/********************************************************************
* ���� : ICCard_Process_CMD_0x40_request_3
* ���� : IC���б����������:  0x40 IC����֤����
* ˵��:  ��֤������ ״̬λ 3: �Ǵ�ҵ�ʸ�֤IC��
********************************************************************/
void ICCard_Process_CMD_0x40_Request_0x03( void )
{
    Public_ShowTextInfo( "40IC����֤����ʧ��ԭ��3:�Ǵ�ҵ�ʸ�֤IC��", 30 );
    ICCard_Process_CMD_0x40_Request_COM_Ack_Received();
    gICCardJTBCtrl.SM_Stage = 0;
    gICCardJTBCtrl.SM_Counter = 0 ;
   
}

/********************************************************************
* ���� : ICCard_Process_CMD_0x40_request_4
* ���� : IC���б����������:  0x40 IC����֤����
* ˵��:  ��֤������ ״̬λ 4: //IC��������
********************************************************************/
void ICCard_Process_CMD_0x40_Request_0x04( void )
{
    Public_ShowTextInfo( "40IC����֤����ʧ��ԭ��4:IC��������", 30 );
    ICCard_Process_CMD_0x40_Request_COM_Ack_Received();
    gICCardJTBCtrl.SM_Stage = 0;
    gICCardJTBCtrl.SM_Counter = 0 ;
}

/********************************************************************
* ���� : ICCard_Process_CMD_0x40_request_4
* ���� : IC���б����������:  0x40 IC����֤����
* ˵��:  ��֤������ ״̬λ 4: //δ֪��ԭ��
********************************************************************/
void ICCard_Process_CMD_0x40_Request_0xXX( void )
{
    Public_ShowTextInfo( "40IC����֤����ʧ��ԭ��X:δ֪", 30 );
    gICCardJTBCtrl.SM_Stage = 0;
    gICCardJTBCtrl.SM_Counter = 0 ;
}
/********************************************************************
* ���� : ICCard_Process_CMD_0x40
* ���� : IC���б����������:  0x40 IC����֤����
* ˵��  
********************************************************************/
void ICCard_Process_CMD_0x40( void )
{
    u8 result_readcard = 0 ;    
    result_readcard = gICCardJTBCtrl.stt_exdev808.Data[0] ;
    switch( result_readcard )
    {
        case 0x00: //IC�������ɹ�
            ICCard_Process_CMD_0x40_Request_0x00();
            break;
        case 0x01: //IC��δ����
            ICCard_Process_CMD_0x40_Request_0x01();
            break;
        case 0x02: //IC������ʧ�ܣ�
            ICCard_Process_CMD_0x40_Request_0x02();
            break;
        case 0x03: //�Ǵ�ҵ�ʸ�֤IC��
            ICCard_Process_CMD_0x40_Request_0x03();
            break;
        case 0x04: //IC��������
            ICCard_Process_CMD_0x40_Request_0x04();
            break;
        default:
            ICCard_Process_CMD_0x40_Request_0xXX();
            break;
    }
}

/********************************************************************
* ���� : ICCard_Process_CMD_0x41
* ���� : IC���б����������:  0x41 IC����ȡ���֪ͨ
* ˵��:  IC�������������� ��ȡ���֪ͨ ״̬λ 0: IC�������ɹ� ,��ʱ�к�������
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
* ���� : ICCard_Process_CMD_0x41
* ���� : IC���б����������:  0x41 IC����ȡ���֪ͨ
* ˵��:  IC�������������� ��ȡ���֪ͨ ״̬λ 1: IC������ʧ�� ,ԭ��Ϊ��Ƭ��Կ��֤δͨ��
********************************************************************/
void ICCard_Process_CMD_0x41_Result_0x01( void )
{
    Public_ShowTextInfo( "41����ʧ��ԭ��1:��Ƭ��Կ��֤δͨ��", 30 );            
    gICCardJTBCtrl.SM_Stage = 0;
    gICCardJTBCtrl.SM_Counter = 0 ;  
}

/********************************************************************
* ���� : ICCard_Process_CMD_0x41
* ���� : IC���б����������:  0x41 IC����ȡ���֪ͨ
* ˵��:  IC�������������� ��ȡ���֪ͨ ״̬λ 2: IC������ʧ�� ,ԭ��Ϊ��Ƭ�ѱ�����
********************************************************************/
void ICCard_Process_CMD_0x41_Result_0x02( void )
{
    Public_ShowTextInfo( "41����ʧ��ԭ��2:��Ƭ�ѱ�����", 30 );
    gICCardJTBCtrl.SM_Stage = 0;
    gICCardJTBCtrl.SM_Counter = 0 ;
}

/********************************************************************
* ���� : ICCard_Process_CMD_0x41
* ���� : IC���б����������:  0x41 IC����ȡ���֪ͨ
* ˵��:  IC�������������� ��ȡ���֪ͨ ״̬λ 3: IC������ʧ�� ,ԭ��Ϊ��Ƭ���γ�
********************************************************************/
void ICCard_Process_CMD_0x41_Result_0x03( void )
{
    Public_ShowTextInfo( "41����ʧ��ԭ��3:��Ƭ���γ�", 30 );
    gICCardJTBCtrl.SM_Stage = 0;
    gICCardJTBCtrl.SM_Counter = 0 ;    
}

/********************************************************************
* ���� : ICCard_Process_CMD_0x41
* ���� : IC���б����������:  0x41 IC����ȡ���֪ͨ
* ˵��:  IC�������������� ��ȡ���֪ͨ ״̬λ 4: IC������ʧ�� ,ԭ��Ϊ����У�����
********************************************************************/
void ICCard_Process_CMD_0x41_Result_0x04( void )
{
    Public_ShowTextInfo( "41����ʧ��ԭ��4:��Ƭ����У�����", 30 );
    gICCardJTBCtrl.SM_Stage = 0;
    gICCardJTBCtrl.SM_Counter = 0 ;    
}
/********************************************************************
* ���� : ICCard_Process_CMD_0x41
* ���� : IC���б����������:  0x41 IC����ȡ���֪ͨ
* ˵��:  IC�������������� ��ȡ���֪ͨ ״̬λ ����: IC������ʧ�� ,ԭ��δ֪
********************************************************************/
void ICCard_Process_CMD_0x41_Result_0xXX( void )
{
    Public_ShowTextInfo( "41����ʧ��ԭ��X: δ֪", 30 );
    gICCardJTBCtrl.SM_Stage = 0;
    gICCardJTBCtrl.SM_Counter = 0 ;
}

/********************************************************************
* ���� : ICCard_Process_CMD_0x41
* ���� : IC���б����������:  0x41 IC����ȡ���֪ͨ
* ˵��  
********************************************************************/
void ICCard_Process_CMD_0x41( void )
{
    u8 Result = 0 ;
    Result = gICCardJTBCtrl.stt_exdev808.Data[0] ;    
    switch(Result )
    {
        case 0x00: //IC�������ɹ� ,��ʱ�к�������
            ICCard_Process_CMD_0x41_Result_0x00();
            break;
        case 0x01: //IC������ʧ�� ,ԭ��Ϊ��Ƭ��Կ��֤δͨ��
            ICCard_Process_CMD_0x41_Result_0x01();
            break;
        case 0x02: //IC������ʧ�� ,ԭ��Ϊ��Ƭ�ѱ�����
            ICCard_Process_CMD_0x41_Result_0x02();
            break;
        case 0x03: //IC������ʧ�� ,ԭ��Ϊ��Ƭ���γ�
            ICCard_Process_CMD_0x41_Result_0x03();
            break;
        case 0x04: //IC������ʧ�� ,ԭ��Ϊ����У�����
            ICCard_Process_CMD_0x41_Result_0x04();
            break;
        default: //IC������ʧ�� ,ԭ��δ֪
            ICCard_Process_CMD_0x41_Result_0xXX();
            break;
    }
}

/********************************************************************
* ���� : ICCard_Process_CMD_0x42
* ���� : IC���б����������:  0x42 IC���γ�֪ͨ
* ˵��  
********************************************************************/
void ICCard_Process_CMD_0x42( void )
{
    ICCard_DisposeExternalCardDriverSignOut();
}

/********************************************************************
* ���� : ICCard_Process_CMD_0x43
* ���� : IC���б����������:  0x43 ����������ȡIC��
* ˵��  
********************************************************************/
void ICCard_Process_CMD_0x43( void )
{
    //u8 Array_43_ActiveReadICCard[9] = { 0x7E,0x4F,0x00,0x01,0x01,0x00,0x0B,0x43,0x7E };  
    ICCard_Terminal_Ack_Reader_Success(0x43);
}
/********************************************************************
* ���� : ICCard_SendCmdForClearElectronicCertificate
* ���� : ������õ���֤����Ϣ
* ���� : dataType 0x00:��ҵ��Ա�ʸ�֤(��)  0x10:��·����֤  0x20:��·����֤(��)
* ˵��   �ն�=>�� 0xA2
********************************************************************/
unsigned char ICCard_SendCmdForClearElectronicCertificate(u8	cmdType,u8 dataType)
{  
    u8 TempData;

		TempData = dataType;
		
    return ICCard_PackAndSendData(cmdType,&TempData,1);
}

/********************************************************************
* ���� : SM_Stage_Process_0
* ���� : IC����֤״̬������ �׶�0
* ˵��  ������=>�ն� IC��������֤
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
* ���� : SM_Stage_Process_1
* ���� : IC����֤״̬������ �׶�1
* ˵��   �ն�=>��֤����
********************************************************************/
void ICCard_SM_Stage_Process_1( void )
{
    u8 Radio_Buffer[MAX_ICCARD_BUF];
    u16 Radio_Buffer_Length;
    Radio_Buffer_Length = RadioProtocol_Packet_ICCard_AuthInfo( 0x0900, 0x0B , gICCardJTBCtrl.AuthRequestCode , LEN_AUTH_REQUEST_CODE, (u8 *)Radio_Buffer  );//��͸���Ϸ�(0x0900)ָ������Ƭ������Ϣ����֤��Ϣ

    if(  TRUE == gICCardJTBCtrl.Flag_Radio_Connected )
    {
        ICAUC_SendBuff( Radio_Buffer ,  Radio_Buffer_Length  ); //��IC����֤����͸���Ϸ�(0x0900)��Ƭ������Ϣ����֤��Ϣ
        gICCardJTBCtrl.SM_Stage = 2;
        gICCardJTBCtrl.SM_Counter = 0 ;
    }
    else
    {
        //IC����֤����Ӧ�� 0x01:�ն˲�����
        ICCard_Process_CMD_0x40_Request_COM_Ack_Code( 0x01);//IC����֤����Ӧ�� 0x01:�ն˲�����
        Public_ShowTextInfo( "IC����֤������δ����", 30 );
        gICCardJTBCtrl.SM_Stage = 0;
        gICCardJTBCtrl.SM_Counter = 0 ;
    }
}


/********************************************************************
* ���� : SM_Stage_Process_2
* ���� : IC����֤״̬������ �׶�2
* ˵��  ��֤����=>�ն�
********************************************************************/
void ICCard_SM_Stage_Process_2( void )
{
    if( gICCardJTBCtrl.SM_Counter++ > TIMEOUT_REQUEST_AUTH )
    {//��׼35��
        //IC����֤����Ӧ�� 0x02:�ն�͸����֤���ĳ�ʱ��Ӧ��
        ICCard_Process_CMD_0x40_Request_COM_Ack_Code( 0x02 );//IC����֤����Ӧ�� 0x02:�ն�͸����֤���ĳ�ʱ��Ӧ��
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
* ���� : SM_Stage_Process_3
* ���� : IC����֤״̬������ �׶�3
* ˵��   �ն�=>������
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
* ���� : SM_Stage_Process_4
* ���� : IC����֤״̬������ �׶�4
* ˵��  ������=>�ն�
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
    /***** IC�������� ��������� *****/
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
* ���� : SM_Stage_Process_5
* ���� : IC����֤״̬������ �׶�5
* ˵��  �ն�=>����ƽ̨
********************************************************************/
void ICCard_SM_Stage_Process_5( void )
{
    //ICCard_Process_Radio_Report();
    gICCardJTBCtrl.SM_Stage = 0;
    gICCardJTBCtrl.SM_Counter = 0 ;
}

/********************************************************************
* ���� : ICCard_SM_Stage_Process
* ���� : IC����֤״̬������
* ˵��  
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
* ���� : Task_IC_Card_JTB_Init
* ���� : ��ͨ��IC�������ʼ��
* ˵��  
********************************************************************/
void Task_IC_Card_JTB_Init( void )
{
    if( !gICCardJTBCtrl.Flag_Init )
    {
        SetTimerTask(TIME_ICAUC,ICAUC_TIME_TICK);
        /* ���������ṹ��STT_ICCARD_CTRL_JTB���� , Ȼ����λ1�� ������ʼ����� */
        memset( ( u8 *)&gICCardJTBCtrl, 0 , sizeof( STT_ICCARD_CTRL_JTB ) );
        gICCardJTBCtrl.Flag_Init = TRUE;  
        /* ע��IC����֤����GPRS���ӵ� ���ջص����� */
        ICAUC_RegReadFun( ICCard_Net_Rx );    
        ///* �ٴ�����IC����������� */        
    } 
}

/********************************************************************
* ���� : Task_IC_Card_JTB
* ���� : ��ͨ��IC������
* ˵��  
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

