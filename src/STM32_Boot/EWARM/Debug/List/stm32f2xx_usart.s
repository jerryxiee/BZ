///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.10.2.52244/W32 for ARM    04/Dec/2013  10:58:15 /
// Copyright 1999-2010 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\STM32F2xx_StdPeriph_Driver\src\stm32f /
//                    2xx_usart.c                                             /
//    Command line =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\STM32F2xx_StdPeriph_Driver\src\stm32f /
//                    2xx_usart.c -D STM32F10X_CL -D USE_STDPERIPH_DRIVER     /
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
//                    IAR6.1\STM32_Boot\EWARM\Debug\List\stm32f2xx_usart.s    /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f2xx_usart

        EXTERN RCC_APB1PeriphResetCmd
        EXTERN RCC_APB2PeriphResetCmd
        EXTERN RCC_GetClocksFreq
        EXTERN __aeabi_assert
        EXTERN __iar_EmptyStepPoint

        PUBLIC USART_ClearFlag
        PUBLIC USART_ClearITPendingBit
        PUBLIC USART_ClockInit
        PUBLIC USART_ClockStructInit
        PUBLIC USART_Cmd
        PUBLIC USART_DMACmd
        PUBLIC USART_DeInit
        PUBLIC USART_GetFlagStatus
        PUBLIC USART_GetITStatus
        PUBLIC USART_HalfDuplexCmd
        PUBLIC USART_ITConfig
        PUBLIC USART_Init
        PUBLIC USART_IrDACmd
        PUBLIC USART_IrDAConfig
        PUBLIC USART_LINBreakDetectLengthConfig
        PUBLIC USART_LINCmd
        PUBLIC USART_OneBitMethodCmd
        PUBLIC USART_OverSampling8Cmd
        PUBLIC USART_ReceiveData
        PUBLIC USART_ReceiverWakeUpCmd
        PUBLIC USART_SendBreak
        PUBLIC USART_SendData
        PUBLIC USART_SetAddress
        PUBLIC USART_SetGuardTime
        PUBLIC USART_SetPrescaler
        PUBLIC USART_SmartCardCmd
        PUBLIC USART_SmartCardNACKCmd
        PUBLIC USART_StructInit
        PUBLIC USART_WakeUpConfig


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_DeInit:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.W    R0,??DataTable39  ;; 0x40011000
        CMP      R4,R0
        BEQ.N    ??USART_DeInit_0
        LDR.W    R0,??DataTable39_1  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_DeInit_0
        LDR.W    R0,??DataTable39_2  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_DeInit_0
        LDR.W    R0,??DataTable39_3  ;; 0x40004c00
        CMP      R4,R0
        BEQ.N    ??USART_DeInit_0
        LDR.W    R0,??DataTable39_4  ;; 0x40005000
        CMP      R4,R0
        BEQ.N    ??USART_DeInit_0
        LDR.W    R0,??DataTable45  ;; 0x40011400
        CMP      R4,R0
        BEQ.N    ??USART_DeInit_0
        MOVS     R2,#+181
        LDR.W    R1,??DataTable39_5
        LDR.W    R0,??DataTable39_6
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_DeInit_0:
        LDR.W    R0,??DataTable39  ;; 0x40011000
        CMP      R4,R0
        BNE.N    ??USART_DeInit_1
        MOVS     R1,#+1
        MOVS     R0,#+16
        BL       RCC_APB2PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+16
        BL       RCC_APB2PeriphResetCmd
        B.N      ??USART_DeInit_2
??USART_DeInit_1:
        LDR.W    R0,??DataTable39_1  ;; 0x40004400
        CMP      R4,R0
        BNE.N    ??USART_DeInit_3
        MOVS     R1,#+1
        MOVS     R0,#+131072
        BL       RCC_APB1PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+131072
        BL       RCC_APB1PeriphResetCmd
        B.N      ??USART_DeInit_2
??USART_DeInit_3:
        LDR.W    R0,??DataTable39_2  ;; 0x40004800
        CMP      R4,R0
        BNE.N    ??USART_DeInit_4
        MOVS     R1,#+1
        MOVS     R0,#+262144
        BL       RCC_APB1PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+262144
        BL       RCC_APB1PeriphResetCmd
        B.N      ??USART_DeInit_2
??USART_DeInit_4:
        LDR.W    R0,??DataTable39_3  ;; 0x40004c00
        CMP      R4,R0
        BNE.N    ??USART_DeInit_5
        MOVS     R1,#+1
        MOVS     R0,#+524288
        BL       RCC_APB1PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+524288
        BL       RCC_APB1PeriphResetCmd
        B.N      ??USART_DeInit_2
??USART_DeInit_5:
        LDR.W    R0,??DataTable39_4  ;; 0x40005000
        CMP      R4,R0
        BNE.N    ??USART_DeInit_6
        MOVS     R1,#+1
        MOVS     R0,#+1048576
        BL       RCC_APB1PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+1048576
        BL       RCC_APB1PeriphResetCmd
        B.N      ??USART_DeInit_2
??USART_DeInit_6:
        LDR.W    R0,??DataTable45  ;; 0x40011400
        CMP      R4,R0
        BNE.N    ??USART_DeInit_2
        MOVS     R1,#+1
        MOVS     R0,#+32
        BL       RCC_APB2PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+32
        BL       RCC_APB2PeriphResetCmd
