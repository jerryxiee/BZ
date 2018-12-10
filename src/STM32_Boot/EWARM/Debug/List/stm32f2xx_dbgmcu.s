///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.10.2.52244/W32 for ARM    04/Dec/2013  10:58:08 /
// Copyright 1999-2010 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\STM32F2xx_StdPeriph_Driver\src\stm32f /
//                    2xx_dbgmcu.c                                            /
//    Command line =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\STM32F2xx_StdPeriph_Driver\src\stm32f /
//                    2xx_dbgmcu.c -D STM32F10X_CL -D USE_STDPERIPH_DRIVER    /
//                    -lcN D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701- /
//                    1\¸Ä½øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_13 /
//                    0815_IAR6.1\STM32_Boot\EWARM\Debug\List\ -lb            /
//                    D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\EWARM\Debug\List\ -o                  /
//                    D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\EWARM\Debug\Obj\ --no_cse             /
//                    --no_unroll --no_inline --no_code_motion --no_tbaa      /
//                    --no_clustering --no_scheduling --debug                 /
//                    --endian=little --cpu=Cortex-M3 -e                      /
//                    --warnings_are_errors --fpu=None --dlib_config          /
//                    E:\SoftwareInstall\arm\INC\c\DLib_Config_Normal.h -I    /
//                    D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\EWARM\..\inc\ -I                      /
//                    D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\EWARM\..\CMSIS\CM3\CoreSupport\ -I    /
//                    D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\EWARM\..\STM32F2xx_StdPeriph_Driver\i /
//                    nc\ -I D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS70 /
//                    1-1\¸Ä½øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_ /
//                    130815_IAR6.1\STM32_Boot\EWARM\..\CMSIS\CM3\DeviceSuppo /
//                    rt\ST\STM32F2xx\ -On --use_c++_inline                   /
//    List file    =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\EWARM\Debug\List\stm32f2xx_dbgmcu.s   /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f2xx_dbgmcu

        PUBLIC DBGMCU_APB1PeriphConfig
        PUBLIC DBGMCU_APB2PeriphConfig
        PUBLIC DBGMCU_Config
        PUBLIC DBGMCU_GetDEVID
        PUBLIC DBGMCU_GetREVID


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DBGMCU_GetREVID:
        LDR.N    R0,??DataTable4  ;; 0xe0042000
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DBGMCU_GetDEVID:
        LDR.N    R0,??DataTable4  ;; 0xe0042000
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+20
        LSRS     R0,R0,#+20
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DBGMCU_Config:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??DBGMCU_Config_0
        LDR.N    R2,??DataTable4_1  ;; 0xe0042004
        LDR      R2,[R2, #+0]
        ORRS     R2,R0,R2
        LDR.N    R3,??DataTable4_1  ;; 0xe0042004
        STR      R2,[R3, #+0]
        B.N      ??DBGMCU_Config_1
??DBGMCU_Config_0:
        LDR.N    R2,??DataTable4_1  ;; 0xe0042004
        LDR      R2,[R2, #+0]
        BICS     R2,R2,R0
        LDR.N    R3,??DataTable4_1  ;; 0xe0042004
        STR      R2,[R3, #+0]
??DBGMCU_Config_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DBGMCU_APB1PeriphConfig:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??DBGMCU_APB1PeriphConfig_0
        LDR.N    R2,??DataTable4_2  ;; 0xe0042008
        LDR      R2,[R2, #+0]
        ORRS     R2,R0,R2
        LDR.N    R3,??DataTable4_2  ;; 0xe0042008
        STR      R2,[R3, #+0]
        B.N      ??DBGMCU_APB1PeriphConfig_1
??DBGMCU_APB1PeriphConfig_0:
        LDR.N    R2,??DataTable4_2  ;; 0xe0042008
        LDR      R2,[R2, #+0]
        BICS     R2,R2,R0
        LDR.N    R3,??DataTable4_2  ;; 0xe0042008
        STR      R2,[R3, #+0]
??DBGMCU_APB1PeriphConfig_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DBGMCU_APB2PeriphConfig:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??DBGMCU_APB2PeriphConfig_0
        LDR.N    R2,??DataTable4_3  ;; 0xe004200c
        LDR      R2,[R2, #+0]
        ORRS     R2,R0,R2
        LDR.N    R3,??DataTable4_3  ;; 0xe004200c
        STR      R2,[R3, #+0]
        B.N      ??DBGMCU_APB2PeriphConfig_1
??DBGMCU_APB2PeriphConfig_0:
        LDR.N    R2,??DataTable4_3  ;; 0xe004200c
        LDR      R2,[R2, #+0]
        BICS     R2,R2,R0
        LDR.N    R3,??DataTable4_3  ;; 0xe004200c
        STR      R2,[R3, #+0]
??DBGMCU_APB2PeriphConfig_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4:
        DC32     0xe0042000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_1:
        DC32     0xe0042004

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_2:
        DC32     0xe0042008

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_3:
        DC32     0xe004200c

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)

        END
// 
// 124 bytes in section .text
// 
// 124 bytes of CODE memory
//
//Errors: none
//Warnings: none
