///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.10.2.52244/W32 for ARM    04/Dec/2013  10:58:10 /
// Copyright 1999-2010 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\STM32F2xx_StdPeriph_Driver\src\stm32f /
//                    2xx_fsmc.c                                              /
//    Command line =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\STM32F2xx_StdPeriph_Driver\src\stm32f /
//                    2xx_fsmc.c -D STM32F10X_CL -D USE_STDPERIPH_DRIVER      /
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
//                    IAR6.1\STM32_Boot\EWARM\Debug\List\stm32f2xx_fsmc.s     /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f2xx_fsmc

        PUBLIC FSMC_ClearFlag
        PUBLIC FSMC_ClearITPendingBit
        PUBLIC FSMC_GetECC
        PUBLIC FSMC_GetFlagStatus
        PUBLIC FSMC_GetITStatus
        PUBLIC FSMC_ITConfig
        PUBLIC FSMC_NANDCmd
        PUBLIC FSMC_NANDDeInit
        PUBLIC FSMC_NANDECCCmd
        PUBLIC FSMC_NANDInit
        PUBLIC FSMC_NANDStructInit
        PUBLIC FSMC_NORSRAMCmd
        PUBLIC FSMC_NORSRAMDeInit
        PUBLIC FSMC_NORSRAMInit
        PUBLIC FSMC_NORSRAMStructInit
        PUBLIC FSMC_PCCARDCmd
        PUBLIC FSMC_PCCARDDeInit
        PUBLIC FSMC_PCCARDInit
        PUBLIC FSMC_PCCARDStructInit


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FSMC_NORSRAMDeInit:
        CMP      R0,#+0
        BNE.N    ??FSMC_NORSRAMDeInit_0
        LSLS     R1,R0,#+2
        SUBS     R1,R1,#+1610612736
        MOVW     R2,#+12507
        STR      R2,[R1, #+0]
        B.N      ??FSMC_NORSRAMDeInit_1
??FSMC_NORSRAMDeInit_0:
        LSLS     R1,R0,#+2
        SUBS     R1,R1,#+1610612736
        MOVW     R2,#+12498
        STR      R2,[R1, #+0]
??FSMC_NORSRAMDeInit_1:
        LSLS     R1,R0,#+2
        SUBS     R1,R1,#+1610612736
        MVNS     R2,#-268435456
        STR      R2,[R1, #+4]
        LDR.W    R1,??DataTable15  ;; 0xa0000104
        MVNS     R2,#-268435456
        STR      R2,[R1, R0, LSL #+2]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FSMC_NORSRAMInit:
        LDR      R1,[R0, #+4]
        LDR      R2,[R0, #+8]
        ORRS     R1,R2,R1
        LDR      R2,[R0, #+12]
        ORRS     R1,R2,R1
        LDR      R2,[R0, #+16]
        ORRS     R1,R2,R1
        LDR      R2,[R0, #+20]
        ORRS     R1,R2,R1
        LDR      R2,[R0, #+24]
        ORRS     R1,R2,R1
        LDR      R2,[R0, #+28]
        ORRS     R1,R2,R1
        LDR      R2,[R0, #+32]
        ORRS     R1,R2,R1
        LDR      R2,[R0, #+36]
        ORRS     R1,R2,R1
        LDR      R2,[R0, #+40]
        ORRS     R1,R2,R1
        LDR      R2,[R0, #+44]
        ORRS     R1,R2,R1
        LDR      R2,[R0, #+48]
        ORRS     R1,R2,R1
        LDR      R2,[R0, #+0]
        LSLS     R2,R2,#+2
        SUBS     R2,R2,#+1610612736
        STR      R1,[R2, #+0]
        LDR      R1,[R0, #+8]
        CMP      R1,#+8
        BNE.N    ??FSMC_NORSRAMInit_0
        LDR      R1,[R0, #+0]
        LSLS     R1,R1,#+2
        SUBS     R1,R1,#+1610612736
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x40
        LDR      R2,[R0, #+0]
        LSLS     R2,R2,#+2
        SUBS     R2,R2,#+1610612736
        STR      R1,[R2, #+0]
??FSMC_NORSRAMInit_0:
        LDR      R1,[R0, #+52]
        LDR      R1,[R1, #+0]
        LDR      R2,[R0, #+52]
        LDR      R2,[R2, #+4]
        ORRS     R1,R1,R2, LSL #+4
        LDR      R2,[R0, #+52]
        LDR      R2,[R2, #+8]
        ORRS     R1,R1,R2, LSL #+8
        LDR      R2,[R0, #+52]
        LDR      R2,[R2, #+12]
        ORRS     R1,R1,R2, LSL #+16
        LDR      R2,[R0, #+52]
        LDR      R2,[R2, #+16]
        ORRS     R1,R1,R2, LSL #+20
        LDR      R2,[R0, #+52]
        LDR      R2,[R2, #+20]
        ORRS     R1,R1,R2, LSL #+24
        LDR      R2,[R0, #+52]
        LDR      R2,[R2, #+24]
        ORRS     R1,R2,R1
        LDR      R2,[R0, #+0]
        LSLS     R2,R2,#+2
        SUBS     R2,R2,#+1610612736
        STR      R1,[R2, #+4]
        LDR      R1,[R0, #+44]
        CMP      R1,#+16384
        BNE.N    ??FSMC_NORSRAMInit_1
        LDR      R1,[R0, #+56]
        LDR      R1,[R1, #+0]
        LDR      R2,[R0, #+56]
        LDR      R2,[R2, #+4]
        ORRS     R1,R1,R2, LSL #+4
        LDR      R2,[R0, #+56]
        LDR      R2,[R2, #+8]
        ORRS     R1,R1,R2, LSL #+8
        LDR      R2,[R0, #+56]
        LDR      R2,[R2, #+16]
        ORRS     R1,R1,R2, LSL #+20
        LDR      R2,[R0, #+56]
        LDR      R2,[R2, #+20]
        ORRS     R1,R1,R2, LSL #+24
        LDR      R2,[R0, #+56]
        LDR      R2,[R2, #+24]
        ORRS     R1,R2,R1
        LDR      R2,[R0, #+0]
        LDR.W    R3,??DataTable15  ;; 0xa0000104
        STR      R1,[R3, R2, LSL #+2]
        B.N      ??FSMC_NORSRAMInit_2
??FSMC_NORSRAMInit_1:
        LDR      R1,[R0, #+0]
        LDR.W    R2,??DataTable15  ;; 0xa0000104
        MVNS     R3,#-268435456
        STR      R3,[R2, R1, LSL #+2]
??FSMC_NORSRAMInit_2:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FSMC_NORSRAMStructInit:
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        MOVS     R1,#+2
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
        MOVS     R1,#+0
        STR      R1,[R0, #+32]
        MOV      R1,#+4096
        STR      R1,[R0, #+36]
        MOV      R1,#+8192
        STR      R1,[R0, #+40]
        MOVS     R1,#+0
        STR      R1,[R0, #+44]
        MOVS     R1,#+0
        STR      R1,[R0, #+48]
        LDR      R1,[R0, #+52]
        MOVS     R2,#+15
        STR      R2,[R1, #+0]
        LDR      R1,[R0, #+52]
        MOVS     R2,#+15
        STR      R2,[R1, #+4]
        LDR      R1,[R0, #+52]
        MOVS     R2,#+255
        STR      R2,[R1, #+8]
        LDR      R1,[R0, #+52]
        MOVS     R2,#+15
        STR      R2,[R1, #+12]
        LDR      R1,[R0, #+52]
        MOVS     R2,#+15
        STR      R2,[R1, #+16]
        LDR      R1,[R0, #+52]
        MOVS     R2,#+15
        STR      R2,[R1, #+20]
        LDR      R1,[R0, #+52]
        MOVS     R2,#+0
        STR      R2,[R1, #+24]
        LDR      R1,[R0, #+56]
        MOVS     R2,#+15
        STR      R2,[R1, #+0]
        LDR      R1,[R0, #+56]
        MOVS     R2,#+15
        STR      R2,[R1, #+4]
        LDR      R1,[R0, #+56]
        MOVS     R2,#+255
        STR      R2,[R1, #+8]
        LDR      R1,[R0, #+56]
        MOVS     R2,#+15
        STR      R2,[R1, #+12]
        LDR      R1,[R0, #+56]
        MOVS     R2,#+15
        STR      R2,[R1, #+16]
        LDR      R1,[R0, #+56]
        MOVS     R2,#+15
        STR      R2,[R1, #+20]
        LDR      R1,[R0, #+56]
        MOVS     R2,#+0
        STR      R2,[R1, #+24]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FSMC_NORSRAMCmd:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??FSMC_NORSRAMCmd_0
        LSLS     R2,R0,#+2
        SUBS     R2,R2,#+1610612736
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x1
        LSLS     R3,R0,#+2
        SUBS     R3,R3,#+1610612736
        STR      R2,[R3, #+0]
        B.N      ??FSMC_NORSRAMCmd_1
??FSMC_NORSRAMCmd_0:
        LSLS     R2,R0,#+2
        SUBS     R2,R2,#+1610612736
        LDR      R2,[R2, #+0]
        LDR.W    R3,??DataTable15_1  ;; 0xffffe
        ANDS     R2,R3,R2
        LSLS     R3,R0,#+2
        SUBS     R3,R3,#+1610612736
        STR      R2,[R3, #+0]
??FSMC_NORSRAMCmd_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FSMC_NANDDeInit:
        CMP      R0,#+16
        BNE.N    ??FSMC_NANDDeInit_0
        LDR.W    R1,??DataTable15_2  ;; 0xa0000060
        MOVS     R2,#+24
        STR      R2,[R1, #+0]
        LDR.W    R1,??DataTable15_3  ;; 0xa0000064
        MOVS     R2,#+64
        STR      R2,[R1, #+0]
        LDR.W    R1,??DataTable15_4  ;; 0xa0000068
        MOVS     R2,#-50529028
        STR      R2,[R1, #+0]
        LDR.W    R1,??DataTable15_5  ;; 0xa000006c
        MOVS     R2,#-50529028
        STR      R2,[R1, #+0]
        B.N      ??FSMC_NANDDeInit_1
??FSMC_NANDDeInit_0:
        LDR.W    R1,??DataTable15_6  ;; 0xa0000080
        MOVS     R2,#+24
        STR      R2,[R1, #+0]
        LDR.W    R1,??DataTable15_7  ;; 0xa0000084
        MOVS     R2,#+64
        STR      R2,[R1, #+0]
        LDR.W    R1,??DataTable15_8  ;; 0xa0000088
        MOVS     R2,#-50529028
        STR      R2,[R1, #+0]
        LDR.W    R1,??DataTable15_9  ;; 0xa000008c
        MOVS     R2,#-50529028
        STR      R2,[R1, #+0]
??FSMC_NANDDeInit_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FSMC_NANDInit:
        PUSH     {R4,R5}
        MOVS     R1,#+0
        MOVS     R2,#+0
        MOVS     R3,#+0
        LDR      R4,[R0, #+4]
        LDR      R5,[R0, #+8]
        ORRS     R4,R5,R4
        LDR      R5,[R0, #+12]
        ORRS     R4,R5,R4
        LDR      R5,[R0, #+16]
        ORRS     R4,R5,R4
        LDR      R5,[R0, #+20]
        ORRS     R4,R4,R5, LSL #+9
        LDR      R5,[R0, #+24]
        ORRS     R4,R4,R5, LSL #+13
        ORRS     R4,R4,#0x8
        MOVS     R1,R4
        LDR      R4,[R0, #+28]
        LDR      R4,[R4, #+0]
        LDR      R5,[R0, #+28]
        LDR      R5,[R5, #+4]
        ORRS     R4,R4,R5, LSL #+8
        LDR      R5,[R0, #+28]
        LDR      R5,[R5, #+8]
        ORRS     R4,R4,R5, LSL #+16
        LDR      R5,[R0, #+28]
        LDR      R5,[R5, #+12]
        ORRS     R4,R4,R5, LSL #+24
        MOVS     R2,R4
        LDR      R4,[R0, #+32]
        LDR      R4,[R4, #+0]
        LDR      R5,[R0, #+32]
        LDR      R5,[R5, #+4]
        ORRS     R4,R4,R5, LSL #+8
        LDR      R5,[R0, #+32]
        LDR      R5,[R5, #+8]
        ORRS     R4,R4,R5, LSL #+16
        LDR      R5,[R0, #+32]
        LDR      R5,[R5, #+12]
        ORRS     R4,R4,R5, LSL #+24
        MOVS     R3,R4
        LDR      R4,[R0, #+0]
        CMP      R4,#+16
        BNE.N    ??FSMC_NANDInit_0
        LDR.W    R4,??DataTable15_2  ;; 0xa0000060
        STR      R1,[R4, #+0]
        LDR.W    R4,??DataTable15_4  ;; 0xa0000068
        STR      R2,[R4, #+0]
        LDR.W    R4,??DataTable15_5  ;; 0xa000006c
        STR      R3,[R4, #+0]
        B.N      ??FSMC_NANDInit_1
??FSMC_NANDInit_0:
        LDR.W    R4,??DataTable15_6  ;; 0xa0000080
        STR      R1,[R4, #+0]
        LDR.W    R4,??DataTable15_8  ;; 0xa0000088
        STR      R2,[R4, #+0]
        LDR.W    R4,??DataTable15_9  ;; 0xa000008c
        STR      R3,[R4, #+0]
??FSMC_NANDInit_1:
        POP      {R4,R5}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FSMC_NANDStructInit:
        MOVS     R1,#+16
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
        LDR      R1,[R0, #+28]
        MOVS     R2,#+252
        STR      R2,[R1, #+0]
        LDR      R1,[R0, #+28]
        MOVS     R2,#+252
        STR      R2,[R1, #+4]
        LDR      R1,[R0, #+28]
        MOVS     R2,#+252
        STR      R2,[R1, #+8]
        LDR      R1,[R0, #+28]
        MOVS     R2,#+252
        STR      R2,[R1, #+12]
        LDR      R1,[R0, #+32]
        MOVS     R2,#+252
        STR      R2,[R1, #+0]
        LDR      R1,[R0, #+32]
        MOVS     R2,#+252
        STR      R2,[R1, #+4]
        LDR      R1,[R0, #+32]
        MOVS     R2,#+252
        STR      R2,[R1, #+8]
        LDR      R1,[R0, #+32]
        MOVS     R2,#+252
        STR      R2,[R1, #+12]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FSMC_NANDCmd:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??FSMC_NANDCmd_0
        CMP      R0,#+16
        BNE.N    ??FSMC_NANDCmd_1
        LDR.W    R2,??DataTable15_2  ;; 0xa0000060
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x4
        LDR.W    R3,??DataTable15_2  ;; 0xa0000060
        STR      R2,[R3, #+0]
        B.N      ??FSMC_NANDCmd_2
??FSMC_NANDCmd_1:
        LDR.W    R2,??DataTable15_6  ;; 0xa0000080
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x4
        LDR.W    R3,??DataTable15_6  ;; 0xa0000080
        STR      R2,[R3, #+0]
        B.N      ??FSMC_NANDCmd_2
??FSMC_NANDCmd_0:
        CMP      R0,#+16
        BNE.N    ??FSMC_NANDCmd_3
        LDR.W    R2,??DataTable15_2  ;; 0xa0000060
        LDR      R2,[R2, #+0]
        LDR.W    R3,??DataTable15_10  ;; 0xffffb
        ANDS     R2,R3,R2
        LDR.N    R3,??DataTable15_2  ;; 0xa0000060
        STR      R2,[R3, #+0]
        B.N      ??FSMC_NANDCmd_2
??FSMC_NANDCmd_3:
        LDR.N    R2,??DataTable15_6  ;; 0xa0000080
        LDR      R2,[R2, #+0]
        LDR.W    R3,??DataTable15_10  ;; 0xffffb
        ANDS     R2,R3,R2
        LDR.N    R3,??DataTable15_6  ;; 0xa0000080
        STR      R2,[R3, #+0]
??FSMC_NANDCmd_2:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FSMC_NANDECCCmd:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??FSMC_NANDECCCmd_0
        CMP      R0,#+16
        BNE.N    ??FSMC_NANDECCCmd_1
        LDR.N    R2,??DataTable15_2  ;; 0xa0000060
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x40
        LDR.N    R3,??DataTable15_2  ;; 0xa0000060
        STR      R2,[R3, #+0]
        B.N      ??FSMC_NANDECCCmd_2
??FSMC_NANDECCCmd_1:
        LDR.N    R2,??DataTable15_6  ;; 0xa0000080
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x40
        LDR.N    R3,??DataTable15_6  ;; 0xa0000080
        STR      R2,[R3, #+0]
        B.N      ??FSMC_NANDECCCmd_2
??FSMC_NANDECCCmd_0:
        CMP      R0,#+16
        BNE.N    ??FSMC_NANDECCCmd_3
        LDR.N    R2,??DataTable15_2  ;; 0xa0000060
        LDR      R2,[R2, #+0]
        LDR.N    R3,??DataTable15_11  ;; 0xfffbf
        ANDS     R2,R3,R2
        LDR.N    R3,??DataTable15_2  ;; 0xa0000060
        STR      R2,[R3, #+0]
        B.N      ??FSMC_NANDECCCmd_2
??FSMC_NANDECCCmd_3:
        LDR.N    R2,??DataTable15_6  ;; 0xa0000080
        LDR      R2,[R2, #+0]
        LDR.N    R3,??DataTable15_11  ;; 0xfffbf
        ANDS     R2,R3,R2
        LDR.N    R3,??DataTable15_6  ;; 0xa0000080
        STR      R2,[R3, #+0]
??FSMC_NANDECCCmd_2:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FSMC_GetECC:
        MOVS     R1,R0
        MOVS     R0,#+0
        CMP      R1,#+16
        BNE.N    ??FSMC_GetECC_0
        LDR.N    R2,??DataTable15_12  ;; 0xa0000074
        LDR      R2,[R2, #+0]
        MOVS     R0,R2
        B.N      ??FSMC_GetECC_1
??FSMC_GetECC_0:
        LDR.N    R2,??DataTable15_13  ;; 0xa0000094
        LDR      R2,[R2, #+0]
        MOVS     R0,R2
??FSMC_GetECC_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FSMC_PCCARDDeInit:
        LDR.N    R0,??DataTable15_14  ;; 0xa00000a0
        MOVS     R1,#+24
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable15_15  ;; 0xa00000a4
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable15_16  ;; 0xa00000a8
        MOVS     R1,#-50529028
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable15_17  ;; 0xa00000ac
        MOVS     R1,#-50529028
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable15_18  ;; 0xa00000b0
        MOVS     R1,#-50529028
        STR      R1,[R0, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FSMC_PCCARDInit:
        LDR      R1,[R0, #+0]
        LDR      R2,[R0, #+4]
        ORRS     R1,R1,R2, LSL #+9
        LDR      R2,[R0, #+8]
        ORRS     R1,R1,R2, LSL #+13
        ORRS     R1,R1,#0x10
        LDR.N    R2,??DataTable15_14  ;; 0xa00000a0
        STR      R1,[R2, #+0]
        LDR      R1,[R0, #+12]
        LDR      R1,[R1, #+0]
        LDR      R2,[R0, #+12]
        LDR      R2,[R2, #+4]
        ORRS     R1,R1,R2, LSL #+8
        LDR      R2,[R0, #+12]
        LDR      R2,[R2, #+8]
        ORRS     R1,R1,R2, LSL #+16
        LDR      R2,[R0, #+12]
        LDR      R2,[R2, #+12]
        ORRS     R1,R1,R2, LSL #+24
        LDR.N    R2,??DataTable15_16  ;; 0xa00000a8
        STR      R1,[R2, #+0]
        LDR      R1,[R0, #+16]
        LDR      R1,[R1, #+0]
        LDR      R2,[R0, #+16]
        LDR      R2,[R2, #+4]
        ORRS     R1,R1,R2, LSL #+8
        LDR      R2,[R0, #+16]
        LDR      R2,[R2, #+8]
        ORRS     R1,R1,R2, LSL #+16
        LDR      R2,[R0, #+16]
        LDR      R2,[R2, #+12]
        ORRS     R1,R1,R2, LSL #+24
        LDR.N    R2,??DataTable15_17  ;; 0xa00000ac
        STR      R1,[R2, #+0]
        LDR      R1,[R0, #+20]
        LDR      R1,[R1, #+0]
        LDR      R2,[R0, #+20]
        LDR      R2,[R2, #+4]
        ORRS     R1,R1,R2, LSL #+8
        LDR      R2,[R0, #+20]
        LDR      R2,[R2, #+8]
        ORRS     R1,R1,R2, LSL #+16
        LDR      R2,[R0, #+20]
        LDR      R2,[R2, #+12]
        ORRS     R1,R1,R2, LSL #+24
        LDR.N    R2,??DataTable15_18  ;; 0xa00000b0
        STR      R1,[R2, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FSMC_PCCARDStructInit:
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        LDR      R1,[R0, #+12]
        MOVS     R2,#+252
        STR      R2,[R1, #+0]
        LDR      R1,[R0, #+12]
        MOVS     R2,#+252
        STR      R2,[R1, #+4]
        LDR      R1,[R0, #+12]
        MOVS     R2,#+252
        STR      R2,[R1, #+8]
        LDR      R1,[R0, #+12]
        MOVS     R2,#+252
        STR      R2,[R1, #+12]
        LDR      R1,[R0, #+16]
        MOVS     R2,#+252
        STR      R2,[R1, #+0]
        LDR      R1,[R0, #+16]
        MOVS     R2,#+252
        STR      R2,[R1, #+4]
        LDR      R1,[R0, #+16]
        MOVS     R2,#+252
        STR      R2,[R1, #+8]
        LDR      R1,[R0, #+16]
        MOVS     R2,#+252
        STR      R2,[R1, #+12]
        LDR      R1,[R0, #+20]
        MOVS     R2,#+252
        STR      R2,[R1, #+0]
        LDR      R1,[R0, #+20]
        MOVS     R2,#+252
        STR      R2,[R1, #+4]
        LDR      R1,[R0, #+20]
        MOVS     R2,#+252
        STR      R2,[R1, #+8]
        LDR      R1,[R0, #+20]
        MOVS     R2,#+252
        STR      R2,[R1, #+12]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FSMC_PCCARDCmd:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??FSMC_PCCARDCmd_0
        LDR.N    R1,??DataTable15_14  ;; 0xa00000a0
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x4
        LDR.N    R2,??DataTable15_14  ;; 0xa00000a0
        STR      R1,[R2, #+0]
        B.N      ??FSMC_PCCARDCmd_1
??FSMC_PCCARDCmd_0:
        LDR.N    R1,??DataTable15_14  ;; 0xa00000a0
        LDR      R1,[R1, #+0]
        LDR.N    R2,??DataTable15_10  ;; 0xffffb
        ANDS     R1,R2,R1
        LDR.N    R2,??DataTable15_14  ;; 0xa00000a0
        STR      R1,[R2, #+0]
??FSMC_PCCARDCmd_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FSMC_ITConfig:
        PUSH     {R4}
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??FSMC_ITConfig_0
        CMP      R0,#+16
        BNE.N    ??FSMC_ITConfig_1
        LDR.N    R3,??DataTable15_3  ;; 0xa0000064
        LDR      R3,[R3, #+0]
        ORRS     R3,R1,R3
        LDR.N    R4,??DataTable15_3  ;; 0xa0000064
        STR      R3,[R4, #+0]
        B.N      ??FSMC_ITConfig_2
??FSMC_ITConfig_1:
        MOV      R3,#+256
        CMP      R0,R3
        BNE.N    ??FSMC_ITConfig_3
        LDR.N    R3,??DataTable15_7  ;; 0xa0000084
        LDR      R3,[R3, #+0]
        ORRS     R3,R1,R3
        LDR.N    R4,??DataTable15_7  ;; 0xa0000084
        STR      R3,[R4, #+0]
        B.N      ??FSMC_ITConfig_2
??FSMC_ITConfig_3:
        LDR.N    R3,??DataTable15_15  ;; 0xa00000a4
        LDR      R3,[R3, #+0]
        ORRS     R3,R1,R3
        LDR.N    R4,??DataTable15_15  ;; 0xa00000a4
        STR      R3,[R4, #+0]
        B.N      ??FSMC_ITConfig_2
??FSMC_ITConfig_0:
        CMP      R0,#+16
        BNE.N    ??FSMC_ITConfig_4
        LDR.N    R3,??DataTable15_3  ;; 0xa0000064
        LDR      R3,[R3, #+0]
        BICS     R3,R3,R1
        LDR.N    R4,??DataTable15_3  ;; 0xa0000064
        STR      R3,[R4, #+0]
        B.N      ??FSMC_ITConfig_2
??FSMC_ITConfig_4:
        MOV      R3,#+256
        CMP      R0,R3
        BNE.N    ??FSMC_ITConfig_5
        LDR.N    R3,??DataTable15_7  ;; 0xa0000084
        LDR      R3,[R3, #+0]
        BICS     R3,R3,R1
        LDR.N    R4,??DataTable15_7  ;; 0xa0000084
        STR      R3,[R4, #+0]
        B.N      ??FSMC_ITConfig_2
??FSMC_ITConfig_5:
        LDR.N    R3,??DataTable15_15  ;; 0xa00000a4
        LDR      R3,[R3, #+0]
        BICS     R3,R3,R1
        LDR.N    R4,??DataTable15_15  ;; 0xa00000a4
        STR      R3,[R4, #+0]
??FSMC_ITConfig_2:
        POP      {R4}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FSMC_GetFlagStatus:
        PUSH     {R4}
        MOVS     R2,R0
        MOVS     R0,#+0
        MOVS     R3,#+0
        CMP      R2,#+16
        BNE.N    ??FSMC_GetFlagStatus_0
        LDR.N    R4,??DataTable15_3  ;; 0xa0000064
        LDR      R4,[R4, #+0]
        MOVS     R3,R4
        B.N      ??FSMC_GetFlagStatus_1
??FSMC_GetFlagStatus_0:
        MOV      R4,#+256
        CMP      R2,R4
        BNE.N    ??FSMC_GetFlagStatus_2
        LDR.N    R4,??DataTable15_7  ;; 0xa0000084
        LDR      R4,[R4, #+0]
        MOVS     R3,R4
        B.N      ??FSMC_GetFlagStatus_1
??FSMC_GetFlagStatus_2:
        LDR.N    R4,??DataTable15_15  ;; 0xa00000a4
        LDR      R4,[R4, #+0]
        MOVS     R3,R4
??FSMC_GetFlagStatus_1:
        TST      R3,R1
        BEQ.N    ??FSMC_GetFlagStatus_3
        MOVS     R4,#+1
        MOVS     R0,R4
        B.N      ??FSMC_GetFlagStatus_4
??FSMC_GetFlagStatus_3:
        MOVS     R4,#+0
        MOVS     R0,R4
??FSMC_GetFlagStatus_4:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FSMC_ClearFlag:
        CMP      R0,#+16
        BNE.N    ??FSMC_ClearFlag_0
        LDR.N    R2,??DataTable15_3  ;; 0xa0000064
        LDR      R2,[R2, #+0]
        BICS     R2,R2,R1
        LDR.N    R3,??DataTable15_3  ;; 0xa0000064
        STR      R2,[R3, #+0]
        B.N      ??FSMC_ClearFlag_1
??FSMC_ClearFlag_0:
        MOV      R2,#+256
        CMP      R0,R2
        BNE.N    ??FSMC_ClearFlag_2
        LDR.N    R2,??DataTable15_7  ;; 0xa0000084
        LDR      R2,[R2, #+0]
        BICS     R2,R2,R1
        LDR.N    R3,??DataTable15_7  ;; 0xa0000084
        STR      R2,[R3, #+0]
        B.N      ??FSMC_ClearFlag_1
??FSMC_ClearFlag_2:
        LDR.N    R2,??DataTable15_15  ;; 0xa00000a4
        LDR      R2,[R2, #+0]
        BICS     R2,R2,R1
        LDR.N    R3,??DataTable15_15  ;; 0xa00000a4
        STR      R2,[R3, #+0]
??FSMC_ClearFlag_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FSMC_GetITStatus:
        PUSH     {R4-R6}
        MOVS     R2,R0
        MOVS     R0,#+0
        MOVS     R3,#+0
        MOVS     R4,#+0
        MOVS     R5,#+0
        CMP      R2,#+16
        BNE.N    ??FSMC_GetITStatus_0
        LDR.N    R6,??DataTable15_3  ;; 0xa0000064
        LDR      R6,[R6, #+0]
        MOVS     R3,R6
        B.N      ??FSMC_GetITStatus_1
??FSMC_GetITStatus_0:
        MOV      R6,#+256
        CMP      R2,R6
        BNE.N    ??FSMC_GetITStatus_2
        LDR.N    R6,??DataTable15_7  ;; 0xa0000084
        LDR      R6,[R6, #+0]
        MOVS     R3,R6
        B.N      ??FSMC_GetITStatus_1
??FSMC_GetITStatus_2:
        LDR.N    R6,??DataTable15_15  ;; 0xa00000a4
        LDR      R6,[R6, #+0]
        MOVS     R3,R6
??FSMC_GetITStatus_1:
        ANDS     R6,R1,R3
        MOVS     R4,R6
        ANDS     R6,R3,R1, LSR #+3
        MOVS     R5,R6
        CMP      R4,#+0
        BEQ.N    ??FSMC_GetITStatus_3
        CMP      R5,#+0
        BEQ.N    ??FSMC_GetITStatus_3
        MOVS     R6,#+1
        MOVS     R0,R6
        B.N      ??FSMC_GetITStatus_4
??FSMC_GetITStatus_3:
        MOVS     R6,#+0
        MOVS     R0,R6
??FSMC_GetITStatus_4:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FSMC_ClearITPendingBit:
        PUSH     {R4}
        CMP      R0,#+16
        BNE.N    ??FSMC_ClearITPendingBit_0
        LDR.N    R2,??DataTable15_3  ;; 0xa0000064
        LDR      R2,[R2, #+0]
        UBFX     R3,R1,#+3,#+29
        MVNS     R4,#-536870912
        EORS     R3,R4,R3
        ANDS     R2,R3,R2
        LDR.N    R3,??DataTable15_3  ;; 0xa0000064
        STR      R2,[R3, #+0]
        B.N      ??FSMC_ClearITPendingBit_1
??FSMC_ClearITPendingBit_0:
        MOV      R2,#+256
        CMP      R0,R2
        BNE.N    ??FSMC_ClearITPendingBit_2
        LDR.N    R2,??DataTable15_7  ;; 0xa0000084
        LDR      R2,[R2, #+0]
        UBFX     R3,R1,#+3,#+29
        MVNS     R4,#-536870912
        EORS     R3,R4,R3
        ANDS     R2,R3,R2
        LDR.N    R3,??DataTable15_7  ;; 0xa0000084
        STR      R2,[R3, #+0]
        B.N      ??FSMC_ClearITPendingBit_1
??FSMC_ClearITPendingBit_2:
        LDR.N    R2,??DataTable15_15  ;; 0xa00000a4
        LDR      R2,[R2, #+0]
        UBFX     R3,R1,#+3,#+29
        MVNS     R4,#-536870912
        EORS     R3,R4,R3
        ANDS     R2,R3,R2
        LDR.N    R3,??DataTable15_15  ;; 0xa00000a4
        STR      R2,[R3, #+0]
??FSMC_ClearITPendingBit_1:
        POP      {R4}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable15:
        DC32     0xa0000104

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable15_1:
        DC32     0xffffe

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable15_2:
        DC32     0xa0000060

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable15_3:
        DC32     0xa0000064

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable15_4:
        DC32     0xa0000068

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable15_5:
        DC32     0xa000006c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable15_6:
        DC32     0xa0000080

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable15_7:
        DC32     0xa0000084

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable15_8:
        DC32     0xa0000088

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable15_9:
        DC32     0xa000008c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable15_10:
        DC32     0xffffb

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable15_11:
        DC32     0xfffbf

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable15_12:
        DC32     0xa0000074

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable15_13:
        DC32     0xa0000094

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable15_14:
        DC32     0xa00000a0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable15_15:
        DC32     0xa00000a4

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable15_16:
        DC32     0xa00000a8

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable15_17:
        DC32     0xa00000ac

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable15_18:
        DC32     0xa00000b0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)

        END
// 
// 1 692 bytes in section .text
// 
// 1 692 bytes of CODE memory
//
//Errors: none
//Warnings: none
