///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.10.2.52244/W32 for ARM    04/Dec/2013  10:58:14 /
// Copyright 1999-2010 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\STM32F2xx_StdPeriph_Driver\src\stm32f /
//                    2xx_tim.c                                               /
//    Command line =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\STM32F2xx_StdPeriph_Driver\src\stm32f /
//                    2xx_tim.c -D STM32F10X_CL -D USE_STDPERIPH_DRIVER -lcN  /
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
//                    IAR6.1\STM32_Boot\EWARM\Debug\List\stm32f2xx_tim.s      /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f2xx_tim

        EXTERN RCC_APB1PeriphResetCmd
        EXTERN RCC_APB2PeriphResetCmd
        EXTERN __aeabi_assert
        EXTERN __iar_EmptyStepPoint

        PUBLIC TIM_ARRPreloadConfig
        PUBLIC TIM_BDTRConfig
        PUBLIC TIM_BDTRStructInit
        PUBLIC TIM_CCPreloadControl
        PUBLIC TIM_CCxCmd
        PUBLIC TIM_CCxNCmd
        PUBLIC TIM_ClearFlag
        PUBLIC TIM_ClearITPendingBit
        PUBLIC TIM_ClearOC1Ref
        PUBLIC TIM_ClearOC2Ref
        PUBLIC TIM_ClearOC3Ref
        PUBLIC TIM_ClearOC4Ref
        PUBLIC TIM_Cmd
        PUBLIC TIM_CounterModeConfig
        PUBLIC TIM_CtrlPWMOutputs
        PUBLIC TIM_DMACmd
        PUBLIC TIM_DMAConfig
        PUBLIC TIM_DeInit
        PUBLIC TIM_ETRClockMode1Config
        PUBLIC TIM_ETRClockMode2Config
        PUBLIC TIM_ETRConfig
        PUBLIC TIM_EncoderInterfaceConfig
        PUBLIC TIM_ForcedOC1Config
        PUBLIC TIM_ForcedOC2Config
        PUBLIC TIM_ForcedOC3Config
        PUBLIC TIM_ForcedOC4Config
        PUBLIC TIM_GenerateEvent
        PUBLIC TIM_GetCapture1
        PUBLIC TIM_GetCapture2
        PUBLIC TIM_GetCapture3
        PUBLIC TIM_GetCapture4
        PUBLIC TIM_GetCounter
        PUBLIC TIM_GetFlagStatus
        PUBLIC TIM_GetITStatus
        PUBLIC TIM_GetPrescaler
        PUBLIC TIM_ICInit
        PUBLIC TIM_ICStructInit
        PUBLIC TIM_ITConfig
        PUBLIC TIM_ITRxExternalClockConfig
        PUBLIC TIM_InternalClockConfig
        PUBLIC TIM_OC1FastConfig
        PUBLIC TIM_OC1Init
        PUBLIC TIM_OC1NPolarityConfig
        PUBLIC TIM_OC1PolarityConfig
        PUBLIC TIM_OC1PreloadConfig
        PUBLIC TIM_OC2FastConfig
        PUBLIC TIM_OC2Init
        PUBLIC TIM_OC2NPolarityConfig
        PUBLIC TIM_OC2PolarityConfig
        PUBLIC TIM_OC2PreloadConfig
        PUBLIC TIM_OC3FastConfig
        PUBLIC TIM_OC3Init
        PUBLIC TIM_OC3NPolarityConfig
        PUBLIC TIM_OC3PolarityConfig
        PUBLIC TIM_OC3PreloadConfig
        PUBLIC TIM_OC4FastConfig
        PUBLIC TIM_OC4Init
        PUBLIC TIM_OC4PolarityConfig
        PUBLIC TIM_OC4PreloadConfig
        PUBLIC TIM_OCStructInit
        PUBLIC TIM_PWMIConfig
        PUBLIC TIM_PrescalerConfig
        PUBLIC TIM_RemapConfig
        PUBLIC TIM_SelectCCDMA
        PUBLIC TIM_SelectCOM
        PUBLIC TIM_SelectHallSensor
        PUBLIC TIM_SelectInputTrigger
        PUBLIC TIM_SelectMasterSlaveMode
        PUBLIC TIM_SelectOCxM
        PUBLIC TIM_SelectOnePulseMode
        PUBLIC TIM_SelectOutputTrigger
        PUBLIC TIM_SelectSlaveMode
        PUBLIC TIM_SetAutoreload
        PUBLIC TIM_SetClockDivision
        PUBLIC TIM_SetCompare1
        PUBLIC TIM_SetCompare2
        PUBLIC TIM_SetCompare3
        PUBLIC TIM_SetCompare4
        PUBLIC TIM_SetCounter
        PUBLIC TIM_SetIC1Prescaler
        PUBLIC TIM_SetIC2Prescaler
        PUBLIC TIM_SetIC3Prescaler
        PUBLIC TIM_SetIC4Prescaler
        PUBLIC TIM_TIxExternalClockConfig
        PUBLIC TIM_TimeBaseInit
        PUBLIC TIM_TimeBaseStructInit
        PUBLIC TIM_UpdateDisableConfig
        PUBLIC TIM_UpdateRequestConfig


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_DeInit:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.W    R0,??DataTable75  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_DeInit_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_DeInit_0
        LDR.W    R0,??DataTable75_1  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_DeInit_0
        LDR.W    R0,??DataTable75_2  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_DeInit_0
        LDR.W    R0,??DataTable75_3  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_DeInit_0
        LDR.W    R0,??DataTable75_4  ;; 0x40001000
        CMP      R4,R0
        BEQ.N    ??TIM_DeInit_0
        LDR.W    R0,??DataTable75_5  ;; 0x40001400
        CMP      R4,R0
        BEQ.N    ??TIM_DeInit_0
        LDR.W    R0,??DataTable75_6  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_DeInit_0
        LDR.W    R0,??DataTable75_7  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_DeInit_0
        LDR.W    R0,??DataTable75_8  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_DeInit_0
        LDR.W    R0,??DataTable75_9  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_DeInit_0
        LDR.W    R0,??DataTable75_10  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_DeInit_0
        LDR.W    R0,??DataTable75_11  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_DeInit_0
        LDR.W    R0,??DataTable77  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_DeInit_0
        MOVS     R2,#+197
        LDR.W    R1,??DataTable75_12
        LDR.W    R0,??DataTable75_13
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_DeInit_0:
        LDR.W    R0,??DataTable75  ;; 0x40010000
        CMP      R4,R0
        BNE.N    ??TIM_DeInit_1
        MOVS     R1,#+1
        MOVS     R0,#+1
        BL       RCC_APB2PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+1
        BL       RCC_APB2PeriphResetCmd
        B.N      ??TIM_DeInit_2
??TIM_DeInit_1:
        CMP      R4,#+1073741824
        BNE.N    ??TIM_DeInit_3
        MOVS     R1,#+1
        MOVS     R0,#+1
        BL       RCC_APB1PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+1
        BL       RCC_APB1PeriphResetCmd
        B.N      ??TIM_DeInit_2
??TIM_DeInit_3:
        LDR.W    R0,??DataTable75_1  ;; 0x40000400
        CMP      R4,R0
        BNE.N    ??TIM_DeInit_4
        MOVS     R1,#+1
        MOVS     R0,#+2
        BL       RCC_APB1PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+2
        BL       RCC_APB1PeriphResetCmd
        B.N      ??TIM_DeInit_2
??TIM_DeInit_4:
        LDR.W    R0,??DataTable75_2  ;; 0x40000800
        CMP      R4,R0
        BNE.N    ??TIM_DeInit_5
        MOVS     R1,#+1
        MOVS     R0,#+4
        BL       RCC_APB1PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+4
        BL       RCC_APB1PeriphResetCmd
        B.N      ??TIM_DeInit_2
??TIM_DeInit_5:
        LDR.W    R0,??DataTable75_3  ;; 0x40000c00
        CMP      R4,R0
        BNE.N    ??TIM_DeInit_6
        MOVS     R1,#+1
        MOVS     R0,#+8
        BL       RCC_APB1PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+8
        BL       RCC_APB1PeriphResetCmd
        B.N      ??TIM_DeInit_2
??TIM_DeInit_6:
        LDR.W    R0,??DataTable75_4  ;; 0x40001000
        CMP      R4,R0
        BNE.N    ??TIM_DeInit_7
        MOVS     R1,#+1
        MOVS     R0,#+16
        BL       RCC_APB1PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+16
        BL       RCC_APB1PeriphResetCmd
        B.N      ??TIM_DeInit_2
??TIM_DeInit_7:
        LDR.W    R0,??DataTable75_5  ;; 0x40001400
        CMP      R4,R0
        BNE.N    ??TIM_DeInit_8
        MOVS     R1,#+1
        MOVS     R0,#+32
        BL       RCC_APB1PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+32
        BL       RCC_APB1PeriphResetCmd
        B.N      ??TIM_DeInit_2
??TIM_DeInit_8:
        LDR.W    R0,??DataTable75_6  ;; 0x40010400
        CMP      R4,R0
        BNE.N    ??TIM_DeInit_9
        MOVS     R1,#+1
        MOVS     R0,#+2
        BL       RCC_APB2PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+2
        BL       RCC_APB2PeriphResetCmd
        B.N      ??TIM_DeInit_2
??TIM_DeInit_9:
        LDR.W    R0,??DataTable75_7  ;; 0x40014000
        CMP      R4,R0
        BNE.N    ??TIM_DeInit_10
        MOVS     R1,#+1
        MOVS     R0,#+65536
        BL       RCC_APB2PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+65536
        BL       RCC_APB2PeriphResetCmd
        B.N      ??TIM_DeInit_2
??TIM_DeInit_10:
        LDR.W    R0,??DataTable75_8  ;; 0x40014400
        CMP      R4,R0
        BNE.N    ??TIM_DeInit_11
        MOVS     R1,#+1
        MOVS     R0,#+131072
        BL       RCC_APB2PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+131072
        BL       RCC_APB2PeriphResetCmd
        B.N      ??TIM_DeInit_2
??TIM_DeInit_11:
        LDR.W    R0,??DataTable75_9  ;; 0x40014800
        CMP      R4,R0
        BNE.N    ??TIM_DeInit_12
        MOVS     R1,#+1
        MOVS     R0,#+262144
        BL       RCC_APB2PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+262144
        BL       RCC_APB2PeriphResetCmd
        B.N      ??TIM_DeInit_2
??TIM_DeInit_12:
        LDR.W    R0,??DataTable75_10  ;; 0x40001800
        CMP      R4,R0
        BNE.N    ??TIM_DeInit_13
        MOVS     R1,#+1
        MOVS     R0,#+64
        BL       RCC_APB1PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+64
        BL       RCC_APB1PeriphResetCmd
        B.N      ??TIM_DeInit_2
??TIM_DeInit_13:
        LDR.W    R0,??DataTable75_11  ;; 0x40001c00
        CMP      R4,R0
        BNE.N    ??TIM_DeInit_14
        MOVS     R1,#+1
        MOVS     R0,#+128
        BL       RCC_APB1PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+128
        BL       RCC_APB1PeriphResetCmd
        B.N      ??TIM_DeInit_2
??TIM_DeInit_14:
        LDR.W    R0,??DataTable77  ;; 0x40002000
        CMP      R4,R0
        BNE.N    ??TIM_DeInit_2
        MOVS     R1,#+1
        MOV      R0,#+256
        BL       RCC_APB1PeriphResetCmd
        MOVS     R1,#+0
        MOV      R0,#+256
        BL       RCC_APB1PeriphResetCmd
