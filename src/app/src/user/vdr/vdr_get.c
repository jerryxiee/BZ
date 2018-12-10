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


#define VDR_SPEED_START_SECTOR	     FLASH_SPEED_START_SECTOR//行驶速度记录
#define VDR_SPEED_END_SECTOR	     FLASH_SPEED_END_SECTOR//692//416K byte

#define	VDR_POSITION_START_SECTOR	 FLASH_POSITION_START_SECTOR//位置信息记录
#define VDR_POSITION_END_SECTOR		 FLASH_POSITION_END_SECTOR//512K byte

#define	VDR_DOUBT_START_SECTOR		 FLASH_DOUBT_START_SECTOR//疑点数据记录
#define VDR_DOUBT_END_SECTOR		 FLASH_DOUBT_END_SECTOR//32K byte

#define	VDR_OVER_START_SECTOR		 FLASH_OVER_TIME_START_SECTOR//超时驾驶记录
#define VDR_OVER_END_SECTOR		     FLASH_OVER_TIME_END_SECTOR//12K byte

#define	VDR_DRIVER_START_SECTOR		 FLASH_DRIVER_START_SECTOR//驾驶人身份记录
#define VDR_DRIVER_END_SECTOR		 FLASH_DRIVER_END_SECTOR//12K byte

#define	VDR_POWER_START_SECTOR		 FLASH_POWER_START_SECTOR//供电记录
#define VDR_POWER_END_SECTOR		 FLASH_POWER_END_SECTOR//8K byte

#define	VDR_VALUE_START_SECTOR		 FLASH_PRAMATER_START_SECTOR//参数修改记录
#define VDR_VALUE_END_SECTOR		 FLASH_PRAMATER_END_SECTOR//8K byte

#define	VDR_SPDLOG_START_SECTOR      FLASH_SPEED_STATUS_START_SECTOR//速度状态记录
#define VDR_SPDLOG_END_SECTOR	     FLASH_SPEED_STATUS_END_SECTOR//8K byte

#define	VDR_SPEED_STEP_LEN           REGISTER_SPEED_STEP_LEN //时间4+每分钟的行驶速度块126+预留13+校验1	
#define	VDR_POSITION_STEP_LEN        REGISTER_POSITION_STEP_LEN //时间4+每小时的位置记录块666+预留5+校验1
#define	VDR_DOUBT_STEP_LEN           REGISTER_DOUBT_STEP_LEN //时间4+疑点数据234+预留12+校验1
#define	VDR_OVER_STEP_LEN            REGISTER_OVER_TIME_STEP_LEN  //时间4+超时驾驶50+预留12+校验1
#define	VDR_DRIVER_STEP_LEN          REGISTER_DRIVER_STEP_LEN  //时间4+驾驶人身份25+预留6+校验1
#define	VDR_POWER_STEP_LEN           REGISTER_POWER_STEP_LEN  //时间4+外部供电7+预留6+校验1
#define	VDR_VALUE_STEP_LEN           REGISTER_PRAMATER_STEP_LEN  //时间4+参数修改7+预留6+校验1
#define	VDR_SPDLOG_STEP_LEN          REGISTER_SPEED_STATUS_STEP_LEN //时间4+速度状态133+预留6+校验1


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
const u16 VdrSecAddr[]=//扇区地址
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
const u16 VdrStepLen[]=//单步长度
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
const u16 VdrUpLen[]=//上传长度
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

const VDR_FUC_BASE Vdr_Fuc_Base[]=//采集基本信息
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
static u8  Vdr_PackBuf[VDR_PACKAGE_SIZE];//分包缓存

static u8  Vdr_LastMinSpeedBuf[VDR_SPEED_UP_LEN];//分包缓存

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
  * @brief  记录仪协议执行年号
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
  * @brief  驾驶员信息
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
  * @brief  实时时间
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
  * @brief  累计里程
  * @param  None
  * @retval None
  */
void Vdr_Get_Mileage(VDR_HEAD *pHead)
{
    u8 *pDst=pHead->pbuf;

    pHead->len = 20;
    memset(pHead->pbuf,0,pHead->len);

    Vdr_Fuc_Mem[VDR_MEM_RTC](VDR_MEM_READ,pDst);//实时时间
    pDst += 6;
    
    Vdr_Fuc_Mem[VDR_MEM_TIMEINIT](VDR_MEM_READ,pDst);//初次时间
    pDst += 6;
    
    Vdr_Fuc_Mem[VDR_MEM_MILEINIT](VDR_MEM_READ,pDst);//初始里程
    pDst += 4;

    Vdr_Fuc_Mem[VDR_MEM_MILEADD](VDR_MEM_READ,pDst);//累计里程
    pDst += 4;
}
/**
  * @brief  脉冲系数
  * @param  None
  * @retval None
  */
