///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.10.2.52244/W32 for ARM    04/Dec/2013  10:58:06 /
// Copyright 1999-2010 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\src\main.c                            /
//    Command line =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\src\main.c -D STM32F10X_CL -D         /
//                    USE_STDPERIPH_DRIVER -lcN D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú /
//                    \Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½øÐÍEGS701-1\STM32F2xx_Boot_V1 /
//                    .62\STM32F2xx_Boot_130815_IAR6.1\STM32_Boot\EWARM\Debug /
//                    \List\ -lb D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍE /
//                    GS701-1\¸Ä½øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_B /
//                    oot_130815_IAR6.1\STM32_Boot\EWARM\Debug\List\ -o       /
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
//                    IAR6.1\STM32_Boot\EWARM\Debug\List\main.s               /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME main

        EXTERN E2prom_InitIO
        EXTERN E2prom_ReadByte
        EXTERN E2prom_WriteByte
        EXTERN FLASH_EraseSector
        EXTERN FLASH_Unlock
        EXTERN NVIC_SetVectorTable
        EXTERN SPI_FLASH_AllUnprotect
        EXTERN WriteToMemory
        EXTERN __set_MSP
        EXTERN sFLASH_DeInit
        EXTERN sFLASH_Init
        EXTERN sFLASH_ReadBuffer

        PUBLIC JumpAddress
        PUBLIC Jump_To_Application
        PUBLIC NVIC_Configuration
        PUBLIC ReceiveDataBuf
        PUBLIC main
        PUBLIC ucTmp


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void NVIC_SystemReset(void)
NVIC_SystemReset:
        LDR.N    R0,??DataTable1  ;; 0xe000ed0c
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        LDR.N    R1,??DataTable1_1  ;; 0x5fa0004
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable1  ;; 0xe000ed0c
        STR      R0,[R1, #+0]
        DSB      
??NVIC_SystemReset_0:
        B.N      ??NVIC_SystemReset_0

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Jump_To_Application:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
JumpAddress:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ReceiveDataBuf:
        DS8 552

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ucTmp:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ulLen:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
rdPage:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
temp:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
temp2:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
i:
        DS8 4

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
main:
        PUSH     {R4-R6,LR}
        MOVS     R4,#+0
        MOVS     R5,#+0
        LDR.N    R0,??DataTable1_2
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
??main_0:
        LDR.N    R0,??DataTable1_2
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable1_3  ;; 0x186a0
        CMP      R0,R1
        BCS.N    ??main_1
        LDR.N    R0,??DataTable1_2
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable1_2
        STR      R0,[R1, #+0]
        B.N      ??main_0
??main_1:
        BL       E2prom_InitIO
        BL       sFLASH_DeInit
        BL       sFLASH_Init
        BL       SPI_FLASH_AllUnprotect
        LDR.N    R0,??DataTable1_2
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
??main_2:
        LDR.N    R0,??DataTable1_2
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable1_3  ;; 0x186a0
        CMP      R0,R1
        BCS.N    ??main_3
        LDR.N    R0,??DataTable1_2
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable1_2
        STR      R0,[R1, #+0]
        B.N      ??main_2
??main_3:
        MOVS     R2,#+2
        LDR.N    R1,??DataTable1_4
        MOVW     R0,#+735
        BL       E2prom_ReadByte
        LDR.N    R0,??DataTable1_4
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable1_4
        LDRB     R1,[R1, #+1]
        CMP      R0,R1
        BNE.N    ??main_4
        LDR.N    R0,??DataTable1_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+170
        BEQ.N    ??main_5
??main_4:
        MOVS     R0,#+1
        MOVS     R4,R0
??main_5:
        MOVS     R2,#+5
        LDR.N    R1,??DataTable1_4
        MOVW     R0,#+745
        BL       E2prom_ReadByte
        MOVS     R0,#+0
        MOVS     R5,R0
        LDR.N    R0,??DataTable1_2
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
??main_6:
        LDR.N    R0,??DataTable1_2
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BCS.N    ??main_7
        LDR.N    R0,??DataTable1_2
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable1_4
        LDRB     R0,[R0, R1]
        ADDS     R5,R0,R5
        LDR.N    R0,??DataTable1_2
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable1_2
        STR      R0,[R1, #+0]
        B.N      ??main_6
??main_7:
        LDR.N    R0,??DataTable1_4
        LDRB     R0,[R0, #+4]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,R0
        BEQ.N    ??main_8
        MOVS     R0,#+1
        MOVS     R4,R0
        LDR.N    R0,??DataTable1_5
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        B.N      ??main_9
??main_8:
        LDR.N    R0,??DataTable1_4
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable1_4
        LDRB     R1,[R1, #+1]
        LSLS     R1,R1,#+16
        ADDS     R0,R1,R0, LSL #+24
        LDR.N    R1,??DataTable1_4
        LDRB     R1,[R1, #+2]
        ADDS     R0,R0,R1, LSL #+8
        LDR.N    R1,??DataTable1_4
        LDRB     R1,[R1, #+3]
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable1_5
        STR      R0,[R1, #+0]
??main_9:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.W    ??main_10
        LDR.N    R0,??DataTable1_5
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.W    ??main_10
        LDR.N    R0,??DataTable1_5
        LDR      R0,[R0, #+0]
        CMP      R0,#+524288
        BCS.W    ??main_10
        BL       sFLASH_Init
        BL       FLASH_Unlock
        MOVS     R1,#+2
        MOVS     R0,#+8
        BL       FLASH_EraseSector
        MOVS     R1,#+2
        MOVS     R0,#+16
        BL       FLASH_EraseSector
        MOVS     R1,#+2
        MOVS     R0,#+24
        BL       FLASH_EraseSector
        MOVS     R1,#+2
        MOVS     R0,#+32
        BL       FLASH_EraseSector
        MOVS     R1,#+2
        MOVS     R0,#+40
        BL       FLASH_EraseSector
        MOVS     R1,#+2
        MOVS     R0,#+48
        BL       FLASH_EraseSector
        MOVS     R1,#+2
        MOVS     R0,#+56
        BL       FLASH_EraseSector
        MOVS     R1,#+2
        MOVS     R0,#+64
        BL       FLASH_EraseSector
        MOVS     R1,#+2
        MOVS     R0,#+72
        BL       FLASH_EraseSector
        MOVS     R1,#+2
        MOVS     R0,#+80
        BL       FLASH_EraseSector
        MOVS     R1,#+2
        MOVS     R0,#+88
        BL       FLASH_EraseSector
??main_11:
        LDR.N    R0,??DataTable1_5
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??main_12
        LDR.N    R0,??DataTable1_5
        LDR      R0,[R0, #+0]
        MOV      R1,#+512
        CMP      R0,R1
        BCC.N    ??main_13
        MOV      R2,#+512
        LDR.N    R0,??DataTable1_6
        LDRH     R0,[R0, #+0]
        MOV      R1,#+512
        MULS     R0,R1,R0
        ADDS     R1,R0,#+274432
        LDR.N    R0,??DataTable1_7
        BL       sFLASH_ReadBuffer
        LDR.N    R0,??DataTable1_5
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+512
        LDR.N    R1,??DataTable1_5
        STR      R0,[R1, #+0]
        MOV      R2,#+512
        LDR.N    R1,??DataTable1_7
        LDR.N    R0,??DataTable1_6
        LDRH     R0,[R0, #+0]
        MOV      R3,#+512
        LDR.N    R6,??DataTable1_8  ;; 0x8004000
        MLA      R0,R3,R0,R6
        BL       WriteToMemory
        LDR.N    R0,??DataTable1_6
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable1_6
        STRH     R0,[R1, #+0]
        B.N      ??main_11
??main_13:
        LDR.N    R0,??DataTable1_5
        LDR      R2,[R0, #+0]
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        LDR.N    R0,??DataTable1_6
        LDRH     R0,[R0, #+0]
        MOV      R1,#+512
        MULS     R0,R1,R0
        ADDS     R1,R0,#+274432
        LDR.N    R0,??DataTable1_7
        BL       sFLASH_ReadBuffer
        LDR.N    R0,??DataTable1_5
        LDR      R2,[R0, #+0]
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        LDR.N    R1,??DataTable1_7
        LDR.N    R0,??DataTable1_6
        LDRH     R0,[R0, #+0]
        MOV      R3,#+512
        LDR.N    R6,??DataTable1_8  ;; 0x8004000
        MLA      R0,R3,R0,R6
        BL       WriteToMemory
        LDR.N    R0,??DataTable1_5
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        B.N      ??main_11
??main_12:
        LDR.N    R0,??DataTable1_4
        MOVS     R1,#+187
        STRB     R1,[R0, #+0]
        LDR.N    R0,??DataTable1_4
        LDRB     R1,[R0, #+0]
        MOVW     R0,#+735
        BL       E2prom_WriteByte
        LDR.N    R0,??DataTable1_4
        LDRB     R1,[R0, #+0]
        MOV      R0,#+736
        BL       E2prom_WriteByte
        LDR.N    R0,??DataTable1_9
        LDR.N    R1,??DataTable1_8  ;; 0x8004000
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable1_9
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0xFF000000
        CMP      R0,#+536870912
        BNE.N    ??main_14
        LDR.N    R0,??DataTable1_10
        LDR.N    R1,??DataTable1_11  ;; 0x8004004
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable1_12
        LDR.N    R1,??DataTable1_10
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable1_8  ;; 0x8004000
        LDR      R0,[R0, #+0]
        BL       __set_MSP
        LDR.N    R0,??DataTable1_12
        LDR      R0,[R0, #+0]
        BLX      R0
        B.N      ??main_14
??main_10:
        LDR.N    R0,??DataTable1_9
        LDR.N    R1,??DataTable1_8  ;; 0x8004000
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable1_9
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0xFF000000
        CMP      R0,#+536870912
        BNE.N    ??main_14
        LDR.N    R0,??DataTable1_10
        LDR.N    R1,??DataTable1_11  ;; 0x8004004
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable1_12
        LDR.N    R1,??DataTable1_10
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable1_8  ;; 0x8004000
        LDR      R0,[R0, #+0]
        BL       __set_MSP
        LDR.N    R0,??DataTable1_12
        LDR      R0,[R0, #+0]
        BLX      R0
??main_14:
        BL       NVIC_SystemReset
        B.N      ??main_14

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable1:
        DC32     0xe000ed0c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable1_1:
        DC32     0x5fa0004

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable1_2:
        DC32     i

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable1_3:
        DC32     0x186a0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable1_4:
        DC32     temp

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable1_5:
        DC32     ulLen

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable1_6:
        DC32     rdPage

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable1_7:
        DC32     ReceiveDataBuf

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable1_8:
        DC32     0x8004000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable1_9:
        DC32     temp2

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable1_10:
        DC32     JumpAddress

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable1_11:
        DC32     0x8004004

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable1_12:
        DC32     Jump_To_Application

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
NVIC_Configuration:
        PUSH     {R7,LR}
        MOVS     R1,#+0
        MOVS     R0,#+134217728
        BL       NVIC_SetVectorTable
        POP      {R0,PC}          ;; return

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)

        END
// 
// 602 bytes in section .bss
// 728 bytes in section .text
// 
// 728 bytes of CODE memory
// 602 bytes of DATA memory
//
//Errors: none
//Warnings: none
