///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.10.2.52244/W32 for ARM    04/Dec/2013  10:58:07 /
// Copyright 1999-2010 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\STM32F2xx_StdPeriph_Driver\src\stm32f /
//                    2xx_cryp.c                                              /
//    Command line =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\STM32F2xx_StdPeriph_Driver\src\stm32f /
//                    2xx_cryp.c -D STM32F10X_CL -D USE_STDPERIPH_DRIVER      /
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
//                    IAR6.1\STM32_Boot\EWARM\Debug\List\stm32f2xx_cryp.s     /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f2xx_cryp

        EXTERN RCC_AHB2PeriphResetCmd

        PUBLIC CRYP_Cmd
        PUBLIC CRYP_DMACmd
        PUBLIC CRYP_DataIn
        PUBLIC CRYP_DataOut
        PUBLIC CRYP_DeInit
        PUBLIC CRYP_FIFOFlush
        PUBLIC CRYP_GetFlagStatus
        PUBLIC CRYP_GetITStatus
        PUBLIC CRYP_ITConfig
        PUBLIC CRYP_IVInit
        PUBLIC CRYP_IVStructInit
        PUBLIC CRYP_Init
        PUBLIC CRYP_KeyInit
        PUBLIC CRYP_KeyStructInit
        PUBLIC CRYP_RestoreContext
        PUBLIC CRYP_SaveContext
        PUBLIC CRYP_StructInit


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CRYP_DeInit:
        PUSH     {R7,LR}
        MOVS     R1,#+1
        MOVS     R0,#+16
        BL       RCC_AHB2PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+16
        BL       RCC_AHB2PeriphResetCmd
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CRYP_Init:
        LDR.N    R1,??DataTable12  ;; 0x50060000
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x38
        LDR.N    R2,??DataTable12  ;; 0x50060000
        STR      R1,[R2, #+0]
        LDR.N    R1,??DataTable12  ;; 0x50060000
        LDR      R1,[R1, #+0]
        LDRH     R2,[R0, #+2]
        ORRS     R1,R2,R1
        LDR.N    R2,??DataTable12  ;; 0x50060000
        STR      R1,[R2, #+0]
        LDR.N    R1,??DataTable12  ;; 0x50060000
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0xC0
        LDR.N    R2,??DataTable12  ;; 0x50060000
        STR      R1,[R2, #+0]
        LDR.N    R1,??DataTable12  ;; 0x50060000
        LDR      R1,[R1, #+0]
        LDRH     R2,[R0, #+4]
        ORRS     R1,R2,R1
        LDR.N    R2,??DataTable12  ;; 0x50060000
        STR      R1,[R2, #+0]
        LDRH     R1,[R0, #+2]
        CMP      R1,#+32
        BEQ.N    ??CRYP_Init_0
        LDRH     R1,[R0, #+2]
        CMP      R1,#+40
        BEQ.N    ??CRYP_Init_0
        LDRH     R1,[R0, #+2]
        CMP      R1,#+48
        BEQ.N    ??CRYP_Init_0
        LDRH     R1,[R0, #+2]
        CMP      R1,#+56
        BNE.N    ??CRYP_Init_1
??CRYP_Init_0:
        LDR.N    R1,??DataTable12  ;; 0x50060000
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x300
        LDR.N    R2,??DataTable12  ;; 0x50060000
        STR      R1,[R2, #+0]
        LDR.N    R1,??DataTable12  ;; 0x50060000
        LDR      R1,[R1, #+0]
        LDRH     R2,[R0, #+6]
        ORRS     R1,R2,R1
        LDR.N    R2,??DataTable12  ;; 0x50060000
        STR      R1,[R2, #+0]
??CRYP_Init_1:
        LDR.N    R1,??DataTable12  ;; 0x50060000
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x4
        LDR.N    R2,??DataTable12  ;; 0x50060000
        STR      R1,[R2, #+0]
        LDR.N    R1,??DataTable12  ;; 0x50060000
        LDR      R1,[R1, #+0]
        LDRH     R2,[R0, #+0]
        ORRS     R1,R2,R1
        LDR.N    R2,??DataTable12  ;; 0x50060000
        STR      R1,[R2, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CRYP_StructInit:
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
        MOVS     R1,#+0
        STRH     R1,[R0, #+2]
        MOVS     R1,#+0
        STRH     R1,[R0, #+4]
        MOVS     R1,#+0
        STRH     R1,[R0, #+6]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CRYP_KeyInit:
        LDR.N    R1,??DataTable12_1  ;; 0x50060020
        LDR      R2,[R0, #+0]
        STR      R2,[R1, #+0]
        LDR      R1,[R0, #+4]
        LDR.N    R2,??DataTable12_2  ;; 0x50060024
        STR      R1,[R2, #+0]
        LDR      R1,[R0, #+8]
        LDR.N    R2,??DataTable12_3  ;; 0x50060028
        STR      R1,[R2, #+0]
        LDR      R1,[R0, #+12]
        LDR.N    R2,??DataTable12_4  ;; 0x5006002c
        STR      R1,[R2, #+0]
        LDR      R1,[R0, #+16]
        LDR.N    R2,??DataTable12_5  ;; 0x50060030
        STR      R1,[R2, #+0]
        LDR      R1,[R0, #+20]
        LDR.N    R2,??DataTable12_6  ;; 0x50060034
        STR      R1,[R2, #+0]
        LDR      R1,[R0, #+24]
        LDR.N    R2,??DataTable12_7  ;; 0x50060038
        STR      R1,[R2, #+0]
        LDR      R1,[R0, #+28]
        LDR.N    R2,??DataTable12_8  ;; 0x5006003c
        STR      R1,[R2, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CRYP_KeyStructInit:
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
        MOVS     R1,#+0
        STR      R1,[R0, #+28]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CRYP_IVInit:
        LDR.N    R1,??DataTable12_9  ;; 0x50060040
        LDR      R2,[R0, #+0]
        STR      R2,[R1, #+0]
        LDR      R1,[R0, #+4]
        LDR.N    R2,??DataTable12_10  ;; 0x50060044
        STR      R1,[R2, #+0]
        LDR      R1,[R0, #+8]
        LDR.N    R2,??DataTable12_11  ;; 0x50060048
        STR      R1,[R2, #+0]
        LDR      R1,[R0, #+12]
        LDR.N    R2,??DataTable12_12  ;; 0x5006004c
        STR      R1,[R2, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CRYP_IVStructInit:
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CRYP_FIFOFlush:
        LDR.N    R0,??DataTable12  ;; 0x50060000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4000
        LDR.N    R1,??DataTable12  ;; 0x50060000
        STR      R0,[R1, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CRYP_Cmd:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??CRYP_Cmd_0
        LDR.N    R1,??DataTable12  ;; 0x50060000
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x8000
        LDR.N    R2,??DataTable12  ;; 0x50060000
        STR      R1,[R2, #+0]
        B.N      ??CRYP_Cmd_1
??CRYP_Cmd_0:
        LDR.N    R1,??DataTable12  ;; 0x50060000
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x8000
        LDR.N    R2,??DataTable12  ;; 0x50060000
        STR      R1,[R2, #+0]
??CRYP_Cmd_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CRYP_DataIn:
        LDR.N    R1,??DataTable12_13  ;; 0x50060008
        STR      R0,[R1, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CRYP_DataOut:
        LDR.N    R0,??DataTable12_14  ;; 0x5006000c
        LDR      R0,[R0, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CRYP_SaveContext:
        PUSH     {R3-R6}
        MOVS     R2,R0
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R4,#+0
        MOVS     R0,#+0
        LDR.N    R5,??DataTable12_15  ;; 0x50060010
        LDR      R5,[R5, #+0]
        LSRS     R5,R5,#+1
        LSLS     R5,R5,#+1
        LDR.N    R6,??DataTable12_15  ;; 0x50060010
        STR      R5,[R6, #+0]
        LDR.N    R5,??DataTable12  ;; 0x50060000
        LDR      R5,[R5, #+0]
        LSLS     R5,R5,#+28
        BPL.N    ??CRYP_SaveContext_0
        MOVS     R5,#+17
        MOVS     R4,R5
        B.N      ??CRYP_SaveContext_1
??CRYP_SaveContext_0:
        MOVS     R5,#+21
        MOVS     R4,R5
??CRYP_SaveContext_1:
        LDR.N    R5,??DataTable12_16  ;; 0x50060004
        LDR      R5,[R5, #+0]
        ANDS     R5,R4,R5
        MOVS     R3,R5
        LDR      R5,[SP, #+0]
        ADDS     R5,R5,#+1
        STR      R5,[SP, #+0]
        LDR      R5,[SP, #+0]
        MOVW     R6,#+65535
        CMP      R5,R6
        BEQ.N    ??CRYP_SaveContext_2
        CMP      R3,#+1
        BNE.N    ??CRYP_SaveContext_1
??CRYP_SaveContext_2:
        LDR.N    R5,??DataTable12_16  ;; 0x50060004
        LDR      R5,[R5, #+0]
        ANDS     R5,R4,R5
        CMP      R5,#+1
        BEQ.N    ??CRYP_SaveContext_3
        MOVS     R5,#+0
        MOVS     R0,R5
        B.N      ??CRYP_SaveContext_4
??CRYP_SaveContext_3:
        LDR.N    R5,??DataTable12_15  ;; 0x50060010
        LDR      R5,[R5, #+0]
        BICS     R5,R5,#0x2
        LDR.N    R6,??DataTable12_15  ;; 0x50060010
        STR      R5,[R6, #+0]
        LDR.N    R5,??DataTable12  ;; 0x50060000
        LDR      R5,[R5, #+0]
        BICS     R5,R5,#0x8000
        LDR.N    R6,??DataTable12  ;; 0x50060000
        STR      R5,[R6, #+0]
        LDR.N    R5,??DataTable12  ;; 0x50060000
        LDR      R5,[R5, #+0]
        MOV      R6,#+1020
        ANDS     R5,R6,R5
        STR      R5,[R2, #+0]
        LDR.N    R5,??DataTable12_9  ;; 0x50060040
        LDR      R5,[R5, #+0]
        STR      R5,[R2, #+4]
        LDR.N    R5,??DataTable12_10  ;; 0x50060044
        LDR      R5,[R5, #+0]
        STR      R5,[R2, #+8]
        LDR.N    R5,??DataTable12_11  ;; 0x50060048
        LDR      R5,[R5, #+0]
        STR      R5,[R2, #+12]
        LDR.N    R5,??DataTable12_12  ;; 0x5006004c
        LDR      R5,[R5, #+0]
        STR      R5,[R2, #+16]
        LDR      R5,[R1, #+0]
        STR      R5,[R2, #+20]
        LDR      R5,[R1, #+4]
        STR      R5,[R2, #+24]
        LDR      R5,[R1, #+8]
        STR      R5,[R2, #+28]
        LDR      R5,[R1, #+12]
        STR      R5,[R2, #+32]
        LDR      R5,[R1, #+16]
        STR      R5,[R2, #+36]
        LDR      R5,[R1, #+20]
        STR      R5,[R2, #+40]
        LDR      R5,[R1, #+24]
        STR      R5,[R2, #+44]
        LDR      R5,[R1, #+28]
        STR      R5,[R2, #+48]
        MOVS     R5,#+1
        MOVS     R0,R5
??CRYP_SaveContext_4:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4-R6}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CRYP_RestoreContext:
        LDR.N    R1,??DataTable12  ;; 0x50060000
        LDR      R2,[R0, #+0]
        STR      R2,[R1, #+0]
        LDR      R1,[R0, #+20]
        LDR.N    R2,??DataTable12_1  ;; 0x50060020
        STR      R1,[R2, #+0]
        LDR      R1,[R0, #+24]
        LDR.N    R2,??DataTable12_2  ;; 0x50060024
        STR      R1,[R2, #+0]
        LDR      R1,[R0, #+28]
        LDR.N    R2,??DataTable12_3  ;; 0x50060028
        STR      R1,[R2, #+0]
        LDR      R1,[R0, #+32]
        LDR.N    R2,??DataTable12_4  ;; 0x5006002c
        STR      R1,[R2, #+0]
        LDR      R1,[R0, #+36]
        LDR.N    R2,??DataTable12_5  ;; 0x50060030
        STR      R1,[R2, #+0]
        LDR      R1,[R0, #+40]
        LDR.N    R2,??DataTable12_6  ;; 0x50060034
        STR      R1,[R2, #+0]
        LDR      R1,[R0, #+44]
        LDR.N    R2,??DataTable12_7  ;; 0x50060038
        STR      R1,[R2, #+0]
        LDR      R1,[R0, #+48]
        LDR.N    R2,??DataTable12_8  ;; 0x5006003c
        STR      R1,[R2, #+0]
        LDR      R1,[R0, #+4]
        LDR.N    R2,??DataTable12_9  ;; 0x50060040
        STR      R1,[R2, #+0]
        LDR      R1,[R0, #+8]
        LDR.N    R2,??DataTable12_10  ;; 0x50060044
        STR      R1,[R2, #+0]
        LDR      R1,[R0, #+12]
        LDR.N    R2,??DataTable12_11  ;; 0x50060048
        STR      R1,[R2, #+0]
        LDR      R1,[R0, #+16]
        LDR.N    R2,??DataTable12_12  ;; 0x5006004c
        STR      R1,[R2, #+0]
        LDR.N    R1,??DataTable12  ;; 0x50060000
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x8000
        LDR.N    R2,??DataTable12  ;; 0x50060000
        STR      R1,[R2, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CRYP_DMACmd:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??CRYP_DMACmd_0
        LDR.N    R2,??DataTable12_15  ;; 0x50060010
        LDR      R2,[R2, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ORRS     R2,R0,R2
        LDR.N    R3,??DataTable12_15  ;; 0x50060010
        STR      R2,[R3, #+0]
        B.N      ??CRYP_DMACmd_1
??CRYP_DMACmd_0:
        LDR.N    R2,??DataTable12_15  ;; 0x50060010
        LDR      R2,[R2, #+0]
        MVNS     R3,R0
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ANDS     R2,R3,R2
        LDR.N    R3,??DataTable12_15  ;; 0x50060010
        STR      R2,[R3, #+0]
??CRYP_DMACmd_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CRYP_ITConfig:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??CRYP_ITConfig_0
        LDR.N    R2,??DataTable12_17  ;; 0x50060014
        LDR      R2,[R2, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ORRS     R2,R0,R2
        LDR.N    R3,??DataTable12_17  ;; 0x50060014
        STR      R2,[R3, #+0]
        B.N      ??CRYP_ITConfig_1
??CRYP_ITConfig_0:
        LDR.N    R2,??DataTable12_17  ;; 0x50060014
        LDR      R2,[R2, #+0]
        MVNS     R3,R0
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ANDS     R2,R3,R2
        LDR.N    R3,??DataTable12_17  ;; 0x50060014
        STR      R2,[R3, #+0]
??CRYP_ITConfig_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CRYP_GetITStatus:
        MOVS     R1,R0
        MOVS     R0,#+0
        LDR.N    R2,??DataTable12_18  ;; 0x5006001c
        LDR      R2,[R2, #+0]
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        TST      R2,R1
        BEQ.N    ??CRYP_GetITStatus_0
        MOVS     R2,#+1
        MOVS     R0,R2
        B.N      ??CRYP_GetITStatus_1
??CRYP_GetITStatus_0:
        MOVS     R2,#+0
        MOVS     R0,R2
??CRYP_GetITStatus_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CRYP_GetFlagStatus:
        MOVS     R1,R0
        MOVS     R0,#+0
        MOVS     R2,#+0
        LSLS     R3,R1,#+26
        BPL.N    ??CRYP_GetFlagStatus_0
        LDR.N    R3,??DataTable12_19  ;; 0x50060018
        LDR      R3,[R3, #+0]
        MOVS     R2,R3
        B.N      ??CRYP_GetFlagStatus_1
??CRYP_GetFlagStatus_0:
        LDR.N    R3,??DataTable12_16  ;; 0x50060004
        LDR      R3,[R3, #+0]
        MOVS     R2,R3
??CRYP_GetFlagStatus_1:
        MOVS     R3,R2
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        TST      R3,R1
        BEQ.N    ??CRYP_GetFlagStatus_2
        MOVS     R3,#+1
        MOVS     R0,R3
        B.N      ??CRYP_GetFlagStatus_3
??CRYP_GetFlagStatus_2:
        MOVS     R3,#+0
        MOVS     R0,R3
??CRYP_GetFlagStatus_3:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12:
        DC32     0x50060000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_1:
        DC32     0x50060020

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_2:
        DC32     0x50060024

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_3:
        DC32     0x50060028

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_4:
        DC32     0x5006002c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_5:
        DC32     0x50060030

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_6:
        DC32     0x50060034

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_7:
        DC32     0x50060038

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_8:
        DC32     0x5006003c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_9:
        DC32     0x50060040

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_10:
        DC32     0x50060044

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_11:
        DC32     0x50060048

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_12:
        DC32     0x5006004c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_13:
        DC32     0x50060008

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_14:
        DC32     0x5006000c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_15:
        DC32     0x50060010

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_16:
        DC32     0x50060004

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_17:
        DC32     0x50060014

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_18:
        DC32     0x5006001c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_19:
        DC32     0x50060018

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)

        END
// 
// 854 bytes in section .text
// 
// 854 bytes of CODE memory
//
//Errors: none
//Warnings: none
