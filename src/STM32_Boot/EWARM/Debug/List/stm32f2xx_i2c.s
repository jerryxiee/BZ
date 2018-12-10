///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.10.2.52244/W32 for ARM    04/Dec/2013  10:58:11 /
// Copyright 1999-2010 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\STM32F2xx_StdPeriph_Driver\src\stm32f /
//                    2xx_i2c.c                                               /
//    Command line =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\STM32F2xx_StdPeriph_Driver\src\stm32f /
//                    2xx_i2c.c -D STM32F10X_CL -D USE_STDPERIPH_DRIVER -lcN  /
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
//                    IAR6.1\STM32_Boot\EWARM\Debug\List\stm32f2xx_i2c.s      /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f2xx_i2c

        EXTERN RCC_APB1PeriphResetCmd
        EXTERN RCC_GetClocksFreq
        EXTERN __aeabi_assert
        EXTERN __iar_EmptyStepPoint

        PUBLIC I2C_ARPCmd
        PUBLIC I2C_AcknowledgeConfig
        PUBLIC I2C_CalculatePEC
        PUBLIC I2C_CheckEvent
        PUBLIC I2C_ClearFlag
        PUBLIC I2C_ClearITPendingBit
        PUBLIC I2C_Cmd
        PUBLIC I2C_DMACmd
        PUBLIC I2C_DMALastTransferCmd
        PUBLIC I2C_DeInit
        PUBLIC I2C_DualAddressCmd
        PUBLIC I2C_FastModeDutyCycleConfig
        PUBLIC I2C_GeneralCallCmd
        PUBLIC I2C_GenerateSTART
        PUBLIC I2C_GenerateSTOP
        PUBLIC I2C_GetFlagStatus
        PUBLIC I2C_GetITStatus
        PUBLIC I2C_GetLastEvent
        PUBLIC I2C_GetPEC
        PUBLIC I2C_ITConfig
        PUBLIC I2C_Init
        PUBLIC I2C_NACKPositionConfig
        PUBLIC I2C_OwnAddress2Config
        PUBLIC I2C_PECPositionConfig
        PUBLIC I2C_ReadRegister
        PUBLIC I2C_ReceiveData
        PUBLIC I2C_SMBusAlertConfig
        PUBLIC I2C_Send7bitAddress
        PUBLIC I2C_SendData
        PUBLIC I2C_SoftwareResetCmd
        PUBLIC I2C_StretchClockCmd
        PUBLIC I2C_StructInit
        PUBLIC I2C_TransmitPEC


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_DeInit:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.W    R0,??DataTable45  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_DeInit_0
        LDR.W    R0,??DataTable45_1  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_DeInit_0
        MOVS     R2,#+135
        LDR.W    R1,??DataTable45_2
        LDR.W    R0,??DataTable46
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_DeInit_0:
        LDR.W    R0,??DataTable45  ;; 0x40005400
        CMP      R4,R0
        BNE.N    ??I2C_DeInit_1
        MOVS     R1,#+1
        MOVS     R0,#+2097152
        BL       RCC_APB1PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+2097152
        BL       RCC_APB1PeriphResetCmd
        B.N      ??I2C_DeInit_2
??I2C_DeInit_1:
        LDR.W    R0,??DataTable45_1  ;; 0x40005800
        CMP      R4,R0
        BNE.N    ??I2C_DeInit_3
        MOVS     R1,#+1
        MOVS     R0,#+4194304
        BL       RCC_APB1PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+4194304
        BL       RCC_APB1PeriphResetCmd
        B.N      ??I2C_DeInit_2
??I2C_DeInit_3:
        LDR.W    R0,??DataTable48  ;; 0x40005c00
        CMP      R4,R0
        BNE.N    ??I2C_DeInit_2
        MOVS     R1,#+1
        MOVS     R0,#+8388608
        BL       RCC_APB1PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+8388608
        BL       RCC_APB1PeriphResetCmd
