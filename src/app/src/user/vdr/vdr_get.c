/*
********************************************************************************
*
*
* Filename      : vdr_get.c
* Version       : V1.00
* Programmer(s) : miaoyahan
* Time          : 20140722
********************************************************************************
*/

/*
********************************************************************************
*                               INCLUDES
********************************************************************************
*/
#include "Vdr.h"
#include "spi_flashapi.h"
/*
********************************************************************************
*                             LOCAL DEFINES
********************************************************************************
*/


#define VDR_SPEED_START_SECTOR	     FLASH_SPEED_START_SECTOR//��ʻ�ٶȼ�¼
#define VDR_SPEED_END_SECTOR	     FLASH_SPEED_END_SECTOR//692//416K byte

#define	VDR_POSITION_START_SECTOR	 FLASH_POSITION_START_SECTOR//λ����Ϣ��¼
#define VDR_POSITION_END_SECTOR		 FLASH_POSITION_END_SECTOR//512K byte

#define	VDR_DOUBT_START_SECTOR		 FLASH_DOUBT_START_SECTOR//�ɵ����ݼ�¼
#define VDR_DOUBT_END_SECTOR		 FLASH_DOUBT_END_SECTOR//32K byte

#define	VDR_OVER_START_SECTOR		 FLASH_OVER_TIME_START_SECTOR//��ʱ��ʻ��¼
#define VDR_OVER_END_SECTOR		     FLASH_OVER_TIME_END_SECTOR//12K byte

#define	VDR_DRIVER_START_SECTOR		 FLASH_DRIVER_START_SECTOR//��ʻ����ݼ�¼
#define VDR_DRIVER_END_SECTOR		 FLASH_DRIVER_END_SECTOR//12K byte

#define	VDR_POWER_START_SECTOR		 FLASH_POWER_START_SECTOR//�����¼
#define VDR_POWER_END_SECTOR		 FLASH_POWER_END_SECTOR//8K byte

#define	VDR_VALUE_START_SECTOR		 FLASH_PRAMATER_START_SECTOR//�����޸ļ�¼
#define VDR_VALUE_END_SECTOR		 FLASH_PRAMATER_END_SECTOR//8K byte

#define	VDR_SPDLOG_START_SECTOR      FLASH_SPEED_STATUS_START_SECTOR//�ٶ�״̬��¼
#define VDR_SPDLOG_END_SECTOR	     FLASH_SPEED_STATUS_END_SECTOR//8K byte

#define	VDR_SPEED_STEP_LEN           REGISTER_SPEED_STEP_LEN //ʱ��4+ÿ���ӵ���ʻ�ٶȿ�126+Ԥ��13+У��1	
#define	VDR_POSITION_STEP_LEN        REGISTER_POSITION_STEP_LEN //ʱ��4+ÿСʱ��λ�ü�¼��666+Ԥ��5+У��1
#define	VDR_DOUBT_STEP_LEN           REGISTER_DOUBT_STEP_LEN //ʱ��4+�ɵ�����234+Ԥ��12+У��1
#define	VDR_OVER_STEP_LEN            REGISTER_OVER_TIME_STEP_LEN  //ʱ��4+��ʱ��ʻ50+Ԥ��12+У��1
#define	VDR_DRIVER_STEP_LEN          REGISTER_DRIVER_STEP_LEN  //ʱ��4+��ʻ�����25+Ԥ��6+У��1
#define	VDR_POWER_STEP_LEN           REGISTER_POWER_STEP_LEN  //ʱ��4+�ⲿ����7+Ԥ��6+У��1
#define	VDR_VALUE_STEP_LEN           REGISTER_PRAMATER_STEP_LEN  //ʱ��4+�����޸�7+Ԥ��6+У��1
#define	VDR_SPDLOG_STEP_LEN          REGISTER_SPEED_STATUS_STEP_LEN //ʱ��4+�ٶ�״̬133+Ԥ��6+У��1