void Vdr_Get_Pulse(VDR_HEAD *pHead)
{
    u8 *pDst=pHead->pbuf;

    pHead->len = 8;
    
    memset(pHead->pbuf,0,pHead->len);
    
    Vdr_Fuc_Mem[VDR_MEM_RTC](VDR_MEM_READ,pDst);//当前时间
    pDst += 6;
    
    Vdr_Fuc_Mem[VDR_MEM_PULSE](VDR_MEM_READ,pDst);//脉冲系数
    pDst += 2;
}
/**
  * @brief  车辆信息
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
  * @brief  状态信号
  * @param  None
  * @retval None
  */
void Vdr_Get_StaSignal(VDR_HEAD *pHead)
{
    u8  *pDst=pHead->pbuf;

    pHead->len = 87;
    
    memset(pHead->pbuf,0,pHead->len);
    
    Vdr_Fuc_Mem[VDR_MEM_RTC](VDR_MEM_READ,pDst);      //当前时间
     pDst  += 6;

    *pDst++ = 1;                                      //状态个数

    Vdr_Fuc_Mem[VDR_MEM_STASIGNAL](VDR_MEM_READ,pDst);//状态信息
}
/**
  * @brief  唯一编号
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
  * @brief  根据命令地址获取基本信息
  * @param  None
  * @retval None
  */
void Vdr_Get_Base(u8 cmdnum,VDR_HEAD *pHead)
{
    if(cmdnum >= 8)
    {
        return ;
    }
    pHead->cmd = Vdr_Cmd_Base[cmdnum];//命令字
    Vdr_Fuc_Base[cmdnum](pHead);      //数据
}

/**
  * @brief  根据命令地址获取记录信息
  * @param  None
  * @retval None
  */
void Vdr_Get_Ser(u8 cmdnum,VDR_SERT time, VDR_HEAD *pHead)
{
    if(cmdnum >= 8)
    {
        return ;
    }
    pHead->cmd = Vdr_Cmd_Ser[cmdnum];                    //命令字
    /////////////////////
    if(time.cnt_end<time.cnt_start)//
    {
        pHead->len = 0;
        return;
    }
    /////////////////////
    if(pHead->cmd == 0x08)//速度记录特殊处理 add by joneming
    {
        pHead->len = SpeedMonitor_ReadSpeedRecordData(pHead->pbuf,time.t_start,time.t_end,time.maxblock);   
    }
    else
    if(pHead->cmd == 0x09)//位置记录处理
    {
        pHead->len = Position_ReadPositionRecordData(pHead->pbuf,time.t_start,time.t_end,time.maxblock);       
    }
    else
    if(pHead->cmd == 0x11)//超时驾驶特殊处理
    {
        pHead->len = TiredDrive_ReadTiredRecord(pHead->pbuf,time.t_start,time.t_end,time.maxblock);   
    }    
    else
    {
        pHead->len = Register_Read(cmdnum,              //检索数据
                                   pHead->pbuf,
                                   time.t_start,
                                   time.t_end,
                                   time.maxblock);
    }               
}


/**
  * @brief  获取数据包信息
  * @param  None
  * @retval None
  */