??I2C_DeInit_2:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_Init:
        PUSH     {R4-R9,LR}
        SUB      SP,SP,#+20
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        MOVS     R7,#+0
        MOVS     R8,#+4
        LDR.W    R9,??DataTable46_1  ;; 0x7a1200
        LDR.W    R0,??DataTable45  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_Init_0
        LDR.W    R0,??DataTable45_1  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_Init_0
        MOVS     R2,#+182
        LDR.W    R1,??DataTable45_2
        LDR.W    R0,??DataTable46
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_Init_0:
        LDR      R0,[R5, #+0]
        CMP      R0,#+0
        BEQ.N    ??I2C_Init_1
        LDR      R0,[R5, #+0]
        LDR.W    R1,??DataTable46_2  ;; 0x61a81
        CMP      R0,R1
        BCC.N    ??I2C_Init_2
??I2C_Init_1:
        MOVS     R2,#+183
        LDR.W    R1,??DataTable45_2
        LDR.W    R0,??DataTable46_3
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_Init_2:
        LDRH     R0,[R5, #+4]
        CMP      R0,#+0
        BEQ.N    ??I2C_Init_3
        LDRH     R0,[R5, #+4]
        CMP      R0,#+2
        BEQ.N    ??I2C_Init_3
        LDRH     R0,[R5, #+4]
        CMP      R0,#+10
        BEQ.N    ??I2C_Init_3
        MOVS     R2,#+184
        LDR.W    R1,??DataTable45_2
        LDR.W    R0,??DataTable46_4
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_Init_3:
        LDRH     R0,[R5, #+6]
        CMP      R0,#+16384
        BEQ.N    ??I2C_Init_4
        LDRH     R0,[R5, #+6]
        MOVW     R1,#+49151
        CMP      R0,R1
        BEQ.N    ??I2C_Init_4
        MOVS     R2,#+185
        LDR.W    R1,??DataTable45_2
        LDR.W    R0,??DataTable46_5
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_Init_4:
        LDRH     R0,[R5, #+8]
        CMP      R0,#+1024
        BCC.N    ??I2C_Init_5
        MOVS     R2,#+186
        LDR.W    R1,??DataTable45_2
        LDR.W    R0,??DataTable46_6
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_Init_5:
        LDRH     R0,[R5, #+10]
        CMP      R0,#+1024
        BEQ.N    ??I2C_Init_6
        LDRH     R0,[R5, #+10]
        CMP      R0,#+0
        BEQ.N    ??I2C_Init_6
        MOVS     R2,#+187
        LDR.W    R1,??DataTable45_2
        LDR.W    R0,??DataTable46_7
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_Init_6:
        LDRH     R0,[R5, #+12]
        CMP      R0,#+16384
        BEQ.N    ??I2C_Init_7
        LDRH     R0,[R5, #+12]
        CMP      R0,#+49152
        BEQ.N    ??I2C_Init_7
        MOVS     R2,#+188
        LDR.W    R1,??DataTable45_2
        LDR.W    R0,??DataTable46_8
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_Init_7:
        LDRH     R0,[R4, #+4]
        MOVS     R6,R0
        MOVW     R0,#+65472
        ANDS     R6,R0,R6
        ADD      R0,SP,#+0
        BL       RCC_GetClocksFreq
        LDR      R0,[SP, #+8]
        MOV      R9,R0
        LDR.W    R0,??DataTable47  ;; 0xf4240
        UDIV     R0,R9,R0
        MOVS     R7,R0
        ORRS     R6,R7,R6
        STRH     R6,[R4, #+4]
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+65534
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+0
        MOVS     R6,R0
        LDR      R0,[R5, #+0]
        LDR.W    R1,??DataTable48_1  ;; 0x186a1
        CMP      R0,R1
        BCS.N    ??I2C_Init_8
        LDR      R0,[R5, #+0]
        LSLS     R0,R0,#+1
        UDIV     R0,R9,R0
        MOV      R8,R0
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        CMP      R8,#+4
        BCS.N    ??I2C_Init_9
        MOVS     R0,#+4
        MOV      R8,R0
??I2C_Init_9:
        ORRS     R6,R8,R6
        ADDS     R0,R7,#+1
        STRH     R0,[R4, #+32]
        B.N      ??I2C_Init_10
??I2C_Init_8:
        LDRH     R0,[R5, #+6]
        MOVW     R1,#+49151
        CMP      R0,R1
        BNE.N    ??I2C_Init_11
        LDR      R0,[R5, #+0]
        MOVS     R1,#+3
        MULS     R0,R1,R0
        UDIV     R0,R9,R0
        MOV      R8,R0
        B.N      ??I2C_Init_12
??I2C_Init_11:
        LDR      R0,[R5, #+0]
        MOVS     R1,#+25
        MULS     R0,R1,R0
        UDIV     R0,R9,R0
        MOV      R8,R0
        ORRS     R8,R8,#0x4000
??I2C_Init_12:
        LSLS     R0,R8,#+20
        BNE.N    ??I2C_Init_13
        ORRS     R8,R8,#0x1
??I2C_Init_13:
        ORRS     R0,R8,#0x8000
        ORRS     R6,R0,R6
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        MOV      R0,#+300
        MUL      R0,R0,R7
        MOV      R1,#+1000
        SDIV     R0,R0,R1
        ADDS     R0,R0,#+1
        STRH     R0,[R4, #+32]
??I2C_Init_10:
        STRH     R6,[R4, #+28]
        LDRH     R0,[R4, #+0]
        ORRS     R0,R0,#0x1
        STRH     R0,[R4, #+0]
        LDRH     R0,[R4, #+0]
        MOVS     R6,R0
        MOVW     R0,#+64501
        ANDS     R6,R0,R6
        LDRH     R0,[R5, #+4]
        LDRH     R1,[R5, #+10]
        ORRS     R0,R1,R0
        ORRS     R6,R0,R6
        STRH     R6,[R4, #+0]
        LDRH     R0,[R5, #+12]
        LDRH     R1,[R5, #+8]
        ORRS     R0,R1,R0
        STRH     R0,[R4, #+8]
        ADD      SP,SP,#+20
        POP      {R4-R9,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_StructInit:
        MOVW     R1,#+5000
        STR      R1,[R0, #+0]
        MOVS     R1,#+0
        STRH     R1,[R0, #+4]
        MOVW     R1,#+49151
        STRH     R1,[R0, #+6]
        MOVS     R1,#+0
        STRH     R1,[R0, #+8]
        MOVS     R1,#+0
        STRH     R1,[R0, #+10]
        MOV      R1,#+16384
        STRH     R1,[R0, #+12]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_Cmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable45  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_Cmd_0
        LDR.W    R0,??DataTable45_1  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_Cmd_0
        MOVW     R2,#+311
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable46
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_Cmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_Cmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??I2C_Cmd_1
        MOV      R2,#+312
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable49
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_Cmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_Cmd_2
        LDRH     R0,[R4, #+0]
        ORRS     R0,R0,#0x1
        STRH     R0,[R4, #+0]
        B.N      ??I2C_Cmd_3
??I2C_Cmd_2:
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+65534
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+0]
??I2C_Cmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_GenerateSTART:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable45  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_GenerateSTART_0
        LDR.W    R0,??DataTable45_1  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_GenerateSTART_0
        MOVW     R2,#+335
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable46
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_GenerateSTART_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_GenerateSTART_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??I2C_GenerateSTART_1
        MOV      R2,#+336
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable49
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_GenerateSTART_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_GenerateSTART_2
        LDRH     R0,[R4, #+0]
        MOV      R1,#+256
        ORRS     R0,R1,R0
        STRH     R0,[R4, #+0]
        B.N      ??I2C_GenerateSTART_3
??I2C_GenerateSTART_2:
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+65279
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+0]
??I2C_GenerateSTART_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_GenerateSTOP:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable45  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_GenerateSTOP_0
        LDR.W    R0,??DataTable45_1  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_GenerateSTOP_0
        MOVW     R2,#+359
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable46
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_GenerateSTOP_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_GenerateSTOP_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??I2C_GenerateSTOP_1
        MOV      R2,#+360
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable49
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_GenerateSTOP_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_GenerateSTOP_2
        LDRH     R0,[R4, #+0]
        MOV      R1,#+512
        ORRS     R0,R1,R0
        STRH     R0,[R4, #+0]
        B.N      ??I2C_GenerateSTOP_3
??I2C_GenerateSTOP_2:
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+65023
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+0]
??I2C_GenerateSTOP_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_Send7bitAddress:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        LDR.W    R0,??DataTable45  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_Send7bitAddress_0
        LDR.W    R0,??DataTable45_1  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_Send7bitAddress_0
        MOVW     R2,#+387
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable46
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_Send7bitAddress_0:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??I2C_Send7bitAddress_1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BEQ.N    ??I2C_Send7bitAddress_1
        MOV      R2,#+388
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable50
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_Send7bitAddress_1:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??I2C_Send7bitAddress_2
        ORRS     R5,R5,#0x1
        B.N      ??I2C_Send7bitAddress_3
??I2C_Send7bitAddress_2:
        ANDS     R5,R5,#0xFE
??I2C_Send7bitAddress_3:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STRH     R5,[R4, #+16]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_AcknowledgeConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable45  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_AcknowledgeConfig_0
        LDR.W    R0,??DataTable45_1  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_AcknowledgeConfig_0
        MOV      R2,#+414
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable46
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_AcknowledgeConfig_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_AcknowledgeConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??I2C_AcknowledgeConfig_1
        MOVW     R2,#+415
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable49
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_AcknowledgeConfig_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_AcknowledgeConfig_2
        LDRH     R0,[R4, #+0]
        ORRS     R0,R0,#0x400
        STRH     R0,[R4, #+0]
        B.N      ??I2C_AcknowledgeConfig_3
??I2C_AcknowledgeConfig_2:
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+64511
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+0]
??I2C_AcknowledgeConfig_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_OwnAddress2Config:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.W    R0,??DataTable45  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_OwnAddress2Config_0
        LDR.W    R0,??DataTable45_1  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_OwnAddress2Config_0
        MOVW     R2,#+439
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable46
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_OwnAddress2Config_0:
        LDRH     R0,[R4, #+12]
        MOVS     R6,R0
        MOVW     R0,#+65281
        ANDS     R6,R0,R6
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ANDS     R0,R5,#0xFE
        ORRS     R6,R0,R6
        STRH     R6,[R4, #+12]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_DualAddressCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable45  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_DualAddressCmd_0
        LDR.W    R0,??DataTable45_1  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_DualAddressCmd_0
        MOV      R2,#+464
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable46
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_DualAddressCmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_DualAddressCmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??I2C_DualAddressCmd_1
        MOVW     R2,#+465
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable49
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_DualAddressCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_DualAddressCmd_2
        LDRH     R0,[R4, #+12]
        ORRS     R0,R0,#0x1
        STRH     R0,[R4, #+12]
        B.N      ??I2C_DualAddressCmd_3
??I2C_DualAddressCmd_2:
        LDRH     R0,[R4, #+12]
        MOVW     R1,#+65534
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+12]
??I2C_DualAddressCmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_GeneralCallCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable45  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_GeneralCallCmd_0
        LDR.W    R0,??DataTable45_1  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_GeneralCallCmd_0
        MOV      R2,#+488
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_I2C_ALL_PERIPH(I2Cx)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_GeneralCallCmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_GeneralCallCmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??I2C_GeneralCallCmd_1
        MOVW     R2,#+489
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable49
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_GeneralCallCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_GeneralCallCmd_2
        LDRH     R0,[R4, #+0]
        ORRS     R0,R0,#0x40
        STRH     R0,[R4, #+0]
        B.N      ??I2C_GeneralCallCmd_3
??I2C_GeneralCallCmd_2:
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+65471
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+0]
??I2C_GeneralCallCmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_SoftwareResetCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable45  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_SoftwareResetCmd_0
        LDR.W    R0,??DataTable52  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_SoftwareResetCmd_0
        MOVW     R2,#+514
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_I2C_ALL_PERIPH(I2Cx)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_SoftwareResetCmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_SoftwareResetCmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??I2C_SoftwareResetCmd_1
        MOVW     R2,#+515
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_SoftwareResetCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_SoftwareResetCmd_2
        LDRH     R0,[R4, #+0]
        ORRS     R0,R0,#0x8000
        STRH     R0,[R4, #+0]
        B.N      ??I2C_SoftwareResetCmd_3
??I2C_SoftwareResetCmd_2:
        LDRH     R0,[R4, #+0]
        LSLS     R0,R0,#+17
        LSRS     R0,R0,#+17
        STRH     R0,[R4, #+0]
??I2C_SoftwareResetCmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_StretchClockCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable45  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_StretchClockCmd_0
        LDR.W    R0,??DataTable52  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_StretchClockCmd_0
        MOVW     R2,#+538
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_I2C_ALL_PERIPH(I2Cx)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_StretchClockCmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_StretchClockCmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??I2C_StretchClockCmd_1
        MOVW     R2,#+539
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_StretchClockCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??I2C_StretchClockCmd_2
        LDRH     R0,[R4, #+0]
        ORRS     R0,R0,#0x80
        STRH     R0,[R4, #+0]
        B.N      ??I2C_StretchClockCmd_3
??I2C_StretchClockCmd_2:
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+65407
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+0]
??I2C_StretchClockCmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_FastModeDutyCycleConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable45  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_FastModeDutyCycleConfig_0
        LDR.W    R0,??DataTable52  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_FastModeDutyCycleConfig_0
        MOV      R2,#+564
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_I2C_ALL_PERIPH(I2Cx)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_FastModeDutyCycleConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+16384
        BEQ.N    ??I2C_FastModeDutyCycleConfig_1
        MOVW     R0,#+49151
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??I2C_FastModeDutyCycleConfig_1
        MOVW     R2,#+565
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_I2C_DUTY_CYCLE(I2C...">_1`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_FastModeDutyCycleConfig_1:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+16384
        BEQ.N    ??I2C_FastModeDutyCycleConfig_2
        LDRH     R0,[R4, #+28]
        MOVW     R1,#+49151
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+28]
        B.N      ??I2C_FastModeDutyCycleConfig_3
??I2C_FastModeDutyCycleConfig_2:
        LDRH     R0,[R4, #+28]
        ORRS     R0,R0,#0x4000
        STRH     R0,[R4, #+28]
??I2C_FastModeDutyCycleConfig_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_NACKPositionConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable45  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_NACKPositionConfig_0
        LDR.W    R0,??DataTable52  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_NACKPositionConfig_0
        MOVW     R2,#+602
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_I2C_ALL_PERIPH(I2Cx)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_NACKPositionConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2048
        BEQ.N    ??I2C_NACKPositionConfig_1
        MOVW     R0,#+63487
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??I2C_NACKPositionConfig_1
        MOVW     R2,#+603
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_I2C_NACK_POSITION(...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_NACKPositionConfig_1:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2048
        BNE.N    ??I2C_NACKPositionConfig_2
        LDRH     R0,[R4, #+0]
        ORRS     R0,R0,#0x800
        STRH     R0,[R4, #+0]
        B.N      ??I2C_NACKPositionConfig_3
??I2C_NACKPositionConfig_2:
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+63487
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+0]
??I2C_NACKPositionConfig_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_SMBusAlertConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable45  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_SMBusAlertConfig_0
        LDR.W    R0,??DataTable52  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_SMBusAlertConfig_0
        MOVW     R2,#+630
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_I2C_ALL_PERIPH(I2Cx)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_SMBusAlertConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8192
        BEQ.N    ??I2C_SMBusAlertConfig_1
        MOVW     R0,#+57343
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??I2C_SMBusAlertConfig_1
        MOVW     R2,#+631
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_I2C_SMBUS_ALERT(I2...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_SMBusAlertConfig_1:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8192
        BNE.N    ??I2C_SMBusAlertConfig_2
        LDRH     R0,[R4, #+0]
        ORRS     R0,R0,#0x2000
        STRH     R0,[R4, #+0]
        B.N      ??I2C_SMBusAlertConfig_3
??I2C_SMBusAlertConfig_2:
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+57343
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+0]
??I2C_SMBusAlertConfig_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_ARPCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable45  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_ARPCmd_0
        LDR.W    R0,??DataTable52  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_ARPCmd_0
        MOVW     R2,#+654
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_I2C_ALL_PERIPH(I2Cx)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_ARPCmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_ARPCmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??I2C_ARPCmd_1
        MOVW     R2,#+655
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_ARPCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_ARPCmd_2
        LDRH     R0,[R4, #+0]
        ORRS     R0,R0,#0x10
        STRH     R0,[R4, #+0]
        B.N      ??I2C_ARPCmd_3
??I2C_ARPCmd_2:
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+65519
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+0]
??I2C_ARPCmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_SendData:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable45  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_SendData_0
        LDR.W    R0,??DataTable52  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_SendData_0
        MOV      R2,#+692
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_I2C_ALL_PERIPH(I2Cx)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_SendData_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STRH     R5,[R4, #+16]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_ReceiveData:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.N    R0,??DataTable45  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_ReceiveData_0
        LDR.W    R0,??DataTable52  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_ReceiveData_0
        MOVW     R2,#+705
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_I2C_ALL_PERIPH(I2Cx)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_ReceiveData_0:
        LDRH     R0,[R4, #+16]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_TransmitPEC:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable45  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_TransmitPEC_0
        LDR.W    R0,??DataTable52  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_TransmitPEC_0
        MOV      R2,#+736
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_I2C_ALL_PERIPH(I2Cx)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_TransmitPEC_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_TransmitPEC_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??I2C_TransmitPEC_1
        MOVW     R2,#+737
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_TransmitPEC_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_TransmitPEC_2
        LDRH     R0,[R4, #+0]
        ORRS     R0,R0,#0x1000
        STRH     R0,[R4, #+0]
        B.N      ??I2C_TransmitPEC_3
??I2C_TransmitPEC_2:
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+61439
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+0]
??I2C_TransmitPEC_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_PECPositionConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable45  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_PECPositionConfig_0
        LDR.W    R0,??DataTable52  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_PECPositionConfig_0
        MOVW     R2,#+767
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_I2C_ALL_PERIPH(I2Cx)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_PECPositionConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2048
        BEQ.N    ??I2C_PECPositionConfig_1
        MOVW     R0,#+63487
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??I2C_PECPositionConfig_1
        MOV      R2,#+768
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_I2C_PEC_POSITION(I...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_PECPositionConfig_1:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2048
        BNE.N    ??I2C_PECPositionConfig_2
        LDRH     R0,[R4, #+0]
        ORRS     R0,R0,#0x800
        STRH     R0,[R4, #+0]
        B.N      ??I2C_PECPositionConfig_3
??I2C_PECPositionConfig_2:
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+63487
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+0]
??I2C_PECPositionConfig_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_CalculatePEC:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable45  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_CalculatePEC_0
        LDR.W    R0,??DataTable52  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_CalculatePEC_0
        MOVW     R2,#+791
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_I2C_ALL_PERIPH(I2Cx)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_CalculatePEC_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_CalculatePEC_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??I2C_CalculatePEC_1
        MOV      R2,#+792
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_CalculatePEC_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_CalculatePEC_2
        LDRH     R0,[R4, #+0]
        ORRS     R0,R0,#0x20
        STRH     R0,[R4, #+0]
        B.N      ??I2C_CalculatePEC_3
??I2C_CalculatePEC_2:
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+65503
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+0]
??I2C_CalculatePEC_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_GetPEC:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.N    R0,??DataTable45  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_GetPEC_0
        LDR.W    R0,??DataTable52  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_GetPEC_0
        MOVW     R2,#+813
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_I2C_ALL_PERIPH(I2Cx)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_GetPEC_0:
        LDRH     R0,[R4, #+24]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_DMACmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable45  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_DMACmd_0
        LDR.W    R0,??DataTable52  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_DMACmd_0
        MOVW     R2,#+846
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_I2C_ALL_PERIPH(I2Cx)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_DMACmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_DMACmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??I2C_DMACmd_1
        MOVW     R2,#+847
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_DMACmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_DMACmd_2
        LDRH     R0,[R4, #+4]
        ORRS     R0,R0,#0x800
        STRH     R0,[R4, #+4]
        B.N      ??I2C_DMACmd_3
??I2C_DMACmd_2:
        LDRH     R0,[R4, #+4]
        MOVW     R1,#+63487
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+4]
??I2C_DMACmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_DMALastTransferCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable45  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_DMALastTransferCmd_0
        LDR.W    R0,??DataTable52  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_DMALastTransferCmd_0
        MOVW     R2,#+870
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_I2C_ALL_PERIPH(I2Cx)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_DMALastTransferCmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_DMALastTransferCmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??I2C_DMALastTransferCmd_1
        MOVW     R2,#+871
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_DMALastTransferCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_DMALastTransferCmd_2
        LDRH     R0,[R4, #+4]
        ORRS     R0,R0,#0x1000
        STRH     R0,[R4, #+4]
        B.N      ??I2C_DMALastTransferCmd_3
??I2C_DMALastTransferCmd_2:
        LDRH     R0,[R4, #+4]
        MOVW     R1,#+61439
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+4]
??I2C_DMALastTransferCmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_ReadRegister:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        LDR.N    R0,??DataTable45  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_ReadRegister_0
        LDR.W    R0,??DataTable52  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_ReadRegister_0
        MOVW     R2,#+1010
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_I2C_ALL_PERIPH(I2Cx)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_ReadRegister_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_ReadRegister_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+4
        BEQ.N    ??I2C_ReadRegister_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+8
        BEQ.N    ??I2C_ReadRegister_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+12
        BEQ.N    ??I2C_ReadRegister_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+16
        BEQ.N    ??I2C_ReadRegister_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+20
        BEQ.N    ??I2C_ReadRegister_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+24
        BEQ.N    ??I2C_ReadRegister_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+28
        BEQ.N    ??I2C_ReadRegister_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+32
        BEQ.N    ??I2C_ReadRegister_1
        MOVW     R2,#+1011
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_I2C_REGISTER(I2C_R...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_ReadRegister_1:
        STR      R4,[SP, #+0]
        LDR      R0,[SP, #+0]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R0,R5,R0
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        LDRH     R0,[R0, #+0]
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable45:
        DC32     0x40005400

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable45_1:
        DC32     0x40005800

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable45_2:
        DC32     `?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_ITConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        LDR.W    R0,??DataTable52_1  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_ITConfig_0
        LDR.W    R0,??DataTable52  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_ITConfig_0
        MOVW     R2,#+1035
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_I2C_ALL_PERIPH(I2Cx)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_ITConfig_0:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??I2C_ITConfig_1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BEQ.N    ??I2C_ITConfig_1
        MOVW     R2,#+1036
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_ITConfig_1:
        MOVW     R0,#+63743
        TST      R5,R0
        BNE.N    ??I2C_ITConfig_2
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BNE.N    ??I2C_ITConfig_3
??I2C_ITConfig_2:
        MOVW     R2,#+1037
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_I2C_CONFIG_IT(I2C_IT)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_ITConfig_3:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??I2C_ITConfig_4
        LDRH     R0,[R4, #+4]
        ORRS     R0,R5,R0
        STRH     R0,[R4, #+4]
        B.N      ??I2C_ITConfig_5
??I2C_ITConfig_4:
        LDRH     R0,[R4, #+4]
        BICS     R0,R0,R5
        STRH     R0,[R4, #+4]
??I2C_ITConfig_5:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable46:
        DC32     `?<Constant "IS_I2C_ALL_PERIPH(I2Cx)">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable46_1:
        DC32     0x7a1200

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable46_2:
        DC32     0x61a81

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable46_3:
        DC32     `?<Constant "IS_I2C_CLOCK_SPEED(I2...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable46_4:
        DC32     `?<Constant "IS_I2C_MODE(I2C_InitS...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable46_5:
        DC32     `?<Constant "IS_I2C_DUTY_CYCLE(I2C...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable46_6:
        DC32     `?<Constant "IS_I2C_OWN_ADDRESS1(I...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable46_7:
        DC32     `?<Constant "IS_I2C_ACK_STATE(I2C_...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable46_8:
        DC32     `?<Constant "IS_I2C_ACKNOWLEDGE_AD...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_CheckEvent:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        MOVS     R7,#+0
        MOVS     R8,#+0
        MOVS     R9,#+0
        LDR.W    R0,??DataTable52_1  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_CheckEvent_0
        LDR.W    R0,??DataTable52  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_CheckEvent_0
        MOVW     R2,#+1098
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_I2C_ALL_PERIPH(I2Cx)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_CheckEvent_0:
        LDR.W    R0,??DataTable52_2  ;; 0x60082
        CMP      R5,R0
        BEQ.N    ??I2C_CheckEvent_1
        CMP      R5,#+131074
        BEQ.N    ??I2C_CheckEvent_1
        LDR.W    R0,??DataTable52_3  ;; 0x860080
        CMP      R5,R0
        BEQ.N    ??I2C_CheckEvent_1
        CMP      R5,#+8519680
        BEQ.N    ??I2C_CheckEvent_1
        CMP      R5,#+1179648
        BEQ.N    ??I2C_CheckEvent_1
        LDR.W    R0,??DataTable52_4  ;; 0x20040
        CMP      R5,R0
        BEQ.N    ??I2C_CheckEvent_1
        LDR.W    R0,??DataTable52_5  ;; 0x820040
        CMP      R5,R0
        BEQ.N    ??I2C_CheckEvent_1
        LDR.W    R0,??DataTable52_6  ;; 0x120040
        CMP      R5,R0
        BEQ.N    ??I2C_CheckEvent_1
        LDR.W    R0,??DataTable52_7  ;; 0x60084
        CMP      R5,R0
        BEQ.N    ??I2C_CheckEvent_1
        LDR.W    R0,??DataTable52_8  ;; 0x860084
        CMP      R5,R0
        BEQ.N    ??I2C_CheckEvent_1
        LDR.W    R0,??DataTable52_9  ;; 0x160084
        CMP      R5,R0
        BEQ.N    ??I2C_CheckEvent_1
        CMP      R5,#+16
        BEQ.N    ??I2C_CheckEvent_1
        LDR.W    R0,??DataTable52_10  ;; 0x30001
        CMP      R5,R0
        BEQ.N    ??I2C_CheckEvent_1
        LDR.W    R0,??DataTable52_11  ;; 0x70082
        CMP      R5,R0
        BEQ.N    ??I2C_CheckEvent_1
        LDR.W    R0,??DataTable52_12  ;; 0x30002
        CMP      R5,R0
        BEQ.N    ??I2C_CheckEvent_1
        LDR.W    R0,??DataTable52_13  ;; 0x30040
        CMP      R5,R0
        BEQ.N    ??I2C_CheckEvent_1
        LDR.W    R0,??DataTable52_14  ;; 0x70084
        CMP      R5,R0
        BEQ.N    ??I2C_CheckEvent_1
        LDR.W    R0,??DataTable52_15  ;; 0x70080
        CMP      R5,R0
        BEQ.N    ??I2C_CheckEvent_1
        LDR.W    R0,??DataTable52_16  ;; 0x30008
        CMP      R5,R0
        BEQ.N    ??I2C_CheckEvent_1
        CMP      R5,#+1024
        BEQ.N    ??I2C_CheckEvent_1
        MOVW     R2,#+1099
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_I2C_EVENT(I2C_EVENT)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_CheckEvent_1:
        LDRH     R0,[R4, #+20]
        MOVS     R7,R0
        LDRH     R0,[R4, #+24]
        MOV      R8,R0
        LSLS     R8,R8,#+16
        ORRS     R0,R8,R7
        LSLS     R0,R0,#+8
        LSRS     R0,R0,#+8
        MOVS     R6,R0
        ANDS     R0,R5,R6
        CMP      R0,R5
        BNE.N    ??I2C_CheckEvent_2
        MOVS     R0,#+1
        MOV      R9,R0
        B.N      ??I2C_CheckEvent_3
??I2C_CheckEvent_2:
        MOVS     R0,#+0
        MOV      R9,R0
??I2C_CheckEvent_3:
        MOV      R0,R9
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4-R9,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable47:
        DC32     0xf4240

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_GetLastEvent:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        MOVS     R6,#+0
        MOVS     R7,#+0
        LDR.W    R0,??DataTable52_1  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_GetLastEvent_0
        LDR.W    R0,??DataTable52  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_GetLastEvent_0
        MOVW     R2,#+1145
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_I2C_ALL_PERIPH(I2Cx)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_GetLastEvent_0:
        LDRH     R0,[R4, #+20]
        MOVS     R6,R0
        LDRH     R0,[R4, #+24]
        MOVS     R7,R0
        LSLS     R7,R7,#+16
        ORRS     R0,R7,R6
        LSLS     R0,R0,#+8
        LSRS     R0,R0,#+8
        MOVS     R5,R0
        MOVS     R0,R5
        POP      {R1,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable48:
        DC32     0x40005c00

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable48_1:
        DC32     0x186a1

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
        DC8 116, 109, 51, 50, 102, 50, 120, 120, 95, 105
        DC8 50, 99, 46, 99, 0, 0

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_GetFlagStatus:
        PUSH     {R2-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        LDR.N    R0,??DataTable52_1  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_GetFlagStatus_0
        LDR.N    R0,??DataTable52  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_GetFlagStatus_0
        MOV      R2,#+1200
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_I2C_ALL_PERIPH(I2Cx)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_GetFlagStatus_0:
        CMP      R5,#+8388608
        BEQ.N    ??I2C_GetFlagStatus_1
        CMP      R5,#+4194304
        BEQ.N    ??I2C_GetFlagStatus_1
        CMP      R5,#+2097152
        BEQ.N    ??I2C_GetFlagStatus_1
        CMP      R5,#+1048576
        BEQ.N    ??I2C_GetFlagStatus_1
        CMP      R5,#+262144
        BEQ.N    ??I2C_GetFlagStatus_1
        CMP      R5,#+131072
        BEQ.N    ??I2C_GetFlagStatus_1
        CMP      R5,#+65536
        BEQ.N    ??I2C_GetFlagStatus_1
        LDR.N    R0,??DataTable52_17  ;; 0x10008000
        CMP      R5,R0
        BEQ.N    ??I2C_GetFlagStatus_1
        LDR.N    R0,??DataTable52_18  ;; 0x10004000
        CMP      R5,R0
        BEQ.N    ??I2C_GetFlagStatus_1
        CMP      R5,#+268439552
        BEQ.N    ??I2C_GetFlagStatus_1
        LDR.N    R0,??DataTable52_19  ;; 0x10000800
        CMP      R5,R0
        BEQ.N    ??I2C_GetFlagStatus_1
        LDR.N    R0,??DataTable52_20  ;; 0x10000400
        CMP      R5,R0
        BEQ.N    ??I2C_GetFlagStatus_1
        LDR.N    R0,??DataTable52_21  ;; 0x10000200
        CMP      R5,R0
        BEQ.N    ??I2C_GetFlagStatus_1
        LDR.N    R0,??DataTable52_22  ;; 0x10000100
        CMP      R5,R0
        BEQ.N    ??I2C_GetFlagStatus_1
        LDR.N    R0,??DataTable52_23  ;; 0x10000080
        CMP      R5,R0
        BEQ.N    ??I2C_GetFlagStatus_1
        LDR.N    R0,??DataTable52_24  ;; 0x10000040
        CMP      R5,R0
        BEQ.N    ??I2C_GetFlagStatus_1
        LDR.N    R0,??DataTable52_25  ;; 0x10000010
        CMP      R5,R0
        BEQ.N    ??I2C_GetFlagStatus_1
        LDR.N    R0,??DataTable52_26  ;; 0x10000008
        CMP      R5,R0
        BEQ.N    ??I2C_GetFlagStatus_1
        LDR.N    R0,??DataTable52_27  ;; 0x10000004
        CMP      R5,R0
        BEQ.N    ??I2C_GetFlagStatus_1
        LDR.N    R0,??DataTable52_28  ;; 0x10000002
        CMP      R5,R0
        BEQ.N    ??I2C_GetFlagStatus_1
        LDR.N    R0,??DataTable52_29  ;; 0x10000001
        CMP      R5,R0
        BEQ.N    ??I2C_GetFlagStatus_1
        MOVW     R2,#+1201
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_I2C_GET_FLAG(I2C_F...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_GetFlagStatus_1:
        STR      R4,[SP, #+0]
        LSRS     R0,R5,#+28
        STR      R0,[SP, #+4]
        LSLS     R5,R5,#+8
        LSRS     R5,R5,#+8
        LDR      R0,[SP, #+4]
        CMP      R0,#+0
        BEQ.N    ??I2C_GetFlagStatus_2
        LDR      R0,[SP, #+0]
        ADDS     R0,R0,#+20
        STR      R0,[SP, #+0]
        B.N      ??I2C_GetFlagStatus_3
??I2C_GetFlagStatus_2:
        LSRS     R5,R5,#+16
        LDR      R0,[SP, #+0]
        ADDS     R0,R0,#+24
        STR      R0,[SP, #+0]
??I2C_GetFlagStatus_3:
        LDR      R0,[SP, #+0]
        LDR      R0,[R0, #+0]
        TST      R0,R5
        BEQ.N    ??I2C_GetFlagStatus_4
        MOVS     R0,#+1
        MOVS     R6,R0
        B.N      ??I2C_GetFlagStatus_5
??I2C_GetFlagStatus_4:
        MOVS     R0,#+0
        MOVS     R6,R0
??I2C_GetFlagStatus_5:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4-R6,PC}  ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49:
        DC32     `?<Constant "IS_FUNCTIONAL_STATE(N...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_I2C_ALL_PERIPH(I2Cx)">`:
        ; Initializer data, 24 bytes
        DC8 73, 83, 95, 73, 50, 67, 95, 65, 76, 76
        DC8 95, 80, 69, 82, 73, 80, 72, 40, 73, 50
        DC8 67, 120, 41, 0

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_ClearFlag:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.N    R0,??DataTable52_1  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_ClearFlag_0
        LDR.N    R0,??DataTable52  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_ClearFlag_0
        MOVW     R2,#+1275
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_I2C_ALL_PERIPH(I2Cx)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_ClearFlag_0:
        MOVW     R0,#+8447
        TST      R5,R0
        BNE.N    ??I2C_ClearFlag_1
        CMP      R5,#+0
        BNE.N    ??I2C_ClearFlag_2
??I2C_ClearFlag_1:
        MOVW     R2,#+1276
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_I2C_CLEAR_FLAG(I2C...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_ClearFlag_2:
        LSLS     R0,R5,#+8
        LSRS     R0,R0,#+8
        MOVS     R6,R0
        MVNS     R0,R6
        STRH     R0,[R4, #+20]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable50:
        DC32     `?<Constant "IS_I2C_DIRECTION(I2C_...">`

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
I2C_GetITStatus:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        MOVS     R7,#+0
        LDR.N    R0,??DataTable52_1  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_GetITStatus_0
        LDR.N    R0,??DataTable52  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_GetITStatus_0
        MOVW     R2,#+1311
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_I2C_ALL_PERIPH(I2Cx)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_GetITStatus_0:
        LDR.N    R0,??DataTable52_30  ;; 0x1008000
        CMP      R5,R0
        BEQ.N    ??I2C_GetITStatus_1
        LDR.N    R0,??DataTable52_31  ;; 0x1004000
        CMP      R5,R0
        BEQ.N    ??I2C_GetITStatus_1
        LDR.N    R0,??DataTable52_32  ;; 0x1001000
        CMP      R5,R0
        BEQ.N    ??I2C_GetITStatus_1
        LDR.N    R0,??DataTable52_33  ;; 0x1000800
        CMP      R5,R0
        BEQ.N    ??I2C_GetITStatus_1
        LDR.N    R0,??DataTable52_34  ;; 0x1000400
        CMP      R5,R0
        BEQ.N    ??I2C_GetITStatus_1
        LDR.N    R0,??DataTable52_35  ;; 0x1000200
        CMP      R5,R0
        BEQ.N    ??I2C_GetITStatus_1
        CMP      R5,#+16777472
        BEQ.N    ??I2C_GetITStatus_1
        LDR.N    R0,??DataTable52_36  ;; 0x6000080
        CMP      R5,R0
        BEQ.N    ??I2C_GetITStatus_1
        LDR.N    R0,??DataTable52_37  ;; 0x6000040
        CMP      R5,R0
        BEQ.N    ??I2C_GetITStatus_1
        LDR.N    R0,??DataTable52_38  ;; 0x2000010
        CMP      R5,R0
        BEQ.N    ??I2C_GetITStatus_1
        LDR.N    R0,??DataTable52_39  ;; 0x2000008
        CMP      R5,R0
        BEQ.N    ??I2C_GetITStatus_1
        LDR.N    R0,??DataTable52_40  ;; 0x2000004
        CMP      R5,R0
        BEQ.N    ??I2C_GetITStatus_1
        LDR.N    R0,??DataTable52_41  ;; 0x2000002
        CMP      R5,R0
        BEQ.N    ??I2C_GetITStatus_1
        LDR.N    R0,??DataTable52_42  ;; 0x2000001
        CMP      R5,R0
        BEQ.N    ??I2C_GetITStatus_1
        MOV      R2,#+1312
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_I2C_GET_IT(I2C_IT)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_GetITStatus_1:
        LDRH     R0,[R4, #+4]
        ANDS     R0,R0,R5, LSR #+16
        ANDS     R0,R0,#0x700
        MOVS     R7,R0
        LSLS     R5,R5,#+8
        LSRS     R5,R5,#+8
        LDRH     R0,[R4, #+20]
        TST      R0,R5
        BEQ.N    ??I2C_GetITStatus_2
        CMP      R7,#+0
        BEQ.N    ??I2C_GetITStatus_2
        MOVS     R0,#+1
        MOVS     R6,R0
        B.N      ??I2C_GetITStatus_3
??I2C_GetITStatus_2:
        MOVS     R0,#+0
        MOVS     R6,R0
??I2C_GetITStatus_3:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_I2C_DUTY_CYCLE(I2C...">_1`:
        ; Initializer data, 36 bytes
        DC8 73, 83, 95, 73, 50, 67, 95, 68, 85, 84
        DC8 89, 95, 67, 89, 67, 76, 69, 40, 73, 50
        DC8 67, 95, 68, 117, 116, 121, 67, 121, 99, 108
        DC8 101, 41, 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_I2C_NACK_POSITION(...">`:
        ; Initializer data, 40 bytes
        DC8 73, 83, 95, 73, 50, 67, 95, 78, 65, 67
        DC8 75, 95, 80, 79, 83, 73, 84, 73, 79, 78
        DC8 40, 73, 50, 67, 95, 78, 65, 67, 75, 80
        DC8 111, 115, 105, 116, 105, 111, 110, 41, 0, 0

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_ClearITPendingBit:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.N    R0,??DataTable52_1  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_ClearITPendingBit_0
        LDR.N    R0,??DataTable52  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_ClearITPendingBit_0
        MOVW     R2,#+1369
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_I2C_ALL_PERIPH(I2Cx)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_ClearITPendingBit_0:
        MOVW     R0,#+8447
        TST      R5,R0
        BNE.N    ??I2C_ClearITPendingBit_1
        CMP      R5,#+0
        BNE.N    ??I2C_ClearITPendingBit_2
??I2C_ClearITPendingBit_1:
        MOVW     R2,#+1370
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_I2C_CLEAR_IT(I2C_IT)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2C_ClearITPendingBit_2:
        LSLS     R0,R5,#+8
        LSRS     R0,R0,#+8
        MOVS     R6,R0
        MVNS     R0,R6
        STRH     R0,[R4, #+20]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable52:
        DC32     0x40005800

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable52_1:
        DC32     0x40005400

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable52_2:
        DC32     0x60082

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable52_3:
        DC32     0x860080

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable52_4:
        DC32     0x20040

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable52_5:
        DC32     0x820040

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable52_6:
        DC32     0x120040

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable52_7:
        DC32     0x60084

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable52_8:
        DC32     0x860084

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable52_9:
        DC32     0x160084

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable52_10:
        DC32     0x30001

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable52_11:
        DC32     0x70082

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable52_12:
        DC32     0x30002

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable52_13:
        DC32     0x30040

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable52_14:
        DC32     0x70084

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable52_15:
        DC32     0x70080

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable52_16:
        DC32     0x30008

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable52_17:
        DC32     0x10008000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable52_18:
        DC32     0x10004000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable52_19:
        DC32     0x10000800

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable52_20:
        DC32     0x10000400

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable52_21:
        DC32     0x10000200

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable52_22:
        DC32     0x10000100

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable52_23:
        DC32     0x10000080

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable52_24:
        DC32     0x10000040

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable52_25:
        DC32     0x10000010

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable52_26:
        DC32     0x10000008

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable52_27:
        DC32     0x10000004

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable52_28:
        DC32     0x10000002

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable52_29:
        DC32     0x10000001

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable52_30:
        DC32     0x1008000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable52_31:
        DC32     0x1004000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable52_32:
        DC32     0x1001000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable52_33:
        DC32     0x1000800

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable52_34:
        DC32     0x1000400

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable52_35:
        DC32     0x1000200

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable52_36:
        DC32     0x6000080

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable52_37:
        DC32     0x6000040

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable52_38:
        DC32     0x2000010

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable52_39:
        DC32     0x2000008

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable52_40:
        DC32     0x2000004

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable52_41:
        DC32     0x2000002

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable52_42:
        DC32     0x2000001

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_I2C_SMBUS_ALERT(I2...">`:
        ; Initializer data, 36 bytes
        DC8 73, 83, 95, 73, 50, 67, 95, 83, 77, 66
        DC8 85, 83, 95, 65, 76, 69, 82, 84, 40, 73
        DC8 50, 67, 95, 83, 77, 66, 117, 115, 65, 108
        DC8 101, 114, 116, 41, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_I2C_PEC_POSITION(I...">`:
        ; Initializer data, 40 bytes
        DC8 73, 83, 95, 73, 50, 67, 95, 80, 69, 67
        DC8 95, 80, 79, 83, 73, 84, 73, 79, 78, 40
        DC8 73, 50, 67, 95, 80, 69, 67, 80, 111, 115
        DC8 105, 116, 105, 111, 110, 41, 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_I2C_REGISTER(I2C_R...">`:
        ; Initializer data, 32 bytes
        DC8 73, 83, 95, 73, 50, 67, 95, 82, 69, 71
        DC8 73, 83, 84, 69, 82, 40, 73, 50, 67, 95
        DC8 82, 101, 103, 105, 115, 116, 101, 114, 41, 0
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_I2C_CONFIG_IT(I2C_IT)">`:
        ; Initializer data, 28 bytes
        DC8 73, 83, 95, 73, 50, 67, 95, 67, 79, 78
        DC8 70, 73, 71, 95, 73, 84, 40, 73, 50, 67
        DC8 95, 73, 84, 41, 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_I2C_EVENT(I2C_EVENT)">`:
        ; Initializer data, 24 bytes
        DC8 73, 83, 95, 73, 50, 67, 95, 69, 86, 69
        DC8 78, 84, 40, 73, 50, 67, 95, 69, 86, 69
        DC8 78, 84, 41, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_I2C_GET_FLAG(I2C_F...">`:
        ; Initializer data, 28 bytes
        DC8 73, 83, 95, 73, 50, 67, 95, 71, 69, 84
        DC8 95, 70, 76, 65, 71, 40, 73, 50, 67, 95
        DC8 70, 76, 65, 71, 41, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_I2C_CLEAR_FLAG(I2C...">`:
        ; Initializer data, 28 bytes
        DC8 73, 83, 95, 73, 50, 67, 95, 67, 76, 69
        DC8 65, 82, 95, 70, 76, 65, 71, 40, 73, 50
        DC8 67, 95, 70, 76, 65, 71, 41, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_I2C_GET_IT(I2C_IT)">`:
        ; Initializer data, 24 bytes
        DC8 73, 83, 95, 73, 50, 67, 95, 71, 69, 84
        DC8 95, 73, 84, 40, 73, 50, 67, 95, 73, 84
        DC8 41, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_I2C_CLEAR_IT(I2C_IT)">`:
        ; Initializer data, 24 bytes
        DC8 73, 83, 95, 73, 50, 67, 95, 67, 76, 69
        DC8 65, 82, 95, 73, 84, 40, 73, 50, 67, 95
        DC8 73, 84, 41, 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_I2C_CLOCK_SPEED(I2...">`:
        ; Initializer data, 52 bytes
        DC8 73, 83, 95, 73, 50, 67, 95, 67, 76, 79
        DC8 67, 75, 95, 83, 80, 69, 69, 68, 40, 73
        DC8 50, 67, 95, 73, 110, 105, 116, 83, 116, 114
        DC8 117, 99, 116, 45, 62, 73, 50, 67, 95, 67
        DC8 108, 111, 99, 107, 83, 112, 101, 101, 100, 41
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_I2C_MODE(I2C_InitS...">`:
        ; Initializer data, 40 bytes
        DC8 73, 83, 95, 73, 50, 67, 95, 77, 79, 68
        DC8 69, 40, 73, 50, 67, 95, 73, 110, 105, 116
        DC8 83, 116, 114, 117, 99, 116, 45, 62, 73, 50
        DC8 67, 95, 77, 111, 100, 101, 41, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_I2C_DUTY_CYCLE(I2C...">`:
        ; Initializer data, 52 bytes
        DC8 73, 83, 95, 73, 50, 67, 95, 68, 85, 84
        DC8 89, 95, 67, 89, 67, 76, 69, 40, 73, 50
        DC8 67, 95, 73, 110, 105, 116, 83, 116, 114, 117
        DC8 99, 116, 45, 62, 73, 50, 67, 95, 68, 117
        DC8 116, 121, 67, 121, 99, 108, 101, 41, 0, 0
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_I2C_OWN_ADDRESS1(I...">`:
        ; Initializer data, 56 bytes
        DC8 73, 83, 95, 73, 50, 67, 95, 79, 87, 78
        DC8 95, 65, 68, 68, 82, 69, 83, 83, 49, 40
        DC8 73, 50, 67, 95, 73, 110, 105, 116, 83, 116
        DC8 114, 117, 99, 116, 45, 62, 73, 50, 67, 95
        DC8 79, 119, 110, 65, 100, 100, 114, 101, 115, 115
        DC8 49, 41, 0, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_I2C_ACK_STATE(I2C_...">`:
        ; Initializer data, 44 bytes
        DC8 73, 83, 95, 73, 50, 67, 95, 65, 67, 75
        DC8 95, 83, 84, 65, 84, 69, 40, 73, 50, 67
        DC8 95, 73, 110, 105, 116, 83, 116, 114, 117, 99
        DC8 116, 45, 62, 73, 50, 67, 95, 65, 99, 107
        DC8 41, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_I2C_ACKNOWLEDGE_AD...">`:
        ; Initializer data, 68 bytes
        DC8 73, 83, 95, 73, 50, 67, 95, 65, 67, 75
        DC8 78, 79, 87, 76, 69, 68, 71, 69, 95, 65
        DC8 68, 68, 82, 69, 83, 83, 40, 73, 50, 67
        DC8 95, 73, 110, 105, 116, 83, 116, 114, 117, 99
        DC8 116, 45, 62, 73, 50, 67, 95, 65, 99, 107
        DC8 110, 111, 119, 108, 101, 100, 103, 101, 100, 65
        DC8 100, 100, 114, 101, 115, 115, 41, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_I2C_DIRECTION(I2C_...">`:
        ; Initializer data, 32 bytes
        DC8 73, 83, 95, 73, 50, 67, 95, 68, 73, 82
        DC8 69, 67, 84, 73, 79, 78, 40, 73, 50, 67
        DC8 95, 68, 105, 114, 101, 99, 116, 105, 111, 110
        DC8 41, 0

        END
// 
//   344 bytes in section .rodata
// 4 714 bytes in section .text
// 
// 4 714 bytes of CODE  memory
//   344 bytes of CONST memory
//
//Errors: none
//Warnings: none