#define	VDR_SPEED_UP_LEN             REGISTER_SPEED_COLLECT_LEN	 
#define	VDR_POSITION_UP_LEN          REGISTER_POSITION_COLLECT_LEN	 
#define	VDR_DOUBT_UP_LEN             REGISTER_DOUBT_COLLECT_LEN 
#define	VDR_OVER_UP_LEN              REGISTER_OVER_TIME_COLLECT_LEN  
#define	VDR_DRIVER_UP_LEN            REGISTER_DRIVER_COLLECT_LEN  
#define	VDR_POWER_UP_LEN             REGISTER_POWER_COLLECT_LEN 
#define	VDR_VALUE_UP_LEN             REGISTER_PRAMATER_COLLECT_LEN
#define	VDR_SPDLOG_UP_LEN            REGISTER_SPEED_STATUS_COLLECT_LEN


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
const u16 VdrSecAddr[]=//������ַ
{
0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,
VDR_SPEED_START_SECTOR,
VDR_SPEED_END_SECTOR,
VDR_POSITION_START_SECTOR,
VDR_POSITION_END_SECTOR,
VDR_DOUBT_START_SECTOR,
VDR_DOUBT_END_SECTOR,
VDR_OVER_START_SECTOR,
VDR_OVER_END_SECTOR,
VDR_DRIVER_START_SECTOR,
VDR_DRIVER_END_SECTOR,
VDR_POWER_START_SECTOR,
VDR_POWER_END_SECTOR,
VDR_VALUE_START_SECTOR,
VDR_VALUE_END_SECTOR,
VDR_SPDLOG_START_SECTOR,
VDR_SPDLOG_END_SECTOR,
};
const u16 VdrStepLen[]=//��������
{
0,0,0,0,0,0,0,0,
VDR_SPEED_STEP_LEN,
VDR_POSITION_STEP_LEN,
VDR_DOUBT_STEP_LEN,
VDR_OVER_STEP_LEN,
VDR_DRIVER_STEP_LEN,
VDR_POWER_STEP_LEN,
VDR_VALUE_STEP_LEN,
VDR_SPDLOG_STEP_LEN,
};
const u16 VdrUpLen[]=//�ϴ�����
{
0,0,0,0,0,0,0,0,
VDR_SPEED_UP_LEN, 
VDR_POSITION_UP_LEN, 
VDR_DOUBT_UP_LEN,
VDR_OVER_UP_LEN,
VDR_DRIVER_UP_LEN, 
VDR_POWER_UP_LEN,
VDR_VALUE_UP_LEN,
VDR_SPDLOG_UP_LEN,
};

const VDR_FUC_BASE Vdr_Fuc_Base[]=//�ɼ�������Ϣ
{
 Vdr_Get_GbtVer,
 Vdr_Get_DvrInfor,
 Vdr_Get_Rtc,
 Vdr_Get_Mileage,
 Vdr_Get_Pulse,
 Vdr_Get_CarInfor,
 Vdr_Get_StaSignal,
 Vdr_Get_OnlyNum,
};

/*
********************************************************************************
*                          LOCAL VARIABLES
********************************************************************************
*/
static u8  Vdr_PackBuf[VDR_PACKAGE_SIZE];//�ְ�����

static u8  Vdr_LastMinSpeedBuf[VDR_SPEED_UP_LEN];//�ְ�����

/*
********************************************************************************
*                          GLOBAL VARIABLES
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

/**
  * @brief  ��¼��Э��ִ�����
  * @param  None
  * @retval None
  */
void Vdr_Get_GbtVer(VDR_HEAD *pHead)
{
    pHead->pbuf[0] = 0x12;
    pHead->pbuf[1] = 0x00;
    pHead->len     = 2;

}
/**
  * @brief  ��ʻԱ��Ϣ
  * @param  None
  * @retval None
  */
void Vdr_Get_DvrInfor(VDR_HEAD *pHead)
{
    pHead->len = 18;
    memset(pHead->pbuf,0,pHead->len);
    Vdr_Fuc_Mem[VDR_MEM_DVRINFOR](VDR_MEM_READ,pHead->pbuf);
}
/**
  * @brief  ʵʱʱ��
  * @param  None
  * @retval None
  */
void Vdr_Get_Rtc(VDR_HEAD *pHead)
{
    pHead->len = 6;
    memset(pHead->pbuf,0,pHead->len);
    Vdr_Fuc_Mem[VDR_MEM_RTC](VDR_MEM_READ,pHead->pbuf);
}
/**
  * @brief  �ۼ����
  * @param  None
  * @retval None
  */