??TIM_DeInit_2:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_TimeBaseInit:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.W    R0,??DataTable75  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_TimeBaseInit_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_TimeBaseInit_0
        LDR.W    R0,??DataTable75_1  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_TimeBaseInit_0
        LDR.W    R0,??DataTable75_2  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_TimeBaseInit_0
        LDR.W    R0,??DataTable75_3  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_TimeBaseInit_0
        LDR.W    R0,??DataTable75_4  ;; 0x40001000
        CMP      R4,R0
        BEQ.N    ??TIM_TimeBaseInit_0
        LDR.W    R0,??DataTable75_5  ;; 0x40001400
        CMP      R4,R0
        BEQ.N    ??TIM_TimeBaseInit_0
        LDR.W    R0,??DataTable75_6  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_TimeBaseInit_0
        LDR.W    R0,??DataTable75_7  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_TimeBaseInit_0
        LDR.W    R0,??DataTable75_8  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_TimeBaseInit_0
        LDR.W    R0,??DataTable75_9  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_TimeBaseInit_0
        LDR.W    R0,??DataTable75_10  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_TimeBaseInit_0
        LDR.W    R0,??DataTable75_11  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_TimeBaseInit_0
        LDR.W    R0,??DataTable77  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_TimeBaseInit_0
        MOVW     R2,#+287
        LDR.W    R1,??DataTable75_12
        LDR.W    R0,??DataTable75_13
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_TimeBaseInit_0:
        LDRH     R0,[R5, #+2]
        CMP      R0,#+0
        BEQ.N    ??TIM_TimeBaseInit_1
        LDRH     R0,[R5, #+2]
        CMP      R0,#+16
        BEQ.N    ??TIM_TimeBaseInit_1
        LDRH     R0,[R5, #+2]
        CMP      R0,#+32
        BEQ.N    ??TIM_TimeBaseInit_1
        LDRH     R0,[R5, #+2]
        CMP      R0,#+64
        BEQ.N    ??TIM_TimeBaseInit_1
        LDRH     R0,[R5, #+2]
        CMP      R0,#+96
        BEQ.N    ??TIM_TimeBaseInit_1
        MOV      R2,#+288
        LDR.W    R1,??DataTable75_12
        LDR.W    R0,??DataTable77_1
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_TimeBaseInit_1:
        LDRH     R0,[R5, #+8]
        CMP      R0,#+0
        BEQ.N    ??TIM_TimeBaseInit_2
        LDRH     R0,[R5, #+8]
        MOV      R1,#+256
        CMP      R0,R1
        BEQ.N    ??TIM_TimeBaseInit_2
        LDRH     R0,[R5, #+8]
        MOV      R1,#+512
        CMP      R0,R1
        BEQ.N    ??TIM_TimeBaseInit_2
        MOVW     R2,#+289
        LDR.W    R1,??DataTable75_12
        LDR.W    R0,??DataTable77_2
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_TimeBaseInit_2:
        LDRH     R0,[R4, #+0]
        MOVS     R6,R0
        LDR.W    R0,??DataTable75  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_TimeBaseInit_3
        LDR.W    R0,??DataTable75_6  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_TimeBaseInit_3
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_TimeBaseInit_3
        LDR.W    R0,??DataTable75_1  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_TimeBaseInit_3
        LDR.W    R0,??DataTable75_2  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_TimeBaseInit_3
        LDR.W    R0,??DataTable75_3  ;; 0x40000c00
        CMP      R4,R0
        BNE.N    ??TIM_TimeBaseInit_4
??TIM_TimeBaseInit_3:
        MOVW     R0,#+65423
        ANDS     R6,R0,R6
        LDRH     R0,[R5, #+2]
        ORRS     R6,R0,R6
??TIM_TimeBaseInit_4:
        LDR.W    R0,??DataTable75_4  ;; 0x40001000
        CMP      R4,R0
        BEQ.N    ??TIM_TimeBaseInit_5
        LDR.W    R0,??DataTable75_5  ;; 0x40001400
        CMP      R4,R0
        BEQ.N    ??TIM_TimeBaseInit_5
        MOVW     R0,#+64767
        ANDS     R6,R0,R6
        LDRH     R0,[R5, #+8]
        ORRS     R6,R0,R6
??TIM_TimeBaseInit_5:
        STRH     R6,[R4, #+0]
        LDR      R0,[R5, #+4]
        STR      R0,[R4, #+44]
        LDRH     R0,[R5, #+0]
        STRH     R0,[R4, #+40]
        LDR.W    R0,??DataTable75  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_TimeBaseInit_6
        LDR.W    R0,??DataTable75_6  ;; 0x40010400
        CMP      R4,R0
        BNE.N    ??TIM_TimeBaseInit_7
??TIM_TimeBaseInit_6:
        LDRB     R0,[R5, #+10]
        STRH     R0,[R4, #+48]
??TIM_TimeBaseInit_7:
        MOVS     R0,#+1
        STRH     R0,[R4, #+20]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_TimeBaseStructInit:
        MOVS     R1,#-1
        STR      R1,[R0, #+4]
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
        MOVS     R1,#+0
        STRH     R1,[R0, #+8]
        MOVS     R1,#+0
        STRH     R1,[R0, #+2]
        MOVS     R1,#+0
        STRB     R1,[R0, #+10]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_PrescalerConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        LDR.W    R0,??DataTable75  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_PrescalerConfig_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_PrescalerConfig_0
        LDR.W    R0,??DataTable75_1  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_PrescalerConfig_0
        LDR.W    R0,??DataTable75_2  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_PrescalerConfig_0
        LDR.W    R0,??DataTable75_3  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_PrescalerConfig_0
        LDR.W    R0,??DataTable75_4  ;; 0x40001000
        CMP      R4,R0
        BEQ.N    ??TIM_PrescalerConfig_0
        LDR.W    R0,??DataTable75_5  ;; 0x40001400
        CMP      R4,R0
        BEQ.N    ??TIM_PrescalerConfig_0
        LDR.W    R0,??DataTable75_6  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_PrescalerConfig_0
        LDR.W    R0,??DataTable75_7  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_PrescalerConfig_0
        LDR.W    R0,??DataTable75_8  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_PrescalerConfig_0
        LDR.W    R0,??DataTable75_9  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_PrescalerConfig_0
        LDR.W    R0,??DataTable75_10  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_PrescalerConfig_0
        LDR.W    R0,??DataTable75_11  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_PrescalerConfig_0
        LDR.W    R0,??DataTable77  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_PrescalerConfig_0
        MOVW     R2,#+357
        LDR.W    R1,??DataTable75_12
        LDR.W    R0,??DataTable75_13
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_PrescalerConfig_0:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+0
        BEQ.N    ??TIM_PrescalerConfig_1
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+1
        BEQ.N    ??TIM_PrescalerConfig_1
        MOV      R2,#+358
        LDR.W    R1,??DataTable75_12
        LDR.W    R0,??DataTable81
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_PrescalerConfig_1:
        STRH     R5,[R4, #+40]
        STRH     R6,[R4, #+20]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_CounterModeConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.W    R0,??DataTable75  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_CounterModeConfig_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_CounterModeConfig_0
        LDR.W    R0,??DataTable75_1  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_CounterModeConfig_0
        LDR.W    R0,??DataTable75_2  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_CounterModeConfig_0
        LDR.W    R0,??DataTable75_3  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_CounterModeConfig_0
        LDR.W    R0,??DataTable75_6  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_CounterModeConfig_0
        MOV      R2,#+382
        LDR.W    R1,??DataTable75_12
        LDR.W    R0,??DataTable79
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_CounterModeConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_CounterModeConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+16
        BEQ.N    ??TIM_CounterModeConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+32
        BEQ.N    ??TIM_CounterModeConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+64
        BEQ.N    ??TIM_CounterModeConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+96
        BEQ.N    ??TIM_CounterModeConfig_1
        MOVW     R2,#+383
        LDR.W    R1,??DataTable75_12
        LDR.W    R0,??DataTable81_1
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_CounterModeConfig_1:
        LDRH     R0,[R4, #+0]
        MOVS     R6,R0
        MOVW     R0,#+65423
        ANDS     R6,R0,R6
        ORRS     R6,R5,R6
        STRH     R6,[R4, #+0]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_SetCounter:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable75  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_SetCounter_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_SetCounter_0
        LDR.W    R0,??DataTable75_1  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_SetCounter_0
        LDR.W    R0,??DataTable75_2  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_SetCounter_0
        LDR.W    R0,??DataTable75_3  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_SetCounter_0
        LDR.W    R0,??DataTable75_4  ;; 0x40001000
        CMP      R4,R0
        BEQ.N    ??TIM_SetCounter_0
        LDR.W    R0,??DataTable75_5  ;; 0x40001400
        CMP      R4,R0
        BEQ.N    ??TIM_SetCounter_0
        LDR.W    R0,??DataTable75_6  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_SetCounter_0
        LDR.W    R0,??DataTable75_7  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_SetCounter_0
        LDR.W    R0,??DataTable75_8  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_SetCounter_0
        LDR.W    R0,??DataTable75_9  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_SetCounter_0
        LDR.W    R0,??DataTable75_10  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_SetCounter_0
        LDR.W    R0,??DataTable75_11  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_SetCounter_0
        LDR.W    R0,??DataTable77  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_SetCounter_0
        MOV      R2,#+406
        LDR.W    R1,??DataTable75_12
        LDR.W    R0,??DataTable82
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_SetCounter_0:
        STR      R5,[R4, #+36]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_SetAutoreload:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable75  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_SetAutoreload_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_SetAutoreload_0
        LDR.N    R0,??DataTable75_1  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_SetAutoreload_0
        LDR.N    R0,??DataTable75_2  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_SetAutoreload_0
        LDR.N    R0,??DataTable75_3  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_SetAutoreload_0
        LDR.N    R0,??DataTable75_4  ;; 0x40001000
        CMP      R4,R0
        BEQ.N    ??TIM_SetAutoreload_0
        LDR.N    R0,??DataTable75_5  ;; 0x40001400
        CMP      R4,R0
        BEQ.N    ??TIM_SetAutoreload_0
        LDR.N    R0,??DataTable75_6  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_SetAutoreload_0
        LDR.N    R0,??DataTable75_7  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_SetAutoreload_0
        LDR.N    R0,??DataTable75_8  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_SetAutoreload_0
        LDR.N    R0,??DataTable75_9  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_SetAutoreload_0
        LDR.N    R0,??DataTable75_10  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_SetAutoreload_0
        LDR.N    R0,??DataTable75_11  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_SetAutoreload_0
        LDR.W    R0,??DataTable77  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_SetAutoreload_0
        MOVW     R2,#+421
        LDR.N    R1,??DataTable75_12
        LDR.W    R0,??DataTable82
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_SetAutoreload_0:
        STR      R5,[R4, #+44]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_GetCounter:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.N    R0,??DataTable75  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_GetCounter_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_GetCounter_0
        LDR.N    R0,??DataTable75_1  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_GetCounter_0
        LDR.N    R0,??DataTable75_2  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_GetCounter_0
        LDR.N    R0,??DataTable75_3  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_GetCounter_0
        LDR.N    R0,??DataTable75_4  ;; 0x40001000
        CMP      R4,R0
        BEQ.N    ??TIM_GetCounter_0
        LDR.N    R0,??DataTable75_5  ;; 0x40001400
        CMP      R4,R0
        BEQ.N    ??TIM_GetCounter_0
        LDR.N    R0,??DataTable75_6  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_GetCounter_0
        LDR.N    R0,??DataTable75_7  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_GetCounter_0
        LDR.N    R0,??DataTable75_8  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_GetCounter_0
        LDR.N    R0,??DataTable75_9  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_GetCounter_0
        LDR.N    R0,??DataTable75_10  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_GetCounter_0
        LDR.N    R0,??DataTable75_11  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_GetCounter_0
        LDR.W    R0,??DataTable77  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_GetCounter_0
        MOVW     R2,#+435
        LDR.N    R1,??DataTable75_12
        LDR.W    R0,??DataTable82
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_GetCounter_0:
        LDR      R0,[R4, #+36]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_GetPrescaler:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.N    R0,??DataTable75  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_GetPrescaler_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_GetPrescaler_0
        LDR.N    R0,??DataTable75_1  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_GetPrescaler_0
        LDR.N    R0,??DataTable75_2  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_GetPrescaler_0
        LDR.N    R0,??DataTable75_3  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_GetPrescaler_0
        LDR.N    R0,??DataTable75_4  ;; 0x40001000
        CMP      R4,R0
        BEQ.N    ??TIM_GetPrescaler_0
        LDR.N    R0,??DataTable75_5  ;; 0x40001400
        CMP      R4,R0
        BEQ.N    ??TIM_GetPrescaler_0
        LDR.N    R0,??DataTable75_6  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_GetPrescaler_0
        LDR.N    R0,??DataTable75_7  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_GetPrescaler_0
        LDR.N    R0,??DataTable75_8  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_GetPrescaler_0
        LDR.N    R0,??DataTable75_9  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_GetPrescaler_0
        LDR.N    R0,??DataTable75_10  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_GetPrescaler_0
        LDR.N    R0,??DataTable75_11  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_GetPrescaler_0
        LDR.W    R0,??DataTable77  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_GetPrescaler_0
        MOVW     R2,#+449
        LDR.N    R1,??DataTable75_12
        LDR.W    R0,??DataTable82
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_GetPrescaler_0:
        LDRH     R0,[R4, #+40]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_UpdateDisableConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable75  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateDisableConfig_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_UpdateDisableConfig_0
        LDR.N    R0,??DataTable75_1  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateDisableConfig_0
        LDR.N    R0,??DataTable75_2  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateDisableConfig_0
        LDR.N    R0,??DataTable75_3  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateDisableConfig_0
        LDR.N    R0,??DataTable75_4  ;; 0x40001000
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateDisableConfig_0
        LDR.N    R0,??DataTable75_5  ;; 0x40001400
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateDisableConfig_0
        LDR.N    R0,??DataTable75_6  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateDisableConfig_0
        LDR.N    R0,??DataTable75_7  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateDisableConfig_0
        LDR.N    R0,??DataTable75_8  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateDisableConfig_0
        LDR.N    R0,??DataTable75_9  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateDisableConfig_0
        LDR.N    R0,??DataTable75_10  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateDisableConfig_0
        LDR.N    R0,??DataTable75_11  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateDisableConfig_0
        LDR.N    R0,??DataTable77  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateDisableConfig_0
        MOVW     R2,#+465
        LDR.N    R1,??DataTable75_12
        LDR.N    R0,??DataTable75_13
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_UpdateDisableConfig_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??TIM_UpdateDisableConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??TIM_UpdateDisableConfig_1
        MOV      R2,#+466
        LDR.N    R1,??DataTable75_12
        LDR.W    R0,??DataTable83
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_UpdateDisableConfig_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??TIM_UpdateDisableConfig_2
        LDRH     R0,[R4, #+0]
        ORRS     R0,R0,#0x2
        STRH     R0,[R4, #+0]
        B.N      ??TIM_UpdateDisableConfig_3
??TIM_UpdateDisableConfig_2:
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+65533
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+0]
??TIM_UpdateDisableConfig_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_UpdateRequestConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable75  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateRequestConfig_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_UpdateRequestConfig_0
        LDR.N    R0,??DataTable75_1  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateRequestConfig_0
        LDR.N    R0,??DataTable75_2  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateRequestConfig_0
        LDR.N    R0,??DataTable75_3  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateRequestConfig_0
        LDR.N    R0,??DataTable75_4  ;; 0x40001000
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateRequestConfig_0
        LDR.N    R0,??DataTable75_5  ;; 0x40001400
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateRequestConfig_0
        LDR.N    R0,??DataTable75_6  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateRequestConfig_0
        LDR.N    R0,??DataTable75_7  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateRequestConfig_0
        LDR.N    R0,??DataTable75_8  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateRequestConfig_0
        LDR.N    R0,??DataTable75_9  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateRequestConfig_0
        LDR.N    R0,??DataTable75_10  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateRequestConfig_0
        LDR.N    R0,??DataTable75_11  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateRequestConfig_0
        LDR.N    R0,??DataTable77  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateRequestConfig_0
        MOV      R2,#+494
        LDR.N    R1,??DataTable75_12
        LDR.N    R0,??DataTable75_13
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_UpdateRequestConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_UpdateRequestConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+1
        BEQ.N    ??TIM_UpdateRequestConfig_1
        MOVW     R2,#+495
        LDR.N    R1,??DataTable75_12
        LDR.W    R0,??DataTable85
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_UpdateRequestConfig_1:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_UpdateRequestConfig_2
        LDRH     R0,[R4, #+0]
        ORRS     R0,R0,#0x4
        STRH     R0,[R4, #+0]
        B.N      ??TIM_UpdateRequestConfig_3
??TIM_UpdateRequestConfig_2:
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+65531
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+0]
??TIM_UpdateRequestConfig_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75:
        DC32     0x40010000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75_1:
        DC32     0x40000400

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75_2:
        DC32     0x40000800

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75_3:
        DC32     0x40000c00

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75_4:
        DC32     0x40001000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75_5:
        DC32     0x40001400

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75_6:
        DC32     0x40010400

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75_7:
        DC32     0x40014000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75_8:
        DC32     0x40014400

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75_9:
        DC32     0x40014800

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75_10:
        DC32     0x40001800

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75_11:
        DC32     0x40001c00

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75_12:
        DC32     `?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75_13:
        DC32     `?<Constant "IS_TIM_ALL_PERIPH(TIMx)">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_ARRPreloadConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable82_1  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_ARRPreloadConfig_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_ARRPreloadConfig_0
        LDR.W    R0,??DataTable82_2  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_ARRPreloadConfig_0
        LDR.W    R0,??DataTable82_3  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_ARRPreloadConfig_0
        LDR.W    R0,??DataTable82_4  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_ARRPreloadConfig_0
        LDR.W    R0,??DataTable82_5  ;; 0x40001000
        CMP      R4,R0
        BEQ.N    ??TIM_ARRPreloadConfig_0
        LDR.W    R0,??DataTable82_6  ;; 0x40001400
        CMP      R4,R0
        BEQ.N    ??TIM_ARRPreloadConfig_0
        LDR.W    R0,??DataTable82_7  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_ARRPreloadConfig_0
        LDR.W    R0,??DataTable82_8  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_ARRPreloadConfig_0
        LDR.W    R0,??DataTable82_9  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_ARRPreloadConfig_0
        LDR.W    R0,??DataTable82_10  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_ARRPreloadConfig_0
        LDR.W    R0,??DataTable82_11  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_ARRPreloadConfig_0
        LDR.W    R0,??DataTable82_12  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_ARRPreloadConfig_0
        LDR.N    R0,??DataTable77  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_ARRPreloadConfig_0
        MOVW     R2,#+519
        LDR.W    R1,??DataTable82_13
        LDR.W    R0,??DataTable82
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_ARRPreloadConfig_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??TIM_ARRPreloadConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??TIM_ARRPreloadConfig_1
        MOV      R2,#+520
        LDR.W    R1,??DataTable82_13
        LDR.W    R0,??DataTable83
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_ARRPreloadConfig_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??TIM_ARRPreloadConfig_2
        LDRH     R0,[R4, #+0]
        ORRS     R0,R0,#0x80
        STRH     R0,[R4, #+0]
        B.N      ??TIM_ARRPreloadConfig_3
??TIM_ARRPreloadConfig_2:
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+65407
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+0]
??TIM_ARRPreloadConfig_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_SelectOnePulseMode:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable82_1  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOnePulseMode_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_SelectOnePulseMode_0
        LDR.W    R0,??DataTable82_2  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOnePulseMode_0
        LDR.W    R0,??DataTable82_3  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOnePulseMode_0
        LDR.W    R0,??DataTable82_4  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOnePulseMode_0
        LDR.W    R0,??DataTable82_5  ;; 0x40001000
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOnePulseMode_0
        LDR.W    R0,??DataTable82_6  ;; 0x40001400
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOnePulseMode_0
        LDR.W    R0,??DataTable82_7  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOnePulseMode_0
        LDR.W    R0,??DataTable82_8  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOnePulseMode_0
        LDR.W    R0,??DataTable82_9  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOnePulseMode_0
        LDR.W    R0,??DataTable82_10  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOnePulseMode_0
        LDR.W    R0,??DataTable82_11  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOnePulseMode_0
        LDR.W    R0,??DataTable82_12  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOnePulseMode_0
        LDR.N    R0,??DataTable77  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOnePulseMode_0
        MOVW     R2,#+546
        LDR.W    R1,??DataTable82_13
        LDR.W    R0,??DataTable82
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_SelectOnePulseMode_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8
        BEQ.N    ??TIM_SelectOnePulseMode_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_SelectOnePulseMode_1
        MOVW     R2,#+547
        LDR.W    R1,??DataTable82_13
        LDR.W    R0,??DataTable88
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_SelectOnePulseMode_1:
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+65527
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+0]
        LDRH     R0,[R4, #+0]
        ORRS     R0,R5,R0
        STRH     R0,[R4, #+0]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable77:
        DC32     0x40002000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable77_1:
        DC32     `?<Constant "IS_TIM_COUNTER_MODE(T...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable77_2:
        DC32     `?<Constant "IS_TIM_CKD_DIV(TIM_Ti...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_SetClockDivision:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable82_1  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_SetClockDivision_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_SetClockDivision_0
        LDR.W    R0,??DataTable82_2  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_SetClockDivision_0
        LDR.W    R0,??DataTable82_3  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_SetClockDivision_0
        LDR.W    R0,??DataTable82_4  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_SetClockDivision_0
        LDR.W    R0,??DataTable82_7  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_SetClockDivision_0
        LDR.W    R0,??DataTable82_8  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_SetClockDivision_0
        LDR.W    R0,??DataTable82_9  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_SetClockDivision_0
        LDR.W    R0,??DataTable82_10  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_SetClockDivision_0
        LDR.W    R0,??DataTable82_11  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_SetClockDivision_0
        LDR.W    R0,??DataTable82_12  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_SetClockDivision_0
        LDR.W    R0,??DataTable83_1  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_SetClockDivision_0
        MOVW     R2,#+569
        LDR.W    R1,??DataTable82_13
        LDR.W    R0,??DataTable84
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_SetClockDivision_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_SetClockDivision_1
        MOV      R0,#+256
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??TIM_SetClockDivision_1
        MOV      R0,#+512
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??TIM_SetClockDivision_1
        MOVW     R2,#+570
        LDR.W    R1,??DataTable82_13
        LDR.W    R0,??DataTable90
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_SetClockDivision_1:
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+64767
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+0]
        LDRH     R0,[R4, #+0]
        ORRS     R0,R5,R0
        STRH     R0,[R4, #+0]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_Cmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable82_1  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_Cmd_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_Cmd_0
        LDR.W    R0,??DataTable82_2  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_Cmd_0
        LDR.W    R0,??DataTable82_3  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_Cmd_0
        LDR.W    R0,??DataTable82_4  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_Cmd_0
        LDR.W    R0,??DataTable82_5  ;; 0x40001000
        CMP      R4,R0
        BEQ.N    ??TIM_Cmd_0
        LDR.W    R0,??DataTable82_6  ;; 0x40001400
        CMP      R4,R0
        BEQ.N    ??TIM_Cmd_0
        LDR.W    R0,??DataTable82_7  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_Cmd_0
        LDR.W    R0,??DataTable82_8  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_Cmd_0
        LDR.W    R0,??DataTable82_9  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_Cmd_0
        LDR.W    R0,??DataTable82_10  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_Cmd_0
        LDR.W    R0,??DataTable82_11  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_Cmd_0
        LDR.W    R0,??DataTable82_12  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_Cmd_0
        LDR.W    R0,??DataTable83_1  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_Cmd_0
        MOVW     R2,#+589
        LDR.W    R1,??DataTable82_13
        LDR.W    R0,??DataTable82
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_Cmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??TIM_Cmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??TIM_Cmd_1
        MOVW     R2,#+590
        LDR.W    R1,??DataTable82_13
        LDR.W    R0,??DataTable83
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_Cmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??TIM_Cmd_2
        LDRH     R0,[R4, #+0]
        ORRS     R0,R0,#0x1
        STRH     R0,[R4, #+0]
        B.N      ??TIM_Cmd_3
??TIM_Cmd_2:
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+65534
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+0]
??TIM_Cmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79:
        DC32     `?<Constant "IS_TIM_LIST3_PERIPH(T...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_OC1Init:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        MOVS     R7,#+0
        MOVS     R8,#+0
        LDR.W    R0,??DataTable82_1  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_OC1Init_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_OC1Init_0
        LDR.W    R0,??DataTable82_2  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_OC1Init_0
        LDR.W    R0,??DataTable82_3  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_OC1Init_0
        LDR.W    R0,??DataTable82_4  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC1Init_0
        LDR.W    R0,??DataTable82_7  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_OC1Init_0
        LDR.W    R0,??DataTable82_8  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_OC1Init_0
        LDR.W    R0,??DataTable82_9  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_OC1Init_0
        LDR.W    R0,??DataTable82_10  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_OC1Init_0
        LDR.W    R0,??DataTable82_11  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_OC1Init_0
        LDR.W    R0,??DataTable82_12  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC1Init_0
        LDR.W    R0,??DataTable83_1  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_OC1Init_0
        MOVW     R2,#+670
        LDR.W    R1,??DataTable82_13
        LDR.W    R0,??DataTable84
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC1Init_0:
        LDRH     R0,[R5, #+0]
        CMP      R0,#+0
        BEQ.N    ??TIM_OC1Init_1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+16
        BEQ.N    ??TIM_OC1Init_1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+32
        BEQ.N    ??TIM_OC1Init_1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+48
        BEQ.N    ??TIM_OC1Init_1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+96
        BEQ.N    ??TIM_OC1Init_1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+112
        BEQ.N    ??TIM_OC1Init_1
        MOVW     R2,#+671
        LDR.W    R1,??DataTable82_13
        LDR.W    R0,??DataTable87
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC1Init_1:
        LDRH     R0,[R5, #+2]
        CMP      R0,#+0
        BEQ.N    ??TIM_OC1Init_2
        LDRH     R0,[R5, #+2]
        CMP      R0,#+1
        BEQ.N    ??TIM_OC1Init_2
        MOV      R2,#+672
        LDR.W    R1,??DataTable82_13
        LDR.W    R0,??DataTable88_1
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC1Init_2:
        LDRH     R0,[R5, #+12]
        CMP      R0,#+0
        BEQ.N    ??TIM_OC1Init_3
        LDRH     R0,[R5, #+12]
        CMP      R0,#+2
        BEQ.N    ??TIM_OC1Init_3
        MOVW     R2,#+673
        LDR.W    R1,??DataTable82_13
        LDR.W    R0,??DataTable88_2
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC1Init_3:
        LDRH     R0,[R4, #+32]
        MOVW     R1,#+65534
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+32]
        LDRH     R0,[R4, #+32]
        MOVS     R7,R0
        LDRH     R0,[R4, #+4]
        MOV      R8,R0
        LDRH     R0,[R4, #+24]
        MOVS     R6,R0
        MOVW     R0,#+65423
        ANDS     R6,R0,R6
        MOVW     R0,#+65532
        ANDS     R6,R0,R6
        LDRH     R0,[R5, #+0]
        ORRS     R6,R0,R6
        MOVW     R0,#+65533
        ANDS     R7,R0,R7
        LDRH     R0,[R5, #+12]
        ORRS     R7,R0,R7
        LDRH     R0,[R5, #+2]
        ORRS     R7,R0,R7
        LDR.W    R0,??DataTable82_1  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_OC1Init_4
        LDR.W    R0,??DataTable82_7  ;; 0x40010400
        CMP      R4,R0
        BNE.N    ??TIM_OC1Init_5
??TIM_OC1Init_4:
        LDRH     R0,[R5, #+4]
        CMP      R0,#+0
        BEQ.N    ??TIM_OC1Init_6
        LDRH     R0,[R5, #+4]
        CMP      R0,#+4
        BEQ.N    ??TIM_OC1Init_6
        MOVW     R2,#+702
        LDR.W    R1,??DataTable82_13
        LDR.W    R0,??DataTable88_3
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC1Init_6:
        LDRH     R0,[R5, #+14]
        CMP      R0,#+0
        BEQ.N    ??TIM_OC1Init_7
        LDRH     R0,[R5, #+14]
        CMP      R0,#+8
        BEQ.N    ??TIM_OC1Init_7
        MOVW     R2,#+703
        LDR.W    R1,??DataTable82_13
        LDR.W    R0,??DataTable88_4
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC1Init_7:
        LDRH     R0,[R5, #+18]
        MOV      R1,#+512
        CMP      R0,R1
        BEQ.N    ??TIM_OC1Init_8
        LDRH     R0,[R5, #+18]
        CMP      R0,#+0
        BEQ.N    ??TIM_OC1Init_8
        MOV      R2,#+704
        LDR.W    R1,??DataTable82_13
        LDR.W    R0,??DataTable88_5
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC1Init_8:
        LDRH     R0,[R5, #+16]
        MOV      R1,#+256
        CMP      R0,R1
        BEQ.N    ??TIM_OC1Init_9
        LDRH     R0,[R5, #+16]
        CMP      R0,#+0
        BEQ.N    ??TIM_OC1Init_9
        MOVW     R2,#+705
        LDR.W    R1,??DataTable82_13
        LDR.W    R0,??DataTable93
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC1Init_9:
        MOVW     R0,#+65527
        ANDS     R7,R0,R7
        LDRH     R0,[R5, #+14]
        ORRS     R7,R0,R7
        MOVW     R0,#+65531
        ANDS     R7,R0,R7
        LDRH     R0,[R5, #+4]
        ORRS     R7,R0,R7
        MOVW     R0,#+65279
        ANDS     R8,R0,R8
        MOVW     R0,#+65023
        ANDS     R8,R0,R8
        LDRH     R0,[R5, #+16]
        ORRS     R8,R0,R8
        LDRH     R0,[R5, #+18]
        ORRS     R8,R0,R8
??TIM_OC1Init_5:
        STRH     R8,[R4, #+4]
        STRH     R6,[R4, #+24]
        LDR      R0,[R5, #+8]
        STR      R0,[R4, #+52]
        STRH     R7,[R4, #+32]
        POP      {R4-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_OC2Init:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        MOVS     R7,#+0
        MOVS     R8,#+0
        LDR.W    R0,??DataTable82_1  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_OC2Init_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_OC2Init_0
        LDR.W    R0,??DataTable82_2  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_OC2Init_0
        LDR.W    R0,??DataTable82_3  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_OC2Init_0
        LDR.W    R0,??DataTable82_4  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC2Init_0
        LDR.W    R0,??DataTable82_7  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_OC2Init_0
        LDR.W    R0,??DataTable82_8  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_OC2Init_0
        LDR.W    R0,??DataTable82_11  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_OC2Init_0
        MOVW     R2,#+751
        LDR.W    R1,??DataTable82_13
        LDR.W    R0,??DataTable89
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC2Init_0:
        LDRH     R0,[R5, #+0]
        CMP      R0,#+0
        BEQ.N    ??TIM_OC2Init_1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+16
        BEQ.N    ??TIM_OC2Init_1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+32
        BEQ.N    ??TIM_OC2Init_1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+48
        BEQ.N    ??TIM_OC2Init_1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+96
        BEQ.N    ??TIM_OC2Init_1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+112
        BEQ.N    ??TIM_OC2Init_1
        MOV      R2,#+752
        LDR.W    R1,??DataTable82_13
        LDR.W    R0,??DataTable87
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC2Init_1:
        LDRH     R0,[R5, #+2]
        CMP      R0,#+0
        BEQ.N    ??TIM_OC2Init_2
        LDRH     R0,[R5, #+2]
        CMP      R0,#+1
        BEQ.N    ??TIM_OC2Init_2
        MOVW     R2,#+753
        LDR.W    R1,??DataTable82_13
        LDR.W    R0,??DataTable88_1
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC2Init_2:
        LDRH     R0,[R5, #+12]
        CMP      R0,#+0
        BEQ.N    ??TIM_OC2Init_3
        LDRH     R0,[R5, #+12]
        CMP      R0,#+2
        BEQ.N    ??TIM_OC2Init_3
        MOVW     R2,#+754
        LDR.W    R1,??DataTable82_13
        LDR.W    R0,??DataTable88_2
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC2Init_3:
        LDRH     R0,[R4, #+32]
        MOVW     R1,#+65519
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+32]
        LDRH     R0,[R4, #+32]
        MOVS     R7,R0
        LDRH     R0,[R4, #+4]
        MOV      R8,R0
        LDRH     R0,[R4, #+24]
        MOVS     R6,R0
        MOVW     R0,#+36863
        ANDS     R6,R0,R6
        MOVW     R0,#+64767
        ANDS     R6,R0,R6
        LDRH     R0,[R5, #+0]
        ORRS     R6,R6,R0, LSL #+8
        MOVW     R0,#+65503
        ANDS     R7,R0,R7
        LDRH     R0,[R5, #+12]
        ORRS     R7,R7,R0, LSL #+4
        LDRH     R0,[R5, #+2]
        ORRS     R7,R7,R0, LSL #+4
        LDR.N    R0,??DataTable82_1  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_OC2Init_4
        LDR.N    R0,??DataTable82_7  ;; 0x40010400
        CMP      R4,R0
        BNE.N    ??TIM_OC2Init_5
??TIM_OC2Init_4:
        LDRH     R0,[R5, #+4]
        CMP      R0,#+0
        BEQ.N    ??TIM_OC2Init_6
        LDRH     R0,[R5, #+4]
        CMP      R0,#+4
        BEQ.N    ??TIM_OC2Init_6
        MOV      R2,#+784
        LDR.N    R1,??DataTable82_13
        LDR.W    R0,??DataTable88_3
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC2Init_6:
        LDRH     R0,[R5, #+14]
        CMP      R0,#+0
        BEQ.N    ??TIM_OC2Init_7
        LDRH     R0,[R5, #+14]
        CMP      R0,#+8
        BEQ.N    ??TIM_OC2Init_7
        MOVW     R2,#+785
        LDR.N    R1,??DataTable82_13
        LDR.W    R0,??DataTable88_4
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC2Init_7:
        LDRH     R0,[R5, #+18]
        MOV      R1,#+512
        CMP      R0,R1
        BEQ.N    ??TIM_OC2Init_8
        LDRH     R0,[R5, #+18]
        CMP      R0,#+0
        BEQ.N    ??TIM_OC2Init_8
        MOVW     R2,#+786
        LDR.N    R1,??DataTable82_13
        LDR.W    R0,??DataTable88_5
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC2Init_8:
        LDRH     R0,[R5, #+16]
        MOV      R1,#+256
        CMP      R0,R1
        BEQ.N    ??TIM_OC2Init_9
        LDRH     R0,[R5, #+16]
        CMP      R0,#+0
        BEQ.N    ??TIM_OC2Init_9
        MOVW     R2,#+787
        LDR.N    R1,??DataTable82_13
        LDR.W    R0,??DataTable93
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC2Init_9:
        MOVW     R0,#+65407
        ANDS     R7,R0,R7
        LDRH     R0,[R5, #+14]
        ORRS     R7,R7,R0, LSL #+4
        MOVW     R0,#+65471
        ANDS     R7,R0,R7
        LDRH     R0,[R5, #+4]
        ORRS     R7,R7,R0, LSL #+4
        MOVW     R0,#+64511
        ANDS     R8,R0,R8
        MOVW     R0,#+63487
        ANDS     R8,R0,R8
        LDRH     R0,[R5, #+16]
        ORRS     R8,R8,R0, LSL #+2
        LDRH     R0,[R5, #+18]
        ORRS     R8,R8,R0, LSL #+2
??TIM_OC2Init_5:
        STRH     R8,[R4, #+4]
        STRH     R6,[R4, #+24]
        LDR      R0,[R5, #+8]
        STR      R0,[R4, #+56]
        STRH     R7,[R4, #+32]
        POP      {R4-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable81:
        DC32     `?<Constant "IS_TIM_PRESCALER_RELO...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable81_1:
        DC32     `?<Constant "IS_TIM_COUNTER_MODE(T...">_1`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_OC3Init:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        MOVS     R7,#+0
        MOVS     R8,#+0
        LDR.N    R0,??DataTable82_1  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_OC3Init_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_OC3Init_0
        LDR.N    R0,??DataTable82_2  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_OC3Init_0
        LDR.N    R0,??DataTable82_3  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_OC3Init_0
        LDR.N    R0,??DataTable82_4  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC3Init_0
        LDR.N    R0,??DataTable82_7  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_OC3Init_0
        MOV      R2,#+832
        LDR.N    R1,??DataTable82_13
        LDR.W    R0,??DataTable92
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC3Init_0:
        LDRH     R0,[R5, #+0]
        CMP      R0,#+0
        BEQ.N    ??TIM_OC3Init_1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+16
        BEQ.N    ??TIM_OC3Init_1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+32
        BEQ.N    ??TIM_OC3Init_1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+48
        BEQ.N    ??TIM_OC3Init_1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+96
        BEQ.N    ??TIM_OC3Init_1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+112
        BEQ.N    ??TIM_OC3Init_1
        MOVW     R2,#+833
        LDR.N    R1,??DataTable82_13
        LDR.W    R0,??DataTable87
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC3Init_1:
        LDRH     R0,[R5, #+2]
        CMP      R0,#+0
        BEQ.N    ??TIM_OC3Init_2
        LDRH     R0,[R5, #+2]
        CMP      R0,#+1
        BEQ.N    ??TIM_OC3Init_2
        MOVW     R2,#+834
        LDR.N    R1,??DataTable82_13
        LDR.W    R0,??DataTable88_1
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC3Init_2:
        LDRH     R0,[R5, #+12]
        CMP      R0,#+0
        BEQ.N    ??TIM_OC3Init_3
        LDRH     R0,[R5, #+12]
        CMP      R0,#+2
        BEQ.N    ??TIM_OC3Init_3
        MOVW     R2,#+835
        LDR.N    R1,??DataTable82_13
        LDR.W    R0,??DataTable88_2
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC3Init_3:
        LDRH     R0,[R4, #+32]
        MOVW     R1,#+65279
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+32]
        LDRH     R0,[R4, #+32]
        MOVS     R7,R0
        LDRH     R0,[R4, #+4]
        MOV      R8,R0
        LDRH     R0,[R4, #+28]
        MOVS     R6,R0
        MOVW     R0,#+65423
        ANDS     R6,R0,R6
        MOVW     R0,#+65532
        ANDS     R6,R0,R6
        LDRH     R0,[R5, #+0]
        ORRS     R6,R0,R6
        MOVW     R0,#+65023
        ANDS     R7,R0,R7
        LDRH     R0,[R5, #+12]
        ORRS     R7,R7,R0, LSL #+8
        LDRH     R0,[R5, #+2]
        ORRS     R7,R7,R0, LSL #+8
        LDR.N    R0,??DataTable82_1  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_OC3Init_4
        LDR.N    R0,??DataTable82_7  ;; 0x40010400
        CMP      R4,R0
        BNE.N    ??TIM_OC3Init_5
??TIM_OC3Init_4:
        LDRH     R0,[R5, #+4]
        CMP      R0,#+0
        BEQ.N    ??TIM_OC3Init_6
        LDRH     R0,[R5, #+4]
        CMP      R0,#+4
        BEQ.N    ??TIM_OC3Init_6
        MOV      R2,#+864
        LDR.N    R1,??DataTable82_13
        LDR.W    R0,??DataTable88_3
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC3Init_6:
        LDRH     R0,[R5, #+14]
        CMP      R0,#+0
        BEQ.N    ??TIM_OC3Init_7
        LDRH     R0,[R5, #+14]
        CMP      R0,#+8
        BEQ.N    ??TIM_OC3Init_7
        MOVW     R2,#+865
        LDR.N    R1,??DataTable82_13
        LDR.W    R0,??DataTable88_4
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC3Init_7:
        LDRH     R0,[R5, #+18]
        MOV      R1,#+512
        CMP      R0,R1
        BEQ.N    ??TIM_OC3Init_8
        LDRH     R0,[R5, #+18]
        CMP      R0,#+0
        BEQ.N    ??TIM_OC3Init_8
        MOVW     R2,#+866
        LDR.N    R1,??DataTable82_13
        LDR.W    R0,??DataTable88_5
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC3Init_8:
        LDRH     R0,[R5, #+16]
        MOV      R1,#+256
        CMP      R0,R1
        BEQ.N    ??TIM_OC3Init_9
        LDRH     R0,[R5, #+16]
        CMP      R0,#+0
        BEQ.N    ??TIM_OC3Init_9
        MOVW     R2,#+867
        LDR.N    R1,??DataTable82_13
        LDR.W    R0,??DataTable93
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC3Init_9:
        MOVW     R0,#+63487
        ANDS     R7,R0,R7
        LDRH     R0,[R5, #+14]
        ORRS     R7,R7,R0, LSL #+8
        MOVW     R0,#+64511
        ANDS     R7,R0,R7
        LDRH     R0,[R5, #+4]
        ORRS     R7,R7,R0, LSL #+8
        MOVW     R0,#+61439
        ANDS     R8,R0,R8
        MOVW     R0,#+57343
        ANDS     R8,R0,R8
        LDRH     R0,[R5, #+16]
        ORRS     R8,R8,R0, LSL #+4
        LDRH     R0,[R5, #+18]
        ORRS     R8,R8,R0, LSL #+4
??TIM_OC3Init_5:
        STRH     R8,[R4, #+4]
        STRH     R6,[R4, #+28]
        LDR      R0,[R5, #+8]
        STR      R0,[R4, #+60]
        STRH     R7,[R4, #+32]
        POP      {R4-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable82:
        DC32     `?<Constant "IS_TIM_ALL_PERIPH(TIMx)">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable82_1:
        DC32     0x40010000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable82_2:
        DC32     0x40000400

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable82_3:
        DC32     0x40000800

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable82_4:
        DC32     0x40000c00

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable82_5:
        DC32     0x40001000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable82_6:
        DC32     0x40001400

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable82_7:
        DC32     0x40010400

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable82_8:
        DC32     0x40014000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable82_9:
        DC32     0x40014400

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable82_10:
        DC32     0x40014800

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable82_11:
        DC32     0x40001800

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable82_12:
        DC32     0x40001c00

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable82_13:
        DC32     `?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_OC4Init:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        MOVS     R7,#+0
        MOVS     R8,#+0
        LDR.W    R0,??DataTable94  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_OC4Init_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_OC4Init_0
        LDR.W    R0,??DataTable94_1  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_OC4Init_0
        LDR.W    R0,??DataTable94_2  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_OC4Init_0
        LDR.W    R0,??DataTable94_3  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC4Init_0
        LDR.W    R0,??DataTable94_4  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_OC4Init_0
        MOV      R2,#+912
        LDR.W    R1,??DataTable94_5
        LDR.W    R0,??DataTable92
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC4Init_0:
        LDRH     R0,[R5, #+0]
        CMP      R0,#+0
        BEQ.N    ??TIM_OC4Init_1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+16
        BEQ.N    ??TIM_OC4Init_1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+32
        BEQ.N    ??TIM_OC4Init_1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+48
        BEQ.N    ??TIM_OC4Init_1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+96
        BEQ.N    ??TIM_OC4Init_1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+112
        BEQ.N    ??TIM_OC4Init_1
        MOVW     R2,#+913
        LDR.W    R1,??DataTable94_5
        LDR.W    R0,??DataTable87
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC4Init_1:
        LDRH     R0,[R5, #+2]
        CMP      R0,#+0
        BEQ.N    ??TIM_OC4Init_2
        LDRH     R0,[R5, #+2]
        CMP      R0,#+1
        BEQ.N    ??TIM_OC4Init_2
        MOVW     R2,#+914
        LDR.W    R1,??DataTable94_5
        LDR.W    R0,??DataTable88_1
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC4Init_2:
        LDRH     R0,[R5, #+12]
        CMP      R0,#+0
        BEQ.N    ??TIM_OC4Init_3
        LDRH     R0,[R5, #+12]
        CMP      R0,#+2
        BEQ.N    ??TIM_OC4Init_3
        MOVW     R2,#+915
        LDR.W    R1,??DataTable94_5
        LDR.W    R0,??DataTable88_2
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC4Init_3:
        LDRH     R0,[R4, #+32]
        MOVW     R1,#+61439
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+32]
        LDRH     R0,[R4, #+32]
        MOVS     R7,R0
        LDRH     R0,[R4, #+4]
        MOV      R8,R0
        LDRH     R0,[R4, #+28]
        MOVS     R6,R0
        MOVW     R0,#+36863
        ANDS     R6,R0,R6
        MOVW     R0,#+64767
        ANDS     R6,R0,R6
        LDRH     R0,[R5, #+0]
        ORRS     R6,R6,R0, LSL #+8
        MOVW     R0,#+57343
        ANDS     R7,R0,R7
        LDRH     R0,[R5, #+12]
        ORRS     R7,R7,R0, LSL #+12
        LDRH     R0,[R5, #+2]
        ORRS     R7,R7,R0, LSL #+12
        LDR.W    R0,??DataTable94  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_OC4Init_4
        LDR.W    R0,??DataTable94_4  ;; 0x40010400
        CMP      R4,R0
        BNE.N    ??TIM_OC4Init_5
??TIM_OC4Init_4:
        LDRH     R0,[R5, #+16]
        MOV      R1,#+256
        CMP      R0,R1
        BEQ.N    ??TIM_OC4Init_6
        LDRH     R0,[R5, #+16]
        CMP      R0,#+0
        BEQ.N    ??TIM_OC4Init_6
        MOVW     R2,#+945
        LDR.W    R1,??DataTable94_5
        LDR.W    R0,??DataTable93
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC4Init_6:
        MOVW     R0,#+49151
        ANDS     R8,R0,R8
        LDRH     R0,[R5, #+16]
        ORRS     R8,R8,R0, LSL #+6
??TIM_OC4Init_5:
        STRH     R8,[R4, #+4]
        STRH     R6,[R4, #+28]
        LDR      R0,[R5, #+8]
        STR      R0,[R4, #+64]
        STRH     R7,[R4, #+32]
        POP      {R4-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable83:
        DC32     `?<Constant "IS_FUNCTIONAL_STATE(N...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable83_1:
        DC32     0x40002000

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_OCStructInit:
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
        MOVS     R1,#+0
        STRH     R1,[R0, #+2]
        MOVS     R1,#+0
        STRH     R1,[R0, #+4]
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        MOVS     R1,#+0
        STRH     R1,[R0, #+12]
        MOVS     R1,#+0
        STRH     R1,[R0, #+14]
        MOVS     R1,#+0
        STRH     R1,[R0, #+16]
        MOVS     R1,#+0
        STRH     R1,[R0, #+18]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_SelectOCxM:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,#+0
        MOVS     R8,#+0
        LDR.W    R0,??DataTable94  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOCxM_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_SelectOCxM_0
        LDR.W    R0,??DataTable94_1  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOCxM_0
        LDR.W    R0,??DataTable94_2  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOCxM_0
        LDR.W    R0,??DataTable94_3  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOCxM_0
        LDR.W    R0,??DataTable94_4  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOCxM_0
        LDR.W    R0,??DataTable96  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOCxM_0
        LDR.W    R0,??DataTable96_1  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOCxM_0
        LDR.W    R0,??DataTable96_2  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOCxM_0
        LDR.W    R0,??DataTable96_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOCxM_0
        LDR.W    R0,??DataTable96_4  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOCxM_0
        LDR.W    R0,??DataTable96_5  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOCxM_0
        MOV      R2,#+1012
        LDR.W    R1,??DataTable94_5
        LDR.N    R0,??DataTable84
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_SelectOCxM_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_SelectOCxM_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4
        BEQ.N    ??TIM_SelectOCxM_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8
        BEQ.N    ??TIM_SelectOCxM_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+12
        BEQ.N    ??TIM_SelectOCxM_1
        MOVW     R2,#+1013
        LDR.W    R1,??DataTable94_5
        LDR.W    R0,??DataTable97
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_SelectOCxM_1:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+0
        BEQ.N    ??TIM_SelectOCxM_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+16
        BEQ.N    ??TIM_SelectOCxM_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+32
        BEQ.N    ??TIM_SelectOCxM_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+48
        BEQ.N    ??TIM_SelectOCxM_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+96
        BEQ.N    ??TIM_SelectOCxM_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+112
        BEQ.N    ??TIM_SelectOCxM_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+80
        BEQ.N    ??TIM_SelectOCxM_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+64
        BEQ.N    ??TIM_SelectOCxM_2
        MOVW     R2,#+1014
        LDR.W    R1,??DataTable94_5
        LDR.W    R0,??DataTable104
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_SelectOCxM_2:
        MOVS     R7,R4
        ADDS     R7,R7,#+24
        MOVS     R0,#+1
        LSLS     R0,R0,R5
        MOV      R8,R0
        LDRH     R0,[R4, #+32]
        BICS     R0,R0,R8
        STRH     R0,[R4, #+32]
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_SelectOCxM_3
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8
        BNE.N    ??TIM_SelectOCxM_4
??TIM_SelectOCxM_3:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        LSRS     R0,R5,#+1
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        ADDS     R7,R0,R7
        LDR      R0,[R7, #+0]
        MOVW     R1,#+65423
        ANDS     R0,R1,R0
        STR      R0,[R7, #+0]
        LDR      R0,[R7, #+0]
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        ORRS     R0,R6,R0
        STR      R0,[R7, #+0]
        B.N      ??TIM_SelectOCxM_5
??TIM_SelectOCxM_4:
        SUBS     R0,R5,#+4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+1
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        ADDS     R7,R0,R7
        LDR      R0,[R7, #+0]
        MOVW     R1,#+36863
        ANDS     R0,R1,R0
        STR      R0,[R7, #+0]
        LDR      R0,[R7, #+0]
        LSLS     R1,R6,#+8
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        ORRS     R0,R1,R0
        STR      R0,[R7, #+0]
??TIM_SelectOCxM_5:
        POP      {R4-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable84:
        DC32     `?<Constant "IS_TIM_LIST1_PERIPH(T...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_SetCompare1:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable94  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare1_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_SetCompare1_0
        LDR.W    R0,??DataTable94_1  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare1_0
        LDR.W    R0,??DataTable94_2  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare1_0
        LDR.W    R0,??DataTable94_3  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare1_0
        LDR.W    R0,??DataTable94_4  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare1_0
        LDR.W    R0,??DataTable96  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare1_0
        LDR.W    R0,??DataTable96_1  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare1_0
        LDR.W    R0,??DataTable96_2  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare1_0
        LDR.W    R0,??DataTable96_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare1_0
        LDR.W    R0,??DataTable96_4  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare1_0
        LDR.W    R0,??DataTable96_5  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare1_0
        MOVW     R2,#+1055
        LDR.W    R1,??DataTable94_5
        LDR.W    R0,??DataTable102
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_SetCompare1_0:
        STR      R5,[R4, #+52]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable85:
        DC32     `?<Constant "IS_TIM_UPDATE_SOURCE(...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_SetCompare2:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable94  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare2_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_SetCompare2_0
        LDR.W    R0,??DataTable94_1  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare2_0
        LDR.W    R0,??DataTable94_2  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare2_0
        LDR.W    R0,??DataTable94_3  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare2_0
        LDR.W    R0,??DataTable94_4  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare2_0
        LDR.W    R0,??DataTable96  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare2_0
        LDR.W    R0,??DataTable96_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare2_0
        MOVW     R2,#+1071
        LDR.W    R1,??DataTable94_5
        LDR.W    R0,??DataTable103
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_SetCompare2_0:
        STR      R5,[R4, #+56]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_SetCompare3:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable94  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare3_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_SetCompare3_0
        LDR.W    R0,??DataTable94_1  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare3_0
        LDR.W    R0,??DataTable94_2  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare3_0
        LDR.W    R0,??DataTable94_3  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare3_0
        LDR.W    R0,??DataTable94_4  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare3_0
        MOVW     R2,#+1086
        LDR.W    R1,??DataTable94_5
        LDR.N    R0,??DataTable92
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_SetCompare3_0:
        STR      R5,[R4, #+60]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable87:
        DC32     `?<Constant "IS_TIM_OC_MODE(TIM_OC...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_SetCompare4:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable94  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare4_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_SetCompare4_0
        LDR.W    R0,??DataTable94_1  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare4_0
        LDR.W    R0,??DataTable94_2  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare4_0
        LDR.W    R0,??DataTable94_3  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare4_0
        LDR.W    R0,??DataTable94_4  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare4_0
        MOVW     R2,#+1101
        LDR.W    R1,??DataTable94_5
        LDR.N    R0,??DataTable92
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_SetCompare4_0:
        STR      R5,[R4, #+64]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable88:
        DC32     `?<Constant "IS_TIM_OPM_MODE(TIM_O...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable88_1:
        DC32     `?<Constant "IS_TIM_OUTPUT_STATE(T...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable88_2:
        DC32     `?<Constant "IS_TIM_OC_POLARITY(TI...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable88_3:
        DC32     `?<Constant "IS_TIM_OUTPUTN_STATE(...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable88_4:
        DC32     `?<Constant "IS_TIM_OCN_POLARITY(T...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable88_5:
        DC32     `?<Constant "IS_TIM_OCNIDLE_STATE(...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_ForcedOC1Config:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.W    R0,??DataTable94  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC1Config_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_ForcedOC1Config_0
        LDR.W    R0,??DataTable94_1  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC1Config_0
        LDR.W    R0,??DataTable94_2  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC1Config_0
        LDR.W    R0,??DataTable94_3  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC1Config_0
        LDR.W    R0,??DataTable94_4  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC1Config_0
        LDR.W    R0,??DataTable96  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC1Config_0
        LDR.W    R0,??DataTable96_1  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC1Config_0
        LDR.W    R0,??DataTable96_2  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC1Config_0
        LDR.W    R0,??DataTable96_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC1Config_0
        LDR.W    R0,??DataTable96_4  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC1Config_0
        LDR.W    R0,??DataTable96_5  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC1Config_0
        MOVW     R2,#+1121
        LDR.W    R1,??DataTable94_5
        LDR.W    R0,??DataTable102
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_ForcedOC1Config_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+80
        BEQ.N    ??TIM_ForcedOC1Config_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+64
        BEQ.N    ??TIM_ForcedOC1Config_1
        MOVW     R2,#+1122
        LDR.W    R1,??DataTable94_5
        LDR.W    R0,??DataTable110
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_ForcedOC1Config_1:
        LDRH     R0,[R4, #+24]
        MOVS     R6,R0
        MOVW     R0,#+65423
        ANDS     R6,R0,R6
        ORRS     R6,R5,R6
        STRH     R6,[R4, #+24]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable89:
        DC32     `?<Constant "IS_TIM_LIST2_PERIPH(T...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_ForcedOC2Config:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.W    R0,??DataTable94  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC2Config_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_ForcedOC2Config_0
        LDR.W    R0,??DataTable94_1  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC2Config_0
        LDR.W    R0,??DataTable94_2  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC2Config_0
        LDR.N    R0,??DataTable94_3  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC2Config_0
        LDR.N    R0,??DataTable94_4  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC2Config_0
        LDR.W    R0,??DataTable96  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC2Config_0
        LDR.W    R0,??DataTable96_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC2Config_0
        MOVW     R2,#+1150
        LDR.N    R1,??DataTable94_5
        LDR.W    R0,??DataTable103
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_ForcedOC2Config_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+80
        BEQ.N    ??TIM_ForcedOC2Config_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+64
        BEQ.N    ??TIM_ForcedOC2Config_1
        MOVW     R2,#+1151
        LDR.N    R1,??DataTable94_5
        LDR.W    R0,??DataTable110
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_ForcedOC2Config_1:
        LDRH     R0,[R4, #+24]
        MOVS     R6,R0
        MOVW     R0,#+36863
        ANDS     R6,R0,R6
        ORRS     R6,R6,R5, LSL #+8
        STRH     R6,[R4, #+24]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable90:
        DC32     `?<Constant "IS_TIM_CKD_DIV(TIM_CKD)">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_ForcedOC3Config:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.N    R0,??DataTable94  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC3Config_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_ForcedOC3Config_0
        LDR.N    R0,??DataTable94_1  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC3Config_0
        LDR.N    R0,??DataTable94_2  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC3Config_0
        LDR.N    R0,??DataTable94_3  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC3Config_0
        LDR.N    R0,??DataTable94_4  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC3Config_0
        MOVW     R2,#+1178
        LDR.N    R1,??DataTable94_5
        LDR.N    R0,??DataTable92
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_ForcedOC3Config_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+80
        BEQ.N    ??TIM_ForcedOC3Config_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+64
        BEQ.N    ??TIM_ForcedOC3Config_1
        MOVW     R2,#+1179
        LDR.N    R1,??DataTable94_5
        LDR.W    R0,??DataTable110
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_ForcedOC3Config_1:
        LDRH     R0,[R4, #+28]
        MOVS     R6,R0
        MOVW     R0,#+65423
        ANDS     R6,R0,R6
        ORRS     R6,R5,R6
        STRH     R6,[R4, #+28]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_ForcedOC4Config:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.N    R0,??DataTable94  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC4Config_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_ForcedOC4Config_0
        LDR.N    R0,??DataTable94_1  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC4Config_0
        LDR.N    R0,??DataTable94_2  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC4Config_0
        LDR.N    R0,??DataTable94_3  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC4Config_0
        LDR.N    R0,??DataTable94_4  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC4Config_0
        MOVW     R2,#+1207
        LDR.N    R1,??DataTable94_5
        LDR.N    R0,??DataTable92
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_ForcedOC4Config_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+80
        BEQ.N    ??TIM_ForcedOC4Config_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+64
        BEQ.N    ??TIM_ForcedOC4Config_1
        MOV      R2,#+1208
        LDR.N    R1,??DataTable94_5
        LDR.W    R0,??DataTable110
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_ForcedOC4Config_1:
        LDRH     R0,[R4, #+28]
        MOVS     R6,R0
        MOVW     R0,#+36863
        ANDS     R6,R0,R6
        ORRS     R6,R6,R5, LSL #+8
        STRH     R6,[R4, #+28]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable92:
        DC32     `?<Constant "IS_TIM_LIST3_PERIPH(T...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_OC1PreloadConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.N    R0,??DataTable94  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_OC1PreloadConfig_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_OC1PreloadConfig_0
        LDR.N    R0,??DataTable94_1  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_OC1PreloadConfig_0
        LDR.N    R0,??DataTable94_2  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_OC1PreloadConfig_0
        LDR.N    R0,??DataTable94_3  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC1PreloadConfig_0
        LDR.N    R0,??DataTable94_4  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_OC1PreloadConfig_0
        LDR.N    R0,??DataTable96  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_OC1PreloadConfig_0
        LDR.N    R0,??DataTable96_1  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_OC1PreloadConfig_0
        LDR.N    R0,??DataTable96_2  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_OC1PreloadConfig_0
        LDR.N    R0,??DataTable96_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_OC1PreloadConfig_0
        LDR.N    R0,??DataTable96_4  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC1PreloadConfig_0
        LDR.N    R0,??DataTable96_5  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_OC1PreloadConfig_0
        MOVW     R2,#+1235
        LDR.N    R1,??DataTable94_5
        LDR.W    R0,??DataTable102
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC1PreloadConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8
        BEQ.N    ??TIM_OC1PreloadConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_OC1PreloadConfig_1
        MOVW     R2,#+1236
        LDR.N    R1,??DataTable94_5
        LDR.W    R0,??DataTable113
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC1PreloadConfig_1:
        LDRH     R0,[R4, #+24]
        MOVS     R6,R0
        MOVW     R0,#+65527
        ANDS     R6,R0,R6
        ORRS     R6,R5,R6
        STRH     R6,[R4, #+24]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable93:
        DC32     `?<Constant "IS_TIM_OCIDLE_STATE(T...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_OC2PreloadConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.N    R0,??DataTable94  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_OC2PreloadConfig_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_OC2PreloadConfig_0
        LDR.N    R0,??DataTable94_1  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_OC2PreloadConfig_0
        LDR.N    R0,??DataTable94_2  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_OC2PreloadConfig_0
        LDR.N    R0,??DataTable94_3  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC2PreloadConfig_0
        LDR.N    R0,??DataTable94_4  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_OC2PreloadConfig_0
        LDR.N    R0,??DataTable96  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_OC2PreloadConfig_0
        LDR.N    R0,??DataTable96_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_OC2PreloadConfig_0
        MOVW     R2,#+1265
        LDR.N    R1,??DataTable94_5
        LDR.W    R0,??DataTable103
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC2PreloadConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8
        BEQ.N    ??TIM_OC2PreloadConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_OC2PreloadConfig_1
        MOVW     R2,#+1266
        LDR.N    R1,??DataTable94_5
        LDR.W    R0,??DataTable113
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC2PreloadConfig_1:
        LDRH     R0,[R4, #+24]
        MOVS     R6,R0
        MOVW     R0,#+63487
        ANDS     R6,R0,R6
        ORRS     R6,R6,R5, LSL #+8
        STRH     R6,[R4, #+24]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable94:
        DC32     0x40010000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable94_1:
        DC32     0x40000400

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable94_2:
        DC32     0x40000800

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable94_3:
        DC32     0x40000c00

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable94_4:
        DC32     0x40010400

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable94_5:
        DC32     `?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_OC3PreloadConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.W    R0,??DataTable110_1  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_OC3PreloadConfig_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_OC3PreloadConfig_0
        LDR.W    R0,??DataTable110_2  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_OC3PreloadConfig_0
        LDR.W    R0,??DataTable111  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_OC3PreloadConfig_0
        LDR.W    R0,??DataTable111_1  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC3PreloadConfig_0
        LDR.W    R0,??DataTable111_2  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_OC3PreloadConfig_0
        MOVW     R2,#+1294
        LDR.W    R1,??DataTable111_3
        LDR.W    R0,??DataTable111_4
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC3PreloadConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8
        BEQ.N    ??TIM_OC3PreloadConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_OC3PreloadConfig_1
        MOVW     R2,#+1295
        LDR.W    R1,??DataTable111_3
        LDR.W    R0,??DataTable113
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC3PreloadConfig_1:
        LDRH     R0,[R4, #+28]
        MOVS     R6,R0
        MOVW     R0,#+65527
        ANDS     R6,R0,R6
        ORRS     R6,R5,R6
        STRH     R6,[R4, #+28]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_OC4PreloadConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.W    R0,??DataTable110_1  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_OC4PreloadConfig_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_OC4PreloadConfig_0
        LDR.W    R0,??DataTable110_2  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_OC4PreloadConfig_0
        LDR.W    R0,??DataTable111  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_OC4PreloadConfig_0
        LDR.W    R0,??DataTable111_1  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC4PreloadConfig_0
        LDR.W    R0,??DataTable111_2  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_OC4PreloadConfig_0
        MOVW     R2,#+1323
        LDR.W    R1,??DataTable111_3
        LDR.W    R0,??DataTable111_4
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC4PreloadConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8
        BEQ.N    ??TIM_OC4PreloadConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_OC4PreloadConfig_1
        MOVW     R2,#+1324
        LDR.W    R1,??DataTable111_3
        LDR.W    R0,??DataTable113
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC4PreloadConfig_1:
        LDRH     R0,[R4, #+28]
        MOVS     R6,R0
        MOVW     R0,#+63487
        ANDS     R6,R0,R6
        ORRS     R6,R6,R5, LSL #+8
        STRH     R6,[R4, #+28]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable96:
        DC32     0x40014000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable96_1:
        DC32     0x40014400

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable96_2:
        DC32     0x40014800

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable96_3:
        DC32     0x40001800

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable96_4:
        DC32     0x40001c00

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable96_5:
        DC32     0x40002000

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_OC1FastConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.W    R0,??DataTable110_1  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_OC1FastConfig_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_OC1FastConfig_0
        LDR.W    R0,??DataTable110_2  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_OC1FastConfig_0
        LDR.W    R0,??DataTable111  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_OC1FastConfig_0
        LDR.W    R0,??DataTable111_1  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC1FastConfig_0
        LDR.W    R0,??DataTable111_2  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_OC1FastConfig_0
        LDR.W    R0,??DataTable112  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_OC1FastConfig_0
        LDR.W    R0,??DataTable112_1  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_OC1FastConfig_0
        LDR.W    R0,??DataTable112_2  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_OC1FastConfig_0
        LDR.W    R0,??DataTable112_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_OC1FastConfig_0
        LDR.W    R0,??DataTable112_4  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC1FastConfig_0
        LDR.W    R0,??DataTable112_5  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_OC1FastConfig_0
        MOV      R2,#+1352
        LDR.W    R1,??DataTable111_3
        LDR.N    R0,??DataTable102
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC1FastConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4
        BEQ.N    ??TIM_OC1FastConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_OC1FastConfig_1
        MOVW     R2,#+1353
        LDR.W    R1,??DataTable111_3
        LDR.W    R0,??DataTable119
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC1FastConfig_1:
        LDRH     R0,[R4, #+24]
        MOVS     R6,R0
        MOVW     R0,#+65531
        ANDS     R6,R0,R6
        ORRS     R6,R5,R6
        STRH     R6,[R4, #+24]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable97:
        DC32     `?<Constant "IS_TIM_CHANNEL(TIM_Ch...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_OC2FastConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.W    R0,??DataTable110_1  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_OC2FastConfig_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_OC2FastConfig_0
        LDR.W    R0,??DataTable110_2  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_OC2FastConfig_0
        LDR.W    R0,??DataTable111  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_OC2FastConfig_0
        LDR.W    R0,??DataTable111_1  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC2FastConfig_0
        LDR.W    R0,??DataTable111_2  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_OC2FastConfig_0
        LDR.W    R0,??DataTable112  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_OC2FastConfig_0
        LDR.W    R0,??DataTable112_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_OC2FastConfig_0
        MOVW     R2,#+1383
        LDR.W    R1,??DataTable111_3
        LDR.N    R0,??DataTable103
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC2FastConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4
        BEQ.N    ??TIM_OC2FastConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_OC2FastConfig_1
        MOV      R2,#+1384
        LDR.W    R1,??DataTable111_3
        LDR.W    R0,??DataTable119
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC2FastConfig_1:
        LDRH     R0,[R4, #+24]
        MOVS     R6,R0
        MOVW     R0,#+64511
        ANDS     R6,R0,R6
        ORRS     R6,R6,R5, LSL #+8
        STRH     R6,[R4, #+24]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_OC3FastConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.W    R0,??DataTable110_1  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_OC3FastConfig_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_OC3FastConfig_0
        LDR.W    R0,??DataTable110_2  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_OC3FastConfig_0
        LDR.W    R0,??DataTable111  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_OC3FastConfig_0
        LDR.W    R0,??DataTable111_1  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC3FastConfig_0
        LDR.W    R0,??DataTable111_2  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_OC3FastConfig_0
        MOVW     R2,#+1413
        LDR.W    R1,??DataTable111_3
        LDR.W    R0,??DataTable111_4
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC3FastConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4
        BEQ.N    ??TIM_OC3FastConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_OC3FastConfig_1
        MOVW     R2,#+1414
        LDR.W    R1,??DataTable111_3
        LDR.W    R0,??DataTable119
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC3FastConfig_1:
        LDRH     R0,[R4, #+28]
        MOVS     R6,R0
        MOVW     R0,#+65531
        ANDS     R6,R0,R6
        ORRS     R6,R5,R6
        STRH     R6,[R4, #+28]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_OC4FastConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.W    R0,??DataTable110_1  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_OC4FastConfig_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_OC4FastConfig_0
        LDR.W    R0,??DataTable110_2  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_OC4FastConfig_0
        LDR.W    R0,??DataTable111  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_OC4FastConfig_0
        LDR.W    R0,??DataTable111_1  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC4FastConfig_0
        LDR.W    R0,??DataTable111_2  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_OC4FastConfig_0
        MOVW     R2,#+1443
        LDR.W    R1,??DataTable111_3
        LDR.W    R0,??DataTable111_4
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC4FastConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4
        BEQ.N    ??TIM_OC4FastConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_OC4FastConfig_1
        MOVW     R2,#+1444
        LDR.W    R1,??DataTable111_3
        LDR.W    R0,??DataTable119
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC4FastConfig_1:
        LDRH     R0,[R4, #+28]
        MOVS     R6,R0
        MOVW     R0,#+64511
        ANDS     R6,R0,R6
        ORRS     R6,R6,R5, LSL #+8
        STRH     R6,[R4, #+28]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_ClearOC1Ref:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.W    R0,??DataTable110_1  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_ClearOC1Ref_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_ClearOC1Ref_0
        LDR.W    R0,??DataTable110_2  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_ClearOC1Ref_0
        LDR.W    R0,??DataTable111  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_ClearOC1Ref_0
        LDR.W    R0,??DataTable111_1  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_ClearOC1Ref_0
        LDR.W    R0,??DataTable111_2  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_ClearOC1Ref_0
        LDR.W    R0,??DataTable112  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_ClearOC1Ref_0
        LDR.W    R0,??DataTable112_1  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_ClearOC1Ref_0
        LDR.W    R0,??DataTable112_2  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_ClearOC1Ref_0
        LDR.W    R0,??DataTable112_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_ClearOC1Ref_0
        LDR.W    R0,??DataTable112_4  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_ClearOC1Ref_0
        LDR.W    R0,??DataTable112_5  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_ClearOC1Ref_0
        MOVW     R2,#+1473
        LDR.W    R1,??DataTable111_3
        LDR.N    R0,??DataTable102
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_ClearOC1Ref_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+128
        BEQ.N    ??TIM_ClearOC1Ref_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_ClearOC1Ref_1
        MOVW     R2,#+1474
        LDR.W    R1,??DataTable111_3
        LDR.W    R0,??DataTable122
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_ClearOC1Ref_1:
        LDRH     R0,[R4, #+24]
        MOVS     R6,R0
        MOVW     R0,#+65407
        ANDS     R6,R0,R6
        ORRS     R6,R5,R6
        STRH     R6,[R4, #+24]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_ClearOC2Ref:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.W    R0,??DataTable110_1  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_ClearOC2Ref_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_ClearOC2Ref_0
        LDR.W    R0,??DataTable110_2  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_ClearOC2Ref_0
        LDR.W    R0,??DataTable111  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_ClearOC2Ref_0
        LDR.W    R0,??DataTable111_1  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_ClearOC2Ref_0
        LDR.W    R0,??DataTable111_2  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_ClearOC2Ref_0
        LDR.W    R0,??DataTable112  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_ClearOC2Ref_0
        LDR.W    R0,??DataTable112_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_ClearOC2Ref_0
        MOVW     R2,#+1503
        LDR.W    R1,??DataTable111_3
        LDR.N    R0,??DataTable103
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_ClearOC2Ref_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+128
        BEQ.N    ??TIM_ClearOC2Ref_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_ClearOC2Ref_1
        MOV      R2,#+1504
        LDR.W    R1,??DataTable111_3
        LDR.W    R0,??DataTable122
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_ClearOC2Ref_1:
        LDRH     R0,[R4, #+24]
        MOVS     R6,R0
        LSLS     R6,R6,#+17
        LSRS     R6,R6,#+17
        ORRS     R6,R6,R5, LSL #+8
        STRH     R6,[R4, #+24]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable102:
        DC32     `?<Constant "IS_TIM_LIST1_PERIPH(T...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_ClearOC3Ref:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.W    R0,??DataTable110_1  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_ClearOC3Ref_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_ClearOC3Ref_0
        LDR.W    R0,??DataTable110_2  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_ClearOC3Ref_0
        LDR.W    R0,??DataTable111  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_ClearOC3Ref_0
        LDR.W    R0,??DataTable111_1  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_ClearOC3Ref_0
        LDR.W    R0,??DataTable111_2  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_ClearOC3Ref_0
        MOVW     R2,#+1532
        LDR.W    R1,??DataTable111_3
        LDR.W    R0,??DataTable111_4
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_ClearOC3Ref_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+128
        BEQ.N    ??TIM_ClearOC3Ref_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_ClearOC3Ref_1
        MOVW     R2,#+1533
        LDR.W    R1,??DataTable111_3
        LDR.W    R0,??DataTable122
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_ClearOC3Ref_1:
        LDRH     R0,[R4, #+28]
        MOVS     R6,R0
        MOVW     R0,#+65407
        ANDS     R6,R0,R6
        ORRS     R6,R5,R6
        STRH     R6,[R4, #+28]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable103:
        DC32     `?<Constant "IS_TIM_LIST2_PERIPH(T...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_ClearOC4Ref:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.N    R0,??DataTable110_1  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_ClearOC4Ref_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_ClearOC4Ref_0
        LDR.N    R0,??DataTable110_2  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_ClearOC4Ref_0
        LDR.W    R0,??DataTable111  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_ClearOC4Ref_0
        LDR.W    R0,??DataTable111_1  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_ClearOC4Ref_0
        LDR.W    R0,??DataTable111_2  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_ClearOC4Ref_0
        MOVW     R2,#+1561
        LDR.W    R1,??DataTable111_3
        LDR.W    R0,??DataTable111_4
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_ClearOC4Ref_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+128
        BEQ.N    ??TIM_ClearOC4Ref_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_ClearOC4Ref_1
        MOVW     R2,#+1562
        LDR.W    R1,??DataTable111_3
        LDR.W    R0,??DataTable122
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_ClearOC4Ref_1:
        LDRH     R0,[R4, #+28]
        MOVS     R6,R0
        LSLS     R6,R6,#+17
        LSRS     R6,R6,#+17
        ORRS     R6,R6,R5, LSL #+8
        STRH     R6,[R4, #+28]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable104:
        DC32     `?<Constant "IS_TIM_OCM(TIM_OCMode)">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_OC1PolarityConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.N    R0,??DataTable110_1  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_OC1PolarityConfig_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_OC1PolarityConfig_0
        LDR.N    R0,??DataTable110_2  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_OC1PolarityConfig_0
        LDR.N    R0,??DataTable111  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_OC1PolarityConfig_0
        LDR.N    R0,??DataTable111_1  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC1PolarityConfig_0
        LDR.N    R0,??DataTable111_2  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_OC1PolarityConfig_0
        LDR.W    R0,??DataTable112  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_OC1PolarityConfig_0
        LDR.W    R0,??DataTable112_1  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_OC1PolarityConfig_0
        LDR.W    R0,??DataTable112_2  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_OC1PolarityConfig_0
        LDR.W    R0,??DataTable112_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_OC1PolarityConfig_0
        LDR.W    R0,??DataTable112_4  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC1PolarityConfig_0
        LDR.W    R0,??DataTable112_5  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_OC1PolarityConfig_0
        MOVW     R2,#+1590
        LDR.N    R1,??DataTable111_3
        LDR.W    R0,??DataTable122_1
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC1PolarityConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_OC1PolarityConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2
        BEQ.N    ??TIM_OC1PolarityConfig_1
        MOVW     R2,#+1591
        LDR.N    R1,??DataTable111_3
        LDR.W    R0,??DataTable125
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC1PolarityConfig_1:
        LDRH     R0,[R4, #+32]
        MOVS     R6,R0
        MOVW     R0,#+65533
        ANDS     R6,R0,R6
        ORRS     R6,R5,R6
        STRH     R6,[R4, #+32]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_OC1NPolarityConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.N    R0,??DataTable110_1  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_OC1NPolarityConfig_0
        LDR.N    R0,??DataTable111_2  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_OC1NPolarityConfig_0
        MOV      R2,#+1616
        LDR.N    R1,??DataTable111_3
        LDR.W    R0,??DataTable122_2
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC1NPolarityConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_OC1NPolarityConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8
        BEQ.N    ??TIM_OC1NPolarityConfig_1
        MOVW     R2,#+1617
        LDR.N    R1,??DataTable111_3
        LDR.W    R0,??DataTable126
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC1NPolarityConfig_1:
        LDRH     R0,[R4, #+32]
        MOVS     R6,R0
        MOVW     R0,#+65527
        ANDS     R6,R0,R6
        ORRS     R6,R5,R6
        STRH     R6,[R4, #+32]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_OC2PolarityConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.N    R0,??DataTable110_1  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_OC2PolarityConfig_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_OC2PolarityConfig_0
        LDR.N    R0,??DataTable110_2  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_OC2PolarityConfig_0
        LDR.N    R0,??DataTable111  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_OC2PolarityConfig_0
        LDR.N    R0,??DataTable111_1  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC2PolarityConfig_0
        LDR.N    R0,??DataTable111_2  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_OC2PolarityConfig_0
        LDR.N    R0,??DataTable112  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_OC2PolarityConfig_0
        LDR.N    R0,??DataTable112_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_OC2PolarityConfig_0
        MOVW     R2,#+1644
        LDR.N    R1,??DataTable111_3
        LDR.W    R0,??DataTable123
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC2PolarityConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_OC2PolarityConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2
        BEQ.N    ??TIM_OC2PolarityConfig_1
        MOVW     R2,#+1645
        LDR.N    R1,??DataTable111_3
        LDR.W    R0,??DataTable125
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC2PolarityConfig_1:
        LDRH     R0,[R4, #+32]
        MOVS     R6,R0
        MOVW     R0,#+65503
        ANDS     R6,R0,R6
        ORRS     R6,R6,R5, LSL #+4
        STRH     R6,[R4, #+32]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_OC2NPolarityConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.N    R0,??DataTable110_1  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_OC2NPolarityConfig_0
        LDR.N    R0,??DataTable111_2  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_OC2NPolarityConfig_0
        MOVW     R2,#+1671
        LDR.N    R1,??DataTable111_3
        LDR.W    R0,??DataTable122_2
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC2NPolarityConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_OC2NPolarityConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8
        BEQ.N    ??TIM_OC2NPolarityConfig_1
        MOV      R2,#+1672
        LDR.N    R1,??DataTable111_3
        LDR.W    R0,??DataTable126
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC2NPolarityConfig_1:
        LDRH     R0,[R4, #+32]
        MOVS     R6,R0
        MOVW     R0,#+65407
        ANDS     R6,R0,R6
        ORRS     R6,R6,R5, LSL #+4
        STRH     R6,[R4, #+32]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_OC3PolarityConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.N    R0,??DataTable110_1  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_OC3PolarityConfig_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_OC3PolarityConfig_0
        LDR.N    R0,??DataTable110_2  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_OC3PolarityConfig_0
        LDR.N    R0,??DataTable111  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_OC3PolarityConfig_0
        LDR.N    R0,??DataTable111_1  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC3PolarityConfig_0
        LDR.N    R0,??DataTable111_2  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_OC3PolarityConfig_0
        MOVW     R2,#+1698
        LDR.N    R1,??DataTable111_3
        LDR.N    R0,??DataTable111_4
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC3PolarityConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_OC3PolarityConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2
        BEQ.N    ??TIM_OC3PolarityConfig_1
        MOVW     R2,#+1699
        LDR.N    R1,??DataTable111_3
        LDR.W    R0,??DataTable125
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC3PolarityConfig_1:
        LDRH     R0,[R4, #+32]
        MOVS     R6,R0
        MOVW     R0,#+65023
        ANDS     R6,R0,R6
        ORRS     R6,R6,R5, LSL #+8
        STRH     R6,[R4, #+32]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_OC3NPolarityConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.N    R0,??DataTable110_1  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_OC3NPolarityConfig_0
        LDR.N    R0,??DataTable111_2  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_OC3NPolarityConfig_0
        MOVW     R2,#+1725
        LDR.N    R1,??DataTable111_3
        LDR.W    R0,??DataTable122_2
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC3NPolarityConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_OC3NPolarityConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8
        BEQ.N    ??TIM_OC3NPolarityConfig_1
        MOVW     R2,#+1726
        LDR.N    R1,??DataTable111_3
        LDR.W    R0,??DataTable126
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC3NPolarityConfig_1:
        LDRH     R0,[R4, #+32]
        MOVS     R6,R0
        MOVW     R0,#+63487
        ANDS     R6,R0,R6
        ORRS     R6,R6,R5, LSL #+8
        STRH     R6,[R4, #+32]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable110:
        DC32     `?<Constant "IS_TIM_FORCED_ACTION(...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable110_1:
        DC32     0x40010000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable110_2:
        DC32     0x40000400

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_OC4PolarityConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.W    R0,??DataTable126_1  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_OC4PolarityConfig_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_OC4PolarityConfig_0
        LDR.W    R0,??DataTable126_2  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_OC4PolarityConfig_0
        LDR.N    R0,??DataTable111  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_OC4PolarityConfig_0
        LDR.N    R0,??DataTable111_1  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC4PolarityConfig_0
        LDR.N    R0,??DataTable111_2  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_OC4PolarityConfig_0
        MOV      R2,#+1752
        LDR.N    R1,??DataTable111_3
        LDR.N    R0,??DataTable111_4
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC4PolarityConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_OC4PolarityConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2
        BEQ.N    ??TIM_OC4PolarityConfig_1
        MOVW     R2,#+1753
        LDR.N    R1,??DataTable111_3
        LDR.W    R0,??DataTable125
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_OC4PolarityConfig_1:
        LDRH     R0,[R4, #+32]
        MOVS     R6,R0
        MOVW     R0,#+57343
        ANDS     R6,R0,R6
        ORRS     R6,R6,R5, LSL #+12
        STRH     R6,[R4, #+32]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable111:
        DC32     0x40000800

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable111_1:
        DC32     0x40000c00

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable111_2:
        DC32     0x40010400

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable111_3:
        DC32     `?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable111_4:
        DC32     `?<Constant "IS_TIM_LIST3_PERIPH(T...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_CCxCmd:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,#+0
        LDR.W    R0,??DataTable126_1  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_CCxCmd_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_CCxCmd_0
        LDR.W    R0,??DataTable126_2  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_CCxCmd_0
        LDR.W    R0,??DataTable127  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_CCxCmd_0
        LDR.W    R0,??DataTable127_1  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_CCxCmd_0
        LDR.W    R0,??DataTable127_2  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_CCxCmd_0
        LDR.N    R0,??DataTable112  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_CCxCmd_0
        LDR.N    R0,??DataTable112_1  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_CCxCmd_0
        LDR.N    R0,??DataTable112_2  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_CCxCmd_0
        LDR.N    R0,??DataTable112_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_CCxCmd_0
        LDR.N    R0,??DataTable112_4  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_CCxCmd_0
        LDR.N    R0,??DataTable112_5  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_CCxCmd_0
        MOVW     R2,#+1783
        LDR.W    R1,??DataTable127_3
        LDR.W    R0,??DataTable122_1
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_CCxCmd_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_CCxCmd_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4
        BEQ.N    ??TIM_CCxCmd_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8
        BEQ.N    ??TIM_CCxCmd_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+12
        BEQ.N    ??TIM_CCxCmd_1
        MOV      R2,#+1784
        LDR.W    R1,??DataTable127_3
        LDR.W    R0,??DataTable127_4
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_CCxCmd_1:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+1
        BEQ.N    ??TIM_CCxCmd_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+0
        BEQ.N    ??TIM_CCxCmd_2
        MOVW     R2,#+1785
        LDR.W    R1,??DataTable127_3
        LDR.W    R0,??DataTable130
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_CCxCmd_2:
        MOVS     R0,#+1
        LSLS     R0,R0,R5
        MOVS     R7,R0
        LDRH     R0,[R4, #+32]
        BICS     R0,R0,R7
        STRH     R0,[R4, #+32]
        LDRH     R0,[R4, #+32]
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        LSLS     R1,R6,R5
        ORRS     R0,R1,R0
        STRH     R0,[R4, #+32]
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable112:
        DC32     0x40014000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable112_1:
        DC32     0x40014400

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable112_2:
        DC32     0x40014800

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable112_3:
        DC32     0x40001800

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable112_4:
        DC32     0x40001c00

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable112_5:
        DC32     0x40002000

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_CCxNCmd:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,#+0
        LDR.W    R0,??DataTable126_1  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_CCxNCmd_0
        LDR.W    R0,??DataTable127_2  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_CCxNCmd_0
        MOVW     R2,#+1813
        LDR.W    R1,??DataTable127_3
        LDR.W    R0,??DataTable122_2
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_CCxNCmd_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_CCxNCmd_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4
        BEQ.N    ??TIM_CCxNCmd_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8
        BEQ.N    ??TIM_CCxNCmd_1
        MOVW     R2,#+1814
        LDR.W    R1,??DataTable127_3
        LDR.W    R0,??DataTable128
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_CCxNCmd_1:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+4
        BEQ.N    ??TIM_CCxNCmd_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+0
        BEQ.N    ??TIM_CCxNCmd_2
        MOVW     R2,#+1815
        LDR.W    R1,??DataTable127_3
        LDR.W    R0,??DataTable131
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_CCxNCmd_2:
        MOVS     R0,#+4
        LSLS     R0,R0,R5
        MOVS     R7,R0
        LDRH     R0,[R4, #+32]
        BICS     R0,R0,R7
        STRH     R0,[R4, #+32]
        LDRH     R0,[R4, #+32]
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        LSLS     R1,R6,R5
        ORRS     R0,R1,R0
        STRH     R0,[R4, #+32]
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable113:
        DC32     `?<Constant "IS_TIM_OCPRELOAD_STAT...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_ICInit:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable126_1  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_ICInit_0
        LDR.W    R0,??DataTable126_2  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_0
        LDR.W    R0,??DataTable127  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_0
        LDR.W    R0,??DataTable127_1  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_0
        LDR.W    R0,??DataTable127_2  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_0
        LDR.W    R0,??DataTable129  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_0
        LDR.W    R0,??DataTable129_1  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_0
        LDR.W    R0,??DataTable129_2  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_0
        LDR.W    R0,??DataTable129_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_0
        LDR.W    R0,??DataTable129_4  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_0
        LDR.W    R0,??DataTable129_5  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_0
        MOVW     R2,#+1893
        LDR.W    R1,??DataTable127_3
        LDR.W    R0,??DataTable122_1
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_ICInit_0:
        LDRH     R0,[R5, #+2]
        CMP      R0,#+0
        BEQ.N    ??TIM_ICInit_1
        LDRH     R0,[R5, #+2]
        CMP      R0,#+2
        BEQ.N    ??TIM_ICInit_1
        LDRH     R0,[R5, #+2]
        CMP      R0,#+10
        BEQ.N    ??TIM_ICInit_1
        MOVW     R2,#+1894
        LDR.W    R1,??DataTable127_3
        LDR.W    R0,??DataTable129_6
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_ICInit_1:
        LDRH     R0,[R5, #+4]
        CMP      R0,#+1
        BEQ.N    ??TIM_ICInit_2
        LDRH     R0,[R5, #+4]
        CMP      R0,#+2
        BEQ.N    ??TIM_ICInit_2
        LDRH     R0,[R5, #+4]
        CMP      R0,#+3
        BEQ.N    ??TIM_ICInit_2
        MOVW     R2,#+1895
        LDR.W    R1,??DataTable127_3
        LDR.W    R0,??DataTable129_7
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_ICInit_2:
        LDRH     R0,[R5, #+6]
        CMP      R0,#+0
        BEQ.N    ??TIM_ICInit_3
        LDRH     R0,[R5, #+6]
        CMP      R0,#+4
        BEQ.N    ??TIM_ICInit_3
        LDRH     R0,[R5, #+6]
        CMP      R0,#+8
        BEQ.N    ??TIM_ICInit_3
        LDRH     R0,[R5, #+6]
        CMP      R0,#+12
        BEQ.N    ??TIM_ICInit_3
        MOV      R2,#+1896
        LDR.W    R1,??DataTable127_3
        LDR.W    R0,??DataTable129_8
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_ICInit_3:
        LDRH     R0,[R5, #+8]
        CMP      R0,#+16
        BCC.N    ??TIM_ICInit_4
        MOVW     R2,#+1897
        LDR.W    R1,??DataTable127_3
        LDR.W    R0,??DataTable131_1
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_ICInit_4:
        LDRH     R0,[R5, #+0]
        CMP      R0,#+0
        BNE.N    ??TIM_ICInit_5
        LDRH     R3,[R5, #+8]
        LDRH     R2,[R5, #+4]
        LDRH     R1,[R5, #+2]
        MOVS     R0,R4
        BL       TI1_Config
        LDRH     R1,[R5, #+6]
        MOVS     R0,R4
        BL       TIM_SetIC1Prescaler
        B.N      ??TIM_ICInit_6
??TIM_ICInit_5:
        LDRH     R0,[R5, #+0]
        CMP      R0,#+4
        BNE.N    ??TIM_ICInit_7
        LDRH     R3,[R5, #+8]
        LDRH     R2,[R5, #+4]
        LDRH     R1,[R5, #+2]
        MOVS     R0,R4
        BL       TI2_Config
        LDRH     R1,[R5, #+6]
        MOVS     R0,R4
        BL       TIM_SetIC2Prescaler
        B.N      ??TIM_ICInit_6
??TIM_ICInit_7:
        LDRH     R0,[R5, #+0]
        CMP      R0,#+8
        BNE.N    ??TIM_ICInit_8
        LDRH     R3,[R5, #+8]
        LDRH     R2,[R5, #+4]
        LDRH     R1,[R5, #+2]
        MOVS     R0,R4
        BL       TI3_Config
        LDRH     R1,[R5, #+6]
        MOVS     R0,R4
        BL       TIM_SetIC3Prescaler
        B.N      ??TIM_ICInit_6
??TIM_ICInit_8:
        LDRH     R3,[R5, #+8]
        LDRH     R2,[R5, #+4]
        LDRH     R1,[R5, #+2]
        MOVS     R0,R4
        BL       TI4_Config
        LDRH     R1,[R5, #+6]
        MOVS     R0,R4
        BL       TIM_SetIC4Prescaler
??TIM_ICInit_6:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_ICStructInit:
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
        MOVS     R1,#+0
        STRH     R1,[R0, #+2]
        MOVS     R1,#+1
        STRH     R1,[R0, #+4]
        MOVS     R1,#+0
        STRH     R1,[R0, #+6]
        MOVS     R1,#+0
        STRH     R1,[R0, #+8]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_PWMIConfig:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        MOVS     R7,#+1
        LDR.W    R0,??DataTable126_1  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_PWMIConfig_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_PWMIConfig_0
        LDR.W    R0,??DataTable126_2  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_PWMIConfig_0
        LDR.W    R0,??DataTable127  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_PWMIConfig_0
        LDR.W    R0,??DataTable127_1  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_PWMIConfig_0
        LDR.W    R0,??DataTable127_2  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_PWMIConfig_0
        LDR.W    R0,??DataTable129  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_PWMIConfig_0
        LDR.W    R0,??DataTable129_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_PWMIConfig_0
        MOV      R2,#+1968
        LDR.W    R1,??DataTable127_3
        LDR.W    R0,??DataTable123
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_PWMIConfig_0:
        LDRH     R0,[R5, #+2]
        CMP      R0,#+0
        BNE.N    ??TIM_PWMIConfig_1
        MOVS     R0,#+2
        MOVS     R6,R0
        B.N      ??TIM_PWMIConfig_2
??TIM_PWMIConfig_1:
        MOVS     R0,#+0
        MOVS     R6,R0
??TIM_PWMIConfig_2:
        LDRH     R0,[R5, #+4]
        CMP      R0,#+1
        BNE.N    ??TIM_PWMIConfig_3
        MOVS     R0,#+2
        MOVS     R7,R0
        B.N      ??TIM_PWMIConfig_4
??TIM_PWMIConfig_3:
        MOVS     R0,#+1
        MOVS     R7,R0
??TIM_PWMIConfig_4:
        LDRH     R0,[R5, #+0]
        CMP      R0,#+0
        BNE.N    ??TIM_PWMIConfig_5
        LDRH     R3,[R5, #+8]
        LDRH     R2,[R5, #+4]
        LDRH     R1,[R5, #+2]
        MOVS     R0,R4
        BL       TI1_Config
        LDRH     R1,[R5, #+6]
        MOVS     R0,R4
        BL       TIM_SetIC1Prescaler
        LDRH     R3,[R5, #+8]
        MOVS     R2,R7
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,R6
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R4
        BL       TI2_Config
        LDRH     R1,[R5, #+6]
        MOVS     R0,R4
        BL       TIM_SetIC2Prescaler
        B.N      ??TIM_PWMIConfig_6
??TIM_PWMIConfig_5:
        LDRH     R3,[R5, #+8]
        LDRH     R2,[R5, #+4]
        LDRH     R1,[R5, #+2]
        MOVS     R0,R4
        BL       TI2_Config
        LDRH     R1,[R5, #+6]
        MOVS     R0,R4
        BL       TIM_SetIC2Prescaler
        LDRH     R3,[R5, #+8]
        MOVS     R2,R7
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,R6
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R4
        BL       TI1_Config
        LDRH     R1,[R5, #+6]
        MOVS     R0,R4
        BL       TIM_SetIC1Prescaler
??TIM_PWMIConfig_6:
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_GetCapture1:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.W    R0,??DataTable126_1  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture1_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_GetCapture1_0
        LDR.W    R0,??DataTable126_2  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture1_0
        LDR.W    R0,??DataTable127  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture1_0
        LDR.W    R0,??DataTable127_1  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture1_0
        LDR.W    R0,??DataTable127_2  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture1_0
        LDR.W    R0,??DataTable129  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture1_0
        LDR.W    R0,??DataTable129_1  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture1_0
        LDR.W    R0,??DataTable129_2  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture1_0
        LDR.W    R0,??DataTable129_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture1_0
        LDR.W    R0,??DataTable129_4  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture1_0
        LDR.W    R0,??DataTable129_5  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture1_0
        MOVW     R2,#+2022
        LDR.W    R1,??DataTable127_3
        LDR.N    R0,??DataTable122_1
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_GetCapture1_0:
        LDR      R0,[R4, #+52]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_GetCapture2:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.W    R0,??DataTable126_1  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture2_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_GetCapture2_0
        LDR.W    R0,??DataTable126_2  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture2_0
        LDR.W    R0,??DataTable127  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture2_0
        LDR.W    R0,??DataTable127_1  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture2_0
        LDR.W    R0,??DataTable127_2  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture2_0
        LDR.W    R0,??DataTable129  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture2_0
        LDR.W    R0,??DataTable129_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture2_0
        MOVW     R2,#+2037
        LDR.W    R1,??DataTable127_3
        LDR.N    R0,??DataTable123
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_GetCapture2_0:
        LDR      R0,[R4, #+56]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_GetCapture3:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.W    R0,??DataTable126_1  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture3_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_GetCapture3_0
        LDR.W    R0,??DataTable126_2  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture3_0
        LDR.W    R0,??DataTable127  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture3_0
        LDR.W    R0,??DataTable127_1  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture3_0
        LDR.W    R0,??DataTable127_2  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture3_0
        MOVW     R2,#+2051
        LDR.W    R1,??DataTable127_3
        LDR.W    R0,??DataTable132
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_GetCapture3_0:
        LDR      R0,[R4, #+60]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_GetCapture4:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.W    R0,??DataTable126_1  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture4_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_GetCapture4_0
        LDR.W    R0,??DataTable126_2  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture4_0
        LDR.W    R0,??DataTable127  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture4_0
        LDR.W    R0,??DataTable127_1  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture4_0
        LDR.W    R0,??DataTable127_2  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture4_0
        MOVW     R2,#+2065
        LDR.W    R1,??DataTable127_3
        LDR.W    R0,??DataTable132
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_GetCapture4_0:
        LDR      R0,[R4, #+64]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable119:
        DC32     `?<Constant "IS_TIM_OCFAST_STATE(T...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_SetIC1Prescaler:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable126_1  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC1Prescaler_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_SetIC1Prescaler_0
        LDR.W    R0,??DataTable126_2  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC1Prescaler_0
        LDR.W    R0,??DataTable127  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC1Prescaler_0
        LDR.W    R0,??DataTable127_1  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC1Prescaler_0
        LDR.W    R0,??DataTable127_2  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC1Prescaler_0
        LDR.W    R0,??DataTable129  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC1Prescaler_0
        LDR.W    R0,??DataTable129_1  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC1Prescaler_0
        LDR.W    R0,??DataTable129_2  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC1Prescaler_0
        LDR.W    R0,??DataTable129_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC1Prescaler_0
        LDR.W    R0,??DataTable129_4  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC1Prescaler_0
        LDR.W    R0,??DataTable129_5  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC1Prescaler_0
        MOVW     R2,#+2085
        LDR.W    R1,??DataTable127_3
        LDR.N    R0,??DataTable122_1
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_SetIC1Prescaler_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_SetIC1Prescaler_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4
        BEQ.N    ??TIM_SetIC1Prescaler_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8
        BEQ.N    ??TIM_SetIC1Prescaler_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+12
        BEQ.N    ??TIM_SetIC1Prescaler_1
        MOVW     R2,#+2086
        LDR.W    R1,??DataTable127_3
        LDR.W    R0,??DataTable134
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_SetIC1Prescaler_1:
        LDRH     R0,[R4, #+24]
        MOVW     R1,#+65523
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+24]
        LDRH     R0,[R4, #+24]
        ORRS     R0,R5,R0
        STRH     R0,[R4, #+24]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_SetIC2Prescaler:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable126_1  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC2Prescaler_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_SetIC2Prescaler_0
        LDR.W    R0,??DataTable126_2  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC2Prescaler_0
        LDR.W    R0,??DataTable127  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC2Prescaler_0
        LDR.W    R0,??DataTable127_1  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC2Prescaler_0
        LDR.W    R0,??DataTable127_2  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC2Prescaler_0
        LDR.W    R0,??DataTable129  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC2Prescaler_0
        LDR.W    R0,??DataTable129_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC2Prescaler_0
        MOVW     R2,#+2110
        LDR.W    R1,??DataTable127_3
        LDR.N    R0,??DataTable123
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_SetIC2Prescaler_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_SetIC2Prescaler_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4
        BEQ.N    ??TIM_SetIC2Prescaler_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8
        BEQ.N    ??TIM_SetIC2Prescaler_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+12
        BEQ.N    ??TIM_SetIC2Prescaler_1
        MOVW     R2,#+2111
        LDR.W    R1,??DataTable127_3
        LDR.W    R0,??DataTable134
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_SetIC2Prescaler_1:
        LDRH     R0,[R4, #+24]
        MOVW     R1,#+62463
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+24]
        LDRH     R0,[R4, #+24]
        ORRS     R0,R0,R5, LSL #+8
        STRH     R0,[R4, #+24]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_SetIC3Prescaler:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable126_1  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC3Prescaler_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_SetIC3Prescaler_0
        LDR.N    R0,??DataTable126_2  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC3Prescaler_0
        LDR.W    R0,??DataTable127  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC3Prescaler_0
        LDR.W    R0,??DataTable127_1  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC3Prescaler_0
        LDR.W    R0,??DataTable127_2  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC3Prescaler_0
        MOVW     R2,#+2134
        LDR.W    R1,??DataTable127_3
        LDR.W    R0,??DataTable132
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_SetIC3Prescaler_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_SetIC3Prescaler_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4
        BEQ.N    ??TIM_SetIC3Prescaler_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8
        BEQ.N    ??TIM_SetIC3Prescaler_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+12
        BEQ.N    ??TIM_SetIC3Prescaler_1
        MOVW     R2,#+2135
        LDR.N    R1,??DataTable127_3
        LDR.W    R0,??DataTable134
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_SetIC3Prescaler_1:
        LDRH     R0,[R4, #+28]
        MOVW     R1,#+65523
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+28]
        LDRH     R0,[R4, #+28]
        ORRS     R0,R5,R0
        STRH     R0,[R4, #+28]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable122:
        DC32     `?<Constant "IS_TIM_OCCLEAR_STATE(...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable122_1:
        DC32     `?<Constant "IS_TIM_LIST1_PERIPH(T...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable122_2:
        DC32     `?<Constant "IS_TIM_LIST4_PERIPH(T...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_SetIC4Prescaler:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable126_1  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC4Prescaler_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_SetIC4Prescaler_0
        LDR.N    R0,??DataTable126_2  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC4Prescaler_0
        LDR.N    R0,??DataTable127  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC4Prescaler_0
        LDR.N    R0,??DataTable127_1  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC4Prescaler_0
        LDR.N    R0,??DataTable127_2  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC4Prescaler_0
        MOVW     R2,#+2158
        LDR.N    R1,??DataTable127_3
        LDR.W    R0,??DataTable132
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_SetIC4Prescaler_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_SetIC4Prescaler_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4
        BEQ.N    ??TIM_SetIC4Prescaler_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8
        BEQ.N    ??TIM_SetIC4Prescaler_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+12
        BEQ.N    ??TIM_SetIC4Prescaler_1
        MOVW     R2,#+2159
        LDR.N    R1,??DataTable127_3
        LDR.W    R0,??DataTable134
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_SetIC4Prescaler_1:
        LDRH     R0,[R4, #+28]
        MOVW     R1,#+62463
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+28]
        LDRH     R0,[R4, #+28]
        ORRS     R0,R0,R5, LSL #+8
        STRH     R0,[R4, #+28]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable123:
        DC32     `?<Constant "IS_TIM_LIST2_PERIPH(T...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_BDTRConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable126_1  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_BDTRConfig_0
        LDR.N    R0,??DataTable127_2  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_BDTRConfig_0
        MOVW     R2,#+2211
        LDR.N    R1,??DataTable127_3
        LDR.W    R0,??DataTable133
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_BDTRConfig_0:
        LDRH     R0,[R5, #+0]
        CMP      R0,#+2048
        BEQ.N    ??TIM_BDTRConfig_1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+0
        BEQ.N    ??TIM_BDTRConfig_1
        MOVW     R2,#+2212
        LDR.N    R1,??DataTable127_3
        LDR.W    R0,??DataTable133_1
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_BDTRConfig_1:
        LDRH     R0,[R5, #+2]
        CMP      R0,#+1024
        BEQ.N    ??TIM_BDTRConfig_2
        LDRH     R0,[R5, #+2]
        CMP      R0,#+0
        BEQ.N    ??TIM_BDTRConfig_2
        MOVW     R2,#+2213
        LDR.N    R1,??DataTable127_3
        LDR.W    R0,??DataTable133_2
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_BDTRConfig_2:
        LDRH     R0,[R5, #+4]
        CMP      R0,#+0
        BEQ.N    ??TIM_BDTRConfig_3
        LDRH     R0,[R5, #+4]
        MOV      R1,#+256
        CMP      R0,R1
        BEQ.N    ??TIM_BDTRConfig_3
        LDRH     R0,[R5, #+4]
        MOV      R1,#+512
        CMP      R0,R1
        BEQ.N    ??TIM_BDTRConfig_3
        LDRH     R0,[R5, #+4]
        MOV      R1,#+768
        CMP      R0,R1
        BEQ.N    ??TIM_BDTRConfig_3
        MOVW     R2,#+2214
        LDR.N    R1,??DataTable127_3
        LDR.W    R0,??DataTable133_3
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_BDTRConfig_3:
        LDRH     R0,[R5, #+8]
        CMP      R0,#+4096
        BEQ.N    ??TIM_BDTRConfig_4
        LDRH     R0,[R5, #+8]
        CMP      R0,#+0
        BEQ.N    ??TIM_BDTRConfig_4
        MOVW     R2,#+2215
        LDR.N    R1,??DataTable127_3
        LDR.W    R0,??DataTable133_4
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_BDTRConfig_4:
        LDRH     R0,[R5, #+10]
        CMP      R0,#+0
        BEQ.N    ??TIM_BDTRConfig_5
        LDRH     R0,[R5, #+10]
        CMP      R0,#+8192
        BEQ.N    ??TIM_BDTRConfig_5
        MOVW     R2,#+2216
        LDR.N    R1,??DataTable127_3
        LDR.W    R0,??DataTable133_5
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_BDTRConfig_5:
        LDRH     R0,[R5, #+12]
        CMP      R0,#+16384
        BEQ.N    ??TIM_BDTRConfig_6
        LDRH     R0,[R5, #+12]
        CMP      R0,#+0
        BEQ.N    ??TIM_BDTRConfig_6
        MOVW     R2,#+2217
        LDR.N    R1,??DataTable127_3
        LDR.W    R0,??DataTable138
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_BDTRConfig_6:
        LDRH     R0,[R5, #+0]
        LDRH     R1,[R5, #+2]
        ORRS     R0,R1,R0
        LDRH     R1,[R5, #+4]
        ORRS     R0,R1,R0
        LDRH     R1,[R5, #+6]
        ORRS     R0,R1,R0
        LDRH     R1,[R5, #+8]
        ORRS     R0,R1,R0
        LDRH     R1,[R5, #+10]
        ORRS     R0,R1,R0
        LDRH     R1,[R5, #+12]
        ORRS     R0,R1,R0
        STRH     R0,[R4, #+68]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_BDTRStructInit:
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
TIM_CtrlPWMOutputs:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable126_1  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_CtrlPWMOutputs_0
        LDR.N    R0,??DataTable127_2  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_CtrlPWMOutputs_0
        MOVW     R2,#+2255
        LDR.N    R1,??DataTable127_3
        LDR.W    R0,??DataTable133
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_CtrlPWMOutputs_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??TIM_CtrlPWMOutputs_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??TIM_CtrlPWMOutputs_1
        MOV      R2,#+2256
        LDR.N    R1,??DataTable127_3
        LDR.W    R0,??DataTable139
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_CtrlPWMOutputs_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??TIM_CtrlPWMOutputs_2
        LDRH     R0,[R4, #+68]
        ORRS     R0,R0,#0x8000
        STRH     R0,[R4, #+68]
        B.N      ??TIM_CtrlPWMOutputs_3
??TIM_CtrlPWMOutputs_2:
        LDRH     R0,[R4, #+68]
        LSLS     R0,R0,#+17
        LSRS     R0,R0,#+17
        STRH     R0,[R4, #+68]
??TIM_CtrlPWMOutputs_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable125:
        DC32     `?<Constant "IS_TIM_OC_POLARITY(TI...">_1`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_SelectCOM:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable126_1  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_SelectCOM_0
        LDR.N    R0,??DataTable127_2  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_SelectCOM_0
        MOVW     R2,#+2280
        LDR.N    R1,??DataTable127_3
        LDR.W    R0,??DataTable133
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_SelectCOM_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??TIM_SelectCOM_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??TIM_SelectCOM_1
        MOVW     R2,#+2281
        LDR.N    R1,??DataTable127_3
        LDR.W    R0,??DataTable139
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_SelectCOM_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??TIM_SelectCOM_2
        LDRH     R0,[R4, #+4]
        ORRS     R0,R0,#0x4
        STRH     R0,[R4, #+4]
        B.N      ??TIM_SelectCOM_3
??TIM_SelectCOM_2:
        LDRH     R0,[R4, #+4]
        MOVW     R1,#+65531
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+4]
??TIM_SelectCOM_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable126:
        DC32     `?<Constant "IS_TIM_OCN_POLARITY(T...">_1`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable126_1:
        DC32     0x40010000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable126_2:
        DC32     0x40000400

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_CCPreloadControl:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable135  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_CCPreloadControl_0
        LDR.N    R0,??DataTable127_2  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_CCPreloadControl_0
        MOVW     R2,#+2305
        LDR.N    R1,??DataTable127_3
        LDR.W    R0,??DataTable133
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_CCPreloadControl_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??TIM_CCPreloadControl_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??TIM_CCPreloadControl_1
        MOVW     R2,#+2306
        LDR.N    R1,??DataTable127_3
        LDR.W    R0,??DataTable139
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_CCPreloadControl_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??TIM_CCPreloadControl_2
        LDRH     R0,[R4, #+4]
        ORRS     R0,R0,#0x1
        STRH     R0,[R4, #+4]
        B.N      ??TIM_CCPreloadControl_3
??TIM_CCPreloadControl_2:
        LDRH     R0,[R4, #+4]
        MOVW     R1,#+65534
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+4]
??TIM_CCPreloadControl_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable127:
        DC32     0x40000800

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable127_1:
        DC32     0x40000c00

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable127_2:
        DC32     0x40010400

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable127_3:
        DC32     `?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable127_4:
        DC32     `?<Constant "IS_TIM_CHANNEL(TIM_Ch...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_ITConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        LDR.W    R0,??DataTable135  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_ITConfig_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_ITConfig_0
        LDR.W    R0,??DataTable136  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_ITConfig_0
        LDR.W    R0,??DataTable136_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_ITConfig_0
        LDR.W    R0,??DataTable136_2  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_ITConfig_0
        LDR.W    R0,??DataTable136_3  ;; 0x40001000
        CMP      R4,R0
        BEQ.N    ??TIM_ITConfig_0
        LDR.W    R0,??DataTable136_4  ;; 0x40001400
        CMP      R4,R0
        BEQ.N    ??TIM_ITConfig_0
        LDR.W    R0,??DataTable137  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_ITConfig_0
        LDR.N    R0,??DataTable129  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_ITConfig_0
        LDR.N    R0,??DataTable129_1  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_ITConfig_0
        LDR.N    R0,??DataTable129_2  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_ITConfig_0
        LDR.N    R0,??DataTable129_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_ITConfig_0
        LDR.N    R0,??DataTable129_4  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_ITConfig_0
        LDR.N    R0,??DataTable129_5  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_ITConfig_0
        MOVW     R2,#+2362
        LDR.W    R1,??DataTable137_1
        LDR.W    R0,??DataTable137_2
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_ITConfig_0:
        MOV      R0,#+65280
        TST      R5,R0
        BNE.N    ??TIM_ITConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BNE.N    ??TIM_ITConfig_2
??TIM_ITConfig_1:
        MOVW     R2,#+2363
        LDR.W    R1,??DataTable137_1
        LDR.W    R0,??DataTable138_1
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_ITConfig_2:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??TIM_ITConfig_3
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BEQ.N    ??TIM_ITConfig_3
        MOVW     R2,#+2364
        LDR.W    R1,??DataTable137_1
        LDR.W    R0,??DataTable139
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_ITConfig_3:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??TIM_ITConfig_4
        LDRH     R0,[R4, #+12]
        ORRS     R0,R5,R0
        STRH     R0,[R4, #+12]
        B.N      ??TIM_ITConfig_5
??TIM_ITConfig_4:
        LDRH     R0,[R4, #+12]
        BICS     R0,R0,R5
        STRH     R0,[R4, #+12]
??TIM_ITConfig_5:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable128:
        DC32     `?<Constant "IS_TIM_COMPLEMENTARY_...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_GenerateEvent:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable135  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_GenerateEvent_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_GenerateEvent_0
        LDR.W    R0,??DataTable136  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_GenerateEvent_0
        LDR.W    R0,??DataTable136_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_GenerateEvent_0
        LDR.W    R0,??DataTable136_2  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_GenerateEvent_0
        LDR.W    R0,??DataTable136_3  ;; 0x40001000
        CMP      R4,R0
        BEQ.N    ??TIM_GenerateEvent_0
        LDR.W    R0,??DataTable136_4  ;; 0x40001400
        CMP      R4,R0
        BEQ.N    ??TIM_GenerateEvent_0
        LDR.W    R0,??DataTable137  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_GenerateEvent_0
        LDR.N    R0,??DataTable129  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_GenerateEvent_0
        LDR.N    R0,??DataTable129_1  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_GenerateEvent_0
        LDR.N    R0,??DataTable129_2  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_GenerateEvent_0
        LDR.N    R0,??DataTable129_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_GenerateEvent_0
        LDR.N    R0,??DataTable129_4  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_GenerateEvent_0
        LDR.N    R0,??DataTable129_5  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_GenerateEvent_0
        MOV      R2,#+2400
        LDR.W    R1,??DataTable137_1
        LDR.W    R0,??DataTable137_2
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_GenerateEvent_0:
        MOV      R0,#+65280
        TST      R5,R0
        BNE.N    ??TIM_GenerateEvent_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BNE.N    ??TIM_GenerateEvent_2
??TIM_GenerateEvent_1:
        MOVW     R2,#+2401
        LDR.W    R1,??DataTable137_1
        LDR.W    R0,??DataTable141
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_GenerateEvent_2:
        STRH     R5,[R4, #+20]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable129:
        DC32     0x40014000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable129_1:
        DC32     0x40014400

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable129_2:
        DC32     0x40014800

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable129_3:
        DC32     0x40001800

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable129_4:
        DC32     0x40001c00

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable129_5:
        DC32     0x40002000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable129_6:
        DC32     `?<Constant "IS_TIM_IC_POLARITY(TI...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable129_7:
        DC32     `?<Constant "IS_TIM_IC_SELECTION(T...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable129_8:
        DC32     `?<Constant "IS_TIM_IC_PRESCALER(T...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_GetFlagStatus:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.W    R0,??DataTable135  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_GetFlagStatus_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_GetFlagStatus_0
        LDR.W    R0,??DataTable136  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_GetFlagStatus_0
        LDR.W    R0,??DataTable136_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_GetFlagStatus_0
        LDR.W    R0,??DataTable136_2  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_GetFlagStatus_0
        LDR.W    R0,??DataTable136_3  ;; 0x40001000
        CMP      R4,R0
        BEQ.N    ??TIM_GetFlagStatus_0
        LDR.W    R0,??DataTable136_4  ;; 0x40001400
        CMP      R4,R0
        BEQ.N    ??TIM_GetFlagStatus_0
        LDR.W    R0,??DataTable137  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_GetFlagStatus_0
        LDR.W    R0,??DataTable139_1  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_GetFlagStatus_0
        LDR.W    R0,??DataTable139_2  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_GetFlagStatus_0
        LDR.W    R0,??DataTable139_3  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_GetFlagStatus_0
        LDR.W    R0,??DataTable139_4  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_GetFlagStatus_0
        LDR.W    R0,??DataTable139_5  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_GetFlagStatus_0
        LDR.W    R0,??DataTable139_6  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_GetFlagStatus_0
        MOVW     R2,#+2434
        LDR.W    R1,??DataTable137_1
        LDR.W    R0,??DataTable137_2
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_GetFlagStatus_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+1
        BEQ.N    ??TIM_GetFlagStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2
        BEQ.N    ??TIM_GetFlagStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4
        BEQ.N    ??TIM_GetFlagStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8
        BEQ.N    ??TIM_GetFlagStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+16
        BEQ.N    ??TIM_GetFlagStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+32
        BEQ.N    ??TIM_GetFlagStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+64
        BEQ.N    ??TIM_GetFlagStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+128
        BEQ.N    ??TIM_GetFlagStatus_1
        MOV      R0,#+512
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??TIM_GetFlagStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+1024
        BEQ.N    ??TIM_GetFlagStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2048
        BEQ.N    ??TIM_GetFlagStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4096
        BEQ.N    ??TIM_GetFlagStatus_1
        MOVW     R2,#+2435
        LDR.W    R1,??DataTable137_1
        LDR.W    R0,??DataTable142
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_GetFlagStatus_1:
        LDRH     R0,[R4, #+16]
        TST      R0,R5
        BEQ.N    ??TIM_GetFlagStatus_2
        MOVS     R0,#+1
        MOVS     R6,R0
        B.N      ??TIM_GetFlagStatus_3
??TIM_GetFlagStatus_2:
        MOVS     R0,#+0
        MOVS     R6,R0
??TIM_GetFlagStatus_3:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable130:
        DC32     `?<Constant "IS_TIM_CCX(TIM_CCx)">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_ClearFlag:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable135  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_ClearFlag_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_ClearFlag_0
        LDR.W    R0,??DataTable136  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_ClearFlag_0
        LDR.W    R0,??DataTable136_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_ClearFlag_0
        LDR.W    R0,??DataTable136_2  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_ClearFlag_0
        LDR.W    R0,??DataTable136_3  ;; 0x40001000
        CMP      R4,R0
        BEQ.N    ??TIM_ClearFlag_0
        LDR.W    R0,??DataTable136_4  ;; 0x40001400
        CMP      R4,R0
        BEQ.N    ??TIM_ClearFlag_0
        LDR.W    R0,??DataTable137  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_ClearFlag_0
        LDR.W    R0,??DataTable139_1  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_ClearFlag_0
        LDR.W    R0,??DataTable139_2  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_ClearFlag_0
        LDR.W    R0,??DataTable139_3  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_ClearFlag_0
        LDR.W    R0,??DataTable139_4  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_ClearFlag_0
        LDR.W    R0,??DataTable139_5  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_ClearFlag_0
        LDR.W    R0,??DataTable139_6  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_ClearFlag_0
        MOVW     R2,#+2475
        LDR.W    R1,??DataTable137_1
        LDR.W    R0,??DataTable137_2
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_ClearFlag_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        MVNS     R0,R5
        STRH     R0,[R4, #+16]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable131:
        DC32     `?<Constant "IS_TIM_CCXN(TIM_CCxN)">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable131_1:
        DC32     `?<Constant "IS_TIM_IC_FILTER(TIM_...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_GetITStatus:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        MOVS     R7,#+0
        MOVS     R8,#+0
        LDR.W    R0,??DataTable135  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_GetITStatus_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_GetITStatus_0
        LDR.W    R0,??DataTable136  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_GetITStatus_0
        LDR.W    R0,??DataTable136_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_GetITStatus_0
        LDR.W    R0,??DataTable136_2  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_GetITStatus_0
        LDR.W    R0,??DataTable136_3  ;; 0x40001000
        CMP      R4,R0
        BEQ.N    ??TIM_GetITStatus_0
        LDR.W    R0,??DataTable136_4  ;; 0x40001400
        CMP      R4,R0
        BEQ.N    ??TIM_GetITStatus_0
        LDR.W    R0,??DataTable137  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_GetITStatus_0
        LDR.W    R0,??DataTable139_1  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_GetITStatus_0
        LDR.W    R0,??DataTable139_2  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_GetITStatus_0
        LDR.W    R0,??DataTable139_3  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_GetITStatus_0
        LDR.W    R0,??DataTable139_4  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_GetITStatus_0
        LDR.W    R0,??DataTable139_5  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_GetITStatus_0
        LDR.W    R0,??DataTable139_6  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_GetITStatus_0
        MOVW     R2,#+2505
        LDR.W    R1,??DataTable137_1
        LDR.W    R0,??DataTable137_2
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_GetITStatus_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+1
        BEQ.N    ??TIM_GetITStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2
        BEQ.N    ??TIM_GetITStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4
        BEQ.N    ??TIM_GetITStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8
        BEQ.N    ??TIM_GetITStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+16
        BEQ.N    ??TIM_GetITStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+32
        BEQ.N    ??TIM_GetITStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+64
        BEQ.N    ??TIM_GetITStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+128
        BEQ.N    ??TIM_GetITStatus_1
        MOVW     R2,#+2506
        LDR.W    R1,??DataTable137_1
        LDR.W    R0,??DataTable145
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_GetITStatus_1:
        LDRH     R0,[R4, #+16]
        ANDS     R0,R5,R0
        MOVS     R7,R0
        LDRH     R0,[R4, #+12]
        ANDS     R0,R5,R0
        MOV      R8,R0
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R7,#+0
        BEQ.N    ??TIM_GetITStatus_2
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        CMP      R8,#+0
        BEQ.N    ??TIM_GetITStatus_2
        MOVS     R0,#+1
        MOVS     R6,R0
        B.N      ??TIM_GetITStatus_3
??TIM_GetITStatus_2:
        MOVS     R0,#+0
        MOVS     R6,R0
??TIM_GetITStatus_3:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable132:
        DC32     `?<Constant "IS_TIM_LIST3_PERIPH(T...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_ClearITPendingBit:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable135  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_ClearITPendingBit_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_ClearITPendingBit_0
        LDR.W    R0,??DataTable136  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_ClearITPendingBit_0
        LDR.W    R0,??DataTable136_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_ClearITPendingBit_0
        LDR.W    R0,??DataTable136_2  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_ClearITPendingBit_0
        LDR.N    R0,??DataTable136_3  ;; 0x40001000
        CMP      R4,R0
        BEQ.N    ??TIM_ClearITPendingBit_0
        LDR.N    R0,??DataTable136_4  ;; 0x40001400
        CMP      R4,R0
        BEQ.N    ??TIM_ClearITPendingBit_0
        LDR.W    R0,??DataTable137  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_ClearITPendingBit_0
        LDR.W    R0,??DataTable139_1  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_ClearITPendingBit_0
        LDR.W    R0,??DataTable139_2  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_ClearITPendingBit_0
        LDR.W    R0,??DataTable139_3  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_ClearITPendingBit_0
        LDR.W    R0,??DataTable139_4  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_ClearITPendingBit_0
        LDR.W    R0,??DataTable139_5  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_ClearITPendingBit_0
        LDR.W    R0,??DataTable139_6  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_ClearITPendingBit_0
        MOV      R2,#+2544
        LDR.W    R1,??DataTable137_1
        LDR.W    R0,??DataTable137_2
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_ClearITPendingBit_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        MVNS     R0,R5
        STRH     R0,[R4, #+16]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable133:
        DC32     `?<Constant "IS_TIM_LIST4_PERIPH(T...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable133_1:
        DC32     `?<Constant "IS_TIM_OSSR_STATE(TIM...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable133_2:
        DC32     `?<Constant "IS_TIM_OSSI_STATE(TIM...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable133_3:
        DC32     `?<Constant "IS_TIM_LOCK_LEVEL(TIM...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable133_4:
        DC32     `?<Constant "IS_TIM_BREAK_STATE(TI...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable133_5:
        DC32     `?<Constant "IS_TIM_BREAK_POLARITY...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_DMAConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        LDR.N    R0,??DataTable135  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_DMAConfig_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_DMAConfig_0
        LDR.N    R0,??DataTable136  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_DMAConfig_0
        LDR.N    R0,??DataTable136_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_DMAConfig_0
        LDR.N    R0,??DataTable136_2  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_DMAConfig_0
        LDR.N    R0,??DataTable137  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_DMAConfig_0
        MOVW     R2,#+2581
        LDR.N    R1,??DataTable137_1
        LDR.W    R0,??DataTable145_1
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_DMAConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_DMAConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+1
        BEQ.N    ??TIM_DMAConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2
        BEQ.N    ??TIM_DMAConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+3
        BEQ.N    ??TIM_DMAConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4
        BEQ.N    ??TIM_DMAConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+5
        BEQ.N    ??TIM_DMAConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+6
        BEQ.N    ??TIM_DMAConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+7
        BEQ.N    ??TIM_DMAConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8
        BEQ.N    ??TIM_DMAConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+9
        BEQ.N    ??TIM_DMAConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+10
        BEQ.N    ??TIM_DMAConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+11
        BEQ.N    ??TIM_DMAConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+12
        BEQ.N    ??TIM_DMAConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+13
        BEQ.N    ??TIM_DMAConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+14
        BEQ.N    ??TIM_DMAConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+15
        BEQ.N    ??TIM_DMAConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+16
        BEQ.N    ??TIM_DMAConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+17
        BEQ.N    ??TIM_DMAConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+18
        BEQ.N    ??TIM_DMAConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+19
        BEQ.N    ??TIM_DMAConfig_1
        MOVW     R2,#+2582
        LDR.N    R1,??DataTable137_1
        LDR.W    R0,??DataTable145_2
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_DMAConfig_1:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+0
        BEQ.N    ??TIM_DMAConfig_2
        MOV      R0,#+256
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,R0
        BEQ.N    ??TIM_DMAConfig_2
        MOV      R0,#+512
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,R0
        BEQ.N    ??TIM_DMAConfig_2
        MOV      R0,#+768
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,R0
        BEQ.N    ??TIM_DMAConfig_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+1024
        BEQ.N    ??TIM_DMAConfig_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+1280
        BEQ.N    ??TIM_DMAConfig_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+1536
        BEQ.N    ??TIM_DMAConfig_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+1792
        BEQ.N    ??TIM_DMAConfig_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+2048
        BEQ.N    ??TIM_DMAConfig_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+2304
        BEQ.N    ??TIM_DMAConfig_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+2560
        BEQ.N    ??TIM_DMAConfig_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+2816
        BEQ.N    ??TIM_DMAConfig_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+3072
        BEQ.N    ??TIM_DMAConfig_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+3328
        BEQ.N    ??TIM_DMAConfig_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+3584
        BEQ.N    ??TIM_DMAConfig_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+3840
        BEQ.N    ??TIM_DMAConfig_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+4096
        BEQ.N    ??TIM_DMAConfig_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+4352
        BEQ.N    ??TIM_DMAConfig_2
        MOVW     R2,#+2583
        LDR.N    R1,??DataTable137_1
        LDR.W    R0,??DataTable149
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_DMAConfig_2:
        ORRS     R0,R6,R5
        STRH     R0,[R4, #+72]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable134:
        DC32     `?<Constant "IS_TIM_IC_PRESCALER(T...">_1`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_DMACmd:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        LDR.N    R0,??DataTable135  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_DMACmd_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_DMACmd_0
        LDR.N    R0,??DataTable136  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_DMACmd_0
        LDR.N    R0,??DataTable136_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_DMACmd_0
        LDR.N    R0,??DataTable136_2  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_DMACmd_0
        LDR.N    R0,??DataTable136_3  ;; 0x40001000
        CMP      R4,R0
        BEQ.N    ??TIM_DMACmd_0
        LDR.N    R0,??DataTable136_4  ;; 0x40001400
        CMP      R4,R0
        BEQ.N    ??TIM_DMACmd_0
        LDR.N    R0,??DataTable137  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_DMACmd_0
        MOV      R2,#+2608
        LDR.N    R1,??DataTable137_1
        LDR.W    R0,??DataTable146
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_DMACmd_0:
        MOVW     R0,#+33023
        TST      R5,R0
        BNE.N    ??TIM_DMACmd_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BNE.N    ??TIM_DMACmd_2
??TIM_DMACmd_1:
        MOVW     R2,#+2609
        LDR.N    R1,??DataTable137_1
        LDR.W    R0,??DataTable146_1
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_DMACmd_2:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??TIM_DMACmd_3
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BEQ.N    ??TIM_DMACmd_3
        MOVW     R2,#+2610
        LDR.N    R1,??DataTable137_1
        LDR.N    R0,??DataTable139
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_DMACmd_3:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??TIM_DMACmd_4
        LDRH     R0,[R4, #+12]
        ORRS     R0,R5,R0
        STRH     R0,[R4, #+12]
        B.N      ??TIM_DMACmd_5
??TIM_DMACmd_4:
        LDRH     R0,[R4, #+12]
        BICS     R0,R0,R5
        STRH     R0,[R4, #+12]
??TIM_DMACmd_5:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable135:
        DC32     0x40010000

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_SelectCCDMA:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable146_2  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_SelectCCDMA_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_SelectCCDMA_0
        LDR.N    R0,??DataTable136  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_SelectCCDMA_0
        LDR.N    R0,??DataTable136_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_SelectCCDMA_0
        LDR.N    R0,??DataTable136_2  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_SelectCCDMA_0
        LDR.N    R0,??DataTable137  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_SelectCCDMA_0
        MOVW     R2,#+2634
        LDR.N    R1,??DataTable137_1
        LDR.W    R0,??DataTable145_1
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_SelectCCDMA_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??TIM_SelectCCDMA_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??TIM_SelectCCDMA_1
        MOVW     R2,#+2635
        LDR.N    R1,??DataTable137_1
        LDR.N    R0,??DataTable139
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_SelectCCDMA_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??TIM_SelectCCDMA_2
        LDRH     R0,[R4, #+4]
        ORRS     R0,R0,#0x8
        STRH     R0,[R4, #+4]
        B.N      ??TIM_SelectCCDMA_3
??TIM_SelectCCDMA_2:
        LDRH     R0,[R4, #+4]
        MOVW     R1,#+65527
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+4]
??TIM_SelectCCDMA_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable136:
        DC32     0x40000400

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable136_1:
        DC32     0x40000800

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable136_2:
        DC32     0x40000c00

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable136_3:
        DC32     0x40001000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable136_4:
        DC32     0x40001400

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_InternalClockConfig:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.W    R0,??DataTable146_2  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_InternalClockConfig_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_InternalClockConfig_0
        LDR.W    R0,??DataTable148  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_InternalClockConfig_0
        LDR.W    R0,??DataTable148_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_InternalClockConfig_0
        LDR.W    R0,??DataTable148_2  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_InternalClockConfig_0
        LDR.N    R0,??DataTable137  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_InternalClockConfig_0
        LDR.N    R0,??DataTable139_1  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_InternalClockConfig_0
        LDR.N    R0,??DataTable139_4  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_InternalClockConfig_0
        MOVW     R2,#+2673
        LDR.N    R1,??DataTable137_1
        LDR.W    R0,??DataTable149_1
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_InternalClockConfig_0:
        LDRH     R0,[R4, #+8]
        MOVW     R1,#+65528
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+8]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable137:
        DC32     0x40010400

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable137_1:
        DC32     `?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable137_2:
        DC32     `?<Constant "IS_TIM_ALL_PERIPH(TIMx)">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_ITRxExternalClockConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable146_2  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_ITRxExternalClockConfig_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_ITRxExternalClockConfig_0
        LDR.W    R0,??DataTable148  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_ITRxExternalClockConfig_0
        LDR.W    R0,??DataTable148_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_ITRxExternalClockConfig_0
        LDR.W    R0,??DataTable148_2  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_ITRxExternalClockConfig_0
        LDR.W    R0,??DataTable149_2  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_ITRxExternalClockConfig_0
        LDR.N    R0,??DataTable139_1  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_ITRxExternalClockConfig_0
        LDR.N    R0,??DataTable139_4  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_ITRxExternalClockConfig_0
        MOVW     R2,#+2694
        LDR.W    R1,??DataTable149_3
        LDR.W    R0,??DataTable149_1
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_ITRxExternalClockConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_ITRxExternalClockConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+16
        BEQ.N    ??TIM_ITRxExternalClockConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+32
        BEQ.N    ??TIM_ITRxExternalClockConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+48
        BEQ.N    ??TIM_ITRxExternalClockConfig_1
        MOVW     R2,#+2695
        LDR.W    R1,??DataTable149_3
        LDR.W    R0,??DataTable149_4
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_ITRxExternalClockConfig_1:
        MOVS     R1,R5
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R4
        BL       TIM_SelectInputTrigger
        LDRH     R0,[R4, #+8]
        ORRS     R0,R0,#0x7
        STRH     R0,[R4, #+8]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable138:
        DC32     `?<Constant "IS_TIM_AUTOMATIC_OUTP...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable138_1:
        DC32     `?<Constant "IS_TIM_IT(TIM_IT)">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_TIxExternalClockConfig:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        LDR.W    R0,??DataTable146_2  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_TIxExternalClockConfig_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_TIxExternalClockConfig_0
        LDR.W    R0,??DataTable148  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_TIxExternalClockConfig_0
        LDR.W    R0,??DataTable148_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_TIxExternalClockConfig_0
        LDR.W    R0,??DataTable148_2  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_TIxExternalClockConfig_0
        LDR.W    R0,??DataTable149_2  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_TIxExternalClockConfig_0
        LDR.N    R0,??DataTable139_1  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_TIxExternalClockConfig_0
        LDR.N    R0,??DataTable139_2  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_TIxExternalClockConfig_0
        LDR.N    R0,??DataTable139_3  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_TIxExternalClockConfig_0
        LDR.N    R0,??DataTable139_4  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_TIxExternalClockConfig_0
        LDR.N    R0,??DataTable139_5  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_TIxExternalClockConfig_0
        LDR.N    R0,??DataTable139_6  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_TIxExternalClockConfig_0
        MOVW     R2,#+2725
        LDR.W    R1,??DataTable149_3
        LDR.W    R0,??DataTable149_5
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_TIxExternalClockConfig_0:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+0
        BEQ.N    ??TIM_TIxExternalClockConfig_1
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+2
        BEQ.N    ??TIM_TIxExternalClockConfig_1
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+10
        BEQ.N    ??TIM_TIxExternalClockConfig_1
        MOVW     R2,#+2726
        LDR.W    R1,??DataTable149_3
        LDR.W    R0,??DataTable149_6
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_TIxExternalClockConfig_1:
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R7,#+16
        BCC.N    ??TIM_TIxExternalClockConfig_2
        MOVW     R2,#+2727
        LDR.W    R1,??DataTable149_3
        LDR.W    R0,??DataTable149_7
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_TIxExternalClockConfig_2:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+96
        BNE.N    ??TIM_TIxExternalClockConfig_3
        MOVS     R3,R7
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        MOVS     R2,#+1
        MOVS     R1,R6
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R4
        BL       TI2_Config
        B.N      ??TIM_TIxExternalClockConfig_4
??TIM_TIxExternalClockConfig_3:
        MOVS     R3,R7
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        MOVS     R2,#+1
        MOVS     R1,R6
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R4
        BL       TI1_Config
??TIM_TIxExternalClockConfig_4:
        MOVS     R1,R5
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R4
        BL       TIM_SelectInputTrigger
        LDRH     R0,[R4, #+8]
        ORRS     R0,R0,#0x7
        STRH     R0,[R4, #+8]
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable139:
        DC32     `?<Constant "IS_FUNCTIONAL_STATE(N...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable139_1:
        DC32     0x40014000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable139_2:
        DC32     0x40014400

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable139_3:
        DC32     0x40014800

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable139_4:
        DC32     0x40001800

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable139_5:
        DC32     0x40001c00

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable139_6:
        DC32     0x40002000

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_ETRClockMode1Config:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        MOVS     R8,#+0
        LDR.W    R0,??DataTable146_2  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_ETRClockMode1Config_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_ETRClockMode1Config_0
        LDR.W    R0,??DataTable148  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_ETRClockMode1Config_0
        LDR.W    R0,??DataTable148_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_ETRClockMode1Config_0
        LDR.W    R0,??DataTable148_2  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_ETRClockMode1Config_0
        LDR.W    R0,??DataTable149_2  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_ETRClockMode1Config_0
        MOVW     R2,#+2767
        LDR.W    R1,??DataTable149_3
        LDR.W    R0,??DataTable145_1
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_ETRClockMode1Config_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_ETRClockMode1Config_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4096
        BEQ.N    ??TIM_ETRClockMode1Config_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8192
        BEQ.N    ??TIM_ETRClockMode1Config_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+12288
        BEQ.N    ??TIM_ETRClockMode1Config_1
        MOV      R2,#+2768
        LDR.W    R1,??DataTable149_3
        LDR.W    R0,??DataTable149_8
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_ETRClockMode1Config_1:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+32768
        BEQ.N    ??TIM_ETRClockMode1Config_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+0
        BEQ.N    ??TIM_ETRClockMode1Config_2
        MOVW     R2,#+2769
        LDR.W    R1,??DataTable149_3
        LDR.W    R0,??DataTable149_9
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_ETRClockMode1Config_2:
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R7,#+16
        BCC.N    ??TIM_ETRClockMode1Config_3
        MOVW     R2,#+2770
        LDR.W    R1,??DataTable149_3
        LDR.W    R0,??DataTable149_10
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_ETRClockMode1Config_3:
        MOVS     R3,R7
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        MOVS     R2,R6
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,R5
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R4
        BL       TIM_ETRConfig
        LDRH     R0,[R4, #+8]
        MOV      R8,R0
        MOVW     R0,#+65528
        ANDS     R8,R0,R8
        ORRS     R8,R8,#0x7
        MOVW     R0,#+65423
        ANDS     R8,R0,R8
        ORRS     R8,R8,#0x70
        STRH     R8,[R4, #+8]
        POP      {R4-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_ETRClockMode2Config:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        LDR.W    R0,??DataTable146_2  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_ETRClockMode2Config_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_ETRClockMode2Config_0
        LDR.W    R0,??DataTable148  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_ETRClockMode2Config_0
        LDR.W    R0,??DataTable148_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_ETRClockMode2Config_0
        LDR.W    R0,??DataTable148_2  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_ETRClockMode2Config_0
        LDR.W    R0,??DataTable149_2  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_ETRClockMode2Config_0
        MOVW     R2,#+2812
        LDR.W    R1,??DataTable149_3
        LDR.W    R0,??DataTable145_1
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_ETRClockMode2Config_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_ETRClockMode2Config_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4096
        BEQ.N    ??TIM_ETRClockMode2Config_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8192
        BEQ.N    ??TIM_ETRClockMode2Config_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+12288
        BEQ.N    ??TIM_ETRClockMode2Config_1
        MOVW     R2,#+2813
        LDR.W    R1,??DataTable149_3
        LDR.W    R0,??DataTable149_8
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_ETRClockMode2Config_1:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+32768
        BEQ.N    ??TIM_ETRClockMode2Config_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+0
        BEQ.N    ??TIM_ETRClockMode2Config_2
        MOVW     R2,#+2814
        LDR.W    R1,??DataTable149_3
        LDR.W    R0,??DataTable149_9
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_ETRClockMode2Config_2:
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R7,#+16
        BCC.N    ??TIM_ETRClockMode2Config_3
        MOVW     R2,#+2815
        LDR.W    R1,??DataTable149_3
        LDR.W    R0,??DataTable149_10
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_ETRClockMode2Config_3:
        MOVS     R3,R7
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        MOVS     R2,R6
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,R5
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R4
        BL       TIM_ETRConfig
        LDRH     R0,[R4, #+8]
        ORRS     R0,R0,#0x4000
        STRH     R0,[R4, #+8]
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable141:
        DC32     `?<Constant "IS_TIM_EVENT_SOURCE(T...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_SelectInputTrigger:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.W    R0,??DataTable146_2  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_SelectInputTrigger_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_SelectInputTrigger_0
        LDR.W    R0,??DataTable148  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_SelectInputTrigger_0
        LDR.W    R0,??DataTable148_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_SelectInputTrigger_0
        LDR.W    R0,??DataTable148_2  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_SelectInputTrigger_0
        LDR.W    R0,??DataTable149_2  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_SelectInputTrigger_0
        LDR.W    R0,??DataTable149_11  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_SelectInputTrigger_0
        LDR.W    R0,??DataTable149_12  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_SelectInputTrigger_0
        LDR.W    R0,??DataTable149_13  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_SelectInputTrigger_0
        LDR.W    R0,??DataTable149_14  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_SelectInputTrigger_0
        LDR.W    R0,??DataTable149_15  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_SelectInputTrigger_0
        LDR.W    R0,??DataTable149_16  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_SelectInputTrigger_0
        MOVW     R2,#+2881
        LDR.W    R1,??DataTable149_3
        LDR.W    R0,??DataTable149_5
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_SelectInputTrigger_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_SelectInputTrigger_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+16
        BEQ.N    ??TIM_SelectInputTrigger_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+32
        BEQ.N    ??TIM_SelectInputTrigger_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+48
        BEQ.N    ??TIM_SelectInputTrigger_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+64
        BEQ.N    ??TIM_SelectInputTrigger_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+80
        BEQ.N    ??TIM_SelectInputTrigger_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+96
        BEQ.N    ??TIM_SelectInputTrigger_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+112
        BEQ.N    ??TIM_SelectInputTrigger_1
        MOVW     R2,#+2882
        LDR.W    R1,??DataTable149_3
        LDR.W    R0,??DataTable149_17
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_SelectInputTrigger_1:
        LDRH     R0,[R4, #+8]
        MOVS     R6,R0
        MOVW     R0,#+65423
        ANDS     R6,R0,R6
        ORRS     R6,R5,R6
        STRH     R6,[R4, #+8]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable142:
        DC32     `?<Constant "IS_TIM_GET_FLAG(TIM_F...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_SelectOutputTrigger:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable146_2  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOutputTrigger_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_SelectOutputTrigger_0
        LDR.W    R0,??DataTable148  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOutputTrigger_0
        LDR.W    R0,??DataTable148_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOutputTrigger_0
        LDR.W    R0,??DataTable148_2  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOutputTrigger_0
        LDR.W    R0,??DataTable149_18  ;; 0x40001000
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOutputTrigger_0
        LDR.W    R0,??DataTable149_19  ;; 0x40001400
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOutputTrigger_0
        LDR.W    R0,??DataTable149_2  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOutputTrigger_0
        MOVW     R2,#+2922
        LDR.W    R1,??DataTable149_3
        LDR.N    R0,??DataTable146
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_SelectOutputTrigger_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_SelectOutputTrigger_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+16
        BEQ.N    ??TIM_SelectOutputTrigger_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+32
        BEQ.N    ??TIM_SelectOutputTrigger_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+48
        BEQ.N    ??TIM_SelectOutputTrigger_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+64
        BEQ.N    ??TIM_SelectOutputTrigger_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+80
        BEQ.N    ??TIM_SelectOutputTrigger_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+96
        BEQ.N    ??TIM_SelectOutputTrigger_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+112
        BEQ.N    ??TIM_SelectOutputTrigger_1
        MOVW     R2,#+2923
        LDR.W    R1,??DataTable149_3
        LDR.W    R0,??DataTable149_20
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_SelectOutputTrigger_1:
        LDRH     R0,[R4, #+4]
        MOVW     R1,#+65423
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+4]
        LDRH     R0,[R4, #+4]
        ORRS     R0,R5,R0
        STRH     R0,[R4, #+4]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_SelectSlaveMode:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable146_2  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_SelectSlaveMode_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_SelectSlaveMode_0
        LDR.W    R0,??DataTable148  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_SelectSlaveMode_0
        LDR.W    R0,??DataTable148_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_SelectSlaveMode_0
        LDR.W    R0,??DataTable148_2  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_SelectSlaveMode_0
        LDR.W    R0,??DataTable149_2  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_SelectSlaveMode_0
        LDR.W    R0,??DataTable149_11  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_SelectSlaveMode_0
        LDR.W    R0,??DataTable149_14  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_SelectSlaveMode_0
        MOVW     R2,#+2946
        LDR.W    R1,??DataTable149_3
        LDR.W    R0,??DataTable149_1
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_SelectSlaveMode_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4
        BEQ.N    ??TIM_SelectSlaveMode_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+5
        BEQ.N    ??TIM_SelectSlaveMode_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+6
        BEQ.N    ??TIM_SelectSlaveMode_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+7
        BEQ.N    ??TIM_SelectSlaveMode_1
        MOVW     R2,#+2947
        LDR.W    R1,??DataTable149_3
        LDR.W    R0,??DataTable149_21
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_SelectSlaveMode_1:
        LDRH     R0,[R4, #+8]
        MOVW     R1,#+65528
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+8]
        LDRH     R0,[R4, #+8]
        ORRS     R0,R5,R0
        STRH     R0,[R4, #+8]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_SelectMasterSlaveMode:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable146_2  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_SelectMasterSlaveMode_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_SelectMasterSlaveMode_0
        LDR.N    R0,??DataTable148  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_SelectMasterSlaveMode_0
        LDR.N    R0,??DataTable148_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_SelectMasterSlaveMode_0
        LDR.N    R0,??DataTable148_2  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_SelectMasterSlaveMode_0
        LDR.W    R0,??DataTable149_2  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_SelectMasterSlaveMode_0
        LDR.W    R0,??DataTable149_11  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_SelectMasterSlaveMode_0
        LDR.W    R0,??DataTable149_14  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_SelectMasterSlaveMode_0
        MOVW     R2,#+2969
        LDR.W    R1,??DataTable149_3
        LDR.W    R0,??DataTable149_1
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_SelectMasterSlaveMode_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+128
        BEQ.N    ??TIM_SelectMasterSlaveMode_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_SelectMasterSlaveMode_1
        MOVW     R2,#+2970
        LDR.W    R1,??DataTable149_3
        LDR.W    R0,??DataTable149_22
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_SelectMasterSlaveMode_1:
        LDRH     R0,[R4, #+8]
        MOVW     R1,#+65407
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+8]
        LDRH     R0,[R4, #+8]
        ORRS     R0,R5,R0
        STRH     R0,[R4, #+8]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable145:
        DC32     `?<Constant "IS_TIM_GET_IT(TIM_IT)">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable145_1:
        DC32     `?<Constant "IS_TIM_LIST3_PERIPH(T...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable145_2:
        DC32     `?<Constant "IS_TIM_DMA_BASE(TIM_D...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_ETRConfig:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        MOVS     R8,#+0
        LDR.N    R0,??DataTable146_2  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_ETRConfig_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_ETRConfig_0
        LDR.N    R0,??DataTable148  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_ETRConfig_0
        LDR.N    R0,??DataTable148_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_ETRConfig_0
        LDR.N    R0,??DataTable148_2  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_ETRConfig_0
        LDR.N    R0,??DataTable149_2  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_ETRConfig_0
        MOVW     R2,#+3002
        LDR.N    R1,??DataTable149_3
        LDR.N    R0,??DataTable149_23
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_ETRConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_ETRConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4096
        BEQ.N    ??TIM_ETRConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8192
        BEQ.N    ??TIM_ETRConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+12288
        BEQ.N    ??TIM_ETRConfig_1
        MOVW     R2,#+3003
        LDR.N    R1,??DataTable149_3
        LDR.N    R0,??DataTable149_8
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_ETRConfig_1:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+32768
        BEQ.N    ??TIM_ETRConfig_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+0
        BEQ.N    ??TIM_ETRConfig_2
        MOVW     R2,#+3004
        LDR.N    R1,??DataTable149_3
        LDR.N    R0,??DataTable149_9
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_ETRConfig_2:
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R7,#+16
        BCC.N    ??TIM_ETRConfig_3
        MOVW     R2,#+3005
        LDR.N    R1,??DataTable149_3
        LDR.N    R0,??DataTable149_10
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_ETRConfig_3:
        LDRH     R0,[R4, #+8]
        MOV      R8,R0
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        ORRS     R0,R6,R7, LSL #+8
        ORRS     R0,R0,R5
        ORRS     R8,R0,R8
        STRH     R8,[R4, #+8]
        POP      {R4-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable146:
        DC32     `?<Constant "IS_TIM_LIST5_PERIPH(T...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable146_1:
        DC32     `?<Constant "IS_TIM_DMA_SOURCE(TIM...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable146_2:
        DC32     0x40010000

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_EncoderInterfaceConfig:
        PUSH     {R4-R10,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        MOVS     R8,#+0
        MOVS     R9,#+0
        MOVS     R10,#+0
        LDR.N    R0,??DataTable149_24  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_EncoderInterfaceConfig_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_EncoderInterfaceConfig_0
        LDR.N    R0,??DataTable148  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_EncoderInterfaceConfig_0
        LDR.N    R0,??DataTable148_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_EncoderInterfaceConfig_0
        LDR.N    R0,??DataTable148_2  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_EncoderInterfaceConfig_0
        LDR.N    R0,??DataTable149_2  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_EncoderInterfaceConfig_0
        LDR.N    R0,??DataTable149_11  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_EncoderInterfaceConfig_0
        LDR.N    R0,??DataTable149_14  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_EncoderInterfaceConfig_0
        MOVW     R2,#+3062
        LDR.N    R1,??DataTable149_3
        LDR.N    R0,??DataTable149_1
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_EncoderInterfaceConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+1
        BEQ.N    ??TIM_EncoderInterfaceConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2
        BEQ.N    ??TIM_EncoderInterfaceConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+3
        BEQ.N    ??TIM_EncoderInterfaceConfig_1
        MOVW     R2,#+3063
        LDR.N    R1,??DataTable149_3
        LDR.N    R0,??DataTable149_25
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_EncoderInterfaceConfig_1:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+0
        BEQ.N    ??TIM_EncoderInterfaceConfig_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+2
        BEQ.N    ??TIM_EncoderInterfaceConfig_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+10
        BEQ.N    ??TIM_EncoderInterfaceConfig_2
        MOVW     R2,#+3064
        LDR.N    R1,??DataTable149_3
        LDR.N    R0,??DataTable149_26
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_EncoderInterfaceConfig_2:
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R7,#+0
        BEQ.N    ??TIM_EncoderInterfaceConfig_3
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R7,#+2
        BEQ.N    ??TIM_EncoderInterfaceConfig_3
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R7,#+10
        BEQ.N    ??TIM_EncoderInterfaceConfig_3
        MOVW     R2,#+3065
        LDR.N    R1,??DataTable149_3
        LDR.N    R0,??DataTable149_27
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_EncoderInterfaceConfig_3:
        LDRH     R0,[R4, #+8]
        MOV      R8,R0
        LDRH     R0,[R4, #+24]
        MOV      R9,R0
        LDRH     R0,[R4, #+32]
        MOV      R10,R0
        MOVW     R0,#+65528
        ANDS     R8,R0,R8
        ORRS     R8,R5,R8
        MOVW     R0,#+64764
        ANDS     R9,R0,R9
        MOVW     R0,#+257
        ORRS     R9,R0,R9
        MOVW     R0,#+65501
        ANDS     R10,R0,R10
        ORRS     R0,R6,R7, LSL #+4
        ORRS     R10,R0,R10
        STRH     R8,[R4, #+8]
        STRH     R9,[R4, #+24]
        STRH     R10,[R4, #+32]
        POP      {R4-R10,PC}      ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_SelectHallSensor:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable149_24  ;; 0x40010000
        CMP      R4,R0
        BEQ.N    ??TIM_SelectHallSensor_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_SelectHallSensor_0
        LDR.N    R0,??DataTable148  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_SelectHallSensor_0
        LDR.N    R0,??DataTable148_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_SelectHallSensor_0
        LDR.N    R0,??DataTable148_2  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_SelectHallSensor_0
        LDR.N    R0,??DataTable149_2  ;; 0x40010400
        CMP      R4,R0
        BEQ.N    ??TIM_SelectHallSensor_0
        LDR.N    R0,??DataTable149_11  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_SelectHallSensor_0
        LDR.N    R0,??DataTable149_14  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_SelectHallSensor_0
        MOVW     R2,#+3109
        LDR.N    R1,??DataTable149_3
        LDR.N    R0,??DataTable149_1
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_SelectHallSensor_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??TIM_SelectHallSensor_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??TIM_SelectHallSensor_1
        MOVW     R2,#+3110
        LDR.N    R1,??DataTable149_3
        LDR.N    R0,??DataTable149_28
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_SelectHallSensor_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??TIM_SelectHallSensor_2
        LDRH     R0,[R4, #+4]
        ORRS     R0,R0,#0x80
        STRH     R0,[R4, #+4]
        B.N      ??TIM_SelectHallSensor_3
??TIM_SelectHallSensor_2:
        LDRH     R0,[R4, #+4]
        MOVW     R1,#+65407
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+4]
??TIM_SelectHallSensor_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable148:
        DC32     0x40000400

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable148_1:
        DC32     0x40000800

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable148_2:
        DC32     0x40000c00

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_RemapConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_RemapConfig_0
        LDR.N    R0,??DataTable149_29  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_RemapConfig_0
        LDR.N    R0,??DataTable149_13  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_RemapConfig_0
        MOVW     R2,#+3160
        LDR.N    R1,??DataTable149_3
        LDR.N    R0,??DataTable149_30
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_RemapConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_RemapConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+1024
        BEQ.N    ??TIM_RemapConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2048
        BEQ.N    ??TIM_RemapConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+3072
        BEQ.N    ??TIM_RemapConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_RemapConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+64
        BEQ.N    ??TIM_RemapConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+128
        BEQ.N    ??TIM_RemapConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+192
        BEQ.N    ??TIM_RemapConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_RemapConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2
        BEQ.N    ??TIM_RemapConfig_1
        MOVW     R2,#+3161
        LDR.N    R1,??DataTable149_3
        LDR.N    R0,??DataTable149_31
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??TIM_RemapConfig_1:
        STRH     R5,[R4, #+80]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable149:
        DC32     `?<Constant "IS_TIM_DMA_LENGTH(TIM...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable149_1:
        DC32     `?<Constant "IS_TIM_LIST2_PERIPH(T...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable149_2:
        DC32     0x40010400

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable149_3:
        DC32     `?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable149_4:
        DC32     `?<Constant "IS_TIM_INTERNAL_TRIGG...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable149_5:
        DC32     `?<Constant "IS_TIM_LIST1_PERIPH(T...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable149_6:
        DC32     `?<Constant "IS_TIM_IC_POLARITY(TI...">_1`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable149_7:
        DC32     `?<Constant "IS_TIM_IC_FILTER(ICFi...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable149_8:
        DC32     `?<Constant "IS_TIM_EXT_PRESCALER(...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable149_9:
        DC32     `?<Constant "IS_TIM_EXT_POLARITY(T...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable149_10:
        DC32     `?<Constant "IS_TIM_EXT_FILTER(Ext...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable149_11:
        DC32     0x40014000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable149_12:
        DC32     0x40014400

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable149_13:
        DC32     0x40014800

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable149_14:
        DC32     0x40001800

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable149_15:
        DC32     0x40001c00

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable149_16:
        DC32     0x40002000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable149_17:
        DC32     `?<Constant "IS_TIM_TRIGGER_SELECT...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable149_18:
        DC32     0x40001000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable149_19:
        DC32     0x40001400

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable149_20:
        DC32     `?<Constant "IS_TIM_TRGO_SOURCE(TI...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable149_21:
        DC32     `?<Constant "IS_TIM_SLAVE_MODE(TIM...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable149_22:
        DC32     `?<Constant "IS_TIM_MSM_STATE(TIM_...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable149_23:
        DC32     `?<Constant "IS_TIM_LIST3_PERIPH(T...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable149_24:
        DC32     0x40010000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable149_25:
        DC32     `?<Constant "IS_TIM_ENCODER_MODE(T...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable149_26:
        DC32     `?<Constant "IS_TIM_IC_POLARITY(TI...">_2`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable149_27:
        DC32     `?<Constant "IS_TIM_IC_POLARITY(TI...">_3`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable149_28:
        DC32     `?<Constant "IS_FUNCTIONAL_STATE(N...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable149_29:
        DC32     0x40000c00

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable149_30:
        DC32     `?<Constant "IS_TIM_LIST6_PERIPH(T...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable149_31:
        DC32     `?<Constant "IS_TIM_REMAP(TIM_Remap)">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TI1_Config:
        PUSH     {R4-R7}
        MOVS     R4,#+0
        MOVS     R5,#+0
        LDRH     R6,[R0, #+32]
        MOVW     R7,#+65534
        ANDS     R6,R7,R6
        STRH     R6,[R0, #+32]
        LDRH     R6,[R0, #+24]
        MOVS     R4,R6
        LDRH     R6,[R0, #+32]
        MOVS     R5,R6
        MOVW     R6,#+65292
        ANDS     R4,R6,R4
        ORRS     R6,R2,R3, LSL #+4
        ORRS     R4,R6,R4
        MOVW     R6,#+65525
        ANDS     R5,R6,R5
        ORRS     R6,R1,#0x1
        ORRS     R5,R6,R5
        STRH     R4,[R0, #+24]
        STRH     R5,[R0, #+32]
        POP      {R4-R7}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TI2_Config:
        PUSH     {R4-R7}
        MOVS     R5,#+0
        MOVS     R6,#+0
        MOVS     R4,#+0
        LDRH     R7,[R0, #+32]
        MOVW     R12,#+65519
        ANDS     R7,R12,R7
        STRH     R7,[R0, #+32]
        LDRH     R7,[R0, #+24]
        MOVS     R5,R7
        LDRH     R7,[R0, #+32]
        MOVS     R6,R7
        LSLS     R7,R1,#+4
        MOVS     R4,R7
        MOVW     R7,#+3327
        ANDS     R5,R7,R5
        ORRS     R5,R5,R3, LSL #+12
        ORRS     R5,R5,R2, LSL #+8
        MOVW     R7,#+65375
        ANDS     R6,R7,R6
        ORRS     R7,R4,#0x10
        ORRS     R6,R7,R6
        STRH     R5,[R0, #+24]
        STRH     R6,[R0, #+32]
        POP      {R4-R7}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TI3_Config:
        PUSH     {R4-R7}
        MOVS     R6,#+0
        MOVS     R4,#+0
        MOVS     R5,#+0
        LDRH     R7,[R0, #+32]
        MOVW     R12,#+65279
        ANDS     R7,R12,R7
        STRH     R7,[R0, #+32]
        LDRH     R7,[R0, #+28]
        MOVS     R6,R7
        LDRH     R7,[R0, #+32]
        MOVS     R4,R7
        LSLS     R7,R1,#+8
        MOVS     R5,R7
        MOVW     R7,#+65292
        ANDS     R6,R7,R6
        ORRS     R7,R2,R3, LSL #+4
        ORRS     R6,R7,R6
        MOVW     R7,#+62975
        ANDS     R4,R7,R4
        MOV      R7,#+256
        ORRS     R7,R7,R5
        ORRS     R4,R7,R4
        STRH     R6,[R0, #+28]
        STRH     R4,[R0, #+32]
        POP      {R4-R7}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TI4_Config:
        PUSH     {R4-R7}
        MOVS     R5,#+0
        MOVS     R6,#+0
        MOVS     R4,#+0
        LDRH     R7,[R0, #+32]
        MOVW     R12,#+61439
        ANDS     R7,R12,R7
        STRH     R7,[R0, #+32]
        LDRH     R7,[R0, #+28]
        MOVS     R5,R7
        LDRH     R7,[R0, #+32]
        MOVS     R6,R7
        LSLS     R7,R1,#+12
        MOVS     R4,R7
        MOVW     R7,#+3327
        ANDS     R5,R7,R5
        ORRS     R5,R5,R2, LSL #+8
        ORRS     R5,R5,R3, LSL #+12
        MOVW     R7,#+24575
        ANDS     R6,R7,R6
        ORRS     R7,R4,#0x1000
        ORRS     R6,R7,R6
        STRH     R5,[R0, #+28]
        STRH     R6,[R0, #+32]
        POP      {R4-R7}
        BX       LR               ;; return

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_ALL_PERIPH(TIMx)">`:
        ; Initializer data, 24 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 65, 76, 76
        DC8 95, 80, 69, 82, 73, 80, 72, 40, 84, 73
        DC8 77, 120, 41, 0

        SECTION `.rodata`:CONST:NOROOT(2)
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
        DC8 116, 109, 51, 50, 102, 50, 120, 120, 95, 116
        DC8 105, 109, 46, 99, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_COUNTER_MODE(T...">`:
        ; Initializer data, 64 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 67, 79, 85
        DC8 78, 84, 69, 82, 95, 77, 79, 68, 69, 40
        DC8 84, 73, 77, 95, 84, 105, 109, 101, 66, 97
        DC8 115, 101, 73, 110, 105, 116, 83, 116, 114, 117
        DC8 99, 116, 45, 62, 84, 73, 77, 95, 67, 111
        DC8 117, 110, 116, 101, 114, 77, 111, 100, 101, 41
        DC8 0, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_CKD_DIV(TIM_Ti...">`:
        ; Initializer data, 60 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 67, 75, 68
        DC8 95, 68, 73, 86, 40, 84, 73, 77, 95, 84
        DC8 105, 109, 101, 66, 97, 115, 101, 73, 110, 105
        DC8 116, 83, 116, 114, 117, 99, 116, 45, 62, 84
        DC8 73, 77, 95, 67, 108, 111, 99, 107, 68, 105
        DC8 118, 105, 115, 105, 111, 110, 41, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_PRESCALER_RELO...">`:
        ; Initializer data, 44 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 80, 82, 69
        DC8 83, 67, 65, 76, 69, 82, 95, 82, 69, 76
        DC8 79, 65, 68, 40, 84, 73, 77, 95, 80, 83
        DC8 67, 82, 101, 108, 111, 97, 100, 77, 111, 100
        DC8 101, 41, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_LIST3_PERIPH(T...">`:
        ; Initializer data, 28 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 76, 73, 83
        DC8 84, 51, 95, 80, 69, 82, 73, 80, 72, 40
        DC8 84, 73, 77, 120, 41, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_COUNTER_MODE(T...">_1`:
        ; Initializer data, 40 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 67, 79, 85
        DC8 78, 84, 69, 82, 95, 77, 79, 68, 69, 40
        DC8 84, 73, 77, 95, 67, 111, 117, 110, 116, 101
        DC8 114, 77, 111, 100, 101, 41, 0, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_FUNCTIONAL_STATE(N...">`:
        ; Initializer data, 32 bytes
        DC8 73, 83, 95, 70, 85, 78, 67, 84, 73, 79
        DC8 78, 65, 76, 95, 83, 84, 65, 84, 69, 40
        DC8 78, 101, 119, 83, 116, 97, 116, 101, 41, 0
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_UPDATE_SOURCE(...">`:
        ; Initializer data, 40 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 85, 80, 68
        DC8 65, 84, 69, 95, 83, 79, 85, 82, 67, 69
        DC8 40, 84, 73, 77, 95, 85, 112, 100, 97, 116
        DC8 101, 83, 111, 117, 114, 99, 101, 41, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_OPM_MODE(TIM_O...">`:
        ; Initializer data, 28 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 79, 80, 77
        DC8 95, 77, 79, 68, 69, 40, 84, 73, 77, 95
        DC8 79, 80, 77, 111, 100, 101, 41, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_LIST1_PERIPH(T...">`:
        ; Initializer data, 28 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 76, 73, 83
        DC8 84, 49, 95, 80, 69, 82, 73, 80, 72, 40
        DC8 84, 73, 77, 120, 41, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_CKD_DIV(TIM_CKD)">`:
        ; Initializer data, 24 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 67, 75, 68
        DC8 95, 68, 73, 86, 40, 84, 73, 77, 95, 67
        DC8 75, 68, 41, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_OC_MODE(TIM_OC...">`:
        ; Initializer data, 48 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 79, 67, 95
        DC8 77, 79, 68, 69, 40, 84, 73, 77, 95, 79
        DC8 67, 73, 110, 105, 116, 83, 116, 114, 117, 99
        DC8 116, 45, 62, 84, 73, 77, 95, 79, 67, 77
        DC8 111, 100, 101, 41, 0, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_OUTPUT_STATE(T...">`:
        ; Initializer data, 56 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 79, 85, 84
        DC8 80, 85, 84, 95, 83, 84, 65, 84, 69, 40
        DC8 84, 73, 77, 95, 79, 67, 73, 110, 105, 116
        DC8 83, 116, 114, 117, 99, 116, 45, 62, 84, 73
        DC8 77, 95, 79, 117, 116, 112, 117, 116, 83, 116
        DC8 97, 116, 101, 41, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_OC_POLARITY(TI...">`:
        ; Initializer data, 56 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 79, 67, 95
        DC8 80, 79, 76, 65, 82, 73, 84, 89, 40, 84
        DC8 73, 77, 95, 79, 67, 73, 110, 105, 116, 83
        DC8 116, 114, 117, 99, 116, 45, 62, 84, 73, 77
        DC8 95, 79, 67, 80, 111, 108, 97, 114, 105, 116
        DC8 121, 41, 0, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_OUTPUTN_STATE(...">`:
        ; Initializer data, 60 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 79, 85, 84
        DC8 80, 85, 84, 78, 95, 83, 84, 65, 84, 69
        DC8 40, 84, 73, 77, 95, 79, 67, 73, 110, 105
        DC8 116, 83, 116, 114, 117, 99, 116, 45, 62, 84
        DC8 73, 77, 95, 79, 117, 116, 112, 117, 116, 78
        DC8 83, 116, 97, 116, 101, 41, 0, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_OCN_POLARITY(T...">`:
        ; Initializer data, 56 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 79, 67, 78
        DC8 95, 80, 79, 76, 65, 82, 73, 84, 89, 40
        DC8 84, 73, 77, 95, 79, 67, 73, 110, 105, 116
        DC8 83, 116, 114, 117, 99, 116, 45, 62, 84, 73
        DC8 77, 95, 79, 67, 78, 80, 111, 108, 97, 114
        DC8 105, 116, 121, 41, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_OCNIDLE_STATE(...">`:
        ; Initializer data, 60 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 79, 67, 78
        DC8 73, 68, 76, 69, 95, 83, 84, 65, 84, 69
        DC8 40, 84, 73, 77, 95, 79, 67, 73, 110, 105
        DC8 116, 83, 116, 114, 117, 99, 116, 45, 62, 84
        DC8 73, 77, 95, 79, 67, 78, 73, 100, 108, 101
        DC8 83, 116, 97, 116, 101, 41, 0, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_OCIDLE_STATE(T...">`:
        ; Initializer data, 56 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 79, 67, 73
        DC8 68, 76, 69, 95, 83, 84, 65, 84, 69, 40
        DC8 84, 73, 77, 95, 79, 67, 73, 110, 105, 116
        DC8 83, 116, 114, 117, 99, 116, 45, 62, 84, 73
        DC8 77, 95, 79, 67, 73, 100, 108, 101, 83, 116
        DC8 97, 116, 101, 41, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_LIST2_PERIPH(T...">`:
        ; Initializer data, 28 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 76, 73, 83
        DC8 84, 50, 95, 80, 69, 82, 73, 80, 72, 40
        DC8 84, 73, 77, 120, 41, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_CHANNEL(TIM_Ch...">`:
        ; Initializer data, 28 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 67, 72, 65
        DC8 78, 78, 69, 76, 40, 84, 73, 77, 95, 67
        DC8 104, 97, 110, 110, 101, 108, 41, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_OCM(TIM_OCMode)">`:
        ; Initializer data, 24 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 79, 67, 77
        DC8 40, 84, 73, 77, 95, 79, 67, 77, 111, 100
        DC8 101, 41, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_FORCED_ACTION(...">`:
        ; Initializer data, 40 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 70, 79, 82
        DC8 67, 69, 68, 95, 65, 67, 84, 73, 79, 78
        DC8 40, 84, 73, 77, 95, 70, 111, 114, 99, 101
        DC8 100, 65, 99, 116, 105, 111, 110, 41, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_OCPRELOAD_STAT...">`:
        ; Initializer data, 40 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 79, 67, 80
        DC8 82, 69, 76, 79, 65, 68, 95, 83, 84, 65
        DC8 84, 69, 40, 84, 73, 77, 95, 79, 67, 80
        DC8 114, 101, 108, 111, 97, 100, 41, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_OCFAST_STATE(T...">`:
        ; Initializer data, 32 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 79, 67, 70
        DC8 65, 83, 84, 95, 83, 84, 65, 84, 69, 40
        DC8 84, 73, 77, 95, 79, 67, 70, 97, 115, 116
        DC8 41, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_OCCLEAR_STATE(...">`:
        ; Initializer data, 36 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 79, 67, 67
        DC8 76, 69, 65, 82, 95, 83, 84, 65, 84, 69
        DC8 40, 84, 73, 77, 95, 79, 67, 67, 108, 101
        DC8 97, 114, 41, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_OC_POLARITY(TI...">_1`:
        ; Initializer data, 36 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 79, 67, 95
        DC8 80, 79, 76, 65, 82, 73, 84, 89, 40, 84
        DC8 73, 77, 95, 79, 67, 80, 111, 108, 97, 114
        DC8 105, 116, 121, 41, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_LIST4_PERIPH(T...">`:
        ; Initializer data, 28 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 76, 73, 83
        DC8 84, 52, 95, 80, 69, 82, 73, 80, 72, 40
        DC8 84, 73, 77, 120, 41, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_OCN_POLARITY(T...">_1`:
        ; Initializer data, 40 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 79, 67, 78
        DC8 95, 80, 79, 76, 65, 82, 73, 84, 89, 40
        DC8 84, 73, 77, 95, 79, 67, 78, 80, 111, 108
        DC8 97, 114, 105, 116, 121, 41, 0, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_CCX(TIM_CCx)">`:
        ; Initializer data, 20 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 67, 67, 88
        DC8 40, 84, 73, 77, 95, 67, 67, 120, 41, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_COMPLEMENTARY_...">`:
        ; Initializer data, 44 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 67, 79, 77
        DC8 80, 76, 69, 77, 69, 78, 84, 65, 82, 89
        DC8 95, 67, 72, 65, 78, 78, 69, 76, 40, 84
        DC8 73, 77, 95, 67, 104, 97, 110, 110, 101, 108
        DC8 41, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_CCXN(TIM_CCxN)">`:
        ; Initializer data, 24 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 67, 67, 88
        DC8 78, 40, 84, 73, 77, 95, 67, 67, 120, 78
        DC8 41, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_IC_POLARITY(TI...">`:
        ; Initializer data, 56 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 73, 67, 95
        DC8 80, 79, 76, 65, 82, 73, 84, 89, 40, 84
        DC8 73, 77, 95, 73, 67, 73, 110, 105, 116, 83
        DC8 116, 114, 117, 99, 116, 45, 62, 84, 73, 77
        DC8 95, 73, 67, 80, 111, 108, 97, 114, 105, 116
        DC8 121, 41, 0, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_IC_SELECTION(T...">`:
        ; Initializer data, 56 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 73, 67, 95
        DC8 83, 69, 76, 69, 67, 84, 73, 79, 78, 40
        DC8 84, 73, 77, 95, 73, 67, 73, 110, 105, 116
        DC8 83, 116, 114, 117, 99, 116, 45, 62, 84, 73
        DC8 77, 95, 73, 67, 83, 101, 108, 101, 99, 116
        DC8 105, 111, 110, 41, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_IC_PRESCALER(T...">`:
        ; Initializer data, 56 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 73, 67, 95
        DC8 80, 82, 69, 83, 67, 65, 76, 69, 82, 40
        DC8 84, 73, 77, 95, 73, 67, 73, 110, 105, 116
        DC8 83, 116, 114, 117, 99, 116, 45, 62, 84, 73
        DC8 77, 95, 73, 67, 80, 114, 101, 115, 99, 97
        DC8 108, 101, 114, 41, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_IC_FILTER(TIM_...">`:
        ; Initializer data, 52 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 73, 67, 95
        DC8 70, 73, 76, 84, 69, 82, 40, 84, 73, 77
        DC8 95, 73, 67, 73, 110, 105, 116, 83, 116, 114
        DC8 117, 99, 116, 45, 62, 84, 73, 77, 95, 73
        DC8 67, 70, 105, 108, 116, 101, 114, 41, 0, 0
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_IC_PRESCALER(T...">_1`:
        ; Initializer data, 32 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 73, 67, 95
        DC8 80, 82, 69, 83, 67, 65, 76, 69, 82, 40
        DC8 84, 73, 77, 95, 73, 67, 80, 83, 67, 41
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_OSSR_STATE(TIM...">`:
        ; Initializer data, 56 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 79, 83, 83
        DC8 82, 95, 83, 84, 65, 84, 69, 40, 84, 73
        DC8 77, 95, 66, 68, 84, 82, 73, 110, 105, 116
        DC8 83, 116, 114, 117, 99, 116, 45, 62, 84, 73
        DC8 77, 95, 79, 83, 83, 82, 83, 116, 97, 116
        DC8 101, 41, 0, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_OSSI_STATE(TIM...">`:
        ; Initializer data, 56 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 79, 83, 83
        DC8 73, 95, 83, 84, 65, 84, 69, 40, 84, 73
        DC8 77, 95, 66, 68, 84, 82, 73, 110, 105, 116
        DC8 83, 116, 114, 117, 99, 116, 45, 62, 84, 73
        DC8 77, 95, 79, 83, 83, 73, 83, 116, 97, 116
        DC8 101, 41, 0, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_LOCK_LEVEL(TIM...">`:
        ; Initializer data, 56 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 76, 79, 67
        DC8 75, 95, 76, 69, 86, 69, 76, 40, 84, 73
        DC8 77, 95, 66, 68, 84, 82, 73, 110, 105, 116
        DC8 83, 116, 114, 117, 99, 116, 45, 62, 84, 73
        DC8 77, 95, 76, 79, 67, 75, 76, 101, 118, 101
        DC8 108, 41, 0, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_BREAK_STATE(TI...">`:
        ; Initializer data, 52 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 66, 82, 69
        DC8 65, 75, 95, 83, 84, 65, 84, 69, 40, 84
        DC8 73, 77, 95, 66, 68, 84, 82, 73, 110, 105
        DC8 116, 83, 116, 114, 117, 99, 116, 45, 62, 84
        DC8 73, 77, 95, 66, 114, 101, 97, 107, 41, 0
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_BREAK_POLARITY...">`:
        ; Initializer data, 64 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 66, 82, 69
        DC8 65, 75, 95, 80, 79, 76, 65, 82, 73, 84
        DC8 89, 40, 84, 73, 77, 95, 66, 68, 84, 82
        DC8 73, 110, 105, 116, 83, 116, 114, 117, 99, 116
        DC8 45, 62, 84, 73, 77, 95, 66, 114, 101, 97
        DC8 107, 80, 111, 108, 97, 114, 105, 116, 121, 41
        DC8 0, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_AUTOMATIC_OUTP...">`:
        ; Initializer data, 72 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 65, 85, 84
        DC8 79, 77, 65, 84, 73, 67, 95, 79, 85, 84
        DC8 80, 85, 84, 95, 83, 84, 65, 84, 69, 40
        DC8 84, 73, 77, 95, 66, 68, 84, 82, 73, 110
        DC8 105, 116, 83, 116, 114, 117, 99, 116, 45, 62
        DC8 84, 73, 77, 95, 65, 117, 116, 111, 109, 97
        DC8 116, 105, 99, 79, 117, 116, 112, 117, 116, 41
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_IT(TIM_IT)">`:
        ; Initializer data, 20 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 73, 84, 40
        DC8 84, 73, 77, 95, 73, 84, 41, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_EVENT_SOURCE(T...">`:
        ; Initializer data, 40 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 69, 86, 69
        DC8 78, 84, 95, 83, 79, 85, 82, 67, 69, 40
        DC8 84, 73, 77, 95, 69, 118, 101, 110, 116, 83
        DC8 111, 117, 114, 99, 101, 41, 0, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_GET_FLAG(TIM_F...">`:
        ; Initializer data, 28 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 71, 69, 84
        DC8 95, 70, 76, 65, 71, 40, 84, 73, 77, 95
        DC8 70, 76, 65, 71, 41, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_GET_IT(TIM_IT)">`:
        ; Initializer data, 24 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 71, 69, 84
        DC8 95, 73, 84, 40, 84, 73, 77, 95, 73, 84
        DC8 41, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_DMA_BASE(TIM_D...">`:
        ; Initializer data, 32 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 68, 77, 65
        DC8 95, 66, 65, 83, 69, 40, 84, 73, 77, 95
        DC8 68, 77, 65, 66, 97, 115, 101, 41, 0, 0
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_DMA_LENGTH(TIM...">`:
        ; Initializer data, 40 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 68, 77, 65
        DC8 95, 76, 69, 78, 71, 84, 72, 40, 84, 73
        DC8 77, 95, 68, 77, 65, 66, 117, 114, 115, 116
        DC8 76, 101, 110, 103, 116, 104, 41, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_LIST5_PERIPH(T...">`:
        ; Initializer data, 28 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 76, 73, 83
        DC8 84, 53, 95, 80, 69, 82, 73, 80, 72, 40
        DC8 84, 73, 77, 120, 41, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_DMA_SOURCE(TIM...">`:
        ; Initializer data, 36 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 68, 77, 65
        DC8 95, 83, 79, 85, 82, 67, 69, 40, 84, 73
        DC8 77, 95, 68, 77, 65, 83, 111, 117, 114, 99
        DC8 101, 41, 0, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_INTERNAL_TRIGG...">`:
        ; Initializer data, 60 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 73, 78, 84
        DC8 69, 82, 78, 65, 76, 95, 84, 82, 73, 71
        DC8 71, 69, 82, 95, 83, 69, 76, 69, 67, 84
        DC8 73, 79, 78, 40, 84, 73, 77, 95, 73, 110
        DC8 112, 117, 116, 84, 114, 105, 103, 103, 101, 114
        DC8 83, 111, 117, 114, 99, 101, 41, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_IC_POLARITY(TI...">_1`:
        ; Initializer data, 36 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 73, 67, 95
        DC8 80, 79, 76, 65, 82, 73, 84, 89, 40, 84
        DC8 73, 77, 95, 73, 67, 80, 111, 108, 97, 114
        DC8 105, 116, 121, 41, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_IC_FILTER(ICFi...">`:
        ; Initializer data, 28 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 73, 67, 95
        DC8 70, 73, 76, 84, 69, 82, 40, 73, 67, 70
        DC8 105, 108, 116, 101, 114, 41, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_EXT_PRESCALER(...">`:
        ; Initializer data, 44 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 69, 88, 84
        DC8 95, 80, 82, 69, 83, 67, 65, 76, 69, 82
        DC8 40, 84, 73, 77, 95, 69, 120, 116, 84, 82
        DC8 71, 80, 114, 101, 115, 99, 97, 108, 101, 114
        DC8 41, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_EXT_POLARITY(T...">`:
        ; Initializer data, 40 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 69, 88, 84
        DC8 95, 80, 79, 76, 65, 82, 73, 84, 89, 40
        DC8 84, 73, 77, 95, 69, 120, 116, 84, 82, 71
        DC8 80, 111, 108, 97, 114, 105, 116, 121, 41, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_EXT_FILTER(Ext...">`:
        ; Initializer data, 32 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 69, 88, 84
        DC8 95, 70, 73, 76, 84, 69, 82, 40, 69, 120
        DC8 116, 84, 82, 71, 70, 105, 108, 116, 101, 114
        DC8 41, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_TRIGGER_SELECT...">`:
        ; Initializer data, 52 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 84, 82, 73
        DC8 71, 71, 69, 82, 95, 83, 69, 76, 69, 67
        DC8 84, 73, 79, 78, 40, 84, 73, 77, 95, 73
        DC8 110, 112, 117, 116, 84, 114, 105, 103, 103, 101
        DC8 114, 83, 111, 117, 114, 99, 101, 41, 0, 0
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_TRGO_SOURCE(TI...">`:
        ; Initializer data, 36 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 84, 82, 71
        DC8 79, 95, 83, 79, 85, 82, 67, 69, 40, 84
        DC8 73, 77, 95, 84, 82, 71, 79, 83, 111, 117
        DC8 114, 99, 101, 41, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_SLAVE_MODE(TIM...">`:
        ; Initializer data, 36 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 83, 76, 65
        DC8 86, 69, 95, 77, 79, 68, 69, 40, 84, 73
        DC8 77, 95, 83, 108, 97, 118, 101, 77, 111, 100
        DC8 101, 41, 0, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_MSM_STATE(TIM_...">`:
        ; Initializer data, 40 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 77, 83, 77
        DC8 95, 83, 84, 65, 84, 69, 40, 84, 73, 77
        DC8 95, 77, 97, 115, 116, 101, 114, 83, 108, 97
        DC8 118, 101, 77, 111, 100, 101, 41, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_ENCODER_MODE(T...">`:
        ; Initializer data, 40 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 69, 78, 67
        DC8 79, 68, 69, 82, 95, 77, 79, 68, 69, 40
        DC8 84, 73, 77, 95, 69, 110, 99, 111, 100, 101
        DC8 114, 77, 111, 100, 101, 41, 0, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_IC_POLARITY(TI...">_2`:
        ; Initializer data, 36 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 73, 67, 95
        DC8 80, 79, 76, 65, 82, 73, 84, 89, 40, 84
        DC8 73, 77, 95, 73, 67, 49, 80, 111, 108, 97
        DC8 114, 105, 116, 121, 41, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_IC_POLARITY(TI...">_3`:
        ; Initializer data, 36 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 73, 67, 95
        DC8 80, 79, 76, 65, 82, 73, 84, 89, 40, 84
        DC8 73, 77, 95, 73, 67, 50, 80, 111, 108, 97
        DC8 114, 105, 116, 121, 41, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_LIST6_PERIPH(T...">`:
        ; Initializer data, 28 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 76, 73, 83
        DC8 84, 54, 95, 80, 69, 82, 73, 80, 72, 40
        DC8 84, 73, 77, 120, 41, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_TIM_REMAP(TIM_Remap)">`:
        ; Initializer data, 24 bytes
        DC8 73, 83, 95, 84, 73, 77, 95, 82, 69, 77
        DC8 65, 80, 40, 84, 73, 77, 95, 82, 101, 109
        DC8 97, 112, 41, 0

        END
// 
//  2 824 bytes in section .rodata
// 15 764 bytes in section .text
// 
// 15 764 bytes of CODE  memory
//  2 824 bytes of CONST memory
//
//Errors: none
//Warnings: none
