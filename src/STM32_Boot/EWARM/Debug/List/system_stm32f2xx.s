///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.10.2.52244/W32 for ARM    04/Dec/2013  10:58:15 /
// Copyright 1999-2010 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\CMSIS\CM3\DeviceSupport\ST\STM32F2xx\ /
//                    system_stm32f2xx.c                                      /
//    Command line =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\CMSIS\CM3\DeviceSupport\ST\STM32F2xx\ /
//                    system_stm32f2xx.c -D STM32F10X_CL -D                   /
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
//                    IAR6.1\STM32_Boot\EWARM\Debug\List\system_stm32f2xx.s   /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME system_stm32f2xx

        PUBLIC AHBPrescTable
        PUBLIC SystemCoreClock
        PUBLIC SystemCoreClockUpdate
        PUBLIC SystemInit


        SECTION `.data`:DATA:REORDER:NOROOT(2)
SystemCoreClock:
        DATA
        DC32 96000000

        SECTION `.data`:DATA:REORDER:NOROOT(2)
AHBPrescTable:
        DATA
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 3, 4, 6, 7, 8, 9

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SystemInit:
        PUSH     {R7,LR}
        LDR.N    R0,??DataTable2  ;; 0x40023800
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable2  ;; 0x40023800
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable2_1  ;; 0x40023808
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable2  ;; 0x40023800
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_2  ;; 0xfef6ffff
        ANDS     R0,R1,R0
        LDR.N    R1,??DataTable2  ;; 0x40023800
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable2_3  ;; 0x40023804
        LDR.N    R1,??DataTable2_4  ;; 0x24003010
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable2  ;; 0x40023800
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x40000
        LDR.N    R1,??DataTable2  ;; 0x40023800
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable2_5  ;; 0x4002380c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        BL       SetSysClock
        LDR.N    R0,??DataTable2_6  ;; 0xe000ed08
        MOVS     R1,#+134217728
        STR      R1,[R0, #+0]
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SystemCoreClockUpdate:
        PUSH     {R4-R6}
        MOVS     R0,#+0
        MOVS     R1,#+0
        MOVS     R2,#+2
        MOVS     R3,#+0
        MOVS     R4,#+2
        LDR.N    R5,??DataTable2_1  ;; 0x40023808
        LDR      R5,[R5, #+0]
        ANDS     R5,R5,#0xC
        MOVS     R0,R5
        MOVS     R5,R0
        CMP      R5,#+0
        BEQ.N    ??SystemCoreClockUpdate_0
        CMP      R5,#+4
        BEQ.N    ??SystemCoreClockUpdate_1
        CMP      R5,#+8
        BEQ.N    ??SystemCoreClockUpdate_2
        B.N      ??SystemCoreClockUpdate_3
??SystemCoreClockUpdate_0:
        LDR.N    R5,??DataTable2_7
        LDR.N    R6,??DataTable2_8  ;; 0xf42400
        STR      R6,[R5, #+0]
        B.N      ??SystemCoreClockUpdate_4
??SystemCoreClockUpdate_1:
        LDR.N    R5,??DataTable2_7
        LDR.N    R6,??DataTable2_9  ;; 0x7a1200
        STR      R6,[R5, #+0]
        B.N      ??SystemCoreClockUpdate_4
??SystemCoreClockUpdate_2:
        LDR.N    R5,??DataTable2_3  ;; 0x40023804
        LDR      R5,[R5, #+0]
        UBFX     R5,R5,#+22,#+1
        MOVS     R3,R5
        LDR.N    R5,??DataTable2_3  ;; 0x40023804
        LDR      R5,[R5, #+0]
        ANDS     R5,R5,#0x3F
        MOVS     R4,R5
        CMP      R3,#+0
        BEQ.N    ??SystemCoreClockUpdate_5
        LDR.N    R5,??DataTable2_9  ;; 0x7a1200
        UDIV     R5,R5,R4
        LDR.N    R6,??DataTable2_3  ;; 0x40023804
        LDR      R6,[R6, #+0]
        UBFX     R6,R6,#+6,#+9
        MULS     R5,R6,R5
        MOVS     R1,R5
        B.N      ??SystemCoreClockUpdate_6
??SystemCoreClockUpdate_5:
        LDR.N    R5,??DataTable2_8  ;; 0xf42400
        UDIV     R5,R5,R4
        LDR.N    R6,??DataTable2_3  ;; 0x40023804
        LDR      R6,[R6, #+0]
        UBFX     R6,R6,#+6,#+9
        MULS     R5,R6,R5
        MOVS     R1,R5
??SystemCoreClockUpdate_6:
        LDR.N    R5,??DataTable2_3  ;; 0x40023804
        LDR      R5,[R5, #+0]
        UBFX     R5,R5,#+16,#+2
        ADDS     R5,R5,#+1
        LSLS     R5,R5,#+1
        MOVS     R2,R5
        UDIV     R5,R1,R2
        LDR.N    R6,??DataTable2_7
        STR      R5,[R6, #+0]
        B.N      ??SystemCoreClockUpdate_4
??SystemCoreClockUpdate_3:
        LDR.N    R5,??DataTable2_7
        LDR.N    R6,??DataTable2_8  ;; 0xf42400
        STR      R6,[R5, #+0]
??SystemCoreClockUpdate_4:
        LDR.N    R5,??DataTable2_1  ;; 0x40023808
        LDR      R5,[R5, #+0]
        UBFX     R5,R5,#+4,#+4
        LDR.N    R6,??DataTable2_10
        LDRB     R5,[R5, R6]
        MOVS     R0,R5
        LDR.N    R5,??DataTable2_7
        LDR      R5,[R5, #+0]
        LSRS     R5,R5,R0
        LDR.N    R6,??DataTable2_7
        STR      R5,[R6, #+0]
        POP      {R4-R6}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SetSysClock:
        SUB      SP,SP,#+8
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        LDR.N    R0,??DataTable2  ;; 0x40023800
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000
        LDR.N    R1,??DataTable2  ;; 0x40023800
        STR      R0,[R1, #+0]
??SetSysClock_0:
        LDR.N    R0,??DataTable2  ;; 0x40023800
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x20000
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+4]
        ADDS     R0,R0,#+1
        STR      R0,[SP, #+4]
        LDR      R0,[SP, #+0]
        CMP      R0,#+0
        BNE.N    ??SetSysClock_1
        LDR      R0,[SP, #+4]
        CMP      R0,#+1280
        BNE.N    ??SetSysClock_0
??SetSysClock_1:
        LDR.N    R0,??DataTable2  ;; 0x40023800
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+14
        BPL.N    ??SetSysClock_2
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        B.N      ??SetSysClock_3
??SetSysClock_2:
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
??SetSysClock_3:
        LDR      R0,[SP, #+0]
        CMP      R0,#+1
        BNE.N    ??SetSysClock_4
        LDR.N    R0,??DataTable2_1  ;; 0x40023808
        LDR.N    R1,??DataTable2_1  ;; 0x40023808
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable2_1  ;; 0x40023808
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000
        LDR.N    R1,??DataTable2_1  ;; 0x40023808
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable2_1  ;; 0x40023808
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1400
        LDR.N    R1,??DataTable2_1  ;; 0x40023808
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable2_3  ;; 0x40023804
        LDR.N    R1,??DataTable2_11  ;; 0x8413004
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable2  ;; 0x40023800
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.N    R1,??DataTable2  ;; 0x40023800
        STR      R0,[R1, #+0]
??SetSysClock_5:
        LDR.N    R0,??DataTable2  ;; 0x40023800
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+6
        BPL.N    ??SetSysClock_5
        LDR.N    R0,??DataTable2_12  ;; 0x40023c00
        MOVW     R1,#+1795
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable2_1  ;; 0x40023808
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+2
        LSLS     R0,R0,#+2
        LDR.N    R1,??DataTable2_1  ;; 0x40023808
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable2_1  ;; 0x40023808
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable2_1  ;; 0x40023808
        STR      R0,[R1, #+0]
??SetSysClock_6:
        LDR.N    R0,??DataTable2_1  ;; 0x40023808
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0xC
        CMP      R0,#+8
        BNE.N    ??SetSysClock_6
??SetSysClock_4:
        ADD      SP,SP,#+8
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2:
        DC32     0x40023800

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2_1:
        DC32     0x40023808

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2_2:
        DC32     0xfef6ffff

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2_3:
        DC32     0x40023804

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2_4:
        DC32     0x24003010

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2_5:
        DC32     0x4002380c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2_6:
        DC32     0xe000ed08

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2_7:
        DC32     SystemCoreClock

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2_8:
        DC32     0xf42400

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2_9:
        DC32     0x7a1200

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2_10:
        DC32     AHBPrescTable

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2_11:
        DC32     0x8413004

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2_12:
        DC32     0x40023c00

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)

        END
// 
//  20 bytes in section .data
// 478 bytes in section .text
// 
// 478 bytes of CODE memory
//  20 bytes of DATA memory
//
//Errors: none
//Warnings: none