void Vdr_Get_Mileage(VDR_HEAD *pHead)
{
    u8 *pDst=pHead->pbuf;

    pHead->len = 20;
    memset(pHead->pbuf,0,pHead->len);

    Vdr_Fuc_Mem[VDR_MEM_RTC](VDR_MEM_READ,pDst);//ʵʱʱ��
    pDst += 6;
    
    Vdr_Fuc_Mem[VDR_MEM_TIMEINIT](VDR_MEM_READ,pDst);//����ʱ��
    pDst += 6;
    
    Vdr_Fuc_Mem[VDR_MEM_MILEINIT](VDR_MEM_READ,pDst);//��ʼ���
    pDst += 4;

    Vdr_Fuc_Mem[VDR_MEM_MILEADD](VDR_MEM_READ,pDst);//�ۼ����
    pDst += 4;
}
/**
  * @brief  ����ϵ��
  * @param  None
  * @retval None
  */
void Vdr_Get_Pulse(VDR_HEAD *pHead)
{
    u8 *pDst=pHead->pbuf;

    pHead->len = 8;
    
    memset(pHead->pbuf,0,pHead->len);
    
    Vdr_Fuc_Mem[VDR_MEM_RTC](VDR_MEM_READ,pDst);//��ǰʱ��
    pDst += 6;
    
    Vdr_Fuc_Mem[VDR_MEM_PULSE](VDR_MEM_READ,pDst);//����ϵ��
    pDst += 2;
}
/**
  * @brief  ������Ϣ
  * @param  None
  * @retval None
  */
void Vdr_Get_CarInfor(VDR_HEAD *pHead)
{
    u8 *pDst=pHead->pbuf;
    
    pHead->len = 41;
    
    memset(pHead->pbuf,0,pHead->len);
    
    Vdr_Fuc_Mem[VDR_MEM_CARCODE](VDR_MEM_READ,pDst);  
    pDst += 17;

    Vdr_Fuc_Mem[VDR_MEM_CARPLATE](VDR_MEM_READ,pDst); 
    pDst += 12;    

    Vdr_Fuc_Mem[VDR_MEM_CARTYPE](VDR_MEM_READ,pDst); 
    pDst += 12;
}
/**
  * @brief  ״̬�ź�
  * @param  None
  * @retval None
  */
void Vdr_Get_StaSignal(VDR_HEAD *pHead)
{
    u8  *pDst=pHead->pbuf;

    pHead->len = 87;
    
    memset(pHead->pbuf,0,pHead->len);
    
    Vdr_Fuc_Mem[VDR_MEM_RTC](VDR_MEM_READ,pDst);      //��ǰʱ��
     pDst  += 6;

    *pDst++ = 1;                                      //״̬����

    Vdr_Fuc_Mem[VDR_MEM_STASIGNAL](VDR_MEM_READ,pDst);//״̬��Ϣ
}
/**
  * @brief  Ψһ���
  * @param  None
  * @retval None
  */
void Vdr_Get_OnlyNum(VDR_HEAD *pHead)
{
    u8  *pDst=pHead->pbuf;
    
    pHead->len = 35;
    
    memset(pHead->pbuf,0,pHead->len);
    
    Vdr_Fuc_Mem[VDR_MEM_ONLY](VDR_MEM_READ,pDst);
}
/**
  * @brief  ���������ַ��ȡ������Ϣ
  * @param  None
  * @retval None
  */
void Vdr_Get_Base(u8 cmdnum,VDR_HEAD *pHead)
{
    if(cmdnum >= 8)
    {
        return ;
    }
    pHead->cmd = Vdr_Cmd_Base[cmdnum];//������
    Vdr_Fuc_Base[cmdnum](pHead);      //����
}

/**
  * @brief  ���������ַ��ȡ��¼��Ϣ
  * @param  None
  * @retval None
  */
void Vdr_Get_Ser(u8 cmdnum,VDR_SERT time, VDR_HEAD *pHead)
{
    if(cmdnum >= 8)
    {
        return ;
    }
    pHead->cmd = Vdr_Cmd_Ser[cmdnum];                    //������
    /////////////////////
    if(time.cnt_end<time.cnt_start)//
    {
        pHead->len = 0;
        return;
    }
    /////////////////////
    if(pHead->cmd == 0x08)//�ٶȼ�¼���⴦�� add by joneming
    {
        pHead->len = SpeedMonitor_ReadSpeedRecordData(pHead->pbuf,time.t_start,time.t_end,time.maxblock);   
    }
    else
    if(pHead->cmd == 0x09)//λ�ü�¼����
    {
        pHead->len = Position_ReadPositionRecordData(pHead->pbuf,time.t_start,time.t_end,time.maxblock);       
    }
    else
    if(pHead->cmd == 0x11)//��ʱ��ʻ���⴦��
    {
        pHead->len = TiredDrive_ReadTiredRecord(pHead->pbuf,time.t_start,time.t_end,time.maxblock);   
    }    
    else
    {
        pHead->len = Register_Read(cmdnum,              //��������
                                   pHead->pbuf,
                                   time.t_start,
                                   time.t_end,
                                   time.maxblock);
    }               
}


