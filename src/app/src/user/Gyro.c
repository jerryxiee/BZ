/************************************************************************
//�������ƣ�Gyro.c
//���ܣ�ʵ�������ǵĶԽӺͼ����ټ����ٹ���
//�汾�ţ�V0.1
//��Ȩ˵������Ȩ�����������������¼����������޹�˾
//�����ˣ�dxl
//����ʱ�䣺2015.6
//�汾��¼���汾��¼������汾���޸��ˡ��޸�ʱ�䡢�޸�ԭ���޸ļ�Ҫ˵��
//V0.1(Ϊ��ʡ��Դ�ͼ򻯳���,��1��û����ָ���ط�����)��
//�����ǵĶԽ���Ҫʵ��:
//1.�����ǲ���(��ת��Ƕ�/��������Ϣ)��д��Զ�̷�ʽ��˵�������ʽ���ɣ�
//2.������У׼��ͨ����ʾ���˵���������������У׼,��صĲ˵������ڱ��ļ���,���ļ�ֻ���ṩ�������ͽӿڣ���
//3.�����ǹ̼�����
//�����ټ�������Ҫʵ�֣�
//1.�������жϣ�
//2.�������жϣ�
//3.�����ٲ�����д��Զ�̷�ʽ��˵�������ʽ����
//4.�����ٲ�����д��Զ�̷�ʽ��˵�������ʽ����
*************************************************************************/

#ifdef GYRO_FUNCTION 

/********************�ļ�����*************************/
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

/********************���ر���*************************/
static s8 AccelerationThreshold[4] = {15,10,7,5};//���ٶ���ֵ,��AccelerationThreshold[0]-[3]�ֱ��Ӧ0~30,30~60,60~90,90~�Ķ��ٶ��µ���ֵ
static s8 DecelerationThreshold[2] = {-25,-20};//���ٶ���ֵ,��DecelerationThreshold[0]-[1]�ֱ��Ӧ0~30,30~�����ٶ��µ���ֵ

static u8 TxBuffer[GYRO_TX_BUFFER_SIZE] = {0};//���ͻ���
//static u8 RxBuffer[GYRO_RX_BUFFER_SIZE] = {0};//���ͻ���

static u8 GyroPeripheralFlag = 0;//�����������־��Ϊ1��ʾ����1����ѡ���������ǣ�Ϊ0��ʾ����1����û��ѡ�������ǣ�ֻ��Ϊ1ʱ�Ż������������������
static u8 GyroInfo[25] = {0};//��������Ϣ,��Ҫ����:������ID(5�ֽ�),Ӳ���汾��(8�ֽ�),�̼��汾��(8�ֽ�),�̼��޸�����(3�ֽ�),
static u16 GyroReadSharpTurnAngle = 0;//�����Ƕ�ȡ�ļ�ת��Ƚ�
//static u16 GyroWriteSharpTurnAngle = 0;//������д��ļ�ת��Ƚ�
static u8 GyroCalibrationAckFlag = 0;//У׼������Ӧ��,1Ϊ�ɹ�,2Ϊʧ��,0Ϊ��Ӧ��.����������У׼ָ���������ʱ�ñ�����0
static u8 GyroSharpTurnAngleAckFlag = 0;//���������Ǽ�ת��Ӧ��,0Ϊ�ɹ�,1Ϊʧ��,�������������ü�ת��ָ��ָ���������ʱ�ñ�����0
//static u8 GyroAccelerationAckFlag = 0;//���������Ǽ�����Ӧ��,0Ϊ�ɹ�,1Ϊʧ��,�������������ü�����ָ��ָ���������ʱ�ñ�����0
//static u8 GyroDecelerationAckFlag = 0;//���������Ǽ�����Ӧ��,1Ϊ�ɹ�,2Ϊʧ��,0Ϊ��Ӧ��.�������������ü�����ָ��ָ���������ʱ�ñ�����0
static u16 GyroCmdSerialNum = 0;//�������������ָ����ˮ��,ָ����ˮ���������Ǹ���
static u16 ServerCmdSerialNum = 0;//�������ƽ̨�·�ָ����ˮ��,ָ����ˮ����ƽ̨����
static u16 HostCmdSerialNum = 0;//����(�ն�)������ˮ��,��1��ָ���1
static u8 GyroLastCmdChannel = 0;//�������������ָ��ͨ����,0Ϊ�ն�,1Ϊƽ̨
//static u8 HostLastCmdChannel = 0;//�����������ָ��ͨ����,0Ϊ�ն�,1Ϊƽ̨
static u8 GyroUploadTransFlag = 0;//����������͸����־,0:����Ҫ͸��;
/********************ȫ�ֱ���*************************/
u16 PositionReportEventFlag = 0;//λ����Ϣ�ϱ��¼���־,bit0:������;bit1:������;bit2:��ת��,����������¼�����Ӧλ��1,�ϱ�1��λ����Ϣ���Զ���0
u8  GyroUploadChannel = 0;//����������͸��ͨ��,��CHANNEL_SMS,CHANNEL_DATA_1,CHANNEL_DATA_2�⼸�ֿ�ѡֵ

