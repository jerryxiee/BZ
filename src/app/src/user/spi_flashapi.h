#ifndef __SPI_FLASHAPI_H
#define __SPI_FLASHAPI_H

/************************文件包含***********************/
#include "stm32f2xx.h"
#include "stm32f2xx_lib.h"

//**************************宏定义************************
#define	FLASH_ONE_SECTOR_BYTES	4096//每个扇区4096字节

//*****************FLASH地址分配**********************
#define	FLASH_GB2312_16_START_SECTOR		0//16*16点阵的GB2312字库
#define FLASH_GB2312_16_END_SECTOR		66//256K byte+2K byte ASCII字符,
					//大于等于FLASH_GB2312_16_END_SECTOR时就认为是超出了区域范围,其它类似
#define	FLASH_UPDATE_START_SECTOR		67//程序升级固件存储区域,盲区存储区域,两个共用一块存储区域
#define FLASH_UPDATE_END_SECTOR			223//640K byte

#define	FLASH_BLIND_START_SECTOR		67//盲区
#define FLASH_BLIND_MIDDLE_SECTOR       327
#define FLASH_BLIND_END_SECTOR			587
#define FLASH_BLIND_STEP_LEN			150//dxl,2014.7.15原来100字节不够用，超出了
#define FLASH_BLIND_STEP_LEN_BBGN_TEST          40//dxl,2016.5.13部标功能检测时使用的长度,盲区只记录基本位置信息


#define FLASH_SPEED_START_SECTOR	        588//行驶速度记录
#define FLASH_SPEED_END_SECTOR			692//48h,每条144字节,每条1分钟

#define	FLASH_POSITION_START_SECTOR		693//位置信息记录
#define FLASH_POSITION_END_SECTOR		755//360h,每条681,每条1小时

///////////////////////还剩余100扇区未使用//////////////////////////

#define	FLASH_DOUBT_START_SECTOR		865//疑点数据记录
#define FLASH_DOUBT_END_SECTOR			875//32K byte

#define	FLASH_OVER_TIME_START_SECTOR		876//超时驾驶记录
#define FLASH_OVER_TIME_END_SECTOR		880//12K byte

#define	FLASH_DRIVER_START_SECTOR		881//驾驶人身份记录
#define FLASH_DRIVER_END_SECTOR			885//12K byte

#define	FLASH_POWER_START_SECTOR		886//供电记录
#define FLASH_POWER_END_SECTOR		        889//8K byte

#define	FLASH_PRAMATER_START_SECTOR		890//参数修改记录
#define FLASH_PRAMATER_END_SECTOR		893//8K byte

#define	FLASH_SPEED_STATUS_START_SECTOR		894//速度状态记录
#define FLASH_SPEED_STATUS_END_SECTOR		897//8K byte

#define	FLASH_STATUS_SET_SECTOR			898//4K byte,状态配置信息

#define	FLASH_RECTANGLE_AREA_START_SECTOR	899//矩形区域
#define FLASH_RECTANGLE_AREA_END_SECTOR		904//16K
#define	FLASH_RECTANGLE_AREA_START_ADDR		(FLASH_RECTANGLE_AREA_START_SECTOR*FLASH_ONE_SECTOR_BYTES)//矩形区域地址
#define FLASH_RECTANGLE_AREA_END_ADDR		(FLASH_RECTANGLE_AREA_END_SECTOR*FLASH_ONE_SECTOR_BYTES)//12K

#define	FLASH_ROUND_AREA_START_SECTOR		905//圆形区域
#define FLASH_ROUND_AREA_END_SECTOR		910//16K
#define	FLASH_ROUND_AREA_START_ADDR		(FLASH_ROUND_AREA_START_SECTOR*FLASH_ONE_SECTOR_BYTES)//圆形区域地址
#define FLASH_ROUND_AREA_END_ADDR		(FLASH_ROUND_AREA_END_SECTOR*FLASH_ONE_SECTOR_BYTES)//12K

#define	FLASH_POLYGON_AREA_START_SECTOR		911//多边形区域
#define FLASH_POLYGON_AREA_END_SECTOR		921//36K

#define	FLASH_ROUTE_START_SECTOR		922//路线
#define FLASH_ROUTE_END_SECTOR			951//112K byte

#define	FLASH_ATTEMPE_START_SECTOR		952//文本信息
#define FLASH_ATTEMPE_END_SECTOR		957//16K byte
#define	FLASH_TEXT_START_ADDR			(FLASH_ATTEMPE_START_SECTOR*FLASH_ONE_SECTOR_BYTES)//圆形区域地址
#define FLASH_TEXT_END_ADDR			(FLASH_ATTEMPE_END_SECTOR*FLASH_ONE_SECTOR_BYTES)//12K

#define	FLASH_MESSAGE_START_SECTOR		958//包含了信息点播,电话簿,事件报告,驾驶员信息,提问应答,信息服务
#define FLASH_MESSAGE_END_SECTOR		964//24K byte

#define FLASH_TIRED_DRIVE_INFO_START_SECTOR 	965//超时驾驶的驾驶员信息
#define FLASH_TIRED_DRIVE_INFO_END_SECTOR 	966

#define FLASH_CALL_RECORD_START_SECTOR 		967//通话记录
#define FLASH_CALL_RECORD_END_SECTOR 		968

#define FLASH_MUCK_DUMP_AREA_START_SECTOR 		969//渣土倾倒区域
#define FLASH_MUCK_DUMP_AREA_END_SECTOR 		970

#define FLASH_DRIVER_SIGN_INFO_START_SECTOR 		971//驾驶员签到签退上报信息
#define FLASH_DRIVER_SIGN_INFO_END_SECTOR 		    972//驾驶员签到签退上报信息
/////////////////////////////////////////////////
#define FLASH_BMA250_SAVE_START_SECTOR              973//BMA250数据保存开始地址
#define FLASH_BMA250_SAVE_END_SECTOR                973//BMA250数据保存结束地址
/////////////////////////////////////////////////
#define FLASH_GNSS_SAVE_START_SECTOR 		974//GNSS本地保存开始地址
#define FLASH_GNSS_SAVE_END_SECTOR 		    1020//GNSS本地保存结束地址

#define FLASH_POSTION_RECORD_START_SECTOR           1021//仅一个扇区，暂存位置信息记录内容
#define FLASH_POSTION_RECORD_END_SECTOR             1021
//****************截止扇区为1023，扇区号请不要超过该值**********************8


#endif
