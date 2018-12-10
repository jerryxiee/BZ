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
//                    2xx_adc.c                                               /
//    Command line =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\STM32F2xx_StdPeriph_Driver\src\stm32f /
//                    2xx_adc.c -D STM32F10X_CL -D USE_STDPERIPH_DRIVER -lcN  /
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
//                    IAR6.1\STM32_Boot\EWARM\Debug\List\stm32f2xx_adc.s      /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f2xx_adc

        EXTERN RCC_APB2PeriphResetCmd
        EXTERN __aeabi_assert
        EXTERN __iar_EmptyStepPoint

        PUBLIC ADC_AnalogWatchdogCmd
        PUBLIC ADC_AnalogWatchdogSingleChannelConfig
        PUBLIC ADC_AnalogWatchdogThresholdsConfig
        PUBLIC ADC_AutoInjectedConvCmd
        PUBLIC ADC_ClearFlag
        PUBLIC ADC_ClearITPendingBit
        PUBLIC ADC_Cmd
        PUBLIC ADC_CommonInit
        PUBLIC ADC_CommonStructInit
        PUBLIC ADC_ContinuousModeCmd
        PUBLIC ADC_DMACmd
        PUBLIC ADC_DMARequestAfterLastTransferCmd
        PUBLIC ADC_DeInit
        PUBLIC ADC_DiscModeChannelCountConfig
        PUBLIC ADC_DiscModeCmd
        PUBLIC ADC_EOCOnEachRegularChannelCmd
        PUBLIC ADC_ExternalTrigInjectedConvConfig
        PUBLIC ADC_ExternalTrigInjectedConvEdgeConfig
        PUBLIC ADC_GetConversionValue
        PUBLIC ADC_GetFlagStatus
        PUBLIC ADC_GetITStatus
        PUBLIC ADC_GetInjectedConversionValue
        PUBLIC ADC_GetMultiModeConversionValue
        PUBLIC ADC_GetSoftwareStartConvStatus
        PUBLIC ADC_GetSoftwareStartInjectedConvCmdStatus
        PUBLIC ADC_ITConfig
        PUBLIC ADC_Init
        PUBLIC ADC_InjectedChannelConfig
        PUBLIC ADC_InjectedDiscModeCmd
        PUBLIC ADC_InjectedSequencerLengthConfig
        PUBLIC ADC_MultiModeDMARequestAfterLastTransferCmd
        PUBLIC ADC_RegularChannelConfig
        PUBLIC ADC_SetInjectedOffset
        PUBLIC ADC_SoftwareStartConv
        PUBLIC ADC_SoftwareStartInjectedConv
        PUBLIC ADC_StructInit
        PUBLIC ADC_TempSensorVrefintCmd
        PUBLIC ADC_VBATCmd


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_DeInit:
        PUSH     {R7,LR}
        MOVS     R1,#+1
        MOV      R0,#+256
        BL       RCC_APB2PeriphResetCmd
        MOVS     R1,#+0
        MOV      R0,#+256
        BL       RCC_APB2PeriphResetCmd
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_Init:
        PUSH     {R4,R5}
        MOVS     R3,#+0
        MOVS     R2,#+0
        LDR      R4,[R0, #+4]
        MOVS     R3,R4
        LDR.W    R4,??DataTable13  ;; 0xfcfffeff
        ANDS     R3,R4,R3
        LDRB     R4,[R1, #+4]
        LDR      R5,[R1, #+0]
        ORRS     R4,R5,R4, LSL #+8
        ORRS     R3,R4,R3
        STR      R3,[R0, #+4]
        LDR      R4,[R0, #+8]
        MOVS     R3,R4
        LDR.W    R4,??DataTable13_1  ;; 0xc0fff7fd
        ANDS     R3,R4,R3
        LDR      R4,[R1, #+16]
        LDR      R5,[R1, #+12]
        ORRS     R4,R5,R4
        LDR      R5,[R1, #+8]
        ORRS     R4,R5,R4
        LDRB     R5,[R1, #+5]
        ORRS     R4,R4,R5, LSL #+1
        ORRS     R3,R4,R3
        STR      R3,[R0, #+8]
        LDR      R4,[R0, #+44]
        MOVS     R3,R4
        BICS     R3,R3,#0xF00000
        LDRB     R4,[R1, #+20]
        SUBS     R4,R4,#+1
        ORRS     R2,R4,R2
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ORRS     R3,R3,R2, LSL #+20
        STR      R3,[R0, #+44]
        POP      {R4,R5}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_StructInit:
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        MOVS     R1,#+0
        STRB     R1,[R0, #+4]
        MOVS     R1,#+0
        STRB     R1,[R0, #+5]
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
        MOVS     R1,#+1
        STRB     R1,[R0, #+20]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_CommonInit:
        MOVS     R1,#+0
        LDR.W    R2,??DataTable13_2  ;; 0x40012304
        LDR      R2,[R2, #+0]
        MOVS     R1,R2
        LDR.W    R2,??DataTable13_3  ;; 0xfffc30e0
        ANDS     R1,R2,R1
        LDR      R2,[R0, #+0]
        LDR      R3,[R0, #+4]
        ORRS     R2,R3,R2
        LDR      R3,[R0, #+8]
        ORRS     R2,R3,R2
        LDR      R3,[R0, #+12]
        ORRS     R2,R3,R2
        ORRS     R1,R2,R1
        LDR.W    R2,??DataTable13_2  ;; 0x40012304
        STR      R1,[R2, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_CommonStructInit:
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
ADC_Cmd:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??ADC_Cmd_0
        LDR      R2,[R0, #+8]
        ORRS     R2,R2,#0x1
        STR      R2,[R0, #+8]
        B.N      ??ADC_Cmd_1
??ADC_Cmd_0:
        LDR      R2,[R0, #+8]
        LSRS     R2,R2,#+1
        LSLS     R2,R2,#+1
        STR      R2,[R0, #+8]
??ADC_Cmd_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_AnalogWatchdogCmd:
        MOVS     R2,#+0
        LDR      R3,[R0, #+4]
        MOVS     R2,R3
        LDR.N    R3,??DataTable13_4  ;; 0xff3ffdff
        ANDS     R2,R3,R2
        ORRS     R2,R1,R2
        STR      R2,[R0, #+4]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_AnalogWatchdogThresholdsConfig:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        STR      R1,[R0, #+36]
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        STR      R2,[R0, #+40]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_AnalogWatchdogSingleChannelConfig:
        MOVS     R2,#+0
        LDR      R3,[R0, #+4]
        MOVS     R2,R3
        LSRS     R2,R2,#+5
        LSLS     R2,R2,#+5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ORRS     R2,R1,R2
        STR      R2,[R0, #+4]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_TempSensorVrefintCmd:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??ADC_TempSensorVrefintCmd_0
        LDR.N    R1,??DataTable13_2  ;; 0x40012304
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x800000
        LDR.N    R2,??DataTable13_2  ;; 0x40012304
        STR      R1,[R2, #+0]
        B.N      ??ADC_TempSensorVrefintCmd_1
??ADC_TempSensorVrefintCmd_0:
        LDR.N    R1,??DataTable13_2  ;; 0x40012304
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x800000
        LDR.N    R2,??DataTable13_2  ;; 0x40012304
        STR      R1,[R2, #+0]
??ADC_TempSensorVrefintCmd_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_VBATCmd:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??ADC_VBATCmd_0
        LDR.N    R1,??DataTable13_2  ;; 0x40012304
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x400000
        LDR.N    R2,??DataTable13_2  ;; 0x40012304
        STR      R1,[R2, #+0]
        B.N      ??ADC_VBATCmd_1
??ADC_VBATCmd_0:
        LDR.N    R1,??DataTable13_2  ;; 0x40012304
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x400000
        LDR.N    R2,??DataTable13_2  ;; 0x40012304
        STR      R1,[R2, #+0]
??ADC_VBATCmd_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_RegularChannelConfig:
        PUSH     {R4-R7}
        MOVS     R5,#+0
        MOVS     R4,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+10
        BCC.N    ??ADC_RegularChannelConfig_0
        LDR      R6,[R0, #+12]
        MOVS     R5,R6
        MOVS     R6,#+7
        SUBS     R7,R1,#+10
        MOVS     R12,#+3
        MUL      R7,R12,R7
        LSLS     R6,R6,R7
        MOVS     R4,R6
        BICS     R5,R5,R4
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        SUBS     R6,R1,#+10
        MOVS     R7,#+3
        MULS     R6,R7,R6
        LSLS     R6,R3,R6
        MOVS     R4,R6
        ORRS     R5,R4,R5
        STR      R5,[R0, #+12]
        B.N      ??ADC_RegularChannelConfig_1
??ADC_RegularChannelConfig_0:
        LDR      R6,[R0, #+16]
        MOVS     R5,R6
        MOVS     R6,#+7
        MOVS     R7,#+3
        MUL      R7,R7,R1
        LSLS     R6,R6,R7
        MOVS     R4,R6
        BICS     R5,R5,R4
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R6,#+3
        MUL      R6,R6,R1
        LSLS     R6,R3,R6
        MOVS     R4,R6
        ORRS     R5,R4,R5
        STR      R5,[R0, #+16]
??ADC_RegularChannelConfig_1:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+7
        BCS.N    ??ADC_RegularChannelConfig_2
        LDR      R6,[R0, #+52]
        MOVS     R5,R6
        MOVS     R6,#+31
        SUBS     R7,R2,#+1
        MOVS     R12,#+5
        MUL      R7,R12,R7
        LSLS     R6,R6,R7
        MOVS     R4,R6
        BICS     R5,R5,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        SUBS     R6,R2,#+1
        MOVS     R7,#+5
        MULS     R6,R7,R6
        LSLS     R6,R1,R6
        MOVS     R4,R6
        ORRS     R5,R4,R5
        STR      R5,[R0, #+52]
        B.N      ??ADC_RegularChannelConfig_3
??ADC_RegularChannelConfig_2:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+13
        BCS.N    ??ADC_RegularChannelConfig_4
        LDR      R6,[R0, #+48]
        MOVS     R5,R6
        MOVS     R6,#+31
        SUBS     R7,R2,#+7
        MOVS     R12,#+5
        MUL      R7,R12,R7
        LSLS     R6,R6,R7
        MOVS     R4,R6
        BICS     R5,R5,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        SUBS     R6,R2,#+7
        MOVS     R7,#+5
        MULS     R6,R7,R6
        LSLS     R6,R1,R6
        MOVS     R4,R6
        ORRS     R5,R4,R5
        STR      R5,[R0, #+48]
        B.N      ??ADC_RegularChannelConfig_3
??ADC_RegularChannelConfig_4:
        LDR      R6,[R0, #+44]
        MOVS     R5,R6
        MOVS     R6,#+31
        SUBS     R7,R2,#+13
        MOVS     R12,#+5
        MUL      R7,R12,R7
        LSLS     R6,R6,R7
        MOVS     R4,R6
        BICS     R5,R5,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        SUBS     R6,R2,#+13
        MOVS     R7,#+5
        MULS     R6,R7,R6
        LSLS     R6,R1,R6
        MOVS     R4,R6
        ORRS     R5,R4,R5
        STR      R5,[R0, #+44]
??ADC_RegularChannelConfig_3:
        POP      {R4-R7}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_SoftwareStartConv:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.N    R0,??DataTable13_5  ;; 0x40012000
        CMP      R4,R0
        BEQ.N    ??ADC_SoftwareStartConv_0
        LDR.N    R0,??DataTable13_6  ;; 0x40012100
        CMP      R4,R0
        BEQ.N    ??ADC_SoftwareStartConv_0
        LDR.N    R0,??DataTable13_7  ;; 0x40012200
        CMP      R4,R0
        BEQ.N    ??ADC_SoftwareStartConv_0
        MOVW     R2,#+841
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_ADC_ALL_PERIPH(ADCx)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??ADC_SoftwareStartConv_0:
        LDR      R0,[R4, #+8]
        ORRS     R0,R0,#0x40000000
        STR      R0,[R4, #+8]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_GetSoftwareStartConvStatus:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        LDR.N    R0,??DataTable13_5  ;; 0x40012000
        CMP      R4,R0
        BEQ.N    ??ADC_GetSoftwareStartConvStatus_0
        LDR.N    R0,??DataTable13_6  ;; 0x40012100
        CMP      R4,R0
        BEQ.N    ??ADC_GetSoftwareStartConvStatus_0
        LDR.N    R0,??DataTable13_7  ;; 0x40012200
        CMP      R4,R0
        BEQ.N    ??ADC_GetSoftwareStartConvStatus_0
        MOV      R2,#+856
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_ADC_ALL_PERIPH(ADCx)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??ADC_GetSoftwareStartConvStatus_0:
        LDR      R0,[R4, #+8]
        LSLS     R0,R0,#+9
        BPL.N    ??ADC_GetSoftwareStartConvStatus_1
        MOVS     R0,#+1
        MOVS     R5,R0
        B.N      ??ADC_GetSoftwareStartConvStatus_2
??ADC_GetSoftwareStartConvStatus_1:
        MOVS     R0,#+0
        MOVS     R5,R0
??ADC_GetSoftwareStartConvStatus_2:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_EOCOnEachRegularChannelCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable13_5  ;; 0x40012000
        CMP      R4,R0
        BEQ.N    ??ADC_EOCOnEachRegularChannelCmd_0
        LDR.N    R0,??DataTable13_6  ;; 0x40012100
        CMP      R4,R0
        BEQ.N    ??ADC_EOCOnEachRegularChannelCmd_0
        LDR.N    R0,??DataTable13_7  ;; 0x40012200
        CMP      R4,R0
        BEQ.N    ??ADC_EOCOnEachRegularChannelCmd_0
        MOVW     R2,#+885
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_ADC_ALL_PERIPH(ADCx)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??ADC_EOCOnEachRegularChannelCmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??ADC_EOCOnEachRegularChannelCmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??ADC_EOCOnEachRegularChannelCmd_1
        MOVW     R2,#+886
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??ADC_EOCOnEachRegularChannelCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??ADC_EOCOnEachRegularChannelCmd_2
        LDR      R0,[R4, #+8]
        ORRS     R0,R0,#0x400
        STR      R0,[R4, #+8]
        B.N      ??ADC_EOCOnEachRegularChannelCmd_3
??ADC_EOCOnEachRegularChannelCmd_2:
        LDR      R0,[R4, #+8]
        BICS     R0,R0,#0x400
        STR      R0,[R4, #+8]
??ADC_EOCOnEachRegularChannelCmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_ContinuousModeCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable13_5  ;; 0x40012000
        CMP      R4,R0
        BEQ.N    ??ADC_ContinuousModeCmd_0
        LDR.N    R0,??DataTable13_6  ;; 0x40012100
        CMP      R4,R0
        BEQ.N    ??ADC_ContinuousModeCmd_0
        LDR.N    R0,??DataTable13_7  ;; 0x40012200
        CMP      R4,R0
        BEQ.N    ??ADC_ContinuousModeCmd_0
        MOVW     R2,#+910
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_ADC_ALL_PERIPH(ADCx)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??ADC_ContinuousModeCmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??ADC_ContinuousModeCmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??ADC_ContinuousModeCmd_1
        MOVW     R2,#+911
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??ADC_ContinuousModeCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??ADC_ContinuousModeCmd_2
        LDR      R0,[R4, #+8]
        ORRS     R0,R0,#0x2
        STR      R0,[R4, #+8]
        B.N      ??ADC_ContinuousModeCmd_3
??ADC_ContinuousModeCmd_2:
        LDR      R0,[R4, #+8]
        BICS     R0,R0,#0x2
        STR      R0,[R4, #+8]
??ADC_ContinuousModeCmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_DiscModeChannelCountConfig:
        PUSH     {R4}
        MOVS     R2,#+0
        MOVS     R3,#+0
        LDR      R4,[R0, #+4]
        MOVS     R2,R4
        BICS     R2,R2,#0xE000
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        SUBS     R4,R1,#+1
        MOVS     R3,R4
        ORRS     R2,R2,R3, LSL #+13
        STR      R2,[R0, #+4]
        POP      {R4}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_DiscModeCmd:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??ADC_DiscModeCmd_0
        LDR      R2,[R0, #+4]
        ORRS     R2,R2,#0x800
        STR      R2,[R0, #+4]
        B.N      ??ADC_DiscModeCmd_1
??ADC_DiscModeCmd_0:
        LDR      R2,[R0, #+4]
        BICS     R2,R2,#0x800
        STR      R2,[R0, #+4]
??ADC_DiscModeCmd_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_GetConversionValue:
        LDR      R0,[R0, #+76]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_GetMultiModeConversionValue:
        LDR.N    R0,??DataTable13_8  ;; 0x40012308
        LDR      R0,[R0, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_DMACmd:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??ADC_DMACmd_0
        LDR      R2,[R0, #+8]
        MOV      R3,#+256
        ORRS     R2,R3,R2
        STR      R2,[R0, #+8]
        B.N      ??ADC_DMACmd_1
??ADC_DMACmd_0:
        LDR      R2,[R0, #+8]
        BICS     R2,R2,#0x100
        STR      R2,[R0, #+8]
??ADC_DMACmd_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_DMARequestAfterLastTransferCmd:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??ADC_DMARequestAfterLastTransferCmd_0
        LDR      R2,[R0, #+8]
        MOV      R3,#+512
        ORRS     R2,R3,R2
        STR      R2,[R0, #+8]
        B.N      ??ADC_DMARequestAfterLastTransferCmd_1
??ADC_DMARequestAfterLastTransferCmd_0:
        LDR      R2,[R0, #+8]
        BICS     R2,R2,#0x200
        STR      R2,[R0, #+8]
??ADC_DMARequestAfterLastTransferCmd_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_MultiModeDMARequestAfterLastTransferCmd:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??ADC_MultiModeDMARequestAfterLastTransferCmd_0
        LDR.N    R1,??DataTable13_2  ;; 0x40012304
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x2000
        LDR.N    R2,??DataTable13_2  ;; 0x40012304
        STR      R1,[R2, #+0]
        B.N      ??ADC_MultiModeDMARequestAfterLastTransferCmd_1
??ADC_MultiModeDMARequestAfterLastTransferCmd_0:
        LDR.N    R1,??DataTable13_2  ;; 0x40012304
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x2000
        LDR.N    R2,??DataTable13_2  ;; 0x40012304
        STR      R1,[R2, #+0]
??ADC_MultiModeDMARequestAfterLastTransferCmd_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13:
        DC32     0xfcfffeff

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13_1:
        DC32     0xc0fff7fd

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13_2:
        DC32     0x40012304

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13_3:
        DC32     0xfffc30e0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13_4:
        DC32     0xff3ffdff

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13_5:
        DC32     0x40012000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13_6:
        DC32     0x40012100

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13_7:
        DC32     0x40012200

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13_8:
        DC32     0x40012308

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_InjectedChannelConfig:
        PUSH     {R4-R7,LR}
        MOVS     R6,#+0
        MOVS     R4,#+0
        MOVS     R5,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+10
        BCC.N    ??ADC_InjectedChannelConfig_0
        LDR      R7,[R0, #+12]
        MOVS     R6,R7
        MOVS     R7,#+7
        SUBS     R12,R1,#+10
        MOVS     LR,#+3
        MUL      R12,LR,R12
        LSLS     R7,R7,R12
        MOVS     R4,R7
        BICS     R6,R6,R4
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        SUBS     R7,R1,#+10
        MOVS     R12,#+3
        MUL      R7,R12,R7
        LSLS     R7,R3,R7
        MOVS     R4,R7
        ORRS     R6,R4,R6
        STR      R6,[R0, #+12]
        B.N      ??ADC_InjectedChannelConfig_1
??ADC_InjectedChannelConfig_0:
        LDR      R7,[R0, #+16]
        MOVS     R6,R7
        MOVS     R7,#+7
        MOVS     R12,#+3
        MUL      R12,R12,R1
        LSLS     R7,R7,R12
        MOVS     R4,R7
        BICS     R6,R6,R4
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R7,#+3
        MUL      R7,R7,R1
        LSLS     R7,R3,R7
        MOVS     R4,R7
        ORRS     R6,R4,R6
        STR      R6,[R0, #+16]
??ADC_InjectedChannelConfig_1:
        LDR      R7,[R0, #+56]
        MOVS     R6,R7
        UBFX     R7,R6,#+20,#+2
        MOVS     R5,R7
        MOVS     R7,#+31
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADDS     R12,R2,#+3
        SUBS     R12,R12,R5
        SUBS     R12,R12,#+1
        MOVS     LR,#+5
        MUL      R12,LR,R12
        LSLS     R7,R7,R12
        MOVS     R4,R7
        BICS     R6,R6,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADDS     R7,R2,#+3
        SUBS     R7,R7,R5
        SUBS     R7,R7,#+1
        MOVS     R12,#+5
        MUL      R7,R12,R7
        LSLS     R7,R1,R7
        MOVS     R4,R7
        ORRS     R6,R4,R6
        STR      R6,[R0, #+56]
        POP      {R4-R7,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_InjectedSequencerLengthConfig:
        PUSH     {R4}
        MOVS     R2,#+0
        MOVS     R3,#+0
        LDR      R4,[R0, #+56]
        MOVS     R2,R4
        BICS     R2,R2,#0x300000
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        SUBS     R4,R1,#+1
        MOVS     R3,R4
        ORRS     R2,R2,R3, LSL #+20
        STR      R2,[R0, #+56]
        POP      {R4}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_SetInjectedOffset:
        SUB      SP,SP,#+4
        MOVS     R3,#+0
        STR      R3,[SP, #+0]
        STR      R0,[SP, #+0]
        LDR      R3,[SP, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R3,R1,R3
        STR      R3,[SP, #+0]
        LDR      R3,[SP, #+0]
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        STR      R2,[R3, #+0]
        ADD      SP,SP,#+4
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_ExternalTrigInjectedConvConfig:
        MOVS     R2,#+0
        LDR      R3,[R0, #+8]
        MOVS     R2,R3
        BICS     R2,R2,#0xF0000
        ORRS     R2,R1,R2
        STR      R2,[R0, #+8]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_ExternalTrigInjectedConvEdgeConfig:
        MOVS     R2,#+0
        LDR      R3,[R0, #+8]
        MOVS     R2,R3
        BICS     R2,R2,#0x300000
        ORRS     R2,R1,R2
        STR      R2,[R0, #+8]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_SoftwareStartInjectedConv:
        LDR      R1,[R0, #+8]
        ORRS     R1,R1,#0x400000
        STR      R1,[R0, #+8]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_GetSoftwareStartInjectedConvCmdStatus:
        MOVS     R1,R0
        MOVS     R0,#+0
        LDR      R2,[R1, #+8]
        LSLS     R2,R2,#+9
        BPL.N    ??ADC_GetSoftwareStartInjectedConvCmdStatus_0
        MOVS     R2,#+1
        MOVS     R0,R2
        B.N      ??ADC_GetSoftwareStartInjectedConvCmdStatus_1
??ADC_GetSoftwareStartInjectedConvCmdStatus_0:
        MOVS     R2,#+0
        MOVS     R0,R2
??ADC_GetSoftwareStartInjectedConvCmdStatus_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_AutoInjectedConvCmd:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??ADC_AutoInjectedConvCmd_0
        LDR      R2,[R0, #+4]
        ORRS     R2,R2,#0x400
        STR      R2,[R0, #+4]
        B.N      ??ADC_AutoInjectedConvCmd_1
??ADC_AutoInjectedConvCmd_0:
        LDR      R2,[R0, #+4]
        BICS     R2,R2,#0x400
        STR      R2,[R0, #+4]
??ADC_AutoInjectedConvCmd_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_InjectedDiscModeCmd:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??ADC_InjectedDiscModeCmd_0
        LDR      R2,[R0, #+4]
        ORRS     R2,R2,#0x1000
        STR      R2,[R0, #+4]
        B.N      ??ADC_InjectedDiscModeCmd_1
??ADC_InjectedDiscModeCmd_0:
        LDR      R2,[R0, #+4]
        BICS     R2,R2,#0x1000
        STR      R2,[R0, #+4]
??ADC_InjectedDiscModeCmd_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_GetInjectedConversionValue:
        SUB      SP,SP,#+4
        MOVS     R2,R0
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        STR      R2,[SP, #+0]
        LDR      R0,[SP, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R3,R1,#+40
        ADDS     R0,R3,R0
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        LDR      R0,[R0, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        ADD      SP,SP,#+4
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_ITConfig:
        PUSH     {R4}
        MOVS     R3,#+0
        MOVS     R4,R1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R3,R4
        MOVS     R4,#+1
        LSLS     R3,R4,R3
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??ADC_ITConfig_0
        LDR      R4,[R0, #+4]
        ORRS     R4,R3,R4
        STR      R4,[R0, #+4]
        B.N      ??ADC_ITConfig_1
??ADC_ITConfig_0:
        LDR      R4,[R0, #+4]
        BICS     R4,R4,R3
        STR      R4,[R0, #+4]
??ADC_ITConfig_1:
        POP      {R4}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_GetFlagStatus:
        MOVS     R2,R0
        MOVS     R0,#+0
        LDR      R3,[R2, #+0]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        TST      R3,R1
        BEQ.N    ??ADC_GetFlagStatus_0
        MOVS     R3,#+1
        MOVS     R0,R3
        B.N      ??ADC_GetFlagStatus_1
??ADC_GetFlagStatus_0:
        MOVS     R3,#+0
        MOVS     R0,R3
??ADC_GetFlagStatus_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_ClearFlag:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MVNS     R2,R1
        STR      R2,[R0, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_GetITStatus:
        PUSH     {R4-R6}
        MOVS     R2,R0
        MOVS     R0,#+0
        MOVS     R3,#+0
        MOVS     R4,#+0
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LSRS     R5,R1,#+8
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        MOVS     R3,R5
        LDR      R5,[R2, #+4]
        MOVS     R6,#+1
        LSLS     R6,R6,R1
        ANDS     R5,R6,R5
        MOVS     R4,R5
        LDR      R5,[R2, #+0]
        TST      R5,R3
        BEQ.N    ??ADC_GetITStatus_0
        CMP      R4,#+0
        BEQ.N    ??ADC_GetITStatus_0
        MOVS     R5,#+1
        MOVS     R0,R5
        B.N      ??ADC_GetITStatus_1
??ADC_GetITStatus_0:
        MOVS     R5,#+0
        MOVS     R0,R5
??ADC_GetITStatus_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_ClearITPendingBit:
        MOVS     R2,#+0
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LSRS     R3,R1,#+8
        MOVS     R2,R3
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MVNS     R3,R2
        STR      R3,[R0, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_ADC_ALL_PERIPH(ADCx)">`:
        ; Initializer data, 24 bytes
        DC8 73, 83, 95, 65, 68, 67, 95, 65, 76, 76
        DC8 95, 80, 69, 82, 73, 80, 72, 40, 65, 68
        DC8 67, 120, 41, 0

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
        DC8 116, 109, 51, 50, 102, 50, 120, 120, 95, 97
        DC8 100, 99, 46, 99, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_FUNCTIONAL_STATE(N...">`:
        ; Initializer data, 32 bytes
        DC8 73, 83, 95, 70, 85, 78, 67, 84, 73, 79
        DC8 78, 65, 76, 95, 83, 84, 65, 84, 69, 40
        DC8 78, 101, 119, 83, 116, 97, 116, 101, 41, 0
        DC8 0, 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)

        END
// 
// 1 848 bytes in section .text
// 
// 1 848 bytes of CODE memory
//
//Errors: none
//Warnings: none