/**
  * @brief  ��ȡ���ݰ���Ϣ
  * @param  None
  * @retval None
  */
void Vdr_Get_PackageInf(VDR_PACKINF PackInf, VDR_PACKSER *pPackage)
{
    u8  cmdnum   = PackInf.cmdnum;//������
    u8  *p_data  = Vdr_BufData;//��¼�ǹ�������
     
    u32 addrstar = VdrSecAddr[cmdnum*2]*VDR_SECTOR_SIZE;//��ʼ��ַ
    u32 addrend  = VdrSecAddr[cmdnum*2+1]*VDR_SECTOR_SIZE;//������ַ
    u16 steplen  = VdrStepLen[cmdnum];//��������
    u16 upnum    = VDR_PACKAGE_SIZE/VdrUpLen[cmdnum];
    u16 upcnt    = 0;

    u32 stepnum  = VDR_SECTOR_SIZE/steplen;//������������ ��Ч����
    u16 steprem  = VDR_SECTOR_SIZE%steplen;//������������ ��Ч���� ��������������ַ

    u32 forend   = (VdrSecAddr[cmdnum*2+1]-VdrSecAddr[cmdnum*2])*(VDR_SECTOR_SIZE/steplen);//�����ڵ��ܲ���
    u16 stepcnt  = 0;//�������ڵ��������������ж�����

    u32 addr;
    u8 starflg;
    u8 checkflg;

    u32 steptime;//�洢����ÿ��������32λʱ��
    u32 steptimelast;//�ϸ�ʱ��
    u32 mintimeVal;//
    u32 tmpaddr;//
    u32 maxtimeVal;//
    u32 tmpaddr2;//
    u32 i;

    TIME_T startTime;
    TIME_T endTime;  
    //////////////////////
    memset((u8*)pPackage,0,sizeof(VDR_PACKSER));//��սṹ��
    pPackage->cmd  = Vdr_Cmd_All[cmdnum];//����
    pPackage->pbuf = Vdr_PackBuf;//�����ַ
    ////////////////////////////
    if(PackInf.timeend<PackInf.timestar)return;//����ʱ��ȿ�ʼʱ��С
    ///////////////////////////////
    steptime     = 0;
    steptimelast = 0;
    addr         = addrstar;
    ////////////////
    mintimeVal = 0xffffffff;
    tmpaddr    = addrstar;
    maxtimeVal = 0;
    tmpaddr2   = addrstar;
    /////////////////
    stepcnt = VDR_SECTOR_SIZE-steplen-steprem;//ͬһ����,���һ����¼�ĵ�ַ 
    /////////////
    if(0==stepcnt)//ͬһ������ֻ��һ����¼�����
    {
        for(;;)//�������ϵ�����
        {
            sFLASH_ReadBuffer(p_data,addr,4);//��ȡ����
            steptime = Public_ConvertBufferToLong(p_data); 
            if(steptime != 0xffffffff)//��ǰ������Ϊ��
            {
                if(mintimeVal>steptime)//�������ϵ�����
                {
                    mintimeVal = steptime;
                    tmpaddr    = addr;
                }
                /////////////
                if(maxtimeVal<steptime)//�������ϵ�����
                {
                    maxtimeVal = steptime;
                    tmpaddr2    = addr;
                }
                /////////////////
                if(steptimelast== 0xffffffff)//��һ����Ϊ��
                {
                    addr = tmpaddr;//��ѭ��
                    break;
                }
            }
            else//��ǰ����Ϊ��
            {
                if(steptimelast == 0xffffffff)//��һ����Ϊ��
                {
                    addr=tmpaddr;//δѭ��
                    break;
                }
            }
            ///////
            steptimelast = steptime;
            addr += VDR_SECTOR_SIZE;
            if(addr>=addrend)
            {
                //ȫ���洢����,��Ҫ�������ϵ�����
                addr = tmpaddr;
                break;
            }
            IWDG_ReloadCounter();//ι��
        }
    }
    else////ͬһ����,������¼����� 
    {
        for(;;)//�������ϵ�����
        {
            sFLASH_ReadBuffer(p_data,addr,4);//��ȡ����
            steptime  = Public_ConvertBufferToLong(p_data);
            //////////////////////
            if(steptime != 0xffffffff)//�������µ�����
            {
                if(mintimeVal>steptime)//�������ϵ�����
                {
                    mintimeVal = steptime;
                    tmpaddr    = addr;
                }                
                //////////////////
                if(maxtimeVal<steptime)//�������µ�����
                {
                    maxtimeVal = steptime;
                    tmpaddr2    = addr;
                }
            }
            ////////////////////
            if(steptime == 0xffffffff && steptimelast != 0xffffffff)//��һ������Ϊ��,��ǰ����Ϊ��
            {
                sFLASH_ReadBuffer(p_data,addr+stepcnt,4);//��ȡ����
                steptimelast  = Public_ConvertBufferToLong(p_data);
                if(steptimelast != 0xffffffff)//�ǿ�
                {
                    return;//�����洢�Ƿ�
                }
                ///////////////
                addr += VDR_SECTOR_SIZE;
                if(addr >= addrend)
                {
                    addr = addrstar;//δѭ���洢
                }
                else//�ж���һ����
                {
                    sFLASH_ReadBuffer(p_data,addr,4);//��ȡ����
                    steptimelast  = Public_ConvertBufferToLong(p_data);
                    if(steptimelast == 0xffffffff)//Ϊ��
                    {
                        addr = addrstar;//δѭ���洢
                    }
                    else//��Ϊ��,����һ����Ϊ���ϵ�����
                    {
                        //�Ѿ�ѭ���洢,��ǰ��ַΪ���ϵ�����
                    }
                }
                break;
            }
            sFLASH_ReadBuffer(p_data,addr+stepcnt,4);//��ȡ����
            steptimelast  = Public_ConvertBufferToLong(p_data);
            ////////////////
            if(steptime != 0xffffffff && steptimelast == 0xffffffff)//��ǰ����Ϊ��������
            {
                addr += VDR_SECTOR_SIZE;
                if(addr >= addrend)
                {
                    addr = addrstar;//δѭ���洢
                }
                else//�ж���һ����
                {
                    sFLASH_ReadBuffer(p_data,addr,4);//��ȡ����
                    steptimelast  = Public_ConvertBufferToLong(p_data);
                    if(steptimelast == 0xffffffff)//Ϊ��
                    {
                        addr = addrstar;//δѭ���洢
                    }
                    else//��Ϊ��,����һ����Ϊ���ϵ�����
                    {
                        //�Ѿ�ѭ���洢,��ǰ��ַΪ���ϵ�����
                    }
                }
                break;
            }
            ////////////            
            addr += VDR_SECTOR_SIZE;
            if(addr>=addrend)
            {
                //ȫ���洢����,��Ҫ�������ϵ�����
                addr = tmpaddr;
                break;
            }
            IWDG_ReloadCounter();//ι��
        }
    }    
    //////////////////////
    upcnt   = 0;
    starflg = 0;
    stepcnt = 0;
    steptime= 0;
    checkflg= 1;
    steptimelast = 0;
    maxtimeVal   = 0;//
    //////////////
    for(i = 0;i < stepnum; i++)//�������µļ�¼ʱ��
    {
        sFLASH_ReadBuffer(p_data,tmpaddr2,steplen);//��ȡ����
        steptime = Public_ConvertBufferToLong(p_data);//��ȡ����ʱ��
        ///////////////////
        if(steptime != 0xffffffff)//��Ч����
        {
            if(maxtimeVal < steptime)//�������µ�����
            {
                maxtimeVal = steptime;
            }
        }
        else
        {
            break;
        }
        ////////////////
        tmpaddr2 += steplen;//ָ����һ������
        IWDG_ReloadCounter();//ι��
    }
    ////////////////
    i = 0;////���flashû�м�¼,��maxtimeVal=0,Ҳ������������;
    if(PackInf.timestar>maxtimeVal)//������ҵĿ�ʼʱ���flash�м�¼������ʱ�仹Ҫ��,��flash�м�¼�в�������Ҫ���ҵ�����
    {
        i = forend;//flash�м�¼�в�������Ҫ���ҵ�����,������
    }
    /////////////////    
    for(; i<forend; i++)//�����ϵ�������ʼ,�������е�������
    {
        sFLASH_ReadBuffer(p_data,addr,steplen);//��ȡ����
        steptime = Public_ConvertBufferToLong(p_data);//��ȡ����ʱ��        
        ///////////////////
        if(steptime != 0xffffffff)//��Ч����
        {
            if(steptime > PackInf.timeend)//���flash���ڵļ�¼���ڲ��ҵļ�¼,����Ҫ�ж�����
            {
                checkflg= 0;
                if(upcnt)
                {
                    pPackage->all++;
                }                
                break;//�ҵ�������ַ�˳�ѭ��
            }
        }
        else//����
        {
            checkflg = 1;
            break;//�ҵ�������ַ�˳�ѭ��
        }
        ////////////////////////////////////////////////////////////////////////
        if(steptime >= PackInf.timestar)//�����ϵĿ�ʼ
        {
            if(starflg == 0)
            {
                starflg = 1;
                pPackage->addrstar = addr;//��ʼ��ַ
                pPackage->addrend  = addr;//������ַ 
                pPackage->stepcnt  = stepcnt;//add by joneming
            }
            else
            {
                pPackage->addrend = addr;//������ַ      
            }            
            if(++upcnt >= upnum)//����
            {
                upcnt = 0;
                pPackage->all++;
            }               
        }
        ////////////////////////////////////////////////////////////////////////
        addr += steplen;//ָ����һ������
        if((++stepcnt) >= stepnum)
        {
            stepcnt = 0;
            addr += steprem;//����������Ч����
        }
        if(addr >= addrend)
        {
            addr = addrstar;//����������ͷ������
            pPackage->cyc = 1;//ѭ��
        }
        IWDG_ReloadCounter();//ι��
    }
    
    /////////////////////
    if(checkflg)//�ٶȼ�¼,�ж������¼���
    {
        if(8==cmdnum)
        {
            if(PackInf.timeend+60>RTC_GetCounter())//�Ƿ���Ҫ���������
            {
                u16 tmplen;
                Gmtime(&startTime,PackInf.timestar);//ת��ʱ��
                Gmtime(&endTime,PackInf.timeend);//ת��ʱ��
                tmplen=SpeedMonitor_ReadSpeedRecordDataFromFram(Vdr_LastMinSpeedBuf,startTime,endTime);
                if(tmplen)
                {
                    pPackage->readfram = 1;
                    pPackage->timestar = PackInf.timestar;
                    pPackage->timeend  = PackInf.timeend;
                    upcnt ++;
                    if(upcnt > upnum)//����
                    {
                        pPackage->readfram = 2;
                        pPackage->all++;
                    }
                } 
            }
        }
        else
        if(9==cmdnum)//λ�ü�¼,�ж������¼���
        {
            if(PackInf.timeend+3600>RTC_GetCounter())//�Ƿ���Ҫ���������
            {
                u16 tmplen;
                Gmtime(&startTime,PackInf.timestar);//ת��ʱ��
                Gmtime(&endTime,PackInf.timeend);//ת��ʱ��
                tmplen=Position_ReadCurPositionRecordData(p_data,startTime,endTime);
                if(tmplen)
                {
                    pPackage->readfram = 1;
                    pPackage->timestar = RTC_GetCounter();
                    pPackage->timestar = pPackage->timestar -(pPackage->timestar%3600);
                    pPackage->timeend  = pPackage->timestar+3600-1;
                    upcnt ++;
                    if(upcnt > upnum)//����
                    {
                        pPackage->readfram = 2;
                        pPackage->all++;
                    }
                }
            }
        }
        else
        if(11==cmdnum)//��ʱ��ʻ,�ж������¼���
        {
            u16 tmplen;
            Gmtime(&startTime,PackInf.timestar);//ת��ʱ��
            Gmtime(&endTime,PackInf.timeend);//ת��ʱ��
            tmplen=TiredDrive_ReadTiredDriveFromFramEx(p_data,startTime,endTime);
            if(tmplen)
            {
                pPackage->readfram = 1;
                pPackage->timestar = PackInf.timestar;
                pPackage->timeend  = PackInf.timeend;
                tmplen = tmplen/VDR_OVER_UP_LEN;
                upcnt +=tmplen;
                if(upcnt > upnum)//����
                {
                    pPackage->readfram = 2;
                    pPackage->all++;
                }
            }                    
        }
        if(upcnt)
        {
            pPackage->all++;
        }
        if(pPackage->addrend == 0)
        {
            pPackage->addrend = pPackage->addrstar;//FLASH��ֻ��һ��
            if(0==pPackage->addrstar)//ֻ���������
                pPackage->addrstar++;
        }
    }
}
/**
  * @brief  ���ݰ�����
  * @param  None
  * @retval None
  */