/********************�ⲿ����*************************/


/********************���غ�������*********************/
static void Gyro_AccelerationOrDeceleration(void);
static void Gyro_CmdParse(u16 cmd, u8 *pBuffer, u16 BufferLen);
static u8 Gyro_SendCmd(u16 cmd, u8 *pBuffer, u16 BufferLen);
static void Gyro_UploadTrans(void);

/********************��������*************************/
/**************************************************************************
//��������Gyro_UpdatePram  
//���ܣ����¼����ټ����ٱ��� 
//���룺��
//�������
//����ֵ���� 
//��ע����Ҫ�Ǹ��¼�������ֵ����������ֵ
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
    if((1<<4) == temp)//����1�����Ƿ�����Ϊ������
    {
        GyroPeripheralFlag = 1;
    }
    else
    {
        GyroPeripheralFlag = 0;
    }
    
    //��������ֵ 
    BufferLen = FRAM_BufferRead(Buffer, FRAM_GYRO_ACCELERATION_PARAM_LEN, FRAM_GYRO_ACCELERATION_PARAM_ADDR);
    if(0 == BufferLen)//û�ж�����Ч����
    {
        AccelerationThreshold[0] = 15;//����Ĭ��ֵ
        AccelerationThreshold[1] = 10;
        AccelerationThreshold[2] = 7;
        AccelerationThreshold[3] = 5;
    }
    else//��ȡ����Ч����
    {
        count = 0;
        for(i=0; i<FRAM_GYRO_ACCELERATION_PARAM_LEN; i++)
        {
            if(0 == Buffer[i])
            {
                count++;
            }
        }
        if(count == FRAM_GYRO_ACCELERATION_PARAM_LEN)//����ȫΪ0(����ͨ����У��)
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
    
    //��������ֵ 
    BufferLen = FRAM_BufferRead(Buffer, FRAM_GYRO_DECELERATION_PARAM_LEN, FRAM_GYRO_DECELERATION_PARAM_ADDR);
    if(0 == BufferLen)//û�ж�����Ч����
    {
        DecelerationThreshold[0] = -25;//����Ĭ��ֵ
        DecelerationThreshold[1] = -20;
    }
    else//��ȡ����Ч����
    {
        count = 0;
        for(i=0; i<FRAM_GYRO_DECELERATION_PARAM_LEN; i++)
        {
            if(0 == Buffer[i])
            {
                count++;
            }
        }
        if(count == FRAM_GYRO_DECELERATION_PARAM_LEN)//����ȫΪ0(����ͨ����У��)
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
//��������Gyro_TimeTask
//���ܣ�ʵ�������ǹ̼������������ټ������жϡ���������͸��
//���룺��
//�������
//����ֵ��
//��ע��ÿ�����1��,����⵽1�μ����ٻ򼱼���ʱ�������ϱ�1��λ����Ϣ,����������1��
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
        if((0 == flag)&&(count == 10))//������ѭ��10����ȡ�����ǽǶ�ֵ
        {
            Gyro_ReadSharpTurnAngle(0, 0);
            //Gyro_Calibrate(0, 0);
            flag = 1;
        }
      
        Gyro_AccelerationOrDeceleration();//�����ټ������ж�
        
        Gyro_UploadTrans();//�����Ǽ�������ֵ����������ֵ����͸��
        
        return ENABLE;
    }
    else
    {
        return ENABLE;
    }
    */
    
    
}
/**************************************************************************
//��������Gyro_WriteAccelerationThreshold(u8 *pBuffer, u8 BufferLen)
//���ܣ�д��������ֵ
//���룺pBuffer:��ָ����ֽ����ֱ��Ӧ0~30,30~60,60~90,90~�Ķ��ٶ��µļ�������ֵ
//�������
//����ֵ���� 
//��ע�����ȱ���Ϊ4,����дʧ��.
//�յ�ƽ̨�·���д��������ֵָ�������˵����ü�������ֵʱ��Ҫ���øú���
***************************************************************************/
void Gyro_WriteAccelerationThreshold(u8 *pBuffer, u8 BufferLen)
{
    if(4 == BufferLen)
    {
        FRAM_BufferWrite(FRAM_GYRO_ACCELERATION_PARAM_ADDR, pBuffer, FRAM_GYRO_ACCELERATION_PARAM_LEN);
    }
}
/**************************************************************************
//��������Gyro_WriteDecelerationThreshold(u8 *pBuffer, u8 BufferLen)
//���ܣ�д��������ֵ
//���룺pBuffer:��ָ����ֽ����ֱ��Ӧ0~30,30~�����ٶ��µļ�������ֵ
//�������
//����ֵ���� 
//��ע�����ȱ���Ϊ2,����дʧ��.
//�յ�ƽ̨�·���д��������ֵָ�������˵����ü�������ֵʱ��Ҫ���øú���
***************************************************************************/
void Gyro_WriteDecelerationThreshold(u8 *pBuffer, u8 BufferLen)
{
    if(2 == BufferLen)
    {
        FRAM_BufferWrite(FRAM_GYRO_DECELERATION_PARAM_ADDR, pBuffer, FRAM_GYRO_DECELERATION_PARAM_LEN);
    }
}
/**************************************************************************
//��������Gyro_WriteSharpTurnAngle(u8 Channel,  u16 SerialNum, u16 Angle)
//���ܣ�д��ת��Ƕ�
//���룺Channel:ͨ��,0Ϊ�ն�,1Ϊƽ̨,����ֵΪ�Ƿ�;Angle:�Ƕ�ֵ,��λ�Ƕ�;SerialNum:��ˮ��
//�������
//����ֵ��0:�ɹ�;��0:ʧ�� 
//��ע������ƽ̨���ü� ת��Ƕ�ʱ��Ҫָ����ˮ��;�����ն����ü�ת��Ƕ�ʱ���Բ�������ˮ��
//�յ�ƽ̨�·���д��ת��ǶȻ�����˵����ü�ת��Ƕ�ʱ����øú���
***************************************************************************/
u8 Gyro_WriteSharpTurnAngle(u8 Channel, u16 SerialNum, u16 Angle)
{
    u8 Buffer[20];
    
    if(Channel > 1)
    {
        return 1;
    }
    
    Buffer[0] = Channel;//����ͨ����ʶ,1�ֽ�
    
    if(0 == Channel)//��ˮ��,2�ֽ�
    {
        Buffer[1] = (HostCmdSerialNum&0xff00) >> 8;
        Buffer[2] = HostCmdSerialNum&0xff;
    }
    else
    {
        Buffer[1] = (SerialNum&0xff00) >> 8;
        Buffer[2] = SerialNum&0xff;
    }
    
    Buffer[3] = 1;//��д��ʶ,1�ֽ�
    
    Buffer[4] = 1;//����ID,1�ֽ�
    
    Buffer[5] = 4;//�������,1�ֽ�,������� = ����ID����+�������+�������ݳ���
    
    Buffer[6] = (Angle&0xff00) >> 8;
    Buffer[7] = Angle&0xff;
    
    GyroSharpTurnAngleAckFlag = 0;
    
    return Gyro_SendCmd(GYRO_CMD_READ_WRITE_PARAMETER, Buffer, 8);
    
}
/**************************************************************************
//��������Gyro_ReadAccelerationThreshold(u8 *pBuffer)
//���ܣ�����������ֵ
//���룺pBuffer:��ָ����ֽ����ֱ��Ӧ0~30,30~60,60~90,90~�Ķ��ٶ��µļ�������ֵ
//�������
//����ֵ������Ϊ4��ʾ��ȡ�ɹ�,Ϊ0��ʾ��ȡʧ��
//��ע����
//�յ�ƽ̨�·��Ķ���������ֵָ�������˵�����������ֵʱ��Ҫ���øú���
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
//��������Gyro_ReadDecelerationThreshold(u8 *pBuffer)
//���ܣ�����������ֵ
//���룺pBuffer:��ָ����ֽ����ֱ��Ӧ0~30,30~�����ٶ��µļ�������ֵ
//�������
//����ֵ������Ϊ2��ʾ��ȡ�ɹ�,Ϊ0��ʾ��ȡʧ��
//��ע����
//�յ�ƽ̨�·��Ķ���������ֵָ�������˵�����������ֵʱ��Ҫ���øú���
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
//��������Gyro_ReadSharpTurnAngle(u8 Channel,  u16 SerialNum)
//���ܣ�����ת��Ƕ�
//���룺Channel:ͨ��,0Ϊ�ն�,1Ϊƽ̨,����ֵΪ�Ƿ�;SerialNum:��ˮ��
//�������
//����ֵ���� 
//��ע������ƽ̨���ü� ת��Ƕ�ʱ��Ҫָ����ˮ��;�����ն����ü�ת��Ƕ�ʱ���Բ�������ˮ��
//�յ�ƽ̨�·��Ķ���ת��ǶȻ�����˵�����ת��Ƕ�ʱ����øú���
***************************************************************************/
void Gyro_ReadSharpTurnAngle(u8 Channel, u16 SerialNum)
{
    u8 Buffer[20];
    
    if(Channel > 1)
    {
        return;
    }
    
    Buffer[0] = Channel;//����ͨ����ʶ,1�ֽ�
    
    if(0 == Channel)//��ˮ��,2�ֽ�
    {
        Buffer[1] = (HostCmdSerialNum&0xff00) >> 8;
        Buffer[2] = HostCmdSerialNum&0xff;
    }
    else
    {
        Buffer[1] = (SerialNum&0xff00) >> 8;
        Buffer[2] = SerialNum&0xff;
    }
    
    Buffer[3] = 0;//��д��ʶ,1�ֽ�
    
    Buffer[4] = 1;//����ID,1�ֽ�
    
    Buffer[5] = 2;//�������,1�ֽ�,������� = ����ID����+�������+�������ݳ���
    
    Gyro_SendCmd(GYRO_CMD_READ_WRITE_PARAMETER, Buffer, 6);
    
}
/**************************************************************************
//��������Gyro_GetSharpTurnAngle(void)
//���ܣ���ȡ��ת��Ƕ�
//���룺��
//�������
//����ֵ����ת��Ƕ�
//��ע�������˵�����ת��Ƕ�ʱ����øú���
***************************************************************************/
u16 Gyro_GetSharpTurnAngle(void)
{
    return GyroReadSharpTurnAngle;
}
/**************************************************************************
//��������Gyro_Calibrate(u8 Channel,  u16 SerialNum)
//���ܣ�У׼������
//���룺Channel:ͨ��,0Ϊ�ն�,1Ϊƽ̨,����ֵΪ�Ƿ�;SerialNum:��ˮ��
//�������
//����ֵ��0:��ʾ���ͳɹ�;��0��ʾ����ʧ��
//��ע������ƽ̨���ü� ת��Ƕ�ʱ��Ҫָ����ˮ��;�����ն����ü�ת��Ƕ�ʱ���Բ����� ��ˮ��
//�յ�ƽ̨�·���У׼�����ǻ�����˵�У׼������ʱ����øú���
***************************************************************************/
u8 Gyro_Calibrate(u8 Channel, u16 SerialNum)
{
    u8 Buffer[20];
    
    if(Channel > 1)
    {
        return 1;
    }
    
    Buffer[0] = Channel;//����ͨ����ʶ,1�ֽ�
    
    if(0 == Channel)//��ˮ��,2�ֽ�
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
//��������Gyro_GetSubjoinInfo(u8 *pBuffer)
//���ܣ���ȡ�������¼���Ϣ
//���룺��
//�������
//����ֵ���� 
//��ע�����м����١������١���ת���¼�����ʱ��λ�û㱨������øú���(��Ӹ���ID 0xE9)
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
            *p++ = 0xE9;//����ID
            *p++ = 2;//����
            *p++ = (PositionReportEventFlag&0xff00) >> 8;
            *p++ = PositionReportEventFlag&0xff;
            
            PositionReportEventFlag = 0;//��ȡ���¼���Ϣ���Զ���0
            
            return 4;
            
        }
    }
    else
    {
        return 0;
    }
}
/**************************************************************************
//��������Gyro_UploadTrans
//���ܣ�����͸�������ٻ򼱼�����ֵ
//���룺��
//�������
//����ֵ���� 
//��ע��GyroUploadTransFlag!=0ʱ���øú������������GyroUploadTransFlag�Զ���0
***************************************************************************/
static void Gyro_UploadTrans(void)
{
    u8 Buffer[20] = {0};
    u8 BufferLen = 0;
    u8 length;
    u16 SerialNum;
    u8 Channel;
    
    
    if(GYRO_UPLOAD_CMD_READ_ACCELERATION == GyroUploadTransFlag)//����������ֵ͸��
    {
        length = 0;
        Buffer[length++] = 0x01;
        Buffer[length++] = 0x01;
        Buffer[length++] = 0xf7;
        Buffer[length++] = 0x02;
        Buffer[length++] = 0x00;
        Buffer[length++] = 0x07;//�����ֽ��Ǻ����ֽڳ���
        Buffer[length++] = (ServerCmdSerialNum&0xff00)>>8;
        Buffer[length++] = ServerCmdSerialNum&0xff;//ƽ̨�·�����ˮ��
        Buffer[length++] = 0x00;
        BufferLen = Gyro_ReadAccelerationThreshold(Buffer+length);
        length += BufferLen;
        if(4 == BufferLen)
        {
            Channel = RadioProtocol_GetDownloadCmdChannel(0x8900, &SerialNum);
            //Channel = CHANNEL_DATA_1|CHANNEL_DATA_2;//����ʹ��
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
    else if(GYRO_UPLOAD_CMD_WRITE_ACCELERATION == GyroUploadTransFlag)//д��������ֵ͸��
    {
        length = 0;
        Buffer[length++] = 0x01;
        Buffer[length++] = 0x01;
        Buffer[length++] = 0xf7;
        Buffer[length++] = 0x02;
        Buffer[length++] = 0x00;
        Buffer[length++] = 0x04;//�����ֽ��Ǻ����ֽڳ���
        Buffer[length++] = (ServerCmdSerialNum&0xff00)>>8;
        Buffer[length++] = ServerCmdSerialNum&0xff;//ƽ̨�·�����ˮ��
        Buffer[length++] = 0x01;
        Buffer[length++] = 0x00;//д�Ľ����0Ϊ�ɹ���1Ϊʧ��
        
        Channel = RadioProtocol_GetDownloadCmdChannel(0x8900, &SerialNum);
        //Channel = CHANNEL_DATA_1|CHANNEL_DATA_2;//����ʹ��
        if(ACK_OK == RadioProtocol_OriginalDataUpTrans(Channel, 0xfd, Buffer, length))
        {
             GyroUploadTransFlag = 0;
        }
    }
    else if(GYRO_UPLOAD_CMD_READ_DECELERATION == GyroUploadTransFlag)//����������ֵ͸��
    {
        length = 0;
        Buffer[length++] = 0x01;
        Buffer[length++] = 0x01;
        Buffer[length++] = 0xf7;
        Buffer[length++] = 0x03;
        Buffer[length++] = 0x00;
        Buffer[length++] = 0x05;//�����ֽ��Ǻ����ֽڳ���
        Buffer[length++] = (ServerCmdSerialNum&0xff00)>>8;
        Buffer[length++] = ServerCmdSerialNum&0xff;//ƽ̨�·�����ˮ��
        Buffer[length++] = 0x00;
        BufferLen = Gyro_ReadDecelerationThreshold(Buffer+length);
        length += BufferLen;
        if(2 == BufferLen)
        {
            Channel = RadioProtocol_GetDownloadCmdChannel(0x8900, &SerialNum);
            //Channel = CHANNEL_DATA_1|CHANNEL_DATA_2;//����ʹ��
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
    else if(GYRO_UPLOAD_CMD_WRITE_DECELERATION == GyroUploadTransFlag)//д��������ֵ͸��
    {
        length = 0;
        Buffer[length++] = 0x01;
        Buffer[length++] = 0x01;
        Buffer[length++] = 0xf7;
        Buffer[length++] = 0x03;
        Buffer[length++] = 0x00;
        Buffer[length++] = 0x04;//�����ֽ��Ǻ����ֽڳ���
        Buffer[length++] = (ServerCmdSerialNum&0xff00)>>8;
        Buffer[length++] = ServerCmdSerialNum&0xff;//ƽ̨�·�����ˮ��
        Buffer[length++] = 0x01;
        Buffer[length++] = 0x00;//д�Ľ����0Ϊ�ɹ���1Ϊʧ��
        Channel = RadioProtocol_GetDownloadCmdChannel(0x8900, &SerialNum);
        //Channel = CHANNEL_DATA_1|CHANNEL_DATA_2;//����ʹ��
        if(ACK_OK == RadioProtocol_OriginalDataUpTrans(Channel, 0xfd, Buffer, length))
        {
            GyroUploadTransFlag = 0;
        }
    }
    else if(GYRO_UPLOAD_CMD_READ_SHARP_TURN == GyroUploadTransFlag)//����ת��͸��
    {
        length = 0;
        Buffer[length++] = 0x01;
        Buffer[length++] = 0x01;
        Buffer[length++] = 0xf5;
        Buffer[length++] = 0x04;
        Buffer[length++] = 0x00;
        Buffer[length++] = 0x06;//�����ֽ��Ǻ����ֽڳ���
        Buffer[length++] = 0x14;
        Buffer[length++] = (ServerCmdSerialNum&0xff00)>>8;
        Buffer[length++] = ServerCmdSerialNum&0xff;//ƽ̨�·�����ˮ��
        Buffer[length++] = 0x00;
        Buffer[length++] = (GyroReadSharpTurnAngle&0xff00)>>8;
        Buffer[length++] = GyroReadSharpTurnAngle&0xff;
        Channel = RadioProtocol_GetDownloadCmdChannel(0x8900, &SerialNum);
        //Channel = CHANNEL_DATA_1|CHANNEL_DATA_2;//����ʹ��
        if(ACK_OK == RadioProtocol_OriginalDataUpTrans(Channel, 0xfd, Buffer, length))
        {
            GyroUploadTransFlag = 0;
        }
    }
    else if(GYRO_UPLOAD_CMD_WRITE_SHARP_TURN == GyroUploadTransFlag)//д��ת��͸��
    {
        length = 0;
        Buffer[length++] = 0x01;
        Buffer[length++] = 0x01;
        Buffer[length++] = 0xf5;
        Buffer[length++] = 0x04;
        Buffer[length++] = 0x00;
        Buffer[length++] = 0x05;//�����ֽ��Ǻ����ֽڳ���
        Buffer[length++] = 0x14;
        Buffer[length++] = (ServerCmdSerialNum&0xff00)>>8;
        Buffer[length++] = ServerCmdSerialNum&0xff;//ƽ̨�·�����ˮ��
        Buffer[length++] = 0x01;
        Buffer[length++] = GyroSharpTurnAngleAckFlag;
        Channel = RadioProtocol_GetDownloadCmdChannel(0x8900, &SerialNum);
        //Channel = CHANNEL_DATA_1|CHANNEL_DATA_2;//����ʹ��
        if(ACK_OK == RadioProtocol_OriginalDataUpTrans(Channel, 0xfd, Buffer, length))
        {
            GyroUploadTransFlag = 0;
        }
    }
    else if(GYRO_UPLOAD_CMD_CALIBRATION == GyroUploadTransFlag)//У׼������͸��
    {
        length = 0;
        Buffer[length++] = 0x01;
        Buffer[length++] = 0x01;
        Buffer[length++] = 0xf5;
        Buffer[length++] = 0x04;
        Buffer[length++] = 0x00;
        Buffer[length++] = 0x04;//�����ֽ��Ǻ����ֽڳ���
        Buffer[length++] = 0x13;
        Buffer[length++] = (ServerCmdSerialNum&0xff00)>>8;
        Buffer[length++] = ServerCmdSerialNum&0xff;//ƽ̨�·�����ˮ��
        Buffer[length++] = GyroCalibrationAckFlag-1;
        Channel = RadioProtocol_GetDownloadCmdChannel(0x8900, &SerialNum);
        //Channel = CHANNEL_DATA_1|CHANNEL_DATA_2;//����ʹ��
        if(ACK_OK == RadioProtocol_OriginalDataUpTrans(Channel, 0xfd, Buffer, length))
        {
            GyroUploadTransFlag = 0;
        }
    }
}
/**************************************************************************
//��������Gyro_AccelerationOrDeceleration
//���ܣ��ж��Ǽ����ٻ��Ǽ�����
//���룺��
//�������
//����ֵ���� 
//��ע���ж�Ϊ�����ٻ򼱼��ٺ��������ϱ�һ��λ����Ϣ������1��
//��Ϊ����������ʱ,ֻ���ж�Ϊ1��,�ϱ�1��λ����Ϣ,����1��
//��Ϊ����������ʱ,ֻ���ж�Ϊ1��,�ϱ�1��λ����Ϣ,����1��
***************************************************************************/
static void Gyro_AccelerationOrDeceleration(void)
{
    static s16 LastSpeed = 0x00ff;//��һ�ε��ٶ�
    static u8 AccelerationFlag = 0;//�ٶ�����־
    static u8 DecelerationFlag = 0;//�ٶȼ���־
    
    s16 CurrentSpeed;//��ǰ�ٶ�
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
        if(CurrentSpeed > LastSpeed)//�ٶ���
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
            DecelerationFlag = 0;//�ٶȼ���־��0
        }
        else//�ٶȼ�
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
            AccelerationFlag = 0;//�ٶ�����־��0
        }
    }
    
    LastSpeed = CurrentSpeed;
}
/**************************************************************************
//��������Gyro_DisposeRadioProtocol(u8 *pBuffer, u16 BufferLen)
//���ܣ�����������Э�����
//���룺��
//�������
//����ֵ���� 
//��ע���յ�ƽ̨�·���͸��ָ��0x8900,͸������Ϊ0xFD,��Э���Ϊ0xF504
//ֻ�ں���EIExpand_DisposeFunctionProtocol������˸ú���
***************************************************************************/
void Gyro_DisposeRadioProtocol(u8 cmd, u8 *pBuffer, u16 BufferLen)
{
    u16 Angle;
    u8 *p = NULL;
    
    if(0x04 == cmd)//OBD����ģ��
    {
        p = pBuffer;
        ServerCmdSerialNum = 0;
        ServerCmdSerialNum |= *(p+1) << 8;
        ServerCmdSerialNum |= *(p+2);
        if((0x13 == *p)&&(3 == BufferLen))//������У׼
        {
            Gyro_Calibrate(1, ServerCmdSerialNum);
            
            //GyroUploadTransFlag = GYRO_UPLOAD_CMD_CALIBRATION;
        }
        else if(0x14 == *p)//�����ǽǶ�
        {
            if((0 == *(p+3))&&(4 == BufferLen))//��
            {
                Gyro_ReadSharpTurnAngle(1, ServerCmdSerialNum);
                
                //GyroUploadTransFlag = GYRO_UPLOAD_CMD_READ_SHARP_TURN;
            }
            else if((1 == *(p+3))&&(6 == BufferLen))//д
            {
                Angle = 0;
                Angle |= *(p+4) << 8;
                Angle |= *(p+5);
                Gyro_WriteSharpTurnAngle(1, ServerCmdSerialNum, Angle);
                
                //GyroUploadTransFlag = GYRO_UPLOAD_CMD_WRITE_SHARP_TURN;
            }
        }
    }
    else if(0x02 == cmd)//��д��������ֵ
    {
        p = pBuffer;
        ServerCmdSerialNum = 0;
        ServerCmdSerialNum |= *p << 8;
        ServerCmdSerialNum |= *(p+1);
        if((0 == *(p+2))&&(3 == BufferLen))//��
        {
            GyroUploadTransFlag = GYRO_UPLOAD_CMD_READ_ACCELERATION;
        }
        else if((1 == *(p+2))&&(7 == BufferLen))//д
        {
            Gyro_WriteAccelerationThreshold(p+3, BufferLen-3);
            
            GyroUploadTransFlag = GYRO_UPLOAD_CMD_WRITE_ACCELERATION;
        }
    }
    else if(0x03 == cmd)//��д��������ֵ
    {
        p = pBuffer;
        ServerCmdSerialNum = 0;
        ServerCmdSerialNum |= *p << 8;
        ServerCmdSerialNum |= *(p+1);
        if((0 == *(p+2))&&(3 == BufferLen))//��
        {
            GyroUploadTransFlag = GYRO_UPLOAD_CMD_READ_DECELERATION;
        }
        else if((1 == *(p+2))&&(5 == BufferLen))//д
        {
            Gyro_WriteDecelerationThreshold(p+3, BufferLen-3);
            
            GyroUploadTransFlag = GYRO_UPLOAD_CMD_WRITE_DECELERATION;
        }
    }
}
/**************************************************************************
//��������Gyro_ProtocolParse(u8 *pBuffer, u16 BufferLen)
//���ܣ������Ǵ���Э�����
//���룺��
//�������
//����ֵ���� 
//��ע�������յ������Ƿ��͵�ָ�����Ҫ���øú�������
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
    if(0xffff != j)//���ҵ�����֡ͷ
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
            if((VerifyCode == *(p+j+3+2+length))&&(0x55 == *(p+j+3+2+length+1))&&(0xaa == *(p+j+3+2+length+2)))//У��
            {
                if(0xF1 == *(p+j+5))//�豸������ȷ
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
//��������Gyro_CmdParse(u8 *pBuffer, u16 BufferLen)
//���ܣ�������ָ�����
//���룺��
//�������
//����ֵ���� 
//��ע��Gyro_ProtocolParse�������ô˺���
***************************************************************************/
void Gyro_CmdParse(u16 cmd, u8 *pBuffer, u16 BufferLen)
{
    u8 *p = NULL;
    //u8 Buffer[50];
    
    p = pBuffer;
    switch(cmd)
    {
    case 0x0120://�����¼���Ϣ�ϱ�
        {
            GyroLastCmdChannel = *p;
            //GyroLastCmdChannel = 1;//����ʹ��
            GyroCmdSerialNum = 0;
            GyroCmdSerialNum |= *(p+1) << 8;
            GyroCmdSerialNum |= *(p+2);
            if(3 == *(p+17))//�жϼ�ʻ��Ϊ����Ƿ�Ϊ��ת��
            {
                PositionReportEventFlag = PositionReportEventFlag|0x0004;
                Report_UploadPositionInfo(CHANNEL_DATA_1|CHANNEL_DATA_2);
                //Camera_Photo(CHANNEL_DATA_1|CHANNEL_DATA_2,0,1,30,1,1, 1, 10);
            }
            break;
        }
    case GYRO_CMD_READ_WRITE_PARAMETER://�����ǲ�����д
        {
            GyroLastCmdChannel = *p;
            //GyroLastCmdChannel = 1;//����ʹ��
            GyroCmdSerialNum = 0;
            GyroCmdSerialNum |= *(p+1) << 8;
            GyroCmdSerialNum |= *(p+2);
            if(0 == *(p+3))//��,Ӧ��
            {
                if((0 == *(p+4))&&(28 == *(p+5)))//����������Ϣ
                {
                    memcpy(GyroInfo,p+8,24);//p+6:Ӧ�����,�˴�ֵӦΪ26;p+7:������,һ��Ϊ0
                }
                else if((1 == *(p+4))&&(6 == *(p+5)))//����ת��Ƕ�
                {
                    GyroSharpTurnAngleAckFlag = *(p+7);
                
                    GyroReadSharpTurnAngle = 0;
                    GyroReadSharpTurnAngle |= *(p+8) << 8;//p+6:Ӧ�����,�˴�ֵӦΪ4;p+7:������,һ��Ϊ0
                    GyroReadSharpTurnAngle |= *(p+9);
                    
                    //������͸��ָ��ظ�ƽ̨
                    if((1 == GyroLastCmdChannel)&&(0 == *(p+7)))
                    {
                        GyroUploadTransFlag = GYRO_UPLOAD_CMD_READ_SHARP_TURN;
                        
                    }
                }
            }
            else if(1 == *(p+3))//д,Ӧ��
            {
                if((1 == *(p+4))&&(4 == *(p+5)))//��ת��Ƕ�
                {
                  //p+6:Ӧ�����;p+7:������
                    GyroSharpTurnAngleAckFlag = *(p+7);
                    //������͸��ָ��ظ�ƽ̨
                    if((1 == GyroLastCmdChannel)&&(0 == *(p+7)))
                    {
                        GyroUploadTransFlag = GYRO_UPLOAD_CMD_WRITE_SHARP_TURN;
                    }
                    
                }
            }
            break;
        }
    case GYRO_CMD_CALIBRATE://������У׼
        {
            GyroLastCmdChannel = *p;
            //GyroLastCmdChannel = 1;//����ʹ��
            GyroCmdSerialNum = 0;
            GyroCmdSerialNum |= *(p+1) << 8;
            GyroCmdSerialNum |= *(p+2);
            GyroCalibrationAckFlag = *(p+3)+1;//GyroCalibrationAckFlag:0����Ӧ��,1�ǳɹ�,2��ʧ��,
            
            if(1 == GyroCalibrationAckFlag)
            {
              LcdClearArea(0,19,131,44);
              LcdShowCaption("������У׼�ɹ�", 24);
            }
            else
            {
              LcdClearArea(0,19,131,44);
              LcdShowCaption("������У׼ʧ��", 24);
            }
            
            
            
            //������͸��ָ��ظ�ƽ̨
            if((1 == GyroLastCmdChannel)&&(GyroCalibrationAckFlag < 3))
            {
                GyroUploadTransFlag = GYRO_UPLOAD_CMD_CALIBRATION;
                
                
            }
            break;
        }
    case GYRO_CMD_UPDATE://�����ǹ̼�����
        {
            GyroLastCmdChannel = *p;
            //GyroLastCmdChannel = 1;//����ʹ��
            GyroCmdSerialNum = 0;
            GyroCmdSerialNum |= *(p+1) << 8;
            GyroCmdSerialNum |= *(p+2);
            
            break;
        }
    default: break;
    }
}

/**************************************************************************
//��������Gyro_SendCmd(u16 cmd, u8 *pBuffer, u16 BufferLen)
//���ܣ����������������
//���룺��
//�������
//����ֵ���� 
//��ע��0��ʾ�ɹ�����0��ʾʧ�ܡ�����ʧ�ܺ���Gyro_TimeTask��ʱ�������ط�������ط�3��
//ע�ⲻҪ���жϷ������е��ô˽ӿ�
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
            return 1;//���ȳ���
        }
    
        length  = BufferLen + 4;
        TxBuffer[0] = 0xff;
        TxBuffer[1] = 0x55;
        TxBuffer[2] = 0xaa;
        TxBuffer[3] = (length&0xff00) >> 8;
        TxBuffer[4] = length&0xff;
        TxBuffer[5] = 0xF1;//�豸����
        TxBuffer[6] = 0x00;//���̱�ʾ
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
            return 2;//���ͻ�����
        }
    
    }
    else
    {
        return 3;//δʹ��������
    }
     
    HostCmdSerialNum++;
    
    return 0;
}
#endif








