///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.10.2.52244/W32 for ARM    04/Dec/2013  10:58:09 /
// Copyright 1999-2010 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\STM32F2xx_StdPeriph_Driver\src\stm32f /
//                    2xx_dcmi.c                                              /
//    Command line =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\STM32F2xx_StdPeriph_Driver\src\stm32f /
//                    2xx_dcmi.c -D STM32F10X_CL -D USE_STDPERIPH_DRIVER      /
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
//                    IAR6.1\STM32_Boot\EWARM\Debug\List\stm32f2xx_dcmi.s     /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f2xx_dcmi

        PUBLIC DCMI_CROPCmd
        PUBLIC DCMI_CROPConfig
        PUBLIC DCMI_CaptureCmd
        PUBLIC DCMI_ClearFlag
        PUBLIC DCMI_ClearITPendingBit
        PUBLIC DCMI_Cmd
        PUBLIC DCMI_DeInit
        PUBLIC DCMI_GetFlagStatus
        PUBLIC DCMI_GetITStatus
        PUBLIC DCMI_ITConfig
        PUBLIC DCMI_Init
        PUBLIC DCMI_JPEGCmd
        PUBLIC DCMI_ReadData
        PUBLIC DCMI_SetEmbeddedSynchroCodes
        PUBLIC DCMI_StructInit


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DCMI_DeInit:
        LDR.N    R0,??DataTable13  ;; 0x50050000
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable13_1  ;; 0x5005000c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable13_2  ;; 0x50050014
        MOVS     R1,#+31
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable13_3  ;; 0x50050018
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable13_4  ;; 0x5005001c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable13_5  ;; 0x50050020
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable13_6  ;; 0x50050024
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DCMI_Init:
        MOVS     R1,#+0
        LDR.N    R2,??DataTable13  ;; 0x50050000
        LDR      R2,[R2, #+0]
        LDR.N    R3,??DataTable13_7  ;; 0xffffbffe
        ANDS     R2,R3,R2
        LDR.N    R3,??DataTable13  ;; 0x50050000
        STR      R2,[R3, #+0]
        LDR.N    R2,??DataTable13  ;; 0x50050000
        LDR      R2,[R2, #+0]
        MOVS     R1,R2
        LDR.N    R2,??DataTable13_8  ;; 0xfffff00d
        ANDS     R1,R2,R1
        LDRH     R2,[R0, #+0]
        LDRH     R3,[R0, #+2]
        ORRS     R2,R3,R2
        LDRH     R3,[R0, #+4]
        ORRS     R2,R3,R2
        LDRH     R3,[R0, #+6]
        ORRS     R2,R3,R2
        LDRH     R3,[R0, #+8]
        ORRS     R2,R3,R2
        LDRH     R3,[R0, #+10]
        ORRS     R2,R3,R2
        LDRH     R3,[R0, #+12]
        ORRS     R2,R3,R2
        ORRS     R1,R2,R1
        LDR.N    R2,??DataTable13  ;; 0x50050000
        STR      R1,[R2, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DCMI_StructInit:
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
        MOVS     R1,#+0
        STRH     R1,[R0, #+2]
        MOVS     R1,#+0
        STRH     R1,[R0, #+4]
        MOVS     R1,#+0
        STRH     R1,[R0, #+6]
        MOVS     R1,#+0
        STRH     R1,[R0, #+8]
        MOVS     R1,#+0
        STRH     R1,[R0, #+10]
        MOVS     R1,#+0
        STRH     R1,[R0, #+12]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DCMI_CROPConfig:
        LDRH     R1,[R0, #+2]
        LDRH     R2,[R0, #+0]
        ORRS     R1,R1,R2, LSL #+16
        LDR.N    R2,??DataTable13_5  ;; 0x50050020
        STR      R1,[R2, #+0]
        LDRH     R1,[R0, #+6]
        LDRH     R2,[R0, #+4]
        ORRS     R1,R1,R2, LSL #+16
        LDR.N    R2,??DataTable13_6  ;; 0x50050024
        STR      R1,[R2, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DCMI_CROPCmd:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??DCMI_CROPCmd_0
        LDR.N    R1,??DataTable13  ;; 0x50050000
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x4
        LDR.N    R2,??DataTable13  ;; 0x50050000
        STR      R1,[R2, #+0]
        B.N      ??DCMI_CROPCmd_1
??DCMI_CROPCmd_0:
        LDR.N    R1,??DataTable13  ;; 0x50050000
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x4
        LDR.N    R2,??DataTable13  ;; 0x50050000
        STR      R1,[R2, #+0]
??DCMI_CROPCmd_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DCMI_SetEmbeddedSynchroCodes:
        LDRB     R1,[R0, #+0]
        LDRB     R2,[R0, #+1]
        ORRS     R1,R1,R2, LSL #+8
        LDRB     R2,[R0, #+2]
        ORRS     R1,R1,R2, LSL #+16
        LDRB     R2,[R0, #+3]
        ORRS     R1,R1,R2, LSL #+24
        LDR.N    R2,??DataTable13_3  ;; 0x50050018
        STR      R1,[R2, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DCMI_JPEGCmd:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??DCMI_JPEGCmd_0
        LDR.N    R1,??DataTable13  ;; 0x50050000
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x8
        LDR.N    R2,??DataTable13  ;; 0x50050000
        STR      R1,[R2, #+0]
        B.N      ??DCMI_JPEGCmd_1
??DCMI_JPEGCmd_0:
        LDR.N    R1,??DataTable13  ;; 0x50050000
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x8
        LDR.N    R2,??DataTable13  ;; 0x50050000
        STR      R1,[R2, #+0]
??DCMI_JPEGCmd_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DCMI_Cmd:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??DCMI_Cmd_0
        LDR.N    R1,??DataTable13  ;; 0x50050000
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x4000
        LDR.N    R2,??DataTable13  ;; 0x50050000
        STR      R1,[R2, #+0]
        B.N      ??DCMI_Cmd_1
??DCMI_Cmd_0:
        LDR.N    R1,??DataTable13  ;; 0x50050000
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x4000
        LDR.N    R2,??DataTable13  ;; 0x50050000
        STR      R1,[R2, #+0]
??DCMI_Cmd_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DCMI_CaptureCmd:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??DCMI_CaptureCmd_0
        LDR.N    R1,??DataTable13  ;; 0x50050000
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x1
        LDR.N    R2,??DataTable13  ;; 0x50050000
        STR      R1,[R2, #+0]
        B.N      ??DCMI_CaptureCmd_1
??DCMI_CaptureCmd_0:
        LDR.N    R1,??DataTable13  ;; 0x50050000
        LDR      R1,[R1, #+0]
        LSRS     R1,R1,#+1
        LSLS     R1,R1,#+1
        LDR.N    R2,??DataTable13  ;; 0x50050000
        STR      R1,[R2, #+0]
??DCMI_CaptureCmd_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DCMI_ReadData:
        LDR.N    R0,??DataTable13_9  ;; 0x50050028
        LDR      R0,[R0, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DCMI_ITConfig:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??DCMI_ITConfig_0
        LDR.N    R2,??DataTable13_1  ;; 0x5005000c
        LDR      R2,[R2, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        ORRS     R2,R0,R2
        LDR.N    R3,??DataTable13_1  ;; 0x5005000c
        STR      R2,[R3, #+0]
        B.N      ??DCMI_ITConfig_1
??DCMI_ITConfig_0:
        LDR.N    R2,??DataTable13_1  ;; 0x5005000c
        LDR      R2,[R2, #+0]
        MVNS     R3,R0
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        ANDS     R2,R3,R2
        LDR.N    R3,??DataTable13_1  ;; 0x5005000c
        STR      R2,[R3, #+0]
??DCMI_ITConfig_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DCMI_GetFlagStatus:
        PUSH     {R4}
        MOVS     R1,R0
        MOVS     R0,#+0
        MOVS     R3,#+0
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LSRS     R4,R1,#+12
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        MOVS     R2,R4
        CMP      R2,#+1
        BNE.N    ??DCMI_GetFlagStatus_0
        LDR.N    R4,??DataTable13_10  ;; 0x50050008
        LDR      R4,[R4, #+0]
        MOVS     R3,R4
        B.N      ??DCMI_GetFlagStatus_1
??DCMI_GetFlagStatus_0:
        CMP      R2,#+2
        BNE.N    ??DCMI_GetFlagStatus_2
        LDR.N    R4,??DataTable13_11  ;; 0x50050004
        LDR      R4,[R4, #+0]
        MOVS     R3,R4
        B.N      ??DCMI_GetFlagStatus_1
??DCMI_GetFlagStatus_2:
        LDR.N    R4,??DataTable13_12  ;; 0x50050010
        LDR      R4,[R4, #+0]
        MOVS     R3,R4
??DCMI_GetFlagStatus_1:
        MOVS     R4,R3
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        TST      R4,R1
        BEQ.N    ??DCMI_GetFlagStatus_3
        MOVS     R4,#+1
        MOVS     R0,R4
        B.N      ??DCMI_GetFlagStatus_4
??DCMI_GetFlagStatus_3:
        MOVS     R4,#+0
        MOVS     R0,R4
??DCMI_GetFlagStatus_4:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DCMI_ClearFlag:
        LDR.N    R1,??DataTable13_2  ;; 0x50050014
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        STR      R0,[R1, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DCMI_GetITStatus:
        MOVS     R1,R0
        MOVS     R0,#+0
        MOVS     R2,#+0
        LDR.N    R3,??DataTable13_12  ;; 0x50050010
        LDR      R3,[R3, #+0]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        ANDS     R3,R1,R3
        MOVS     R2,R3
        CMP      R2,#+0
        BEQ.N    ??DCMI_GetITStatus_0
        MOVS     R3,#+1
        MOVS     R0,R3
        B.N      ??DCMI_GetITStatus_1
??DCMI_GetITStatus_0:
        MOVS     R3,#+0
        MOVS     R0,R3
??DCMI_GetITStatus_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DCMI_ClearITPendingBit:
        LDR.N    R1,??DataTable13_2  ;; 0x50050014
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        STR      R0,[R1, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13:
        DC32     0x50050000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13_1:
        DC32     0x5005000c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13_2:
        DC32     0x50050014

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13_3:
        DC32     0x50050018

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13_4:
        DC32     0x5005001c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13_5:
        DC32     0x50050020

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13_6:
        DC32     0x50050024

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13_7:
        DC32     0xffffbffe

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13_8:
        DC32     0xfffff00d

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13_9:
        DC32     0x50050028

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13_10:
        DC32     0x50050008

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13_11:
        DC32     0x50050004

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13_12:
        DC32     0x50050010

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)

        END
// 
// 534 bytes in section .text
// 
// 534 bytes of CODE memory
//
//Errors: none
//Warnings: none
