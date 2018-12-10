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
//                    2xx_dma.c                                               /
//    Command line =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\STM32F2xx_StdPeriph_Driver\src\stm32f /
//                    2xx_dma.c -D STM32F10X_CL -D USE_STDPERIPH_DRIVER -lcN  /
//                    D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\EWARM\Debug\List\ -lb                 /
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
//                    IAR6.1\STM32_Boot\EWARM\Debug\List\stm32f2xx_dma.s      /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f2xx_dma

        EXTERN __aeabi_assert
        EXTERN __iar_EmptyStepPoint

        PUBLIC DMA_ClearFlag
        PUBLIC DMA_ClearITPendingBit
        PUBLIC DMA_Cmd
        PUBLIC DMA_DeInit
        PUBLIC DMA_DoubleBufferModeCmd
        PUBLIC DMA_DoubleBufferModeConfig
        PUBLIC DMA_FlowControllerConfig
        PUBLIC DMA_GetCmdStatus
        PUBLIC DMA_GetCurrDataCounter
        PUBLIC DMA_GetCurrentMemoryTarget
        PUBLIC DMA_GetFIFOStatus
        PUBLIC DMA_GetFlagStatus
        PUBLIC DMA_GetITStatus
        PUBLIC DMA_ITConfig
        PUBLIC DMA_Init
        PUBLIC DMA_MemoryTargetConfig
        PUBLIC DMA_PeriphIncOffsetSizeConfig
        PUBLIC DMA_SetCurrDataCounter
        PUBLIC DMA_StructInit


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DMA_DeInit:
        LDR      R1,[R0, #+0]
        LSRS     R1,R1,#+1
        LSLS     R1,R1,#+1
        STR      R1,[R0, #+0]
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
        MOVS     R1,#+33
        STR      R1,[R0, #+20]
        LDR.W    R1,??DataTable19  ;; 0x40026010
        CMP      R0,R1
        BNE.N    ??DMA_DeInit_0
        LDR.W    R1,??DataTable19_1  ;; 0x40026008
        MOVS     R2,#+61
        STR      R2,[R1, #+0]
        B.N      ??DMA_DeInit_1
??DMA_DeInit_0:
        LDR.W    R1,??DataTable19_2  ;; 0x40026028
        CMP      R0,R1
        BNE.N    ??DMA_DeInit_2
        LDR.W    R1,??DataTable19_1  ;; 0x40026008
        MOV      R2,#+3904
        STR      R2,[R1, #+0]
        B.N      ??DMA_DeInit_1
??DMA_DeInit_2:
        LDR.W    R1,??DataTable19_3  ;; 0x40026040
        CMP      R0,R1
        BNE.N    ??DMA_DeInit_3
        LDR.W    R1,??DataTable19_1  ;; 0x40026008
        MOVS     R2,#+3997696
        STR      R2,[R1, #+0]
        B.N      ??DMA_DeInit_1
??DMA_DeInit_3:
        LDR.W    R1,??DataTable19_4  ;; 0x40026058
        CMP      R0,R1
        BNE.N    ??DMA_DeInit_4
        LDR.W    R1,??DataTable19_1  ;; 0x40026008
        MOVS     R2,#+255852544
        STR      R2,[R1, #+0]
        B.N      ??DMA_DeInit_1
??DMA_DeInit_4:
        LDR.W    R1,??DataTable19_5  ;; 0x40026070
        CMP      R0,R1
        BNE.N    ??DMA_DeInit_5
        LDR.W    R1,??DataTable19_6  ;; 0x4002600c
        LDR.W    R2,??DataTable19_7  ;; 0x2000003d
        STR      R2,[R1, #+0]
        B.N      ??DMA_DeInit_1
??DMA_DeInit_5:
        LDR.W    R1,??DataTable19_8  ;; 0x40026088
        CMP      R0,R1
        BNE.N    ??DMA_DeInit_6
        LDR.W    R1,??DataTable19_6  ;; 0x4002600c
        LDR.W    R2,??DataTable19_9  ;; 0x20000f40
        STR      R2,[R1, #+0]
        B.N      ??DMA_DeInit_1
??DMA_DeInit_6:
        LDR.W    R1,??DataTable19_10  ;; 0x400260a0
        CMP      R0,R1
        BNE.N    ??DMA_DeInit_7
        LDR.W    R1,??DataTable19_6  ;; 0x4002600c
        LDR.W    R2,??DataTable19_11  ;; 0x203d0000
        STR      R2,[R1, #+0]
        B.N      ??DMA_DeInit_1
??DMA_DeInit_7:
        LDR.W    R1,??DataTable19_12  ;; 0x400260b8
        CMP      R0,R1
        BNE.N    ??DMA_DeInit_8
        LDR.W    R1,??DataTable19_6  ;; 0x4002600c
        MOVS     R2,#+792723456
        STR      R2,[R1, #+0]
        B.N      ??DMA_DeInit_1
??DMA_DeInit_8:
        LDR.W    R1,??DataTable19_13  ;; 0x40026410
        CMP      R0,R1
        BNE.N    ??DMA_DeInit_9
        LDR.W    R1,??DataTable19_14  ;; 0x40026408
        MOVS     R2,#+61
        STR      R2,[R1, #+0]
        B.N      ??DMA_DeInit_1
??DMA_DeInit_9:
        LDR.W    R1,??DataTable19_15  ;; 0x40026428
        CMP      R0,R1
        BNE.N    ??DMA_DeInit_10
        LDR.W    R1,??DataTable19_14  ;; 0x40026408
        MOV      R2,#+3904
        STR      R2,[R1, #+0]
        B.N      ??DMA_DeInit_1
??DMA_DeInit_10:
        LDR.W    R1,??DataTable19_16  ;; 0x40026440
        CMP      R0,R1
        BNE.N    ??DMA_DeInit_11
        LDR.W    R1,??DataTable19_14  ;; 0x40026408
        MOVS     R2,#+3997696
        STR      R2,[R1, #+0]
        B.N      ??DMA_DeInit_1
??DMA_DeInit_11:
        LDR.W    R1,??DataTable19_17  ;; 0x40026458
        CMP      R0,R1
        BNE.N    ??DMA_DeInit_12
        LDR.W    R1,??DataTable19_14  ;; 0x40026408
        MOVS     R2,#+255852544
        STR      R2,[R1, #+0]
        B.N      ??DMA_DeInit_1
??DMA_DeInit_12:
        LDR.W    R1,??DataTable19_18  ;; 0x40026470
        CMP      R0,R1
        BNE.N    ??DMA_DeInit_13
        LDR.W    R1,??DataTable22  ;; 0x4002640c
        LDR.W    R2,??DataTable19_7  ;; 0x2000003d
        STR      R2,[R1, #+0]
        B.N      ??DMA_DeInit_1
??DMA_DeInit_13:
        LDR.W    R1,??DataTable19_19  ;; 0x40026488
        CMP      R0,R1
        BNE.N    ??DMA_DeInit_14
        LDR.W    R1,??DataTable22  ;; 0x4002640c
        LDR.W    R2,??DataTable19_9  ;; 0x20000f40
        STR      R2,[R1, #+0]
        B.N      ??DMA_DeInit_1
??DMA_DeInit_14:
        LDR.W    R1,??DataTable19_20  ;; 0x400264a0
        CMP      R0,R1
        BNE.N    ??DMA_DeInit_15
        LDR.W    R1,??DataTable22  ;; 0x4002640c
        LDR.W    R2,??DataTable19_11  ;; 0x203d0000
        STR      R2,[R1, #+0]
        B.N      ??DMA_DeInit_1
??DMA_DeInit_15:
        LDR.W    R1,??DataTable19_21  ;; 0x400264b8
        CMP      R0,R1
        BNE.N    ??DMA_DeInit_1
        LDR.W    R1,??DataTable22  ;; 0x4002640c
        MOVS     R2,#+792723456
        STR      R2,[R1, #+0]
??DMA_DeInit_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DMA_Init:
        PUSH     {R4}
        MOVS     R2,#+0
        LDR      R3,[R0, #+0]
        MOVS     R2,R3
        LDR.W    R3,??DataTable22_1  ;; 0xf01c803f
        ANDS     R2,R3,R2
        LDR      R3,[R1, #+0]
        LDR      R4,[R1, #+12]
        ORRS     R3,R4,R3
        LDR      R4,[R1, #+20]
        ORRS     R3,R4,R3
        LDR      R4,[R1, #+24]
        ORRS     R3,R4,R3
        LDR      R4,[R1, #+28]
        ORRS     R3,R4,R3
        LDR      R4,[R1, #+32]
        ORRS     R3,R4,R3
        LDR      R4,[R1, #+36]
        ORRS     R3,R4,R3
        LDR      R4,[R1, #+40]
        ORRS     R3,R4,R3
        LDR      R4,[R1, #+52]
        ORRS     R3,R4,R3
        LDR      R4,[R1, #+56]
        ORRS     R3,R4,R3
        ORRS     R2,R3,R2
        STR      R2,[R0, #+0]
        LDR      R3,[R0, #+20]
        MOVS     R2,R3
        LSRS     R2,R2,#+3
        LSLS     R2,R2,#+3
        LDR      R3,[R1, #+44]
        LDR      R4,[R1, #+48]
        ORRS     R3,R4,R3
        ORRS     R2,R3,R2
        STR      R2,[R0, #+20]
        LDR      R3,[R1, #+16]
        STR      R3,[R0, #+4]
        LDR      R3,[R1, #+4]
        STR      R3,[R0, #+8]
        LDR      R3,[R1, #+8]
        STR      R3,[R0, #+12]
        POP      {R4}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DMA_StructInit:
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
        MOVS     R1,#+0
        STR      R1,[R0, #+32]
        MOVS     R1,#+0
        STR      R1,[R0, #+36]
        MOVS     R1,#+0
        STR      R1,[R0, #+40]
        MOVS     R1,#+0
        STR      R1,[R0, #+44]
        MOVS     R1,#+0
        STR      R1,[R0, #+48]
        MOVS     R1,#+0
        STR      R1,[R0, #+52]
        MOVS     R1,#+0
        STR      R1,[R0, #+56]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DMA_Cmd:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??DMA_Cmd_0
        LDR      R2,[R0, #+0]
        ORRS     R2,R2,#0x1
        STR      R2,[R0, #+0]
        B.N      ??DMA_Cmd_1
??DMA_Cmd_0:
        LDR      R2,[R0, #+0]
        LSRS     R2,R2,#+1
        LSLS     R2,R2,#+1
        STR      R2,[R0, #+0]
??DMA_Cmd_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DMA_PeriphIncOffsetSizeConfig:
        CMP      R1,#+0
        BEQ.N    ??DMA_PeriphIncOffsetSizeConfig_0
        LDR      R2,[R0, #+0]
        ORRS     R2,R2,#0x8000
        STR      R2,[R0, #+0]
        B.N      ??DMA_PeriphIncOffsetSizeConfig_1
??DMA_PeriphIncOffsetSizeConfig_0:
        LDR      R2,[R0, #+0]
        BICS     R2,R2,#0x8000
        STR      R2,[R0, #+0]
??DMA_PeriphIncOffsetSizeConfig_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DMA_FlowControllerConfig:
        CMP      R1,#+0
        BEQ.N    ??DMA_FlowControllerConfig_0
        LDR      R2,[R0, #+0]
        ORRS     R2,R2,#0x20
        STR      R2,[R0, #+0]
        B.N      ??DMA_FlowControllerConfig_1
??DMA_FlowControllerConfig_0:
        LDR      R2,[R0, #+0]
        BICS     R2,R2,#0x20
        STR      R2,[R0, #+0]
??DMA_FlowControllerConfig_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DMA_SetCurrDataCounter:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable19  ;; 0x40026010
        CMP      R4,R0
        BEQ.N    ??DMA_SetCurrDataCounter_0
        LDR.W    R0,??DataTable19_2  ;; 0x40026028
        CMP      R4,R0
        BEQ.N    ??DMA_SetCurrDataCounter_0
        LDR.W    R0,??DataTable19_3  ;; 0x40026040
        CMP      R4,R0
        BEQ.N    ??DMA_SetCurrDataCounter_0
        LDR.W    R0,??DataTable19_4  ;; 0x40026058
        CMP      R4,R0
        BEQ.N    ??DMA_SetCurrDataCounter_0
        LDR.W    R0,??DataTable19_5  ;; 0x40026070
        CMP      R4,R0
        BEQ.N    ??DMA_SetCurrDataCounter_0
        LDR.W    R0,??DataTable19_8  ;; 0x40026088
        CMP      R4,R0
        BEQ.N    ??DMA_SetCurrDataCounter_0
        LDR.W    R0,??DataTable19_10  ;; 0x400260a0
        CMP      R4,R0
        BEQ.N    ??DMA_SetCurrDataCounter_0
        LDR.W    R0,??DataTable19_12  ;; 0x400260b8
        CMP      R4,R0
        BEQ.N    ??DMA_SetCurrDataCounter_0
        LDR.W    R0,??DataTable19_13  ;; 0x40026410
        CMP      R4,R0
        BEQ.N    ??DMA_SetCurrDataCounter_0
        LDR.W    R0,??DataTable19_15  ;; 0x40026428
        CMP      R4,R0
        BEQ.N    ??DMA_SetCurrDataCounter_0
        LDR.W    R0,??DataTable19_16  ;; 0x40026440
        CMP      R4,R0
        BEQ.N    ??DMA_SetCurrDataCounter_0
        LDR.W    R0,??DataTable19_17  ;; 0x40026458
        CMP      R4,R0
        BEQ.N    ??DMA_SetCurrDataCounter_0
        LDR.W    R0,??DataTable19_18  ;; 0x40026470
        CMP      R4,R0
        BEQ.N    ??DMA_SetCurrDataCounter_0
        LDR.W    R0,??DataTable19_19  ;; 0x40026488
        CMP      R4,R0
        BEQ.N    ??DMA_SetCurrDataCounter_0
        LDR.W    R0,??DataTable19_20  ;; 0x400264a0
        CMP      R4,R0
        BEQ.N    ??DMA_SetCurrDataCounter_0
        LDR.W    R0,??DataTable19_21  ;; 0x400264b8
        CMP      R4,R0
        BEQ.N    ??DMA_SetCurrDataCounter_0
        MOVW     R2,#+630
        LDR.W    R1,??DataTable19_22
        LDR.W    R0,??DataTable21
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??DMA_SetCurrDataCounter_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        STR      R5,[R4, #+4]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DMA_GetCurrDataCounter:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.W    R0,??DataTable19  ;; 0x40026010
        CMP      R4,R0
        BEQ.N    ??DMA_GetCurrDataCounter_0
        LDR.W    R0,??DataTable19_2  ;; 0x40026028
        CMP      R4,R0
        BEQ.N    ??DMA_GetCurrDataCounter_0
        LDR.W    R0,??DataTable19_3  ;; 0x40026040
        CMP      R4,R0
        BEQ.N    ??DMA_GetCurrDataCounter_0
        LDR.W    R0,??DataTable19_4  ;; 0x40026058
        CMP      R4,R0
        BEQ.N    ??DMA_GetCurrDataCounter_0
        LDR.W    R0,??DataTable19_5  ;; 0x40026070
        CMP      R4,R0
        BEQ.N    ??DMA_GetCurrDataCounter_0
        LDR.W    R0,??DataTable19_8  ;; 0x40026088
        CMP      R4,R0
        BEQ.N    ??DMA_GetCurrDataCounter_0
        LDR.W    R0,??DataTable19_10  ;; 0x400260a0
        CMP      R4,R0
        BEQ.N    ??DMA_GetCurrDataCounter_0
        LDR.W    R0,??DataTable19_12  ;; 0x400260b8
        CMP      R4,R0
        BEQ.N    ??DMA_GetCurrDataCounter_0
        LDR.W    R0,??DataTable19_13  ;; 0x40026410
        CMP      R4,R0
        BEQ.N    ??DMA_GetCurrDataCounter_0
        LDR.W    R0,??DataTable19_15  ;; 0x40026428
        CMP      R4,R0
        BEQ.N    ??DMA_GetCurrDataCounter_0
        LDR.W    R0,??DataTable19_16  ;; 0x40026440
        CMP      R4,R0
        BEQ.N    ??DMA_GetCurrDataCounter_0
        LDR.W    R0,??DataTable19_17  ;; 0x40026458
        CMP      R4,R0
        BEQ.N    ??DMA_GetCurrDataCounter_0
        LDR.W    R0,??DataTable19_18  ;; 0x40026470
        CMP      R4,R0
        BEQ.N    ??DMA_GetCurrDataCounter_0
        LDR.W    R0,??DataTable19_19  ;; 0x40026488
        CMP      R4,R0
        BEQ.N    ??DMA_GetCurrDataCounter_0
        LDR.W    R0,??DataTable19_20  ;; 0x400264a0
        CMP      R4,R0
        BEQ.N    ??DMA_GetCurrDataCounter_0
        LDR.W    R0,??DataTable19_21  ;; 0x400264b8
        CMP      R4,R0
        BEQ.N    ??DMA_GetCurrDataCounter_0
        MOVW     R2,#+645
        LDR.W    R1,??DataTable19_22
        LDR.W    R0,??DataTable21
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??DMA_GetCurrDataCounter_0:
        LDR      R0,[R4, #+4]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DMA_DoubleBufferModeConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        LDR.W    R0,??DataTable19  ;; 0x40026010
        CMP      R4,R0
        BEQ.N    ??DMA_DoubleBufferModeConfig_0
        LDR.W    R0,??DataTable19_2  ;; 0x40026028
        CMP      R4,R0
        BEQ.N    ??DMA_DoubleBufferModeConfig_0
        LDR.W    R0,??DataTable19_3  ;; 0x40026040
        CMP      R4,R0
        BEQ.N    ??DMA_DoubleBufferModeConfig_0
        LDR.W    R0,??DataTable19_4  ;; 0x40026058
        CMP      R4,R0
        BEQ.N    ??DMA_DoubleBufferModeConfig_0
        LDR.W    R0,??DataTable19_5  ;; 0x40026070
        CMP      R4,R0
        BEQ.N    ??DMA_DoubleBufferModeConfig_0
        LDR.W    R0,??DataTable19_8  ;; 0x40026088
        CMP      R4,R0
        BEQ.N    ??DMA_DoubleBufferModeConfig_0
        LDR.W    R0,??DataTable19_10  ;; 0x400260a0
        CMP      R4,R0
        BEQ.N    ??DMA_DoubleBufferModeConfig_0
        LDR.W    R0,??DataTable19_12  ;; 0x400260b8
        CMP      R4,R0
        BEQ.N    ??DMA_DoubleBufferModeConfig_0
        LDR.W    R0,??DataTable19_13  ;; 0x40026410
        CMP      R4,R0
        BEQ.N    ??DMA_DoubleBufferModeConfig_0
        LDR.W    R0,??DataTable19_15  ;; 0x40026428
        CMP      R4,R0
        BEQ.N    ??DMA_DoubleBufferModeConfig_0
        LDR.W    R0,??DataTable19_16  ;; 0x40026440
        CMP      R4,R0
        BEQ.N    ??DMA_DoubleBufferModeConfig_0
        LDR.W    R0,??DataTable19_17  ;; 0x40026458
        CMP      R4,R0
        BEQ.N    ??DMA_DoubleBufferModeConfig_0
        LDR.W    R0,??DataTable19_18  ;; 0x40026470
        CMP      R4,R0
        BEQ.N    ??DMA_DoubleBufferModeConfig_0
        LDR.W    R0,??DataTable19_19  ;; 0x40026488
        CMP      R4,R0
        BEQ.N    ??DMA_DoubleBufferModeConfig_0
        LDR.W    R0,??DataTable19_20  ;; 0x400264a0
        CMP      R4,R0
        BEQ.N    ??DMA_DoubleBufferModeConfig_0
        LDR.W    R0,??DataTable19_21  ;; 0x400264b8
        CMP      R4,R0
        BEQ.N    ??DMA_DoubleBufferModeConfig_0
        MOVW     R2,#+723
        LDR.W    R1,??DataTable19_22
        LDR.W    R0,??DataTable21
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??DMA_DoubleBufferModeConfig_0:
        CMP      R6,#+0
        BEQ.N    ??DMA_DoubleBufferModeConfig_1
        CMP      R6,#+524288
        BEQ.N    ??DMA_DoubleBufferModeConfig_1
        MOV      R2,#+724
        LDR.W    R1,??DataTable19_22
        LDR.W    R0,??DataTable23
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??DMA_DoubleBufferModeConfig_1:
        CMP      R6,#+0
        BEQ.N    ??DMA_DoubleBufferModeConfig_2
        LDR      R0,[R4, #+0]
        ORRS     R0,R0,#0x80000
        STR      R0,[R4, #+0]
        B.N      ??DMA_DoubleBufferModeConfig_3
??DMA_DoubleBufferModeConfig_2:
        LDR      R0,[R4, #+0]
        BICS     R0,R0,#0x80000
        STR      R0,[R4, #+0]
??DMA_DoubleBufferModeConfig_3:
        STR      R5,[R4, #+16]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DMA_DoubleBufferModeCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable19  ;; 0x40026010
        CMP      R4,R0
        BEQ.N    ??DMA_DoubleBufferModeCmd_0
        LDR.W    R0,??DataTable19_2  ;; 0x40026028
        CMP      R4,R0
        BEQ.N    ??DMA_DoubleBufferModeCmd_0
        LDR.W    R0,??DataTable19_3  ;; 0x40026040
        CMP      R4,R0
        BEQ.N    ??DMA_DoubleBufferModeCmd_0
        LDR.W    R0,??DataTable19_4  ;; 0x40026058
        CMP      R4,R0
        BEQ.N    ??DMA_DoubleBufferModeCmd_0
        LDR.W    R0,??DataTable19_5  ;; 0x40026070
        CMP      R4,R0
        BEQ.N    ??DMA_DoubleBufferModeCmd_0
        LDR.W    R0,??DataTable19_8  ;; 0x40026088
        CMP      R4,R0
        BEQ.N    ??DMA_DoubleBufferModeCmd_0
        LDR.W    R0,??DataTable19_10  ;; 0x400260a0
        CMP      R4,R0
        BEQ.N    ??DMA_DoubleBufferModeCmd_0
        LDR.W    R0,??DataTable19_12  ;; 0x400260b8
        CMP      R4,R0
        BEQ.N    ??DMA_DoubleBufferModeCmd_0
        LDR.W    R0,??DataTable19_13  ;; 0x40026410
        CMP      R4,R0
        BEQ.N    ??DMA_DoubleBufferModeCmd_0
        LDR.W    R0,??DataTable19_15  ;; 0x40026428
        CMP      R4,R0
        BEQ.N    ??DMA_DoubleBufferModeCmd_0
        LDR.W    R0,??DataTable19_16  ;; 0x40026440
        CMP      R4,R0
        BEQ.N    ??DMA_DoubleBufferModeCmd_0
        LDR.W    R0,??DataTable19_17  ;; 0x40026458
        CMP      R4,R0
        BEQ.N    ??DMA_DoubleBufferModeCmd_0
        LDR.W    R0,??DataTable19_18  ;; 0x40026470
        CMP      R4,R0
        BEQ.N    ??DMA_DoubleBufferModeCmd_0
        LDR.W    R0,??DataTable19_19  ;; 0x40026488
        CMP      R4,R0
        BEQ.N    ??DMA_DoubleBufferModeCmd_0
        LDR.W    R0,??DataTable19_20  ;; 0x400264a0
        CMP      R4,R0
        BEQ.N    ??DMA_DoubleBufferModeCmd_0
        LDR.W    R0,??DataTable19_21  ;; 0x400264b8
        CMP      R4,R0
        BEQ.N    ??DMA_DoubleBufferModeCmd_0
        MOVW     R2,#+753
        LDR.W    R1,??DataTable19_22
        LDR.W    R0,??DataTable21
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??DMA_DoubleBufferModeCmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??DMA_DoubleBufferModeCmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??DMA_DoubleBufferModeCmd_1
        MOVW     R2,#+754
        LDR.N    R1,??DataTable19_22
        LDR.W    R0,??DataTable23_1
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??DMA_DoubleBufferModeCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??DMA_DoubleBufferModeCmd_2
        LDR      R0,[R4, #+0]
        ORRS     R0,R0,#0x40000
        STR      R0,[R4, #+0]
        B.N      ??DMA_DoubleBufferModeCmd_3
??DMA_DoubleBufferModeCmd_2:
        LDR      R0,[R4, #+0]
        BICS     R0,R0,#0x40000
        STR      R0,[R4, #+0]
??DMA_DoubleBufferModeCmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DMA_MemoryTargetConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        LDR.N    R0,??DataTable19  ;; 0x40026010
        CMP      R4,R0
        BEQ.N    ??DMA_MemoryTargetConfig_0
        LDR.N    R0,??DataTable19_2  ;; 0x40026028
        CMP      R4,R0
        BEQ.N    ??DMA_MemoryTargetConfig_0
        LDR.N    R0,??DataTable19_3  ;; 0x40026040
        CMP      R4,R0
        BEQ.N    ??DMA_MemoryTargetConfig_0
        LDR.N    R0,??DataTable19_4  ;; 0x40026058
        CMP      R4,R0
        BEQ.N    ??DMA_MemoryTargetConfig_0
        LDR.N    R0,??DataTable19_5  ;; 0x40026070
        CMP      R4,R0
        BEQ.N    ??DMA_MemoryTargetConfig_0
        LDR.N    R0,??DataTable19_8  ;; 0x40026088
        CMP      R4,R0
        BEQ.N    ??DMA_MemoryTargetConfig_0
        LDR.N    R0,??DataTable19_10  ;; 0x400260a0
        CMP      R4,R0
        BEQ.N    ??DMA_MemoryTargetConfig_0
        LDR.N    R0,??DataTable19_12  ;; 0x400260b8
        CMP      R4,R0
        BEQ.N    ??DMA_MemoryTargetConfig_0
        LDR.N    R0,??DataTable19_13  ;; 0x40026410
        CMP      R4,R0
        BEQ.N    ??DMA_MemoryTargetConfig_0
        LDR.N    R0,??DataTable19_15  ;; 0x40026428
        CMP      R4,R0
        BEQ.N    ??DMA_MemoryTargetConfig_0
        LDR.N    R0,??DataTable19_16  ;; 0x40026440
        CMP      R4,R0
        BEQ.N    ??DMA_MemoryTargetConfig_0
        LDR.N    R0,??DataTable19_17  ;; 0x40026458
        CMP      R4,R0
        BEQ.N    ??DMA_MemoryTargetConfig_0
        LDR.N    R0,??DataTable19_18  ;; 0x40026470
        CMP      R4,R0
        BEQ.N    ??DMA_MemoryTargetConfig_0
        LDR.N    R0,??DataTable19_19  ;; 0x40026488
        CMP      R4,R0
        BEQ.N    ??DMA_MemoryTargetConfig_0
        LDR.N    R0,??DataTable19_20  ;; 0x400264a0
        CMP      R4,R0
        BEQ.N    ??DMA_MemoryTargetConfig_0
        LDR.N    R0,??DataTable19_21  ;; 0x400264b8
        CMP      R4,R0
        BEQ.N    ??DMA_MemoryTargetConfig_0
        MOVW     R2,#+795
        LDR.N    R1,??DataTable19_22
        LDR.W    R0,??DataTable21
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??DMA_MemoryTargetConfig_0:
        CMP      R6,#+0
        BEQ.N    ??DMA_MemoryTargetConfig_1
        CMP      R6,#+524288
        BEQ.N    ??DMA_MemoryTargetConfig_1
        MOV      R2,#+796
        LDR.N    R1,??DataTable19_22
        LDR.W    R0,??DataTable24
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??DMA_MemoryTargetConfig_1:
        CMP      R6,#+0
        BEQ.N    ??DMA_MemoryTargetConfig_2
        STR      R5,[R4, #+16]
        B.N      ??DMA_MemoryTargetConfig_3
??DMA_MemoryTargetConfig_2:
        STR      R5,[R4, #+12]
??DMA_MemoryTargetConfig_3:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DMA_GetCurrentMemoryTarget:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        LDR.N    R0,??DataTable19  ;; 0x40026010
        CMP      R4,R0
        BEQ.N    ??DMA_GetCurrentMemoryTarget_0
        LDR.N    R0,??DataTable19_2  ;; 0x40026028
        CMP      R4,R0
        BEQ.N    ??DMA_GetCurrentMemoryTarget_0
        LDR.N    R0,??DataTable19_3  ;; 0x40026040
        CMP      R4,R0
        BEQ.N    ??DMA_GetCurrentMemoryTarget_0
        LDR.N    R0,??DataTable19_4  ;; 0x40026058
        CMP      R4,R0
        BEQ.N    ??DMA_GetCurrentMemoryTarget_0
        LDR.N    R0,??DataTable19_5  ;; 0x40026070
        CMP      R4,R0
        BEQ.N    ??DMA_GetCurrentMemoryTarget_0
        LDR.N    R0,??DataTable19_8  ;; 0x40026088
        CMP      R4,R0
        BEQ.N    ??DMA_GetCurrentMemoryTarget_0
        LDR.N    R0,??DataTable19_10  ;; 0x400260a0
        CMP      R4,R0
        BEQ.N    ??DMA_GetCurrentMemoryTarget_0
        LDR.N    R0,??DataTable19_12  ;; 0x400260b8
        CMP      R4,R0
        BEQ.N    ??DMA_GetCurrentMemoryTarget_0
        LDR.N    R0,??DataTable19_13  ;; 0x40026410
        CMP      R4,R0
        BEQ.N    ??DMA_GetCurrentMemoryTarget_0
        LDR.N    R0,??DataTable19_15  ;; 0x40026428
        CMP      R4,R0
        BEQ.N    ??DMA_GetCurrentMemoryTarget_0
        LDR.N    R0,??DataTable19_16  ;; 0x40026440
        CMP      R4,R0
        BEQ.N    ??DMA_GetCurrentMemoryTarget_0
        LDR.N    R0,??DataTable19_17  ;; 0x40026458
        CMP      R4,R0
        BEQ.N    ??DMA_GetCurrentMemoryTarget_0
        LDR.N    R0,??DataTable19_18  ;; 0x40026470
        CMP      R4,R0
        BEQ.N    ??DMA_GetCurrentMemoryTarget_0
        LDR.N    R0,??DataTable19_19  ;; 0x40026488
        CMP      R4,R0
        BEQ.N    ??DMA_GetCurrentMemoryTarget_0
        LDR.N    R0,??DataTable19_20  ;; 0x400264a0
        CMP      R4,R0
        BEQ.N    ??DMA_GetCurrentMemoryTarget_0
        LDR.N    R0,??DataTable19_21  ;; 0x400264b8
        CMP      R4,R0
        BEQ.N    ??DMA_GetCurrentMemoryTarget_0
        MOVW     R2,#+822
        LDR.N    R1,??DataTable19_22
        LDR.W    R0,??DataTable21
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??DMA_GetCurrentMemoryTarget_0:
        LDR      R0,[R4, #+0]
        LSLS     R0,R0,#+12
        BPL.N    ??DMA_GetCurrentMemoryTarget_1
        MOVS     R0,#+1
        MOVS     R5,R0
        B.N      ??DMA_GetCurrentMemoryTarget_2
??DMA_GetCurrentMemoryTarget_1:
        MOVS     R0,#+0
        MOVS     R5,R0
??DMA_GetCurrentMemoryTarget_2:
        MOVS     R0,R5
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DMA_GetCmdStatus:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        LDR.N    R0,??DataTable19  ;; 0x40026010
        CMP      R4,R0
        BEQ.N    ??DMA_GetCmdStatus_0
        LDR.N    R0,??DataTable19_2  ;; 0x40026028
        CMP      R4,R0
        BEQ.N    ??DMA_GetCmdStatus_0
        LDR.N    R0,??DataTable19_3  ;; 0x40026040
        CMP      R4,R0
        BEQ.N    ??DMA_GetCmdStatus_0
        LDR.N    R0,??DataTable19_4  ;; 0x40026058
        CMP      R4,R0
        BEQ.N    ??DMA_GetCmdStatus_0
        LDR.N    R0,??DataTable19_5  ;; 0x40026070
        CMP      R4,R0
        BEQ.N    ??DMA_GetCmdStatus_0
        LDR.N    R0,??DataTable19_8  ;; 0x40026088
        CMP      R4,R0
        BEQ.N    ??DMA_GetCmdStatus_0
        LDR.N    R0,??DataTable19_10  ;; 0x400260a0
        CMP      R4,R0
        BEQ.N    ??DMA_GetCmdStatus_0
        LDR.N    R0,??DataTable19_12  ;; 0x400260b8
        CMP      R4,R0
        BEQ.N    ??DMA_GetCmdStatus_0
        LDR.N    R0,??DataTable19_13  ;; 0x40026410
        CMP      R4,R0
        BEQ.N    ??DMA_GetCmdStatus_0
        LDR.N    R0,??DataTable19_15  ;; 0x40026428
        CMP      R4,R0
        BEQ.N    ??DMA_GetCmdStatus_0
        LDR.N    R0,??DataTable19_16  ;; 0x40026440
        CMP      R4,R0
        BEQ.N    ??DMA_GetCmdStatus_0
        LDR.N    R0,??DataTable19_17  ;; 0x40026458
        CMP      R4,R0
        BEQ.N    ??DMA_GetCmdStatus_0
        LDR.N    R0,??DataTable19_18  ;; 0x40026470
        CMP      R4,R0
        BEQ.N    ??DMA_GetCmdStatus_0
        LDR.N    R0,??DataTable19_19  ;; 0x40026488
        CMP      R4,R0
        BEQ.N    ??DMA_GetCmdStatus_0
        LDR.N    R0,??DataTable19_20  ;; 0x400264a0
        CMP      R4,R0
        BEQ.N    ??DMA_GetCmdStatus_0
        LDR.W    R0,??DataTable24_1  ;; 0x400264b8
        CMP      R4,R0
        BEQ.N    ??DMA_GetCmdStatus_0
        MOVW     R2,#+931
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_DMA_ALL_PERIPH(DMA...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??DMA_GetCmdStatus_0:
        LDR      R0,[R4, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??DMA_GetCmdStatus_1
        MOVS     R0,#+1
        MOVS     R5,R0
        B.N      ??DMA_GetCmdStatus_2
??DMA_GetCmdStatus_1:
        MOVS     R0,#+0
        MOVS     R5,R0
??DMA_GetCmdStatus_2:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DMA_GetFIFOStatus:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        LDR.N    R0,??DataTable19  ;; 0x40026010
        CMP      R4,R0
        BEQ.N    ??DMA_GetFIFOStatus_0
        LDR.N    R0,??DataTable19_2  ;; 0x40026028
        CMP      R4,R0
        BEQ.N    ??DMA_GetFIFOStatus_0
        LDR.N    R0,??DataTable19_3  ;; 0x40026040
        CMP      R4,R0
        BEQ.N    ??DMA_GetFIFOStatus_0
        LDR.N    R0,??DataTable19_4  ;; 0x40026058
        CMP      R4,R0
        BEQ.N    ??DMA_GetFIFOStatus_0
        LDR.N    R0,??DataTable19_5  ;; 0x40026070
        CMP      R4,R0
        BEQ.N    ??DMA_GetFIFOStatus_0
        LDR.N    R0,??DataTable19_8  ;; 0x40026088
        CMP      R4,R0
        BEQ.N    ??DMA_GetFIFOStatus_0
        LDR.N    R0,??DataTable19_10  ;; 0x400260a0
        CMP      R4,R0
        BEQ.N    ??DMA_GetFIFOStatus_0
        LDR.N    R0,??DataTable19_12  ;; 0x400260b8
        CMP      R4,R0
        BEQ.N    ??DMA_GetFIFOStatus_0
        LDR.N    R0,??DataTable19_13  ;; 0x40026410
        CMP      R4,R0
        BEQ.N    ??DMA_GetFIFOStatus_0
        LDR.N    R0,??DataTable19_15  ;; 0x40026428
        CMP      R4,R0
        BEQ.N    ??DMA_GetFIFOStatus_0
        LDR.N    R0,??DataTable19_16  ;; 0x40026440
        CMP      R4,R0
        BEQ.N    ??DMA_GetFIFOStatus_0
        LDR.N    R0,??DataTable19_17  ;; 0x40026458
        CMP      R4,R0
        BEQ.N    ??DMA_GetFIFOStatus_0
        LDR.N    R0,??DataTable19_18  ;; 0x40026470
        CMP      R4,R0
        BEQ.N    ??DMA_GetFIFOStatus_0
        LDR.N    R0,??DataTable19_19  ;; 0x40026488
        CMP      R4,R0
        BEQ.N    ??DMA_GetFIFOStatus_0
        LDR.N    R0,??DataTable19_20  ;; 0x400264a0
        CMP      R4,R0
        BEQ.N    ??DMA_GetFIFOStatus_0
        LDR.W    R0,??DataTable24_1  ;; 0x400264b8
        CMP      R4,R0
        BEQ.N    ??DMA_GetFIFOStatus_0
        MOVW     R2,#+965
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_DMA_ALL_PERIPH(DMA...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??DMA_GetFIFOStatus_0:
        LDR      R0,[R4, #+20]
        ANDS     R0,R0,#0x38
        MOVS     R5,R0
        MOVS     R0,R5
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable19:
        DC32     0x40026010

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable19_1:
        DC32     0x40026008

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable19_2:
        DC32     0x40026028

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable19_3:
        DC32     0x40026040

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable19_4:
        DC32     0x40026058

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable19_5:
        DC32     0x40026070

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable19_6:
        DC32     0x4002600c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable19_7:
        DC32     0x2000003d

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable19_8:
        DC32     0x40026088

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable19_9:
        DC32     0x20000f40

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable19_10:
        DC32     0x400260a0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable19_11:
        DC32     0x203d0000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable19_12:
        DC32     0x400260b8

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable19_13:
        DC32     0x40026410

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable19_14:
        DC32     0x40026408

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable19_15:
        DC32     0x40026428

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable19_16:
        DC32     0x40026440

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable19_17:
        DC32     0x40026458

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable19_18:
        DC32     0x40026470

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable19_19:
        DC32     0x40026488

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable19_20:
        DC32     0x400264a0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable19_21:
        DC32     0x400264b8

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable19_22:
        DC32     `?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DMA_GetFlagStatus:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        MOVS     R8,#+0
        LDR.W    R0,??DataTable23_2  ;; 0x40026010
        CMP      R4,R0
        BEQ.N    ??DMA_GetFlagStatus_0
        LDR.W    R0,??DataTable23_3  ;; 0x40026028
        CMP      R4,R0
        BEQ.N    ??DMA_GetFlagStatus_0
        LDR.W    R0,??DataTable23_4  ;; 0x40026040
        CMP      R4,R0
        BEQ.N    ??DMA_GetFlagStatus_0
        LDR.W    R0,??DataTable23_5  ;; 0x40026058
        CMP      R4,R0
        BEQ.N    ??DMA_GetFlagStatus_0
        LDR.W    R0,??DataTable23_6  ;; 0x40026070
        CMP      R4,R0
        BEQ.N    ??DMA_GetFlagStatus_0
        LDR.W    R0,??DataTable23_7  ;; 0x40026088
        CMP      R4,R0
        BEQ.N    ??DMA_GetFlagStatus_0
        LDR.W    R0,??DataTable23_8  ;; 0x400260a0
        CMP      R4,R0
        BEQ.N    ??DMA_GetFlagStatus_0
        LDR.W    R0,??DataTable23_9  ;; 0x400260b8
        CMP      R4,R0
        BEQ.N    ??DMA_GetFlagStatus_0
        LDR.W    R0,??DataTable24_2  ;; 0x40026410
        CMP      R4,R0
        BEQ.N    ??DMA_GetFlagStatus_0
        LDR.W    R0,??DataTable23_10  ;; 0x40026428
        CMP      R4,R0
        BEQ.N    ??DMA_GetFlagStatus_0
        LDR.W    R0,??DataTable23_11  ;; 0x40026440
        CMP      R4,R0
        BEQ.N    ??DMA_GetFlagStatus_0
        LDR.W    R0,??DataTable23_12  ;; 0x40026458
        CMP      R4,R0
        BEQ.N    ??DMA_GetFlagStatus_0
        LDR.W    R0,??DataTable23_13  ;; 0x40026470
        CMP      R4,R0
        BEQ.N    ??DMA_GetFlagStatus_0
        LDR.W    R0,??DataTable23_14  ;; 0x40026488
        CMP      R4,R0
        BEQ.N    ??DMA_GetFlagStatus_0
        LDR.W    R0,??DataTable23_15  ;; 0x400264a0
        CMP      R4,R0
        BEQ.N    ??DMA_GetFlagStatus_0
        LDR.W    R0,??DataTable23_16  ;; 0x400264b8
        CMP      R4,R0
        BEQ.N    ??DMA_GetFlagStatus_0
        MOVW     R2,#+994
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_DMA_ALL_PERIPH(DMA...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??DMA_GetFlagStatus_0:
        LDR.W    R0,??DataTable24_3  ;; 0x10000020
        CMP      R5,R0
        BEQ.W    ??DMA_GetFlagStatus_1
        LDR.W    R0,??DataTable24_4  ;; 0x10000010
        CMP      R5,R0
        BEQ.W    ??DMA_GetFlagStatus_1
        LDR.W    R0,??DataTable24_5  ;; 0x10000008
        CMP      R5,R0
        BEQ.W    ??DMA_GetFlagStatus_1
        LDR.W    R0,??DataTable24_6  ;; 0x10800004
        CMP      R5,R0
        BEQ.W    ??DMA_GetFlagStatus_1
        LDR.W    R0,??DataTable24_7  ;; 0x10800001
        CMP      R5,R0
        BEQ.W    ??DMA_GetFlagStatus_1
        LDR.W    R0,??DataTable24_8  ;; 0x10000800
        CMP      R5,R0
        BEQ.W    ??DMA_GetFlagStatus_1
        LDR.W    R0,??DataTable24_9  ;; 0x10000400
        CMP      R5,R0
        BEQ.W    ??DMA_GetFlagStatus_1
        LDR.W    R0,??DataTable24_10  ;; 0x10000200
        CMP      R5,R0
        BEQ.W    ??DMA_GetFlagStatus_1
        LDR.W    R0,??DataTable24_11  ;; 0x10000100
        CMP      R5,R0
        BEQ.N    ??DMA_GetFlagStatus_1
        LDR.W    R0,??DataTable24_12  ;; 0x10000040
        CMP      R5,R0
        BEQ.N    ??DMA_GetFlagStatus_1
        CMP      R5,#+270532608
        BEQ.N    ??DMA_GetFlagStatus_1
        LDR.W    R0,??DataTable24_13  ;; 0x10100000
        CMP      R5,R0
        BEQ.N    ??DMA_GetFlagStatus_1
        LDR.W    R0,??DataTable24_14  ;; 0x10080000
        CMP      R5,R0
        BEQ.N    ??DMA_GetFlagStatus_1
        LDR.W    R0,??DataTable24_15  ;; 0x10040000
        CMP      R5,R0
        BEQ.N    ??DMA_GetFlagStatus_1
        LDR.W    R0,??DataTable24_16  ;; 0x10010000
        CMP      R5,R0
        BEQ.N    ??DMA_GetFlagStatus_1
        CMP      R5,#+402653184
        BEQ.N    ??DMA_GetFlagStatus_1
        CMP      R5,#+335544320
        BEQ.N    ??DMA_GetFlagStatus_1
        CMP      R5,#+301989888
        BEQ.N    ??DMA_GetFlagStatus_1
        CMP      R5,#+285212672
        BEQ.N    ??DMA_GetFlagStatus_1
        CMP      R5,#+272629760
        BEQ.N    ??DMA_GetFlagStatus_1
        LDR.W    R0,??DataTable24_17  ;; 0x20000020
        CMP      R5,R0
        BEQ.N    ??DMA_GetFlagStatus_1
        LDR.W    R0,??DataTable24_18  ;; 0x20000010
        CMP      R5,R0
        BEQ.N    ??DMA_GetFlagStatus_1
        LDR.W    R0,??DataTable24_19  ;; 0x20000008
        CMP      R5,R0
        BEQ.N    ??DMA_GetFlagStatus_1
        LDR.W    R0,??DataTable24_20  ;; 0x20000004
        CMP      R5,R0
        BEQ.N    ??DMA_GetFlagStatus_1
        LDR.W    R0,??DataTable24_21  ;; 0x20000001
        CMP      R5,R0
        BEQ.N    ??DMA_GetFlagStatus_1
        LDR.W    R0,??DataTable24_22  ;; 0x20000800
        CMP      R5,R0
        BEQ.N    ??DMA_GetFlagStatus_1
        LDR.W    R0,??DataTable24_23  ;; 0x20000400
        CMP      R5,R0
        BEQ.N    ??DMA_GetFlagStatus_1
        LDR.W    R0,??DataTable24_24  ;; 0x20000200
        CMP      R5,R0
        BEQ.N    ??DMA_GetFlagStatus_1
        LDR.W    R0,??DataTable24_25  ;; 0x20000100
        CMP      R5,R0
        BEQ.N    ??DMA_GetFlagStatus_1
        LDR.W    R0,??DataTable24_26  ;; 0x20000040
        CMP      R5,R0
        BEQ.N    ??DMA_GetFlagStatus_1
        LDR.W    R0,??DataTable24_27  ;; 0x20200000
        CMP      R5,R0
        BEQ.N    ??DMA_GetFlagStatus_1
        LDR.W    R0,??DataTable24_28  ;; 0x20100000
        CMP      R5,R0
        BEQ.N    ??DMA_GetFlagStatus_1
        LDR.W    R0,??DataTable24_29  ;; 0x20080000
        CMP      R5,R0
        BEQ.N    ??DMA_GetFlagStatus_1
        LDR.W    R0,??DataTable24_30  ;; 0x20040000
        CMP      R5,R0
        BEQ.N    ??DMA_GetFlagStatus_1
        LDR.W    R0,??DataTable24_31  ;; 0x20010000
        CMP      R5,R0
        BEQ.N    ??DMA_GetFlagStatus_1
        CMP      R5,#+671088640
        BEQ.N    ??DMA_GetFlagStatus_1
        CMP      R5,#+603979776
        BEQ.N    ??DMA_GetFlagStatus_1
        CMP      R5,#+570425344
        BEQ.N    ??DMA_GetFlagStatus_1
        CMP      R5,#+553648128
        BEQ.N    ??DMA_GetFlagStatus_1
        CMP      R5,#+541065216
        BEQ.N    ??DMA_GetFlagStatus_1
        MOVW     R2,#+995
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_DMA_GET_FLAG(DMA_F...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??DMA_GetFlagStatus_1:
        LDR.W    R0,??DataTable24_2  ;; 0x40026410
        CMP      R4,R0
        BCS.N    ??DMA_GetFlagStatus_2
        LDR.W    R0,??DataTable24_32  ;; 0x40026000
        MOVS     R7,R0
        B.N      ??DMA_GetFlagStatus_3
??DMA_GetFlagStatus_2:
        LDR.W    R0,??DataTable24_33  ;; 0x40026400
        MOVS     R7,R0
??DMA_GetFlagStatus_3:
        LSLS     R0,R5,#+2
        BPL.N    ??DMA_GetFlagStatus_4
        LDR      R0,[R7, #+4]
        MOV      R8,R0
        B.N      ??DMA_GetFlagStatus_5
??DMA_GetFlagStatus_4:
        LDR      R0,[R7, #+0]
        MOV      R8,R0
??DMA_GetFlagStatus_5:
        LDR.W    R0,??DataTable24_34  ;; 0xf7d0f7d
        ANDS     R8,R0,R8
        TST      R8,R5
        BEQ.N    ??DMA_GetFlagStatus_6
        MOVS     R0,#+1
        MOVS     R6,R0
        B.N      ??DMA_GetFlagStatus_7
??DMA_GetFlagStatus_6:
        MOVS     R0,#+0
        MOVS     R6,R0
??DMA_GetFlagStatus_7:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DMA_ClearFlag:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable23_2  ;; 0x40026010
        CMP      R4,R0
        BEQ.N    ??DMA_ClearFlag_0
        LDR.W    R0,??DataTable23_3  ;; 0x40026028
        CMP      R4,R0
        BEQ.N    ??DMA_ClearFlag_0
        LDR.W    R0,??DataTable23_4  ;; 0x40026040
        CMP      R4,R0
        BEQ.N    ??DMA_ClearFlag_0
        LDR.W    R0,??DataTable23_5  ;; 0x40026058
        CMP      R4,R0
        BEQ.N    ??DMA_ClearFlag_0
        LDR.W    R0,??DataTable23_6  ;; 0x40026070
        CMP      R4,R0
        BEQ.N    ??DMA_ClearFlag_0
        LDR.W    R0,??DataTable23_7  ;; 0x40026088
        CMP      R4,R0
        BEQ.N    ??DMA_ClearFlag_0
        LDR.W    R0,??DataTable23_8  ;; 0x400260a0
        CMP      R4,R0
        BEQ.N    ??DMA_ClearFlag_0
        LDR.W    R0,??DataTable23_9  ;; 0x400260b8
        CMP      R4,R0
        BEQ.N    ??DMA_ClearFlag_0
        LDR.W    R0,??DataTable24_2  ;; 0x40026410
        CMP      R4,R0
        BEQ.N    ??DMA_ClearFlag_0
        LDR.W    R0,??DataTable23_10  ;; 0x40026428
        CMP      R4,R0
        BEQ.N    ??DMA_ClearFlag_0
        LDR.W    R0,??DataTable23_11  ;; 0x40026440
        CMP      R4,R0
        BEQ.N    ??DMA_ClearFlag_0
        LDR.W    R0,??DataTable23_12  ;; 0x40026458
        CMP      R4,R0
        BEQ.N    ??DMA_ClearFlag_0
        LDR.W    R0,??DataTable23_13  ;; 0x40026470
        CMP      R4,R0
        BEQ.N    ??DMA_ClearFlag_0
        LDR.W    R0,??DataTable23_14  ;; 0x40026488
        CMP      R4,R0
        BEQ.N    ??DMA_ClearFlag_0
        LDR.W    R0,??DataTable23_15  ;; 0x400264a0
        CMP      R4,R0
        BEQ.N    ??DMA_ClearFlag_0
        LDR.W    R0,??DataTable23_16  ;; 0x400264b8
        CMP      R4,R0
        BEQ.N    ??DMA_ClearFlag_0
        MOVW     R2,#+1059
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_DMA_ALL_PERIPH(DMA...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??DMA_ClearFlag_0:
        ANDS     R0,R5,#0x30000000
        CMP      R0,#+805306368
        BEQ.N    ??DMA_ClearFlag_1
        TST      R5,#0x30000000
        BEQ.N    ??DMA_ClearFlag_1
        LDR.W    R0,??DataTable24_35  ;; 0xc082f082
        TST      R5,R0
        BNE.N    ??DMA_ClearFlag_1
        CMP      R5,#+0
        BNE.N    ??DMA_ClearFlag_2
??DMA_ClearFlag_1:
        MOVW     R2,#+1060
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_DMA_CLEAR_FLAG(DMA...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??DMA_ClearFlag_2:
        LDR.W    R0,??DataTable24_2  ;; 0x40026410
        CMP      R4,R0
        BCS.N    ??DMA_ClearFlag_3
        LDR.W    R0,??DataTable24_32  ;; 0x40026000
        MOVS     R6,R0
        B.N      ??DMA_ClearFlag_4
??DMA_ClearFlag_3:
        LDR.W    R0,??DataTable24_33  ;; 0x40026400
        MOVS     R6,R0
??DMA_ClearFlag_4:
        LSLS     R0,R5,#+2
        BPL.N    ??DMA_ClearFlag_5
        LDR.W    R0,??DataTable24_34  ;; 0xf7d0f7d
        ANDS     R0,R0,R5
        STR      R0,[R6, #+12]
        B.N      ??DMA_ClearFlag_6
??DMA_ClearFlag_5:
        LDR.W    R0,??DataTable24_34  ;; 0xf7d0f7d
        ANDS     R0,R0,R5
        STR      R0,[R6, #+8]
??DMA_ClearFlag_6:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable21:
        DC32     `?<Constant "IS_DMA_ALL_PERIPH(DMA...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DMA_ITConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        LDR.W    R0,??DataTable23_2  ;; 0x40026010
        CMP      R4,R0
        BEQ.N    ??DMA_ITConfig_0
        LDR.W    R0,??DataTable23_3  ;; 0x40026028
        CMP      R4,R0
        BEQ.N    ??DMA_ITConfig_0
        LDR.W    R0,??DataTable23_4  ;; 0x40026040
        CMP      R4,R0
        BEQ.N    ??DMA_ITConfig_0
        LDR.W    R0,??DataTable23_5  ;; 0x40026058
        CMP      R4,R0
        BEQ.N    ??DMA_ITConfig_0
        LDR.W    R0,??DataTable23_6  ;; 0x40026070
        CMP      R4,R0
        BEQ.N    ??DMA_ITConfig_0
        LDR.W    R0,??DataTable23_7  ;; 0x40026088
        CMP      R4,R0
        BEQ.N    ??DMA_ITConfig_0
        LDR.W    R0,??DataTable23_8  ;; 0x400260a0
        CMP      R4,R0
        BEQ.N    ??DMA_ITConfig_0
        LDR.W    R0,??DataTable23_9  ;; 0x400260b8
        CMP      R4,R0
        BEQ.N    ??DMA_ITConfig_0
        LDR.W    R0,??DataTable24_2  ;; 0x40026410
        CMP      R4,R0
        BEQ.N    ??DMA_ITConfig_0
        LDR.W    R0,??DataTable23_10  ;; 0x40026428
        CMP      R4,R0
        BEQ.N    ??DMA_ITConfig_0
        LDR.W    R0,??DataTable23_11  ;; 0x40026440
        CMP      R4,R0
        BEQ.N    ??DMA_ITConfig_0
        LDR.W    R0,??DataTable23_12  ;; 0x40026458
        CMP      R4,R0
        BEQ.N    ??DMA_ITConfig_0
        LDR.W    R0,??DataTable23_13  ;; 0x40026470
        CMP      R4,R0
        BEQ.N    ??DMA_ITConfig_0
        LDR.W    R0,??DataTable23_14  ;; 0x40026488
        CMP      R4,R0
        BEQ.N    ??DMA_ITConfig_0
        LDR.N    R0,??DataTable23_15  ;; 0x400264a0
        CMP      R4,R0
        BEQ.N    ??DMA_ITConfig_0
        LDR.W    R0,??DataTable24_1  ;; 0x400264b8
        CMP      R4,R0
        BEQ.N    ??DMA_ITConfig_0
        MOV      R2,#+1104
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_DMA_ALL_PERIPH(DMA...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??DMA_ITConfig_0:
        BICS     R0,R5,#0x9E
        CMP      R0,#+0
        BNE.N    ??DMA_ITConfig_1
        CMP      R5,#+0
        BNE.N    ??DMA_ITConfig_2
??DMA_ITConfig_1:
        MOVW     R2,#+1105
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_DMA_CONFIG_IT(DMA_IT)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??DMA_ITConfig_2:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??DMA_ITConfig_3
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BEQ.N    ??DMA_ITConfig_3
        MOVW     R2,#+1106
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??DMA_ITConfig_3:
        MOVS     R0,R5
        LSLS     R0,R0,#+24
        BPL.N    ??DMA_ITConfig_4
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??DMA_ITConfig_5
        LDR      R0,[R4, #+20]
        ORRS     R0,R0,#0x80
        STR      R0,[R4, #+20]
        B.N      ??DMA_ITConfig_4
??DMA_ITConfig_5:
        LDR      R0,[R4, #+20]
        BICS     R0,R0,#0x80
        STR      R0,[R4, #+20]
??DMA_ITConfig_4:
        CMP      R5,#+128
        BEQ.N    ??DMA_ITConfig_6
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??DMA_ITConfig_7
        LDR      R0,[R4, #+0]
        ANDS     R1,R5,#0x1E
        ORRS     R0,R1,R0
        STR      R0,[R4, #+0]
        B.N      ??DMA_ITConfig_6
??DMA_ITConfig_7:
        LDR      R0,[R4, #+0]
        ANDS     R1,R5,#0x1E
        BICS     R0,R0,R1
        STR      R0,[R4, #+0]
??DMA_ITConfig_6:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable22:
        DC32     0x4002640c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable22_1:
        DC32     0xf01c803f

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DMA_GetITStatus:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        MOVS     R8,#+0
        MOVS     R9,#+0
        LDR.N    R0,??DataTable23_2  ;; 0x40026010
        CMP      R4,R0
        BEQ.N    ??DMA_GetITStatus_0
        LDR.N    R0,??DataTable23_3  ;; 0x40026028
        CMP      R4,R0
        BEQ.N    ??DMA_GetITStatus_0
        LDR.N    R0,??DataTable23_4  ;; 0x40026040
        CMP      R4,R0
        BEQ.N    ??DMA_GetITStatus_0
        LDR.N    R0,??DataTable23_5  ;; 0x40026058
        CMP      R4,R0
        BEQ.N    ??DMA_GetITStatus_0
        LDR.N    R0,??DataTable23_6  ;; 0x40026070
        CMP      R4,R0
        BEQ.N    ??DMA_GetITStatus_0
        LDR.N    R0,??DataTable23_7  ;; 0x40026088
        CMP      R4,R0
        BEQ.N    ??DMA_GetITStatus_0
        LDR.N    R0,??DataTable23_8  ;; 0x400260a0
        CMP      R4,R0
        BEQ.N    ??DMA_GetITStatus_0
        LDR.N    R0,??DataTable23_9  ;; 0x400260b8
        CMP      R4,R0
        BEQ.N    ??DMA_GetITStatus_0
        LDR.W    R0,??DataTable24_2  ;; 0x40026410
        CMP      R4,R0
        BEQ.N    ??DMA_GetITStatus_0
        LDR.N    R0,??DataTable23_10  ;; 0x40026428
        CMP      R4,R0
        BEQ.N    ??DMA_GetITStatus_0
        LDR.N    R0,??DataTable23_11  ;; 0x40026440
        CMP      R4,R0
        BEQ.N    ??DMA_GetITStatus_0
        LDR.N    R0,??DataTable23_12  ;; 0x40026458
        CMP      R4,R0
        BEQ.N    ??DMA_GetITStatus_0
        LDR.N    R0,??DataTable23_13  ;; 0x40026470
        CMP      R4,R0
        BEQ.N    ??DMA_GetITStatus_0
        LDR.N    R0,??DataTable23_14  ;; 0x40026488
        CMP      R4,R0
        BEQ.N    ??DMA_GetITStatus_0
        LDR.N    R0,??DataTable23_15  ;; 0x400264a0
        CMP      R4,R0
        BEQ.N    ??DMA_GetITStatus_0
        LDR.N    R0,??DataTable23_16  ;; 0x400264b8
        CMP      R4,R0
        BEQ.N    ??DMA_GetITStatus_0
        MOV      R2,#+1160
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_DMA_ALL_PERIPH(DMA...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??DMA_GetITStatus_0:
        LDR.W    R0,??DataTable24_36  ;; 0x10008020
        CMP      R5,R0
        BEQ.W    ??DMA_GetITStatus_1
        LDR.W    R0,??DataTable24_37  ;; 0x10004010
        CMP      R5,R0
        BEQ.W    ??DMA_GetITStatus_1
        LDR.W    R0,??DataTable24_38  ;; 0x10002008
        CMP      R5,R0
        BEQ.W    ??DMA_GetITStatus_1
        LDR.W    R0,??DataTable24_39  ;; 0x10001004
        CMP      R5,R0
        BEQ.W    ??DMA_GetITStatus_1
        LDR.W    R0,??DataTable24_40  ;; 0x90000001
        CMP      R5,R0
        BEQ.W    ??DMA_GetITStatus_1
        LDR.W    R0,??DataTable24_41  ;; 0x10008800
        CMP      R5,R0
        BEQ.W    ??DMA_GetITStatus_1
        LDR.W    R0,??DataTable24_42  ;; 0x10004400
        CMP      R5,R0
        BEQ.W    ??DMA_GetITStatus_1
        LDR.W    R0,??DataTable24_43  ;; 0x10002200
        CMP      R5,R0
        BEQ.W    ??DMA_GetITStatus_1
        LDR.W    R0,??DataTable24_44  ;; 0x10001100
        CMP      R5,R0
        BEQ.W    ??DMA_GetITStatus_1
        LDR.W    R0,??DataTable24_45  ;; 0x90000040
        CMP      R5,R0
        BEQ.W    ??DMA_GetITStatus_1
        LDR.W    R0,??DataTable24_46  ;; 0x10208000
        CMP      R5,R0
        BEQ.N    ??DMA_GetITStatus_1
        LDR.W    R0,??DataTable24_47  ;; 0x10104000
        CMP      R5,R0
        BEQ.N    ??DMA_GetITStatus_1
        LDR.W    R0,??DataTable24_48  ;; 0x10082000
        CMP      R5,R0
        BEQ.N    ??DMA_GetITStatus_1
        LDR.W    R0,??DataTable24_49  ;; 0x10041000
        CMP      R5,R0
        BEQ.N    ??DMA_GetITStatus_1
        LDR.W    R0,??DataTable24_50  ;; 0x90010000
        CMP      R5,R0
        BEQ.N    ??DMA_GetITStatus_1
        LDR.W    R0,??DataTable24_51  ;; 0x18008000
        CMP      R5,R0
        BEQ.N    ??DMA_GetITStatus_1
        LDR.W    R0,??DataTable24_52  ;; 0x14004000
        CMP      R5,R0
        BEQ.N    ??DMA_GetITStatus_1
        LDR.W    R0,??DataTable24_53  ;; 0x12002000
        CMP      R5,R0
        BEQ.N    ??DMA_GetITStatus_1
        LDR.W    R0,??DataTable24_54  ;; 0x11001000
        CMP      R5,R0
        BEQ.N    ??DMA_GetITStatus_1
        LDR.W    R0,??DataTable24_55  ;; 0x90400000
        CMP      R5,R0
        BEQ.N    ??DMA_GetITStatus_1
        LDR.W    R0,??DataTable24_56  ;; 0x20008020
        CMP      R5,R0
        BEQ.N    ??DMA_GetITStatus_1
        LDR.W    R0,??DataTable24_57  ;; 0x20004010
        CMP      R5,R0
        BEQ.N    ??DMA_GetITStatus_1
        LDR.W    R0,??DataTable24_58  ;; 0x20002008
        CMP      R5,R0
        BEQ.N    ??DMA_GetITStatus_1
        LDR.W    R0,??DataTable24_59  ;; 0x20001004
        CMP      R5,R0
        BEQ.N    ??DMA_GetITStatus_1
        LDR.W    R0,??DataTable24_60  ;; 0xa0000001
        CMP      R5,R0
        BEQ.N    ??DMA_GetITStatus_1
        LDR.W    R0,??DataTable24_61  ;; 0x20008800
        CMP      R5,R0
        BEQ.N    ??DMA_GetITStatus_1
        LDR.W    R0,??DataTable24_62  ;; 0x20004400
        CMP      R5,R0
        BEQ.N    ??DMA_GetITStatus_1
        LDR.W    R0,??DataTable24_63  ;; 0x20002200
        CMP      R5,R0
        BEQ.N    ??DMA_GetITStatus_1
        LDR.W    R0,??DataTable24_64  ;; 0x20001100
        CMP      R5,R0
        BEQ.N    ??DMA_GetITStatus_1
        LDR.W    R0,??DataTable24_65  ;; 0xa0000040
        CMP      R5,R0
        BEQ.N    ??DMA_GetITStatus_1
        LDR.W    R0,??DataTable24_66  ;; 0x20208000
        CMP      R5,R0
        BEQ.N    ??DMA_GetITStatus_1
        LDR.W    R0,??DataTable24_67  ;; 0x20104000
        CMP      R5,R0
        BEQ.N    ??DMA_GetITStatus_1
        LDR.W    R0,??DataTable24_68  ;; 0x20082000
        CMP      R5,R0
        BEQ.N    ??DMA_GetITStatus_1
        LDR.W    R0,??DataTable24_69  ;; 0x20041000
        CMP      R5,R0
        BEQ.N    ??DMA_GetITStatus_1
        LDR.W    R0,??DataTable24_70  ;; 0xa0010000
        CMP      R5,R0
        BEQ.N    ??DMA_GetITStatus_1
        LDR.W    R0,??DataTable24_71  ;; 0x28008000
        CMP      R5,R0
        BEQ.N    ??DMA_GetITStatus_1
        LDR.W    R0,??DataTable24_72  ;; 0x24004000
        CMP      R5,R0
        BEQ.N    ??DMA_GetITStatus_1
        LDR.W    R0,??DataTable24_73  ;; 0x22002000
        CMP      R5,R0
        BEQ.N    ??DMA_GetITStatus_1
        LDR.W    R0,??DataTable24_74  ;; 0x21001000
        CMP      R5,R0
        BEQ.N    ??DMA_GetITStatus_1
        LDR.W    R0,??DataTable24_75  ;; 0xa0400000
        CMP      R5,R0
        BEQ.N    ??DMA_GetITStatus_1
        MOVW     R2,#+1161
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_DMA_GET_IT(DMA_IT)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??DMA_GetITStatus_1:
        LDR.N    R0,??DataTable24_2  ;; 0x40026410
        CMP      R4,R0
        BCS.N    ??DMA_GetITStatus_2
        LDR.N    R0,??DataTable24_32  ;; 0x40026000
        MOVS     R7,R0
        B.N      ??DMA_GetITStatus_3
??DMA_GetITStatus_2:
        LDR.N    R0,??DataTable24_33  ;; 0x40026400
        MOVS     R7,R0
??DMA_GetITStatus_3:
        LDR.W    R0,??DataTable24_76  ;; 0xf3c0f3c
        TST      R5,R0
        BEQ.N    ??DMA_GetITStatus_4
        LSRS     R0,R5,#+11
        ANDS     R0,R0,#0x1E
        MOV      R8,R0
        LDR      R0,[R4, #+0]
        ANDS     R0,R8,R0
        MOV      R9,R0
        B.N      ??DMA_GetITStatus_5
??DMA_GetITStatus_4:
        LDR      R0,[R4, #+20]
        ANDS     R0,R0,#0x80
        MOV      R9,R0
??DMA_GetITStatus_5:
        LSLS     R0,R5,#+2
        BPL.N    ??DMA_GetITStatus_6
        LDR      R0,[R7, #+4]
        MOV      R8,R0
        B.N      ??DMA_GetITStatus_7
??DMA_GetITStatus_6:
        LDR      R0,[R7, #+0]
        MOV      R8,R0
??DMA_GetITStatus_7:
        LDR.N    R0,??DataTable24_34  ;; 0xf7d0f7d
        ANDS     R8,R0,R8
        TST      R8,R5
        BEQ.N    ??DMA_GetITStatus_8
        CMP      R9,#+0
        BEQ.N    ??DMA_GetITStatus_8
        MOVS     R0,#+1
        MOVS     R6,R0
        B.N      ??DMA_GetITStatus_9
??DMA_GetITStatus_8:
        MOVS     R0,#+0
        MOVS     R6,R0
??DMA_GetITStatus_9:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4-R9,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable23:
        DC32     `?<Constant "IS_DMA_CURRENT_MEM(DM...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable23_1:
        DC32     `?<Constant "IS_FUNCTIONAL_STATE(N...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable23_2:
        DC32     0x40026010

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable23_3:
        DC32     0x40026028

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable23_4:
        DC32     0x40026040

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable23_5:
        DC32     0x40026058

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable23_6:
        DC32     0x40026070

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable23_7:
        DC32     0x40026088

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable23_8:
        DC32     0x400260a0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable23_9:
        DC32     0x400260b8

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable23_10:
        DC32     0x40026428

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable23_11:
        DC32     0x40026440

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable23_12:
        DC32     0x40026458

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable23_13:
        DC32     0x40026470

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable23_14:
        DC32     0x40026488

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable23_15:
        DC32     0x400264a0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable23_16:
        DC32     0x400264b8

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_DMA_ALL_PERIPH(DMA...">`:
        ; Initializer data, 32 bytes
        DC8 73, 83, 95, 68, 77, 65, 95, 65, 76, 76
        DC8 95, 80, 69, 82, 73, 80, 72, 40, 68, 77
        DC8 65, 121, 95, 83, 116, 114, 101, 97, 109, 120
        DC8 41, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`:
        ; Initializer data, 176 bytes
        DC8 68, 58, 92, 119, 111, 114, 107, 92, 208, 208
        DC8 177, 234, 178, 250, 198, 183, 92, 184, 196, 189
        DC8 248, 176, 230, 210, 187, 204, 229, 187, 250, 92
        DC8 212, 180, 179, 204, 208, 242, 92, 184, 196, 189
        DC8 248, 208, 205, 69, 71, 83, 55, 48, 49, 45
        DC8 49, 92, 184, 196, 189, 248, 208, 205, 69, 71
        DC8 83, 55, 48, 49, 45, 49, 92, 83, 84, 77
        DC8 51, 50, 70, 50, 120, 120, 95, 66, 111, 111
        DC8 116, 95, 86, 49, 46, 54, 50, 92, 83, 84
        DC8 77, 51, 50, 70, 50, 120, 120, 95, 66, 111
        DC8 111, 116, 95, 49, 51, 48, 56, 49, 53, 95
        DC8 73, 65, 82, 54, 46, 49, 92, 83, 84, 77
        DC8 51, 50, 95, 66, 111, 111, 116, 92, 83, 84
        DC8 77, 51, 50, 70, 50, 120, 120, 95, 83, 116
        DC8 100, 80, 101, 114, 105, 112, 104, 95, 68, 114
        DC8 105, 118, 101, 114, 92, 115, 114, 99, 92, 115
        DC8 116, 109, 51, 50, 102, 50, 120, 120, 95, 100
        DC8 109, 97, 46, 99, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_FUNCTIONAL_STATE(N...">`:
        ; Initializer data, 32 bytes
        DC8 73, 83, 95, 70, 85, 78, 67, 84, 73, 79
        DC8 78, 65, 76, 95, 83, 84, 65, 84, 69, 40
        DC8 78, 101, 119, 83, 116, 97, 116, 101, 41, 0
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DMA_ClearITPendingBit:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable24_77  ;; 0x40026010
        CMP      R4,R0
        BEQ.N    ??DMA_ClearITPendingBit_0
        LDR.N    R0,??DataTable24_78  ;; 0x40026028
        CMP      R4,R0
        BEQ.N    ??DMA_ClearITPendingBit_0
        LDR.N    R0,??DataTable24_79  ;; 0x40026040
        CMP      R4,R0
        BEQ.N    ??DMA_ClearITPendingBit_0
        LDR.N    R0,??DataTable24_80  ;; 0x40026058
        CMP      R4,R0
        BEQ.N    ??DMA_ClearITPendingBit_0
        LDR.N    R0,??DataTable24_81  ;; 0x40026070
        CMP      R4,R0
        BEQ.N    ??DMA_ClearITPendingBit_0
        LDR.N    R0,??DataTable24_82  ;; 0x40026088
        CMP      R4,R0
        BEQ.N    ??DMA_ClearITPendingBit_0
        LDR.N    R0,??DataTable24_83  ;; 0x400260a0
        CMP      R4,R0
        BEQ.N    ??DMA_ClearITPendingBit_0
        LDR.N    R0,??DataTable24_84  ;; 0x400260b8
        CMP      R4,R0
        BEQ.N    ??DMA_ClearITPendingBit_0
        LDR.N    R0,??DataTable24_2  ;; 0x40026410
        CMP      R4,R0
        BEQ.N    ??DMA_ClearITPendingBit_0
        LDR.N    R0,??DataTable24_85  ;; 0x40026428
        CMP      R4,R0
        BEQ.N    ??DMA_ClearITPendingBit_0
        LDR.N    R0,??DataTable24_86  ;; 0x40026440
        CMP      R4,R0
        BEQ.N    ??DMA_ClearITPendingBit_0
        LDR.N    R0,??DataTable24_87  ;; 0x40026458
        CMP      R4,R0
        BEQ.N    ??DMA_ClearITPendingBit_0
        LDR.N    R0,??DataTable24_88  ;; 0x40026470
        CMP      R4,R0
        BEQ.N    ??DMA_ClearITPendingBit_0
        LDR.N    R0,??DataTable24_89  ;; 0x40026488
        CMP      R4,R0
        BEQ.N    ??DMA_ClearITPendingBit_0
        LDR.N    R0,??DataTable24_90  ;; 0x400264a0
        CMP      R4,R0
        BEQ.N    ??DMA_ClearITPendingBit_0
        LDR.N    R0,??DataTable24_1  ;; 0x400264b8
        CMP      R4,R0
        BEQ.N    ??DMA_ClearITPendingBit_0
        MOV      R2,#+1240
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_DMA_ALL_PERIPH(DMA...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??DMA_ClearITPendingBit_0:
        ANDS     R0,R5,#0x30000000
        CMP      R0,#+805306368
        BEQ.N    ??DMA_ClearITPendingBit_1
        TST      R5,#0x30000000
        BEQ.N    ??DMA_ClearITPendingBit_1
        CMP      R5,#+0
        BEQ.N    ??DMA_ClearITPendingBit_1
        LDR.N    R0,??DataTable24_91  ;; 0x40820082
        TST      R5,R0
        BEQ.N    ??DMA_ClearITPendingBit_2
??DMA_ClearITPendingBit_1:
        MOVW     R2,#+1241
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_DMA_CLEAR_IT(DMA_IT)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??DMA_ClearITPendingBit_2:
        LDR.N    R0,??DataTable24_2  ;; 0x40026410
        CMP      R4,R0
        BCS.N    ??DMA_ClearITPendingBit_3
        LDR.N    R0,??DataTable24_32  ;; 0x40026000
        MOVS     R6,R0
        B.N      ??DMA_ClearITPendingBit_4
??DMA_ClearITPendingBit_3:
        LDR.N    R0,??DataTable24_33  ;; 0x40026400
        MOVS     R6,R0
??DMA_ClearITPendingBit_4:
        LSLS     R0,R5,#+2
        BPL.N    ??DMA_ClearITPendingBit_5
        LDR.N    R0,??DataTable24_34  ;; 0xf7d0f7d
        ANDS     R0,R0,R5
        STR      R0,[R6, #+12]
        B.N      ??DMA_ClearITPendingBit_6
??DMA_ClearITPendingBit_5:
        LDR.N    R0,??DataTable24_34  ;; 0xf7d0f7d
        ANDS     R0,R0,R5
        STR      R0,[R6, #+8]
??DMA_ClearITPendingBit_6:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24:
        DC32     `?<Constant "IS_DMA_CURRENT_MEM(DM...">_1`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_1:
        DC32     0x400264b8

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_2:
        DC32     0x40026410

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_3:
        DC32     0x10000020

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_4:
        DC32     0x10000010

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_5:
        DC32     0x10000008

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_6:
        DC32     0x10800004

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_7:
        DC32     0x10800001

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_8:
        DC32     0x10000800

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_9:
        DC32     0x10000400

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_10:
        DC32     0x10000200

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_11:
        DC32     0x10000100

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_12:
        DC32     0x10000040

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_13:
        DC32     0x10100000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_14:
        DC32     0x10080000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_15:
        DC32     0x10040000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_16:
        DC32     0x10010000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_17:
        DC32     0x20000020

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_18:
        DC32     0x20000010

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_19:
        DC32     0x20000008

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_20:
        DC32     0x20000004

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_21:
        DC32     0x20000001

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_22:
        DC32     0x20000800

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_23:
        DC32     0x20000400

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_24:
        DC32     0x20000200

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_25:
        DC32     0x20000100

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_26:
        DC32     0x20000040

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_27:
        DC32     0x20200000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_28:
        DC32     0x20100000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_29:
        DC32     0x20080000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_30:
        DC32     0x20040000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_31:
        DC32     0x20010000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_32:
        DC32     0x40026000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_33:
        DC32     0x40026400

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_34:
        DC32     0xf7d0f7d

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_35:
        DC32     0xc082f082

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_36:
        DC32     0x10008020

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_37:
        DC32     0x10004010

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_38:
        DC32     0x10002008

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_39:
        DC32     0x10001004

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_40:
        DC32     0x90000001

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_41:
        DC32     0x10008800

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_42:
        DC32     0x10004400

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_43:
        DC32     0x10002200

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_44:
        DC32     0x10001100

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_45:
        DC32     0x90000040

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_46:
        DC32     0x10208000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_47:
        DC32     0x10104000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_48:
        DC32     0x10082000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_49:
        DC32     0x10041000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_50:
        DC32     0x90010000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_51:
        DC32     0x18008000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_52:
        DC32     0x14004000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_53:
        DC32     0x12002000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_54:
        DC32     0x11001000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_55:
        DC32     0x90400000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_56:
        DC32     0x20008020

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_57:
        DC32     0x20004010

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_58:
        DC32     0x20002008

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_59:
        DC32     0x20001004

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_60:
        DC32     0xa0000001

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_61:
        DC32     0x20008800

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_62:
        DC32     0x20004400

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_63:
        DC32     0x20002200

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_64:
        DC32     0x20001100

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_65:
        DC32     0xa0000040

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_66:
        DC32     0x20208000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_67:
        DC32     0x20104000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_68:
        DC32     0x20082000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_69:
        DC32     0x20041000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_70:
        DC32     0xa0010000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_71:
        DC32     0x28008000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_72:
        DC32     0x24004000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_73:
        DC32     0x22002000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_74:
        DC32     0x21001000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_75:
        DC32     0xa0400000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_76:
        DC32     0xf3c0f3c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_77:
        DC32     0x40026010

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_78:
        DC32     0x40026028

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_79:
        DC32     0x40026040

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_80:
        DC32     0x40026058

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_81:
        DC32     0x40026070

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_82:
        DC32     0x40026088

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_83:
        DC32     0x400260a0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_84:
        DC32     0x400260b8

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_85:
        DC32     0x40026428

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_86:
        DC32     0x40026440

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_87:
        DC32     0x40026458

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_88:
        DC32     0x40026470

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_89:
        DC32     0x40026488

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_90:
        DC32     0x400264a0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_91:
        DC32     0x40820082

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_DMA_GET_FLAG(DMA_F...">`:
        ; Initializer data, 28 bytes
        DC8 73, 83, 95, 68, 77, 65, 95, 71, 69, 84
        DC8 95, 70, 76, 65, 71, 40, 68, 77, 65, 95
        DC8 70, 76, 65, 71, 41, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_DMA_CLEAR_FLAG(DMA...">`:
        ; Initializer data, 28 bytes
        DC8 73, 83, 95, 68, 77, 65, 95, 67, 76, 69
        DC8 65, 82, 95, 70, 76, 65, 71, 40, 68, 77
        DC8 65, 95, 70, 76, 65, 71, 41, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_DMA_CONFIG_IT(DMA_IT)">`:
        ; Initializer data, 28 bytes
        DC8 73, 83, 95, 68, 77, 65, 95, 67, 79, 78
        DC8 70, 73, 71, 95, 73, 84, 40, 68, 77, 65
        DC8 95, 73, 84, 41, 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_DMA_GET_IT(DMA_IT)">`:
        ; Initializer data, 24 bytes
        DC8 73, 83, 95, 68, 77, 65, 95, 71, 69, 84
        DC8 95, 73, 84, 40, 68, 77, 65, 95, 73, 84
        DC8 41, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_DMA_CLEAR_IT(DMA_IT)">`:
        ; Initializer data, 24 bytes
        DC8 73, 83, 95, 68, 77, 65, 95, 67, 76, 69
        DC8 65, 82, 95, 73, 84, 40, 68, 77, 65, 95
        DC8 73, 84, 41, 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_DMA_CURRENT_MEM(DM...">`:
        ; Initializer data, 40 bytes
        DC8 73, 83, 95, 68, 77, 65, 95, 67, 85, 82
        DC8 82, 69, 78, 84, 95, 77, 69, 77, 40, 68
        DC8 77, 65, 95, 67, 117, 114, 114, 101, 110, 116
        DC8 77, 101, 109, 111, 114, 121, 41, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_DMA_CURRENT_MEM(DM...">_1`:
        ; Initializer data, 40 bytes
        DC8 73, 83, 95, 68, 77, 65, 95, 67, 85, 82
        DC8 82, 69, 78, 84, 95, 77, 69, 77, 40, 68
        DC8 77, 65, 95, 77, 101, 109, 111, 114, 121, 84
        DC8 97, 114, 103, 101, 116, 41, 0, 0, 0, 0

        END
// 
//    80 bytes in section .rodata
// 4 704 bytes in section .text
// 
// 4 704 bytes of CODE  memory
//    80 bytes of CONST memory
//
//Errors: none
//Warnings: none