void Vdr_Get_PackageSer(VDR_PACKSER *pPackage)
{
    u8  cmdnum   = Vdr_Cmd_To(pPackage->cmd);//������
    u8  *p_send  = pPackage->pbuf;
    
    u32 addrstar = VdrSecAddr[cmdnum*2]*VDR_SECTOR_SIZE;//��ʼ��ַ
    u32 addrend  = VdrSecAddr[cmdnum*2+1]*VDR_SECTOR_SIZE;//������ַ
    u16 steplen  = VdrStepLen[cmdnum];//��������
    u16 upnum    = VDR_PACKAGE_SIZE/VdrUpLen[cmdnum];
    u16 upcnt    = 0;

    u32 stepnum  = VDR_SECTOR_SIZE/steplen;//������������ ��Ч����
    u16 steprem  = VDR_SECTOR_SIZE%steplen;//������������ ��Ч���� ��������������ַ

    u32 addr     = pPackage->addrstar;  

    u8  buf[VDR_STEP_SIZE];

    TIME_T startTime,endTime;

    if(pPackage->all == 0)
    {
        return ;//�޷������
    }
    
    memset(p_send,0xff,VdrUpLen[cmdnum]*upnum);//��仺��
    pPackage->len   = 0;
    
    for(;;)//�������е�������
    {  
        if(pPackage->addrstar > pPackage->addrend)
        {
            if(pPackage->cyc == 0)
            {
                if((2==pPackage->readfram&&0==upcnt)||(1==pPackage->readfram))
                {
                    if(8==cmdnum)//
                    {
                        memcpy(p_send,Vdr_LastMinSpeedBuf,VDR_SPEED_UP_LEN);
                        pPackage->len += VDR_SPEED_UP_LEN;
                    }
                    else
                    if(9==cmdnum)//
                    {
                        unsigned short len;
                        len=Position_ReadBackPositionRecordData(p_send,pPackage->timestar);
                        if(0==len)
                        {
                            Gmtime(&startTime,pPackage->timestar);//ת��ʱ��
                            Gmtime(&endTime,pPackage->timeend);//ת��ʱ��
                            len = Position_ReadCurPositionRecordData(p_send,startTime,endTime);
                        }
                        /////////////////////
                        pPackage->len +=len;
                    }
                    else
                    if(11==cmdnum)//
                    {
                        Gmtime(&startTime,pPackage->timestar);//ת��ʱ��
                        Gmtime(&endTime,pPackage->timeend);//ת��ʱ��
                        pPackage->len +=TiredDrive_ReadTiredDriveFromFramEx(p_send,startTime,endTime);
                    }
                }
                ///////////
                if((pPackage->cnt < pPackage->all)||(upcnt))
                {
                    pPackage->cnt++;
                }
                break;//�˳�
            }
        }
        sFLASH_ReadBuffer(buf,addr,steplen);//��ȡ���� 
        ////////////////////////////////////////////////////////////////////////
        addr += steplen;//ָ����һ������
        if((++pPackage->stepcnt) >= stepnum)
        {
            pPackage->stepcnt = 0;
            addr += steprem;//����������Ч����
        }
        if(addr >= addrend)
        {
            addr = addrstar;//����������ͷ������
        }
        pPackage->addrstar = addr;        
        ////////////////////////////////////////////////////////////////////////
        pPackage->len += VdrUpLen[cmdnum];//�����ۼ�            
        memcpy(p_send,buf+4,VdrUpLen[cmdnum]);          
        if(++upcnt >= upnum)//����
        {
            upcnt = 0;
            pPackage->cnt++;//������
            break;
        }
        p_send += VdrUpLen[cmdnum];//ת����һ��   
        IWDG_ReloadCounter();//ι��
    }
    if((pPackage->cyc)&&(pPackage->addrstar < pPackage->addrend))
    {
        pPackage->cyc = 0;
    }
}

/******************************************************************************
**                            End Of File
******************************************************************************/