??USART_DeInit_2:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_Init:
        PUSH     {R4-R9,LR}
        SUB      SP,SP,#+20
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        MOVS     R7,#+0
        MOVS     R8,#+0
        MOVS     R9,#+0
        LDR.W    R0,??DataTable39  ;; 0x40011000
        CMP      R4,R0
        BEQ.N    ??USART_Init_0
        LDR.W    R0,??DataTable39_1  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_Init_0
        LDR.W    R0,??DataTable39_2  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_Init_0
        LDR.W    R0,??DataTable39_3  ;; 0x40004c00
        CMP      R4,R0
        BEQ.N    ??USART_Init_0
        LDR.W    R0,??DataTable39_4  ;; 0x40005000
        CMP      R4,R0
        BEQ.N    ??USART_Init_0
        LDR.W    R0,??DataTable45  ;; 0x40011400
        CMP      R4,R0
        BEQ.N    ??USART_Init_0
        MOVS     R2,#+235
        LDR.W    R1,??DataTable39_5
        LDR.W    R0,??DataTable39_6
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_Init_0:
        LDR      R0,[R5, #+0]
        CMP      R0,#+0
        BEQ.N    ??USART_Init_1
        LDR      R0,[R5, #+0]
        LDR.W    R1,??DataTable42  ;; 0x7270e1
        CMP      R0,R1
        BCC.N    ??USART_Init_2
??USART_Init_1:
        MOVS     R2,#+236
        LDR.W    R1,??DataTable39_5
        LDR.W    R0,??DataTable42_1
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_Init_2:
        LDRH     R0,[R5, #+4]
        CMP      R0,#+0
        BEQ.N    ??USART_Init_3
        LDRH     R0,[R5, #+4]
        CMP      R0,#+4096
        BEQ.N    ??USART_Init_3
        MOVS     R2,#+237
        LDR.W    R1,??DataTable39_5
        LDR.W    R0,??DataTable42_2
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_Init_3:
        LDRH     R0,[R5, #+6]
        CMP      R0,#+0
        BEQ.N    ??USART_Init_4
        LDRH     R0,[R5, #+6]
        CMP      R0,#+4096
        BEQ.N    ??USART_Init_4
        LDRH     R0,[R5, #+6]
        CMP      R0,#+8192
        BEQ.N    ??USART_Init_4
        LDRH     R0,[R5, #+6]
        CMP      R0,#+12288
        BEQ.N    ??USART_Init_4
        MOVS     R2,#+238
        LDR.W    R1,??DataTable39_5
        LDR.W    R0,??DataTable42_3
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_Init_4:
        LDRH     R0,[R5, #+8]
        CMP      R0,#+0
        BEQ.N    ??USART_Init_5
        LDRH     R0,[R5, #+8]
        CMP      R0,#+1024
        BEQ.N    ??USART_Init_5
        LDRH     R0,[R5, #+8]
        CMP      R0,#+1536
        BEQ.N    ??USART_Init_5
        MOVS     R2,#+239
        LDR.W    R1,??DataTable39_5
        LDR.W    R0,??DataTable43
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_Init_5:
        LDRH     R0,[R5, #+10]
        MOVW     R1,#+65523
        TST      R0,R1
        BNE.N    ??USART_Init_6
        LDRH     R0,[R5, #+10]
        CMP      R0,#+0
        BNE.N    ??USART_Init_7
??USART_Init_6:
        MOVS     R2,#+240
        LDR.W    R1,??DataTable39_5
        LDR.W    R0,??DataTable43_1
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_Init_7:
        LDRH     R0,[R5, #+12]
        CMP      R0,#+0
        BEQ.N    ??USART_Init_8
        LDRH     R0,[R5, #+12]
        MOV      R1,#+256
        CMP      R0,R1
        BEQ.N    ??USART_Init_8
        LDRH     R0,[R5, #+12]
        MOV      R1,#+512
        CMP      R0,R1
        BEQ.N    ??USART_Init_8
        LDRH     R0,[R5, #+12]
        MOV      R1,#+768
        CMP      R0,R1
        BEQ.N    ??USART_Init_8
        MOVS     R2,#+241
        LDR.W    R1,??DataTable39_5
        LDR.W    R0,??DataTable43_2
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_Init_8:
        LDRH     R0,[R5, #+12]
        CMP      R0,#+0
        BEQ.N    ??USART_Init_9
        LDR.W    R0,??DataTable39  ;; 0x40011000
        CMP      R4,R0
        BEQ.N    ??USART_Init_9
        LDR.W    R0,??DataTable39_1  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_Init_9
        LDR.W    R0,??DataTable39_2  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_Init_9
        LDR.W    R0,??DataTable45  ;; 0x40011400
        CMP      R4,R0
        BEQ.N    ??USART_Init_9
        MOVS     R2,#+246
        LDR.W    R1,??DataTable39_5
        LDR.W    R0,??DataTable44
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_Init_9:
        LDRH     R0,[R4, #+16]
        MOVS     R6,R0
        BICS     R6,R6,#0x3000
        LDRH     R0,[R5, #+6]
        ORRS     R6,R0,R6
        STRH     R6,[R4, #+16]
        LDRH     R0,[R4, #+12]
        MOVS     R6,R0
        LDR.W    R0,??DataTable44_1  ;; 0xffffe9f3
        ANDS     R6,R0,R6
        LDRH     R0,[R5, #+4]
        LDRH     R1,[R5, #+8]
        ORRS     R0,R1,R0
        LDRH     R1,[R5, #+10]
        ORRS     R0,R1,R0
        ORRS     R6,R0,R6
        STRH     R6,[R4, #+12]
        LDRH     R0,[R4, #+20]
        MOVS     R6,R0
        BICS     R6,R6,#0x300
        LDRH     R0,[R5, #+12]
        ORRS     R6,R0,R6
        STRH     R6,[R4, #+20]
        ADD      R0,SP,#+0
        BL       RCC_GetClocksFreq
        LDR.W    R0,??DataTable39  ;; 0x40011000
        CMP      R4,R0
        BEQ.N    ??USART_Init_10
        LDR.W    R0,??DataTable45  ;; 0x40011400
        CMP      R4,R0
        BNE.N    ??USART_Init_11
??USART_Init_10:
        LDR      R0,[SP, #+12]
        MOVS     R7,R0
        B.N      ??USART_Init_12
??USART_Init_11:
        LDR      R0,[SP, #+8]
        MOVS     R7,R0
??USART_Init_12:
        LDRH     R0,[R4, #+12]
        LSLS     R0,R0,#+16
        BPL.N    ??USART_Init_13
        MOVS     R0,#+25
        MUL      R0,R0,R7
        LDR      R1,[R5, #+0]
        LSLS     R1,R1,#+1
        UDIV     R0,R0,R1
        MOV      R8,R0
        B.N      ??USART_Init_14
??USART_Init_13:
        MOVS     R0,#+25
        MUL      R0,R0,R7
        LDR      R1,[R5, #+0]
        LSLS     R1,R1,#+2
        UDIV     R0,R0,R1
        MOV      R8,R0
??USART_Init_14:
        MOVS     R0,#+100
        UDIV     R0,R8,R0
        LSLS     R0,R0,#+4
        MOVS     R6,R0
        LSRS     R0,R6,#+4
        MOVS     R1,#+100
        MLS      R0,R1,R0,R8
        MOV      R9,R0
        LDRH     R0,[R4, #+12]
        LSLS     R0,R0,#+16
        BPL.N    ??USART_Init_15
        LSLS     R0,R9,#+3
        ADDS     R0,R0,#+50
        MOVS     R1,#+100
        UDIV     R0,R0,R1
        ANDS     R0,R0,#0x7
        ORRS     R6,R0,R6
        B.N      ??USART_Init_16
??USART_Init_15:
        LSLS     R0,R9,#+4
        ADDS     R0,R0,#+50
        MOVS     R1,#+100
        UDIV     R0,R0,R1
        ANDS     R0,R0,#0xF
        ORRS     R6,R0,R6
??USART_Init_16:
        STRH     R6,[R4, #+8]
        ADD      SP,SP,#+20
        POP      {R4-R9,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_StructInit:
        MOV      R1,#+9600
        STR      R1,[R0, #+0]
        MOVS     R1,#+0
        STRH     R1,[R0, #+4]
        MOVS     R1,#+0
        STRH     R1,[R0, #+6]
        MOVS     R1,#+0
        STRH     R1,[R0, #+8]
        MOVS     R1,#+12
        STRH     R1,[R0, #+10]
        MOVS     R1,#+0
        STRH     R1,[R0, #+12]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_ClockInit:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.W    R0,??DataTable39  ;; 0x40011000
        CMP      R4,R0
        BEQ.N    ??USART_ClockInit_0
        LDR.W    R0,??DataTable39_1  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_ClockInit_0
        LDR.W    R0,??DataTable39_2  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_ClockInit_0
        LDR.W    R0,??DataTable45  ;; 0x40011400
        CMP      R4,R0
        BEQ.N    ??USART_ClockInit_0
        MOV      R2,#+364
        LDR.W    R1,??DataTable39_5
        LDR.W    R0,??DataTable44
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_ClockInit_0:
        LDRH     R0,[R5, #+0]
        CMP      R0,#+0
        BEQ.N    ??USART_ClockInit_1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+2048
        BEQ.N    ??USART_ClockInit_1
        MOVW     R2,#+365
        LDR.W    R1,??DataTable39_5
        LDR.W    R0,??DataTable46
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_ClockInit_1:
        LDRH     R0,[R5, #+2]
        CMP      R0,#+0
        BEQ.N    ??USART_ClockInit_2
        LDRH     R0,[R5, #+2]
        CMP      R0,#+1024
        BEQ.N    ??USART_ClockInit_2
        MOV      R2,#+366
        LDR.W    R1,??DataTable39_5
        LDR.W    R0,??DataTable46_1
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_ClockInit_2:
        LDRH     R0,[R5, #+4]
        CMP      R0,#+0
        BEQ.N    ??USART_ClockInit_3
        LDRH     R0,[R5, #+4]
        MOV      R1,#+512
        CMP      R0,R1
        BEQ.N    ??USART_ClockInit_3
        MOVW     R2,#+367
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable46_2
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_ClockInit_3:
        LDRH     R0,[R5, #+6]
        CMP      R0,#+0
        BEQ.N    ??USART_ClockInit_4
        LDRH     R0,[R5, #+6]
        MOV      R1,#+256
        CMP      R0,R1
        BEQ.N    ??USART_ClockInit_4
        MOV      R2,#+368
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable47
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_ClockInit_4:
        LDRH     R0,[R4, #+16]
        MOVS     R6,R0
        BICS     R6,R6,#0xF00
        LDRH     R0,[R5, #+0]
        LDRH     R1,[R5, #+2]
        ORRS     R0,R1,R0
        LDRH     R1,[R5, #+4]
        ORRS     R0,R1,R0
        LDRH     R1,[R5, #+6]
        ORRS     R0,R1,R0
        ORRS     R6,R0,R6
        STRH     R6,[R4, #+16]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_ClockStructInit:
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
USART_Cmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable39  ;; 0x40011000
        CMP      R4,R0
        BEQ.N    ??USART_Cmd_0
        LDR.W    R0,??DataTable39_1  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_Cmd_0
        LDR.W    R0,??DataTable39_2  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_Cmd_0
        LDR.W    R0,??DataTable39_3  ;; 0x40004c00
        CMP      R4,R0
        BEQ.N    ??USART_Cmd_0
        LDR.W    R0,??DataTable39_4  ;; 0x40005000
        CMP      R4,R0
        BEQ.N    ??USART_Cmd_0
        LDR.W    R0,??DataTable45  ;; 0x40011400
        CMP      R4,R0
        BEQ.N    ??USART_Cmd_0
        MOVW     R2,#+411
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_USART_ALL_PERIPH(U...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_Cmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??USART_Cmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??USART_Cmd_1
        MOV      R2,#+412
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable47_1
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_Cmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??USART_Cmd_2
        LDRH     R0,[R4, #+12]
        ORRS     R0,R0,#0x2000
        STRH     R0,[R4, #+12]
        B.N      ??USART_Cmd_3
??USART_Cmd_2:
        LDRH     R0,[R4, #+12]
        MOVW     R1,#+57343
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+12]
??USART_Cmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_SetPrescaler:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable39  ;; 0x40011000
        CMP      R4,R0
        BEQ.N    ??USART_SetPrescaler_0
        LDR.W    R0,??DataTable39_1  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_SetPrescaler_0
        LDR.W    R0,??DataTable39_2  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_SetPrescaler_0
        LDR.W    R0,??DataTable39_3  ;; 0x40004c00
        CMP      R4,R0
        BEQ.N    ??USART_SetPrescaler_0
        LDR.W    R0,??DataTable39_4  ;; 0x40005000
        CMP      R4,R0
        BEQ.N    ??USART_SetPrescaler_0
        LDR.W    R0,??DataTable45  ;; 0x40011400
        CMP      R4,R0
        BEQ.N    ??USART_SetPrescaler_0
        MOVW     R2,#+437
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_USART_ALL_PERIPH(U...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_SetPrescaler_0:
        LDRH     R0,[R4, #+24]
        ANDS     R0,R0,#0xFF00
        STRH     R0,[R4, #+24]
        LDRH     R0,[R4, #+24]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ORRS     R0,R5,R0
        STRH     R0,[R4, #+24]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_OverSampling8Cmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable39  ;; 0x40011000
        CMP      R4,R0
        BEQ.N    ??USART_OverSampling8Cmd_0
        LDR.W    R0,??DataTable39_1  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_OverSampling8Cmd_0
        LDR.W    R0,??DataTable39_2  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_OverSampling8Cmd_0
        LDR.W    R0,??DataTable39_3  ;; 0x40004c00
        CMP      R4,R0
        BEQ.N    ??USART_OverSampling8Cmd_0
        LDR.W    R0,??DataTable39_4  ;; 0x40005000
        CMP      R4,R0
        BEQ.N    ??USART_OverSampling8Cmd_0
        LDR.W    R0,??DataTable45  ;; 0x40011400
        CMP      R4,R0
        BEQ.N    ??USART_OverSampling8Cmd_0
        MOV      R2,#+458
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_USART_ALL_PERIPH(U...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_OverSampling8Cmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??USART_OverSampling8Cmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??USART_OverSampling8Cmd_1
        MOVW     R2,#+459
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable47_1
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_OverSampling8Cmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??USART_OverSampling8Cmd_2
        LDRH     R0,[R4, #+12]
        ORRS     R0,R0,#0x8000
        STRH     R0,[R4, #+12]
        B.N      ??USART_OverSampling8Cmd_3
??USART_OverSampling8Cmd_2:
        LDRH     R0,[R4, #+12]
        LSLS     R0,R0,#+17
        LSRS     R0,R0,#+17
        STRH     R0,[R4, #+12]
??USART_OverSampling8Cmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_OneBitMethodCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable39  ;; 0x40011000
        CMP      R4,R0
        BEQ.N    ??USART_OneBitMethodCmd_0
        LDR.W    R0,??DataTable39_1  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_OneBitMethodCmd_0
        LDR.W    R0,??DataTable39_2  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_OneBitMethodCmd_0
        LDR.W    R0,??DataTable39_3  ;; 0x40004c00
        CMP      R4,R0
        BEQ.N    ??USART_OneBitMethodCmd_0
        LDR.W    R0,??DataTable39_4  ;; 0x40005000
        CMP      R4,R0
        BEQ.N    ??USART_OneBitMethodCmd_0
        LDR.W    R0,??DataTable45  ;; 0x40011400
        CMP      R4,R0
        BEQ.N    ??USART_OneBitMethodCmd_0
        MOV      R2,#+484
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_USART_ALL_PERIPH(U...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_OneBitMethodCmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??USART_OneBitMethodCmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??USART_OneBitMethodCmd_1
        MOVW     R2,#+485
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable47_1
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_OneBitMethodCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??USART_OneBitMethodCmd_2
        LDRH     R0,[R4, #+20]
        ORRS     R0,R0,#0x800
        STRH     R0,[R4, #+20]
        B.N      ??USART_OneBitMethodCmd_3
??USART_OneBitMethodCmd_2:
        LDRH     R0,[R4, #+20]
        MOVW     R1,#+63487
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+20]
??USART_OneBitMethodCmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_SendData:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable39  ;; 0x40011000
        CMP      R4,R0
        BEQ.N    ??USART_SendData_0
        LDR.W    R0,??DataTable39_1  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_SendData_0
        LDR.W    R0,??DataTable39_2  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_SendData_0
        LDR.W    R0,??DataTable39_3  ;; 0x40004c00
        CMP      R4,R0
        BEQ.N    ??USART_SendData_0
        LDR.W    R0,??DataTable39_4  ;; 0x40005000
        CMP      R4,R0
        BEQ.N    ??USART_SendData_0
        LDR.W    R0,??DataTable45  ;; 0x40011400
        CMP      R4,R0
        BEQ.N    ??USART_SendData_0
        MOVW     R2,#+541
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_USART_ALL_PERIPH(U...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_SendData_0:
        MOV      R0,#+512
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BCC.N    ??USART_SendData_1
        MOVW     R2,#+542
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable49
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_SendData_1:
        LSLS     R0,R5,#+23
        LSRS     R0,R0,#+23
        STRH     R0,[R4, #+4]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_ReceiveData:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.N    R0,??DataTable39  ;; 0x40011000
        CMP      R4,R0
        BEQ.N    ??USART_ReceiveData_0
        LDR.N    R0,??DataTable39_1  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_ReceiveData_0
        LDR.N    R0,??DataTable39_2  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_ReceiveData_0
        LDR.N    R0,??DataTable39_3  ;; 0x40004c00
        CMP      R4,R0
        BEQ.N    ??USART_ReceiveData_0
        LDR.N    R0,??DataTable39_4  ;; 0x40005000
        CMP      R4,R0
        BEQ.N    ??USART_ReceiveData_0
        LDR.W    R0,??DataTable45  ;; 0x40011400
        CMP      R4,R0
        BEQ.N    ??USART_ReceiveData_0
        MOVW     R2,#+557
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_USART_ALL_PERIPH(U...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_ReceiveData_0:
        LDRH     R0,[R4, #+4]
        LSLS     R0,R0,#+23
        LSRS     R0,R0,#+23
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_SetAddress:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable39  ;; 0x40011000
        CMP      R4,R0
        BEQ.N    ??USART_SetAddress_0
        LDR.N    R0,??DataTable39_1  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_SetAddress_0
        LDR.N    R0,??DataTable39_2  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_SetAddress_0
        LDR.N    R0,??DataTable39_3  ;; 0x40004c00
        CMP      R4,R0
        BEQ.N    ??USART_SetAddress_0
        LDR.N    R0,??DataTable39_4  ;; 0x40005000
        CMP      R4,R0
        BEQ.N    ??USART_SetAddress_0
        LDR.W    R0,??DataTable45  ;; 0x40011400
        CMP      R4,R0
        BEQ.N    ??USART_SetAddress_0
        MOV      R2,#+608
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_USART_ALL_PERIPH(U...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_SetAddress_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+16
        BCC.N    ??USART_SetAddress_1
        MOVW     R2,#+609
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable49_1
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_SetAddress_1:
        LDRH     R0,[R4, #+16]
        MOVW     R1,#+65520
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+16]
        LDRH     R0,[R4, #+16]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ORRS     R0,R5,R0
        STRH     R0,[R4, #+16]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_ReceiverWakeUpCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable39  ;; 0x40011000
        CMP      R4,R0
        BEQ.N    ??USART_ReceiverWakeUpCmd_0
        LDR.N    R0,??DataTable39_1  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_ReceiverWakeUpCmd_0
        LDR.N    R0,??DataTable39_2  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_ReceiverWakeUpCmd_0
        LDR.N    R0,??DataTable39_3  ;; 0x40004c00
        CMP      R4,R0
        BEQ.N    ??USART_ReceiverWakeUpCmd_0
        LDR.N    R0,??DataTable39_4  ;; 0x40005000
        CMP      R4,R0
        BEQ.N    ??USART_ReceiverWakeUpCmd_0
        LDR.W    R0,??DataTable45  ;; 0x40011400
        CMP      R4,R0
        BEQ.N    ??USART_ReceiverWakeUpCmd_0
        MOV      R2,#+628
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_USART_ALL_PERIPH(U...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_ReceiverWakeUpCmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??USART_ReceiverWakeUpCmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??USART_ReceiverWakeUpCmd_1
        MOVW     R2,#+629
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable47_1
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_ReceiverWakeUpCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??USART_ReceiverWakeUpCmd_2
        LDRH     R0,[R4, #+12]
        ORRS     R0,R0,#0x2
        STRH     R0,[R4, #+12]
        B.N      ??USART_ReceiverWakeUpCmd_3
??USART_ReceiverWakeUpCmd_2:
        LDRH     R0,[R4, #+12]
        MOVW     R1,#+65533
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+12]
??USART_ReceiverWakeUpCmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_WakeUpConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable39  ;; 0x40011000
        CMP      R4,R0
        BEQ.N    ??USART_WakeUpConfig_0
        LDR.N    R0,??DataTable39_1  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_WakeUpConfig_0
        LDR.N    R0,??DataTable39_2  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_WakeUpConfig_0
        LDR.N    R0,??DataTable39_3  ;; 0x40004c00
        CMP      R4,R0
        BEQ.N    ??USART_WakeUpConfig_0
        LDR.N    R0,??DataTable39_4  ;; 0x40005000
        CMP      R4,R0
        BEQ.N    ??USART_WakeUpConfig_0
        LDR.W    R0,??DataTable45  ;; 0x40011400
        CMP      R4,R0
        BEQ.N    ??USART_WakeUpConfig_0
        MOVW     R2,#+655
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_USART_ALL_PERIPH(U...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_WakeUpConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??USART_WakeUpConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2048
        BEQ.N    ??USART_WakeUpConfig_1
        MOV      R2,#+656
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable50
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_WakeUpConfig_1:
        LDRH     R0,[R4, #+12]
        MOVW     R1,#+63487
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+12]
        LDRH     R0,[R4, #+12]
        ORRS     R0,R5,R0
        STRH     R0,[R4, #+12]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_LINBreakDetectLengthConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable39  ;; 0x40011000
        CMP      R4,R0
        BEQ.N    ??USART_LINBreakDetectLengthConfig_0
        LDR.N    R0,??DataTable39_1  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_LINBreakDetectLengthConfig_0
        LDR.N    R0,??DataTable39_2  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_LINBreakDetectLengthConfig_0
        LDR.N    R0,??DataTable39_3  ;; 0x40004c00
        CMP      R4,R0
        BEQ.N    ??USART_LINBreakDetectLengthConfig_0
        LDR.N    R0,??DataTable39_4  ;; 0x40005000
        CMP      R4,R0
        BEQ.N    ??USART_LINBreakDetectLengthConfig_0
        LDR.W    R0,??DataTable45  ;; 0x40011400
        CMP      R4,R0
        BEQ.N    ??USART_LINBreakDetectLengthConfig_0
        MOV      R2,#+724
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_USART_ALL_PERIPH(U...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_LINBreakDetectLengthConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??USART_LINBreakDetectLengthConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+32
        BEQ.N    ??USART_LINBreakDetectLengthConfig_1
        MOVW     R2,#+725
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable50_1
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_LINBreakDetectLengthConfig_1:
        LDRH     R0,[R4, #+16]
        MOVW     R1,#+65503
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+16]
        LDRH     R0,[R4, #+16]
        ORRS     R0,R5,R0
        STRH     R0,[R4, #+16]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_LINCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable39  ;; 0x40011000
        CMP      R4,R0
        BEQ.N    ??USART_LINCmd_0
        LDR.N    R0,??DataTable39_1  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_LINCmd_0
        LDR.N    R0,??DataTable39_2  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_LINCmd_0
        LDR.N    R0,??DataTable39_3  ;; 0x40004c00
        CMP      R4,R0
        BEQ.N    ??USART_LINCmd_0
        LDR.N    R0,??DataTable39_4  ;; 0x40005000
        CMP      R4,R0
        BEQ.N    ??USART_LINCmd_0
        LDR.W    R0,??DataTable45  ;; 0x40011400
        CMP      R4,R0
        BEQ.N    ??USART_LINCmd_0
        MOVW     R2,#+742
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_USART_ALL_PERIPH(U...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_LINCmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??USART_LINCmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??USART_LINCmd_1
        MOVW     R2,#+743
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_LINCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??USART_LINCmd_2
        LDRH     R0,[R4, #+16]
        ORRS     R0,R0,#0x4000
        STRH     R0,[R4, #+16]
        B.N      ??USART_LINCmd_3
??USART_LINCmd_2:
        LDRH     R0,[R4, #+16]
        MOVW     R1,#+49151
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+16]
??USART_LINCmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_SendBreak:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.N    R0,??DataTable39  ;; 0x40011000
        CMP      R4,R0
        BEQ.N    ??USART_SendBreak_0
        LDR.N    R0,??DataTable39_1  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_SendBreak_0
        LDR.N    R0,??DataTable39_2  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_SendBreak_0
        LDR.N    R0,??DataTable39_3  ;; 0x40004c00
        CMP      R4,R0
        BEQ.N    ??USART_SendBreak_0
        LDR.N    R0,??DataTable39_4  ;; 0x40005000
        CMP      R4,R0
        BEQ.N    ??USART_SendBreak_0
        LDR.N    R0,??DataTable45  ;; 0x40011400
        CMP      R4,R0
        BEQ.N    ??USART_SendBreak_0
        MOVW     R2,#+766
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_USART_ALL_PERIPH(U...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_SendBreak_0:
        LDRH     R0,[R4, #+12]
        ORRS     R0,R0,#0x1
        STRH     R0,[R4, #+12]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable39:
        DC32     0x40011000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable39_1:
        DC32     0x40004400

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable39_2:
        DC32     0x40004800

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable39_3:
        DC32     0x40004c00

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable39_4:
        DC32     0x40005000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable39_5:
        DC32     `?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable39_6:
        DC32     `?<Constant "IS_USART_ALL_PERIPH(U...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_HalfDuplexCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable50_2  ;; 0x40011000
        CMP      R4,R0
        BEQ.N    ??USART_HalfDuplexCmd_0
        LDR.W    R0,??DataTable50_3  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_HalfDuplexCmd_0
        LDR.W    R0,??DataTable50_4  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_HalfDuplexCmd_0
        LDR.W    R0,??DataTable50_5  ;; 0x40004c00
        CMP      R4,R0
        BEQ.N    ??USART_HalfDuplexCmd_0
        LDR.W    R0,??DataTable50_6  ;; 0x40005000
        CMP      R4,R0
        BEQ.N    ??USART_HalfDuplexCmd_0
        LDR.N    R0,??DataTable45  ;; 0x40011400
        CMP      R4,R0
        BEQ.N    ??USART_HalfDuplexCmd_0
        MOVW     R2,#+819
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_USART_ALL_PERIPH(U...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_HalfDuplexCmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??USART_HalfDuplexCmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??USART_HalfDuplexCmd_1
        MOV      R2,#+820
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_HalfDuplexCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??USART_HalfDuplexCmd_2
        LDRH     R0,[R4, #+20]
        ORRS     R0,R0,#0x8
        STRH     R0,[R4, #+20]
        B.N      ??USART_HalfDuplexCmd_3
??USART_HalfDuplexCmd_2:
        LDRH     R0,[R4, #+20]
        MOVW     R1,#+65527
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+20]
??USART_HalfDuplexCmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_SetGuardTime:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable50_2  ;; 0x40011000
        CMP      R4,R0
        BEQ.N    ??USART_SetGuardTime_0
        LDR.W    R0,??DataTable50_3  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_SetGuardTime_0
        LDR.W    R0,??DataTable50_4  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_SetGuardTime_0
        LDR.N    R0,??DataTable45  ;; 0x40011400
        CMP      R4,R0
        BEQ.N    ??USART_SetGuardTime_0
        MOV      R2,#+904
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_USART_1236_PERIPH(...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_SetGuardTime_0:
        LDRH     R0,[R4, #+24]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STRH     R0,[R4, #+24]
        LDRH     R0,[R4, #+24]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ORRS     R0,R0,R5, LSL #+8
        STRH     R0,[R4, #+24]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_SmartCardCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable50_2  ;; 0x40011000
        CMP      R4,R0
        BEQ.N    ??USART_SmartCardCmd_0
        LDR.W    R0,??DataTable50_3  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_SmartCardCmd_0
        LDR.W    R0,??DataTable50_4  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_SmartCardCmd_0
        LDR.N    R0,??DataTable45  ;; 0x40011400
        CMP      R4,R0
        BEQ.N    ??USART_SmartCardCmd_0
        MOVW     R2,#+923
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_USART_1236_PERIPH(...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_SmartCardCmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??USART_SmartCardCmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??USART_SmartCardCmd_1
        MOV      R2,#+924
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_SmartCardCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??USART_SmartCardCmd_2
        LDRH     R0,[R4, #+20]
        ORRS     R0,R0,#0x20
        STRH     R0,[R4, #+20]
        B.N      ??USART_SmartCardCmd_3
??USART_SmartCardCmd_2:
        LDRH     R0,[R4, #+20]
        MOVW     R1,#+65503
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+20]
??USART_SmartCardCmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable42:
        DC32     0x7270e1

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable42_1:
        DC32     `?<Constant "IS_USART_BAUDRATE(USA...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable42_2:
        DC32     `?<Constant "IS_USART_WORD_LENGTH(...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable42_3:
        DC32     `?<Constant "IS_USART_STOPBITS(USA...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_SmartCardNACKCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable50_2  ;; 0x40011000
        CMP      R4,R0
        BEQ.N    ??USART_SmartCardNACKCmd_0
        LDR.W    R0,??DataTable50_3  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_SmartCardNACKCmd_0
        LDR.W    R0,??DataTable50_4  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_SmartCardNACKCmd_0
        LDR.N    R0,??DataTable45  ;; 0x40011400
        CMP      R4,R0
        BEQ.N    ??USART_SmartCardNACKCmd_0
        MOV      R2,#+948
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_USART_1236_PERIPH(...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_SmartCardNACKCmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??USART_SmartCardNACKCmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??USART_SmartCardNACKCmd_1
        MOVW     R2,#+949
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_SmartCardNACKCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??USART_SmartCardNACKCmd_2
        LDRH     R0,[R4, #+20]
        ORRS     R0,R0,#0x10
        STRH     R0,[R4, #+20]
        B.N      ??USART_SmartCardNACKCmd_3
??USART_SmartCardNACKCmd_2:
        LDRH     R0,[R4, #+20]
        MOVW     R1,#+65519
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+20]
??USART_SmartCardNACKCmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable43:
        DC32     `?<Constant "IS_USART_PARITY(USART...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable43_1:
        DC32     `?<Constant "IS_USART_MODE(USART_I...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable43_2:
        DC32     `?<Constant "IS_USART_HARDWARE_FLO...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_IrDAConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable50_2  ;; 0x40011000
        CMP      R4,R0
        BEQ.N    ??USART_IrDAConfig_0
        LDR.W    R0,??DataTable50_3  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_IrDAConfig_0
        LDR.W    R0,??DataTable50_4  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_IrDAConfig_0
        LDR.W    R0,??DataTable50_5  ;; 0x40004c00
        CMP      R4,R0
        BEQ.N    ??USART_IrDAConfig_0
        LDR.W    R0,??DataTable50_6  ;; 0x40005000
        CMP      R4,R0
        BEQ.N    ??USART_IrDAConfig_0
        LDR.N    R0,??DataTable45  ;; 0x40011400
        CMP      R4,R0
        BEQ.N    ??USART_IrDAConfig_0
        MOVW     R2,#+1019
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_USART_ALL_PERIPH(U...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_IrDAConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4
        BEQ.N    ??USART_IrDAConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??USART_IrDAConfig_1
        MOV      R2,#+1020
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_USART_IRDA_MODE(US...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_IrDAConfig_1:
        LDRH     R0,[R4, #+20]
        MOVW     R1,#+65531
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+20]
        LDRH     R0,[R4, #+20]
        ORRS     R0,R5,R0
        STRH     R0,[R4, #+20]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable44:
        DC32     `?<Constant "IS_USART_1236_PERIPH(...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable44_1:
        DC32     0xffffe9f3

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_IrDACmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable50_2  ;; 0x40011000
        CMP      R4,R0
        BEQ.N    ??USART_IrDACmd_0
        LDR.W    R0,??DataTable50_3  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_IrDACmd_0
        LDR.W    R0,??DataTable50_4  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_IrDACmd_0
        LDR.W    R0,??DataTable50_5  ;; 0x40004c00
        CMP      R4,R0
        BEQ.N    ??USART_IrDACmd_0
        LDR.W    R0,??DataTable50_6  ;; 0x40005000
        CMP      R4,R0
        BEQ.N    ??USART_IrDACmd_0
        LDR.N    R0,??DataTable45  ;; 0x40011400
        CMP      R4,R0
        BEQ.N    ??USART_IrDACmd_0
        MOVW     R2,#+1037
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_USART_ALL_PERIPH(U...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_IrDACmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??USART_IrDACmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??USART_IrDACmd_1
        MOVW     R2,#+1038
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_IrDACmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??USART_IrDACmd_2
        LDRH     R0,[R4, #+20]
        ORRS     R0,R0,#0x2
        STRH     R0,[R4, #+20]
        B.N      ??USART_IrDACmd_3
??USART_IrDACmd_2:
        LDRH     R0,[R4, #+20]
        MOVW     R1,#+65533
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+20]
??USART_IrDACmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable45:
        DC32     0x40011400

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_DMACmd:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        LDR.W    R0,??DataTable50_2  ;; 0x40011000
        CMP      R4,R0
        BEQ.N    ??USART_DMACmd_0
        LDR.W    R0,??DataTable50_3  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_DMACmd_0
        LDR.W    R0,??DataTable50_4  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_DMACmd_0
        LDR.W    R0,??DataTable50_5  ;; 0x40004c00
        CMP      R4,R0
        BEQ.N    ??USART_DMACmd_0
        LDR.W    R0,??DataTable50_6  ;; 0x40005000
        CMP      R4,R0
        BEQ.N    ??USART_DMACmd_0
        LDR.W    R0,??DataTable51  ;; 0x40011400
        CMP      R4,R0
        BEQ.N    ??USART_DMACmd_0
        MOVW     R2,#+1083
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_USART_ALL_PERIPH(U...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_DMACmd_0:
        MOVW     R0,#+65343
        TST      R5,R0
        BNE.N    ??USART_DMACmd_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BNE.N    ??USART_DMACmd_2
??USART_DMACmd_1:
        MOVW     R2,#+1084
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_USART_DMAREQ(USART...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_DMACmd_2:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??USART_DMACmd_3
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BEQ.N    ??USART_DMACmd_3
        MOVW     R2,#+1085
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_DMACmd_3:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??USART_DMACmd_4
        LDRH     R0,[R4, #+20]
        ORRS     R0,R5,R0
        STRH     R0,[R4, #+20]
        B.N      ??USART_DMACmd_5
??USART_DMACmd_4:
        LDRH     R0,[R4, #+20]
        BICS     R0,R0,R5
        STRH     R0,[R4, #+20]
??USART_DMACmd_5:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable46:
        DC32     `?<Constant "IS_USART_CLOCK(USART_...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable46_1:
        DC32     `?<Constant "IS_USART_CPOL(USART_C...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable46_2:
        DC32     `?<Constant "IS_USART_CPHA(USART_C...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_USART_ALL_PERIPH(U...">`:
        ; Initializer data, 28 bytes
        DC8 73, 83, 95, 85, 83, 65, 82, 84, 95, 65
        DC8 76, 76, 95, 80, 69, 82, 73, 80, 72, 40
        DC8 85, 83, 65, 82, 84, 120, 41, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`:
        ; Initializer data, 180 bytes
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
        DC8 116, 109, 51, 50, 102, 50, 120, 120, 95, 117
        DC8 115, 97, 114, 116, 46, 99, 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_USART_1236_PERIPH(...">`:
        ; Initializer data, 32 bytes
        DC8 73, 83, 95, 85, 83, 65, 82, 84, 95, 49
        DC8 50, 51, 54, 95, 80, 69, 82, 73, 80, 72
        DC8 40, 85, 83, 65, 82, 84, 120, 41, 0, 0
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_ITConfig:
        PUSH     {R4-R10,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,#+0
        MOVS     R8,#+0
        MOVS     R9,#+0
        MOVS     R10,#+0
        LDR.W    R0,??DataTable50_2  ;; 0x40011000
        CMP      R4,R0
        BEQ.N    ??USART_ITConfig_0
        LDR.W    R0,??DataTable50_3  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_ITConfig_0
        LDR.W    R0,??DataTable50_4  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_ITConfig_0
        LDR.W    R0,??DataTable50_5  ;; 0x40004c00
        CMP      R4,R0
        BEQ.N    ??USART_ITConfig_0
        LDR.W    R0,??DataTable50_6  ;; 0x40005000
        CMP      R4,R0
        BEQ.N    ??USART_ITConfig_0
        LDR.W    R0,??DataTable51  ;; 0x40011400
        CMP      R4,R0
        BEQ.N    ??USART_ITConfig_0
        MOVW     R2,#+1213
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_USART_ALL_PERIPH(U...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_ITConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+40
        BEQ.N    ??USART_ITConfig_1
        MOVW     R0,#+1831
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??USART_ITConfig_1
        MOVW     R0,#+1574
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??USART_ITConfig_1
        MOVW     R0,#+1317
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??USART_ITConfig_1
        MOVW     R0,#+1060
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??USART_ITConfig_1
        MOVW     R0,#+2118
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??USART_ITConfig_1
        MOVW     R0,#+2410
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??USART_ITConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+96
        BEQ.N    ??USART_ITConfig_1
        MOVW     R2,#+1214
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_USART_CONFIG_IT(US...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_ITConfig_1:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??USART_ITConfig_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BEQ.N    ??USART_ITConfig_2
        MOVW     R2,#+1215
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_ITConfig_2:
        MOVW     R0,#+2410
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BNE.N    ??USART_ITConfig_3
        LDR.W    R0,??DataTable50_2  ;; 0x40011000
        CMP      R4,R0
        BEQ.N    ??USART_ITConfig_3
        LDR.W    R0,??DataTable50_3  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_ITConfig_3
        LDR.W    R0,??DataTable50_4  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_ITConfig_3
        LDR.W    R0,??DataTable51  ;; 0x40011400
        CMP      R4,R0
        BEQ.N    ??USART_ITConfig_3
        MOVW     R2,#+1220
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_USART_1236_PERIPH(...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_ITConfig_3:
        MOV      R10,R4
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R7,R0
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        ANDS     R0,R5,#0x1F
        MOV      R8,R0
        MOVS     R0,#+1
        LSLS     R0,R0,R8
        MOV      R9,R0
        CMP      R7,#+1
        BNE.N    ??USART_ITConfig_4
        ADDS     R10,R10,#+12
        B.N      ??USART_ITConfig_5
??USART_ITConfig_4:
        CMP      R7,#+2
        BNE.N    ??USART_ITConfig_6
        ADDS     R10,R10,#+16
        B.N      ??USART_ITConfig_5
??USART_ITConfig_6:
        ADDS     R10,R10,#+20
??USART_ITConfig_5:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??USART_ITConfig_7
        LDR      R0,[R10, #+0]
        ORRS     R0,R9,R0
        STR      R0,[R10, #+0]
        B.N      ??USART_ITConfig_8
??USART_ITConfig_7:
        LDR      R0,[R10, #+0]
        BICS     R0,R0,R9
        STR      R0,[R10, #+0]
??USART_ITConfig_8:
        POP      {R4-R10,PC}      ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable47:
        DC32     `?<Constant "IS_USART_LASTBIT(USAR...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable47_1:
        DC32     `?<Constant "IS_FUNCTIONAL_STATE(N...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_GetFlagStatus:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.N    R0,??DataTable50_2  ;; 0x40011000
        CMP      R4,R0
        BEQ.N    ??USART_GetFlagStatus_0
        LDR.N    R0,??DataTable50_3  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_GetFlagStatus_0
        LDR.N    R0,??DataTable50_4  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_GetFlagStatus_0
        LDR.N    R0,??DataTable50_5  ;; 0x40004c00
        CMP      R4,R0
        BEQ.N    ??USART_GetFlagStatus_0
        LDR.N    R0,??DataTable50_6  ;; 0x40005000
        CMP      R4,R0
        BEQ.N    ??USART_GetFlagStatus_0
        LDR.W    R0,??DataTable51  ;; 0x40011400
        CMP      R4,R0
        BEQ.N    ??USART_GetFlagStatus_0
        MOVW     R2,#+1276
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_USART_ALL_PERIPH(U...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_GetFlagStatus_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+1
        BEQ.N    ??USART_GetFlagStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+128
        BEQ.N    ??USART_GetFlagStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+64
        BEQ.N    ??USART_GetFlagStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+32
        BEQ.N    ??USART_GetFlagStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+16
        BEQ.N    ??USART_GetFlagStatus_1
        MOV      R0,#+256
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??USART_GetFlagStatus_1
        MOV      R0,#+512
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??USART_GetFlagStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8
        BEQ.N    ??USART_GetFlagStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4
        BEQ.N    ??USART_GetFlagStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2
        BEQ.N    ??USART_GetFlagStatus_1
        MOVW     R2,#+1277
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_USART_FLAG(USART_F...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_GetFlagStatus_1:
        MOV      R0,#+512
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BNE.N    ??USART_GetFlagStatus_2
        LDR.N    R0,??DataTable50_2  ;; 0x40011000
        CMP      R4,R0
        BEQ.N    ??USART_GetFlagStatus_2
        LDR.N    R0,??DataTable50_3  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_GetFlagStatus_2
        LDR.N    R0,??DataTable50_4  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_GetFlagStatus_2
        LDR.W    R0,??DataTable51  ;; 0x40011400
        CMP      R4,R0
        BEQ.N    ??USART_GetFlagStatus_2
        MOVW     R2,#+1282
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_USART_1236_PERIPH(...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_GetFlagStatus_2:
        LDRH     R0,[R4, #+0]
        TST      R0,R5
        BEQ.N    ??USART_GetFlagStatus_3
        MOVS     R0,#+1
        MOVS     R6,R0
        B.N      ??USART_GetFlagStatus_4
??USART_GetFlagStatus_3:
        MOVS     R0,#+0
        MOVS     R6,R0
??USART_GetFlagStatus_4:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return

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
USART_ClearFlag:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable50_2  ;; 0x40011000
        CMP      R4,R0
        BEQ.N    ??USART_ClearFlag_0
        LDR.N    R0,??DataTable50_3  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_ClearFlag_0
        LDR.N    R0,??DataTable50_4  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_ClearFlag_0
        LDR.N    R0,??DataTable50_5  ;; 0x40004c00
        CMP      R4,R0
        BEQ.N    ??USART_ClearFlag_0
        LDR.N    R0,??DataTable50_6  ;; 0x40005000
        CMP      R4,R0
        BEQ.N    ??USART_ClearFlag_0
        LDR.W    R0,??DataTable51  ;; 0x40011400
        CMP      R4,R0
        BEQ.N    ??USART_ClearFlag_0
        MOVW     R2,#+1324
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_USART_ALL_PERIPH(U...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_ClearFlag_0:
        MOVW     R0,#+64671
        TST      R5,R0
        BNE.N    ??USART_ClearFlag_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BNE.N    ??USART_ClearFlag_2
??USART_ClearFlag_1:
        MOVW     R2,#+1325
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_USART_CLEAR_FLAG(U...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_ClearFlag_2:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        LSLS     R0,R5,#+22
        BPL.N    ??USART_ClearFlag_3
        LDR.N    R0,??DataTable50_2  ;; 0x40011000
        CMP      R4,R0
        BEQ.N    ??USART_ClearFlag_3
        LDR.N    R0,??DataTable50_3  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_ClearFlag_3
        LDR.N    R0,??DataTable50_4  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_ClearFlag_3
        LDR.N    R0,??DataTable51  ;; 0x40011400
        CMP      R4,R0
        BEQ.N    ??USART_ClearFlag_3
        MOVW     R2,#+1330
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_USART_1236_PERIPH(...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_ClearFlag_3:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        MVNS     R0,R5
        STRH     R0,[R4, #+0]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49:
        DC32     `?<Constant "IS_USART_DATA(Data)">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49_1:
        DC32     `?<Constant "IS_USART_ADDRESS(USAR...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_GetITStatus:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        MOVS     R7,#+0
        MOVS     R8,#+0
        MOVS     R9,#+0
        LDR.N    R0,??DataTable50_2  ;; 0x40011000
        CMP      R4,R0
        BEQ.N    ??USART_GetITStatus_0
        LDR.N    R0,??DataTable50_3  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_GetITStatus_0
        LDR.N    R0,??DataTable50_4  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_GetITStatus_0
        LDR.N    R0,??DataTable50_5  ;; 0x40004c00
        CMP      R4,R0
        BEQ.N    ??USART_GetITStatus_0
        LDR.N    R0,??DataTable50_6  ;; 0x40005000
        CMP      R4,R0
        BEQ.N    ??USART_GetITStatus_0
        LDR.N    R0,??DataTable51  ;; 0x40011400
        CMP      R4,R0
        BEQ.N    ??USART_GetITStatus_0
        MOVW     R2,#+1359
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_USART_ALL_PERIPH(U...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_GetITStatus_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+40
        BEQ.N    ??USART_GetITStatus_1
        MOVW     R0,#+1831
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??USART_GetITStatus_1
        MOVW     R0,#+1574
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??USART_GetITStatus_1
        MOVW     R0,#+1317
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??USART_GetITStatus_1
        MOVW     R0,#+1060
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??USART_GetITStatus_1
        MOVW     R0,#+2118
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??USART_GetITStatus_1
        MOVW     R0,#+2410
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??USART_GetITStatus_1
        MOV      R0,#+864
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??USART_GetITStatus_1
        MOV      R0,#+608
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??USART_GetITStatus_1
        MOV      R0,#+352
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??USART_GetITStatus_1
        MOV      R2,#+1360
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_USART_GET_IT(USART...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_GetITStatus_1:
        MOVW     R0,#+2410
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BNE.N    ??USART_GetITStatus_2
        LDR.N    R0,??DataTable50_2  ;; 0x40011000
        CMP      R4,R0
        BEQ.N    ??USART_GetITStatus_2
        LDR.N    R0,??DataTable50_3  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_GetITStatus_2
        LDR.N    R0,??DataTable50_4  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_GetITStatus_2
        LDR.N    R0,??DataTable51  ;; 0x40011400
        CMP      R4,R0
        BEQ.N    ??USART_GetITStatus_2
        MOVW     R2,#+1365
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_USART_1236_PERIPH(...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_GetITStatus_2:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOV      R8,R0
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        ANDS     R0,R5,#0x1F
        MOVS     R7,R0
        MOVS     R0,#+1
        LSLS     R7,R0,R7
        CMP      R8,#+1
        BNE.N    ??USART_GetITStatus_3
        LDRH     R0,[R4, #+12]
        ANDS     R7,R0,R7
        B.N      ??USART_GetITStatus_4
??USART_GetITStatus_3:
        CMP      R8,#+2
        BNE.N    ??USART_GetITStatus_5
        LDRH     R0,[R4, #+16]
        ANDS     R7,R0,R7
        B.N      ??USART_GetITStatus_4
??USART_GetITStatus_5:
        LDRH     R0,[R4, #+20]
        ANDS     R7,R0,R7
??USART_GetITStatus_4:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        LSRS     R0,R5,#+8
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOVS     R6,R0
        MOVS     R0,#+1
        LSLS     R6,R0,R6
        LDRH     R0,[R4, #+0]
        ANDS     R6,R0,R6
        CMP      R7,#+0
        BEQ.N    ??USART_GetITStatus_6
        CMP      R6,#+0
        BEQ.N    ??USART_GetITStatus_6
        MOVS     R0,#+1
        MOV      R9,R0
        B.N      ??USART_GetITStatus_7
??USART_GetITStatus_6:
        MOVS     R0,#+0
        MOV      R9,R0
??USART_GetITStatus_7:
        MOV      R0,R9
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4-R9,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable50:
        DC32     `?<Constant "IS_USART_WAKEUP(USART...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable50_1:
        DC32     `?<Constant "IS_USART_LIN_BREAK_DE...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable50_2:
        DC32     0x40011000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable50_3:
        DC32     0x40004400

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable50_4:
        DC32     0x40004800

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable50_5:
        DC32     0x40004c00

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable50_6:
        DC32     0x40005000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_USART_IRDA_MODE(US...">`:
        ; Initializer data, 36 bytes
        DC8 73, 83, 95, 85, 83, 65, 82, 84, 95, 73
        DC8 82, 68, 65, 95, 77, 79, 68, 69, 40, 85
        DC8 83, 65, 82, 84, 95, 73, 114, 68, 65, 77
        DC8 111, 100, 101, 41, 0, 0

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_ClearITPendingBit:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        MOVS     R7,#+0
        LDR.N    R0,??DataTable51_1  ;; 0x40011000
        CMP      R4,R0
        BEQ.N    ??USART_ClearITPendingBit_0
        LDR.N    R0,??DataTable51_2  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_ClearITPendingBit_0
        LDR.N    R0,??DataTable51_3  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_ClearITPendingBit_0
        LDR.N    R0,??DataTable51_4  ;; 0x40004c00
        CMP      R4,R0
        BEQ.N    ??USART_ClearITPendingBit_0
        LDR.N    R0,??DataTable51_5  ;; 0x40005000
        CMP      R4,R0
        BEQ.N    ??USART_ClearITPendingBit_0
        LDR.N    R0,??DataTable51  ;; 0x40011400
        CMP      R4,R0
        BEQ.N    ??USART_ClearITPendingBit_0
        MOV      R2,#+1432
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_USART_ALL_PERIPH(U...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_ClearITPendingBit_0:
        MOVW     R0,#+1574
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??USART_ClearITPendingBit_1
        MOVW     R0,#+1317
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??USART_ClearITPendingBit_1
        MOVW     R0,#+2118
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??USART_ClearITPendingBit_1
        MOVW     R0,#+2410
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??USART_ClearITPendingBit_1
        MOVW     R2,#+1433
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_USART_CLEAR_IT(USA...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_ClearITPendingBit_1:
        MOVW     R0,#+2410
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BNE.N    ??USART_ClearITPendingBit_2
        LDR.N    R0,??DataTable51_1  ;; 0x40011000
        CMP      R4,R0
        BEQ.N    ??USART_ClearITPendingBit_2
        LDR.N    R0,??DataTable51_2  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_ClearITPendingBit_2
        LDR.N    R0,??DataTable51_3  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_ClearITPendingBit_2
        LDR.N    R0,??DataTable51  ;; 0x40011400
        CMP      R4,R0
        BEQ.N    ??USART_ClearITPendingBit_2
        MOVW     R2,#+1438
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_USART_1236_PERIPH(...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??USART_ClearITPendingBit_2:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        LSRS     R0,R5,#+8
        MOVS     R6,R0
        MOVS     R0,#+1
        LSLS     R0,R0,R6
        MOVS     R7,R0
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        MVNS     R0,R7
        STRH     R0,[R4, #+0]
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable51:
        DC32     0x40011400

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable51_1:
        DC32     0x40011000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable51_2:
        DC32     0x40004400

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable51_3:
        DC32     0x40004800

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable51_4:
        DC32     0x40004c00

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable51_5:
        DC32     0x40005000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_USART_DMAREQ(USART...">`:
        ; Initializer data, 32 bytes
        DC8 73, 83, 95, 85, 83, 65, 82, 84, 95, 68
        DC8 77, 65, 82, 69, 81, 40, 85, 83, 65, 82
        DC8 84, 95, 68, 77, 65, 82, 101, 113, 41, 0
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_USART_CONFIG_IT(US...">`:
        ; Initializer data, 32 bytes
        DC8 73, 83, 95, 85, 83, 65, 82, 84, 95, 67
        DC8 79, 78, 70, 73, 71, 95, 73, 84, 40, 85
        DC8 83, 65, 82, 84, 95, 73, 84, 41, 0, 0
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_USART_FLAG(USART_F...">`:
        ; Initializer data, 28 bytes
        DC8 73, 83, 95, 85, 83, 65, 82, 84, 95, 70
        DC8 76, 65, 71, 40, 85, 83, 65, 82, 84, 95
        DC8 70, 76, 65, 71, 41, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_USART_CLEAR_FLAG(U...">`:
        ; Initializer data, 32 bytes
        DC8 73, 83, 95, 85, 83, 65, 82, 84, 95, 67
        DC8 76, 69, 65, 82, 95, 70, 76, 65, 71, 40
        DC8 85, 83, 65, 82, 84, 95, 70, 76, 65, 71
        DC8 41, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_USART_GET_IT(USART...">`:
        ; Initializer data, 28 bytes
        DC8 73, 83, 95, 85, 83, 65, 82, 84, 95, 71
        DC8 69, 84, 95, 73, 84, 40, 85, 83, 65, 82
        DC8 84, 95, 73, 84, 41, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_USART_CLEAR_IT(USA...">`:
        ; Initializer data, 28 bytes
        DC8 73, 83, 95, 85, 83, 65, 82, 84, 95, 67
        DC8 76, 69, 65, 82, 95, 73, 84, 40, 85, 83
        DC8 65, 82, 84, 95, 73, 84, 41, 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_USART_BAUDRATE(USA...">`:
        ; Initializer data, 52 bytes
        DC8 73, 83, 95, 85, 83, 65, 82, 84, 95, 66
        DC8 65, 85, 68, 82, 65, 84, 69, 40, 85, 83
        DC8 65, 82, 84, 95, 73, 110, 105, 116, 83, 116
        DC8 114, 117, 99, 116, 45, 62, 85, 83, 65, 82
        DC8 84, 95, 66, 97, 117, 100, 82, 97, 116, 101
        DC8 41, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_USART_WORD_LENGTH(...">`:
        ; Initializer data, 60 bytes
        DC8 73, 83, 95, 85, 83, 65, 82, 84, 95, 87
        DC8 79, 82, 68, 95, 76, 69, 78, 71, 84, 72
        DC8 40, 85, 83, 65, 82, 84, 95, 73, 110, 105
        DC8 116, 83, 116, 114, 117, 99, 116, 45, 62, 85
        DC8 83, 65, 82, 84, 95, 87, 111, 114, 100, 76
        DC8 101, 110, 103, 116, 104, 41, 0, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_USART_STOPBITS(USA...">`:
        ; Initializer data, 52 bytes
        DC8 73, 83, 95, 85, 83, 65, 82, 84, 95, 83
        DC8 84, 79, 80, 66, 73, 84, 83, 40, 85, 83
        DC8 65, 82, 84, 95, 73, 110, 105, 116, 83, 116
        DC8 114, 117, 99, 116, 45, 62, 85, 83, 65, 82
        DC8 84, 95, 83, 116, 111, 112, 66, 105, 116, 115
        DC8 41, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_USART_PARITY(USART...">`:
        ; Initializer data, 48 bytes
        DC8 73, 83, 95, 85, 83, 65, 82, 84, 95, 80
        DC8 65, 82, 73, 84, 89, 40, 85, 83, 65, 82
        DC8 84, 95, 73, 110, 105, 116, 83, 116, 114, 117
        DC8 99, 116, 45, 62, 85, 83, 65, 82, 84, 95
        DC8 80, 97, 114, 105, 116, 121, 41, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_USART_MODE(USART_I...">`:
        ; Initializer data, 44 bytes
        DC8 73, 83, 95, 85, 83, 65, 82, 84, 95, 77
        DC8 79, 68, 69, 40, 85, 83, 65, 82, 84, 95
        DC8 73, 110, 105, 116, 83, 116, 114, 117, 99, 116
        DC8 45, 62, 85, 83, 65, 82, 84, 95, 77, 111
        DC8 100, 101, 41, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_USART_HARDWARE_FLO...">`:
        ; Initializer data, 76 bytes
        DC8 73, 83, 95, 85, 83, 65, 82, 84, 95, 72
        DC8 65, 82, 68, 87, 65, 82, 69, 95, 70, 76
        DC8 79, 87, 95, 67, 79, 78, 84, 82, 79, 76
        DC8 40, 85, 83, 65, 82, 84, 95, 73, 110, 105
        DC8 116, 83, 116, 114, 117, 99, 116, 45, 62, 85
        DC8 83, 65, 82, 84, 95, 72, 97, 114, 100, 119
        DC8 97, 114, 101, 70, 108, 111, 119, 67, 111, 110
        DC8 116, 114, 111, 108, 41, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_USART_CLOCK(USART_...">`:
        ; Initializer data, 52 bytes
        DC8 73, 83, 95, 85, 83, 65, 82, 84, 95, 67
        DC8 76, 79, 67, 75, 40, 85, 83, 65, 82, 84
        DC8 95, 67, 108, 111, 99, 107, 73, 110, 105, 116
        DC8 83, 116, 114, 117, 99, 116, 45, 62, 85, 83
        DC8 65, 82, 84, 95, 67, 108, 111, 99, 107, 41
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_USART_CPOL(USART_C...">`:
        ; Initializer data, 52 bytes
        DC8 73, 83, 95, 85, 83, 65, 82, 84, 95, 67
        DC8 80, 79, 76, 40, 85, 83, 65, 82, 84, 95
        DC8 67, 108, 111, 99, 107, 73, 110, 105, 116, 83
        DC8 116, 114, 117, 99, 116, 45, 62, 85, 83, 65
        DC8 82, 84, 95, 67, 80, 79, 76, 41, 0, 0
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_USART_CPHA(USART_C...">`:
        ; Initializer data, 52 bytes
        DC8 73, 83, 95, 85, 83, 65, 82, 84, 95, 67
        DC8 80, 72, 65, 40, 85, 83, 65, 82, 84, 95
        DC8 67, 108, 111, 99, 107, 73, 110, 105, 116, 83
        DC8 116, 114, 117, 99, 116, 45, 62, 85, 83, 65
        DC8 82, 84, 95, 67, 80, 72, 65, 41, 0, 0
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_USART_LASTBIT(USAR...">`:
        ; Initializer data, 56 bytes
        DC8 73, 83, 95, 85, 83, 65, 82, 84, 95, 76
        DC8 65, 83, 84, 66, 73, 84, 40, 85, 83, 65
        DC8 82, 84, 95, 67, 108, 111, 99, 107, 73, 110
        DC8 105, 116, 83, 116, 114, 117, 99, 116, 45, 62
        DC8 85, 83, 65, 82, 84, 95, 76, 97, 115, 116
        DC8 66, 105, 116, 41, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_USART_DATA(Data)">`:
        ; Initializer data, 20 bytes
        DC8 73, 83, 95, 85, 83, 65, 82, 84, 95, 68
        DC8 65, 84, 65, 40, 68, 97, 116, 97, 41, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_USART_ADDRESS(USAR...">`:
        ; Initializer data, 32 bytes
        DC8 73, 83, 95, 85, 83, 65, 82, 84, 95, 65
        DC8 68, 68, 82, 69, 83, 83, 40, 85, 83, 65
        DC8 82, 84, 95, 65, 100, 100, 114, 101, 115, 115
        DC8 41, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_USART_WAKEUP(USART...">`:
        ; Initializer data, 32 bytes
        DC8 73, 83, 95, 85, 83, 65, 82, 84, 95, 87
        DC8 65, 75, 69, 85, 80, 40, 85, 83, 65, 82
        DC8 84, 95, 87, 97, 107, 101, 85, 112, 41, 0
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_USART_LIN_BREAK_DE...">`:
        ; Initializer data, 64 bytes
        DC8 73, 83, 95, 85, 83, 65, 82, 84, 95, 76
        DC8 73, 78, 95, 66, 82, 69, 65, 75, 95, 68
        DC8 69, 84, 69, 67, 84, 95, 76, 69, 78, 71
        DC8 84, 72, 40, 85, 83, 65, 82, 84, 95, 76
        DC8 73, 78, 66, 114, 101, 97, 107, 68, 101, 116
        DC8 101, 99, 116, 76, 101, 110, 103, 116, 104, 41
        DC8 0, 0, 0, 0

        END
// 
//   692 bytes in section .rodata
// 5 218 bytes in section .text
// 
// 5 218 bytes of CODE  memory
//   692 bytes of CONST memory
//
//Errors: none
//Warnings: none