void Vdr_Get_PackageInf(VDR_PACKINF PackInf, VDR_PACKSER *pPackage)
{
    u8  cmdnum   = PackInf.cmdnum;//命令编号
    u8  *p_data  = Vdr_BufData;//记录仪公共缓存
     
    u32 addrstar = VdrSecAddr[cmdnum*2]*VDR_SECTOR_SIZE;//开始地址
    u32 addrend  = VdrSecAddr[cmdnum*2+1]*VDR_SECTOR_SIZE;//结束地址
    u16 steplen  = VdrStepLen[cmdnum];//单步长度
    u16 upnum    = VDR_PACKAGE_SIZE/VdrUpLen[cmdnum];
    u16 upcnt    = 0;

    u32 stepnum  = VDR_SECTOR_SIZE/steplen;//扇区单步整数 有效数据
    u16 steprem  = VDR_SECTOR_SIZE%steplen;//扇区单步余数 无效数据 用于跳过余数地址

    u32 forend   = (VdrSecAddr[cmdnum*2+1]-VdrSecAddr[cmdnum*2])*(VDR_SECTOR_SIZE/steplen);//扇区内的总步数
    u16 stepcnt  = 0;//单扇区内单步计数器用于判断余数

    u32 addr;
    u8 starflg;
    u8 checkflg;

    u32 steptime;//存储器中每个单步的32位时间
    u32 steptimelast;//上个时间
    u32 mintimeVal;//
    u32 tmpaddr;//
    u32 maxtimeVal;//
    u32 tmpaddr2;//
    u32 i;

    TIME_T startTime;
    TIME_T endTime;  
    //////////////////////
    memset((u8*)pPackage,0,sizeof(VDR_PACKSER));//清空结构体
    pPackage->cmd  = Vdr_Cmd_All[cmdnum];//命令
    pPackage->pbuf = Vdr_PackBuf;//缓存地址
    ////////////////////////////
    if(PackInf.timeend<PackInf.timestar)return;//结束时间比开始时间小
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
    stepcnt = VDR_SECTOR_SIZE-steplen-steprem;//同一扇区,最后一条记录的地址 
    /////////////
    if(0==stepcnt)//同一扇区，只有一条记录的情况
    {
        for(;;)//查找最老的扇区
        {
            sFLASH_ReadBuffer(p_data,addr,4);//读取数据
            steptime = Public_ConvertBufferToLong(p_data); 
            if(steptime != 0xffffffff)//当前扇区不为空
            {
                if(mintimeVal>steptime)//查找最老的扇区
                {
                    mintimeVal = steptime;
                    tmpaddr    = addr;
                }
                /////////////
                if(maxtimeVal<steptime)//查找最老的扇区
                {
                    maxtimeVal = steptime;
                    tmpaddr2    = addr;
                }
                /////////////////
                if(steptimelast== 0xffffffff)//上一扇区为空
                {
                    addr = tmpaddr;//已循环
                    break;
                }
            }
            else//当前扇区为空
            {
                if(steptimelast == 0xffffffff)//上一扇区为空
                {
                    addr=tmpaddr;//未循环
                    break;
                }
            }
            ///////
            steptimelast = steptime;
            addr += VDR_SECTOR_SIZE;
            if(addr>=addrend)
            {
                //全部存储已满,需要查找最老的扇区
                addr = tmpaddr;
                break;
            }
            IWDG_ReloadCounter();//喂狗
        }
    }
    else////同一扇区,多条记录的情况 
    {
        for(;;)//查找最老的扇区
        {
            sFLASH_ReadBuffer(p_data,addr,4);//读取数据
            steptime  = Public_ConvertBufferToLong(p_data);
            //////////////////////
            if(steptime != 0xffffffff)//查找最新的扇区
            {
                if(mintimeVal>steptime)//查找最老的扇区
                {
                    mintimeVal = steptime;
                    tmpaddr    = addr;
                }                
                //////////////////
                if(maxtimeVal<steptime)//查找最新的扇区
                {
                    maxtimeVal = steptime;
                    tmpaddr2    = addr;
                }
            }
            ////////////////////
            if(steptime == 0xffffffff && steptimelast != 0xffffffff)//上一扇区不为空,当前扇区为空
            {
                sFLASH_ReadBuffer(p_data,addr+stepcnt,4);//读取数据
                steptimelast  = Public_ConvertBufferToLong(p_data);
                if(steptimelast != 0xffffffff)//非空
                {
                    return;//扇区存储非法
                }
                ///////////////
                addr += VDR_SECTOR_SIZE;
                if(addr >= addrend)
                {
                    addr = addrstar;//未循环存储
                }
                else//判断下一扇区
                {
                    sFLASH_ReadBuffer(p_data,addr,4);//读取数据
                    steptimelast  = Public_ConvertBufferToLong(p_data);
                    if(steptimelast == 0xffffffff)//为空
                    {
                        addr = addrstar;//未循环存储
                    }
                    else//不为空,则下一扇区为最老的扇区
                    {
                        //已经循环存储,当前地址为最老的扇区
                    }
                }
                break;
            }
            sFLASH_ReadBuffer(p_data,addr+stepcnt,4);//读取数据
            steptimelast  = Public_ConvertBufferToLong(p_data);
            ////////////////
            if(steptime != 0xffffffff && steptimelast == 0xffffffff)//当前扇区为最新扇区
            {
                addr += VDR_SECTOR_SIZE;
                if(addr >= addrend)
                {
                    addr = addrstar;//未循环存储
                }
                else//判断下一扇区
                {
                    sFLASH_ReadBuffer(p_data,addr,4);//读取数据
                    steptimelast  = Public_ConvertBufferToLong(p_data);
                    if(steptimelast == 0xffffffff)//为空
                    {
                        addr = addrstar;//未循环存储
                    }
                    else//不为空,则下一扇区为最老的扇区
                    {
                        //已经循环存储,当前地址为最老的扇区
                    }
                }
                break;
            }
            ////////////            
            addr += VDR_SECTOR_SIZE;
            if(addr>=addrend)
            {
                //全部存储已满,需要查找最老的扇区
                addr = tmpaddr;
                break;
            }
            IWDG_ReloadCounter();//喂狗
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
    for(i = 0;i < stepnum; i++)//查找最新的记录时间
    {
        sFLASH_ReadBuffer(p_data,tmpaddr2,steplen);//读取数据
        steptime = Public_ConvertBufferToLong(p_data);//读取单步时间
        ///////////////////
        if(steptime != 0xffffffff)//有效数据
        {
            if(maxtimeVal < steptime)//查找最新的扇区
            {
                maxtimeVal = steptime;
            }
        }
        else
        {
            break;
        }
        ////////////////
        tmpaddr2 += steplen;//指向下一个数据
        IWDG_ReloadCounter();//喂狗
    }
    ////////////////
    i = 0;////如果flash没有记录,则maxtimeVal=0,也符合下面条件;
    if(PackInf.timestar>maxtimeVal)//如果查找的开始时间比flash中记录的最新时间还要大,则flash中记录中不存在需要查找的内容
    {
        i = forend;//flash中记录中不存在需要查找的内容,则跳过
    }
    /////////////////    
    for(; i<forend; i++)//从最老的扇区开始,遍历所有单步数据
    {
        sFLASH_ReadBuffer(p_data,addr,steplen);//读取数据
        steptime = Public_ConvertBufferToLong(p_data);//读取单步时间        
        ///////////////////
        if(steptime != 0xffffffff)//有效数据
        {
            if(steptime > PackInf.timeend)//如果flash存在的记录大于查找的记录,则不需要判断铁电
            {
                checkflg= 0;
                if(upcnt)
                {
                    pPackage->all++;
                }                
                break;//找到结束地址退出循环
            }
        }
        else//结束
        {
            checkflg = 1;
            break;//找到结束地址退出循环
        }
        ////////////////////////////////////////////////////////////////////////
        if(steptime >= PackInf.timestar)//从最老的开始
        {
            if(starflg == 0)
            {
                starflg = 1;
                pPackage->addrstar = addr;//开始地址
                pPackage->addrend  = addr;//结束地址 
                pPackage->stepcnt  = stepcnt;//add by joneming
            }
            else
            {
                pPackage->addrend = addr;//结束地址      
            }            
            if(++upcnt >= upnum)//检索
            {
                upcnt = 0;
                pPackage->all++;
            }               
        }
        ////////////////////////////////////////////////////////////////////////
        addr += steplen;//指向下一个数据
        if((++stepcnt) >= stepnum)
        {
            stepcnt = 0;
            addr += steprem;//跳过余数无效数据
        }
        if(addr >= addrend)
        {
            addr = addrstar;//扇区结束调头重新来
            pPackage->cyc = 1;//循环
        }
        IWDG_ReloadCounter();//喂狗
    }
    
    /////////////////////
    if(checkflg)//速度记录,判断铁电记录情况
    {
        if(8==cmdnum)
        {
            if(PackInf.timeend+60>RTC_GetCounter())//是否需要读铁电里的
            {
                u16 tmplen;
                Gmtime(&startTime,PackInf.timestar);//转换时间
                Gmtime(&endTime,PackInf.timeend);//转换时间
                tmplen=SpeedMonitor_ReadSpeedRecordDataFromFram(Vdr_LastMinSpeedBuf,startTime,endTime);
                if(tmplen)
                {
                    pPackage->readfram = 1;
                    pPackage->timestar = PackInf.timestar;
                    pPackage->timeend  = PackInf.timeend;
                    upcnt ++;
                    if(upcnt > upnum)//检索
                    {
                        pPackage->readfram = 2;
                        pPackage->all++;
                    }
                } 
            }
        }
        else
        if(9==cmdnum)//位置记录,判断铁电记录情况
        {
            if(PackInf.timeend+3600>RTC_GetCounter())//是否需要读铁电里的
            {
                u16 tmplen;
                Gmtime(&startTime,PackInf.timestar);//转换时间
                Gmtime(&endTime,PackInf.timeend);//转换时间
                tmplen=Position_ReadCurPositionRecordData(p_data,startTime,endTime);
                if(tmplen)
                {
                    pPackage->readfram = 1;
                    pPackage->timestar = RTC_GetCounter();
                    pPackage->timestar = pPackage->timestar -(pPackage->timestar%3600);
                    pPackage->timeend  = pPackage->timestar+3600-1;
                    upcnt ++;
                    if(upcnt > upnum)//检索
                    {
                        pPackage->readfram = 2;
                        pPackage->all++;
                    }
                }
            }
        }
        else
        if(11==cmdnum)//超时驾驶,判断铁电记录情况
        {
            u16 tmplen;
            Gmtime(&startTime,PackInf.timestar);//转换时间
            Gmtime(&endTime,PackInf.timeend);//转换时间
            tmplen=TiredDrive_ReadTiredDriveFromFramEx(p_data,startTime,endTime);
            if(tmplen)
            {
                pPackage->readfram = 1;
                pPackage->timestar = PackInf.timestar;
                pPackage->timeend  = PackInf.timeend;
                tmplen = tmplen/VDR_OVER_UP_LEN;
                upcnt +=tmplen;
                if(upcnt > upnum)//检索
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
            pPackage->addrend = pPackage->addrstar;//FLASH中只有一条
            if(0==pPackage->addrstar)//只有铁电存在
                pPackage->addrstar++;
        }
    }
}
/**
  * @brief  数据包检索
  * @param  None
  * @retval None
  */
void Vdr_Get_PackageSer(VDR_PACKSER *pPackage)
{
    u8  cmdnum   = Vdr_Cmd_To(pPackage->cmd);//命令编号
    u8  *p_send  = pPackage->pbuf;
    
    u32 addrstar = VdrSecAddr[cmdnum*2]*VDR_SECTOR_SIZE;//开始地址
    u32 addrend  = VdrSecAddr[cmdnum*2+1]*VDR_SECTOR_SIZE;//结束地址
    u16 steplen  = VdrStepLen[cmdnum];//单步长度
    u16 upnum    = VDR_PACKAGE_SIZE/VdrUpLen[cmdnum];
    u16 upcnt    = 0;

    u32 stepnum  = VDR_SECTOR_SIZE/steplen;//扇区单步整数 有效数据
    u16 steprem  = VDR_SECTOR_SIZE%steplen;//扇区单步余数 无效数据 用于跳过余数地址

    u32 addr     = pPackage->addrstar;  

    u8  buf[VDR_STEP_SIZE];

    TIME_T startTime,endTime;

    if(pPackage->all == 0)
    {
        return ;//无封包数据
    }
    
    memset(p_send,0xff,VdrUpLen[cmdnum]*upnum);//填充缓存
    pPackage->len   = 0;
    
    for(;;)//遍历所有单步数据
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
                            Gmtime(&startTime,pPackage->timestar);//转换时间
                            Gmtime(&endTime,pPackage->timeend);//转换时间
                            len = Position_ReadCurPositionRecordData(p_send,startTime,endTime);
                        }
                        /////////////////////
                        pPackage->len +=len;
                    }
                    else
                    if(11==cmdnum)//
                    {
                        Gmtime(&startTime,pPackage->timestar);//转换时间
                        Gmtime(&endTime,pPackage->timeend);//转换时间
                        pPackage->len +=TiredDrive_ReadTiredDriveFromFramEx(p_send,startTime,endTime);
                    }
                }
                ///////////
                if((pPackage->cnt < pPackage->all)||(upcnt))
                {
                    pPackage->cnt++;
                }
                break;//退出
            }
        }
        sFLASH_ReadBuffer(buf,addr,steplen);//读取数据 
        ////////////////////////////////////////////////////////////////////////
        addr += steplen;//指向下一个数据
        if((++pPackage->stepcnt) >= stepnum)
        {
            pPackage->stepcnt = 0;
            addr += steprem;//跳过余数无效数据
        }
        if(addr >= addrend)
        {
            addr = addrstar;//扇区结束调头重新来
        }
        pPackage->addrstar = addr;        
        ////////////////////////////////////////////////////////////////////////
        pPackage->len += VdrUpLen[cmdnum];//长度累加            
        memcpy(p_send,buf+4,VdrUpLen[cmdnum]);          
        if(++upcnt >= upnum)//检索
        {
            upcnt = 0;
            pPackage->cnt++;//组包完毕
            break;
        }
        p_send += VdrUpLen[cmdnum];//转向下一步   
        IWDG_ReloadCounter();//喂狗
    }
    if((pPackage->cyc)&&(pPackage->addrstar < pPackage->addrend))
    {
        pPackage->cyc = 0;
    }
}

/******************************************************************************
**                            End Of File
******************************************************************************/

