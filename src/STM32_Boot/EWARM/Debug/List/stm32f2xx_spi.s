///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.10.2.52244/W32 for ARM    04/Dec/2013  10:58:13 /
// Copyright 1999-2010 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\STM32F2xx_StdPeriph_Driver\src\stm32f /
//                    2xx_spi.c                                               /
//    Command line =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\STM32F2xx_StdPeriph_Driver\src\stm32f /
//                    2xx_spi.c -D STM32F10X_CL -D USE_STDPERIPH_DRIVER -lcN  /
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
//                    IAR6.1\STM32_Boot\EWARM\Debug\List\stm32f2xx_spi.s      /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f2xx_spi

        EXTERN RCC_APB1PeriphResetCmd
        EXTERN RCC_APB2PeriphResetCmd
        EXTERN __aeabi_assert
        EXTERN __iar_EmptyStepPoint

        PUBLIC I2S_Cmd
        PUBLIC I2S_Init
        PUBLIC I2S_StructInit
        PUBLIC SPI_BiDirectionalLineConfig
        PUBLIC SPI_CalculateCRC
        PUBLIC SPI_Cmd
        PUBLIC SPI_DataSizeConfig
        PUBLIC SPI_GetCRC
        PUBLIC SPI_GetCRCPolynomial
        PUBLIC SPI_I2S_ClearFlag
        PUBLIC SPI_I2S_ClearITPendingBit
        PUBLIC SPI_I2S_DMACmd
        PUBLIC SPI_I2S_DeInit
        PUBLIC SPI_I2S_GetFlagStatus
        PUBLIC SPI_I2S_GetITStatus
        PUBLIC SPI_I2S_ITConfig
        PUBLIC SPI_I2S_ReceiveData
        PUBLIC SPI_I2S_SendData
        PUBLIC SPI_Init
        PUBLIC SPI_NSSInternalSoftwareConfig
        PUBLIC SPI_SSOutputCmd
        PUBLIC SPI_StructInit
        PUBLIC SPI_TIModeCmd
        PUBLIC SPI_TransmitCRC


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SPI_I2S_DeInit:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.W    R0,??DataTable46  ;; 0x40013000
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_DeInit_0
        LDR.W    R0,??DataTable47  ;; 0x40003800
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_DeInit_0
        LDR.W    R0,??DataTable48  ;; 0x40003c00
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_DeInit_0
        MOVS     R2,#+174
        LDR.W    R1,??DataTable47_1
        LDR.W    R0,??DataTable47_2
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SPI_I2S_DeInit_0:
        LDR.W    R0,??DataTable46  ;; 0x40013000
        CMP      R4,R0
        BNE.N    ??SPI_I2S_DeInit_1
        MOVS     R1,#+1
        MOV      R0,#+4096
        BL       RCC_APB2PeriphResetCmd
        MOVS     R1,#+0
        MOV      R0,#+4096
        BL       RCC_APB2PeriphResetCmd
        B.N      ??SPI_I2S_DeInit_2
??SPI_I2S_DeInit_1:
        LDR.W    R0,??DataTable47  ;; 0x40003800
        CMP      R4,R0
        BNE.N    ??SPI_I2S_DeInit_3
        MOVS     R1,#+1
        MOV      R0,#+16384
        BL       RCC_APB1PeriphResetCmd
        MOVS     R1,#+0
        MOV      R0,#+16384
        BL       RCC_APB1PeriphResetCmd
        B.N      ??SPI_I2S_DeInit_2
??SPI_I2S_DeInit_3:
        LDR.W    R0,??DataTable48  ;; 0x40003c00
        CMP      R4,R0
        BNE.N    ??SPI_I2S_DeInit_2
        MOVS     R1,#+1
        MOV      R0,#+32768
        BL       RCC_APB1PeriphResetCmd
        MOVS     R1,#+0
        MOV      R0,#+32768
        BL       RCC_APB1PeriphResetCmd
??SPI_I2S_DeInit_2:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SPI_Init:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.W    R0,??DataTable46  ;; 0x40013000
        CMP      R4,R0
        BEQ.N    ??SPI_Init_0
        LDR.W    R0,??DataTable47  ;; 0x40003800
        CMP      R4,R0
        BEQ.N    ??SPI_Init_0
        LDR.W    R0,??DataTable48  ;; 0x40003c00
        CMP      R4,R0
        BEQ.N    ??SPI_Init_0
        MOVS     R2,#+215
        LDR.W    R1,??DataTable47_1
        LDR.W    R0,??DataTable47_2
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SPI_Init_0:
        LDRH     R0,[R5, #+0]
        CMP      R0,#+0
        BEQ.N    ??SPI_Init_1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+1024
        BEQ.N    ??SPI_Init_1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+32768
        BEQ.N    ??SPI_Init_1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+49152
        BEQ.N    ??SPI_Init_1
        MOVS     R2,#+218
        LDR.W    R1,??DataTable47_1
        LDR.W    R0,??DataTable48_1
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SPI_Init_1:
        LDRH     R0,[R5, #+2]
        MOV      R1,#+260
        CMP      R0,R1
        BEQ.N    ??SPI_Init_2
        LDRH     R0,[R5, #+2]
        CMP      R0,#+0
        BEQ.N    ??SPI_Init_2
        MOVS     R2,#+219
        LDR.W    R1,??DataTable47_1
        LDR.W    R0,??DataTable48_2
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SPI_Init_2:
        LDRH     R0,[R5, #+4]
        CMP      R0,#+2048
        BEQ.N    ??SPI_Init_3
        LDRH     R0,[R5, #+4]
        CMP      R0,#+0
        BEQ.N    ??SPI_Init_3
        MOVS     R2,#+220
        LDR.W    R1,??DataTable47_1
        LDR.W    R0,??DataTable49
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SPI_Init_3:
        LDRH     R0,[R5, #+6]
        CMP      R0,#+0
        BEQ.N    ??SPI_Init_4
        LDRH     R0,[R5, #+6]
        CMP      R0,#+2
        BEQ.N    ??SPI_Init_4
        MOVS     R2,#+221
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable49_1
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SPI_Init_4:
        LDRH     R0,[R5, #+8]
        CMP      R0,#+0
        BEQ.N    ??SPI_Init_5
        LDRH     R0,[R5, #+8]
        CMP      R0,#+1
        BEQ.N    ??SPI_Init_5
        MOVS     R2,#+222
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable49_2
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SPI_Init_5:
        LDRH     R0,[R5, #+10]
        MOV      R1,#+512
        CMP      R0,R1
        BEQ.N    ??SPI_Init_6
        LDRH     R0,[R5, #+10]
        CMP      R0,#+0
        BEQ.N    ??SPI_Init_6
        MOVS     R2,#+223
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable49_3
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SPI_Init_6:
        LDRH     R0,[R5, #+12]
        CMP      R0,#+0
        BEQ.N    ??SPI_Init_7
        LDRH     R0,[R5, #+12]
        CMP      R0,#+8
        BEQ.N    ??SPI_Init_7
        LDRH     R0,[R5, #+12]
        CMP      R0,#+16
        BEQ.N    ??SPI_Init_7
        LDRH     R0,[R5, #+12]
        CMP      R0,#+24
        BEQ.N    ??SPI_Init_7
        LDRH     R0,[R5, #+12]
        CMP      R0,#+32
        BEQ.N    ??SPI_Init_7
        LDRH     R0,[R5, #+12]
        CMP      R0,#+40
        BEQ.N    ??SPI_Init_7
        LDRH     R0,[R5, #+12]
        CMP      R0,#+48
        BEQ.N    ??SPI_Init_7
        LDRH     R0,[R5, #+12]
        CMP      R0,#+56
        BEQ.N    ??SPI_Init_7
        MOVS     R2,#+224
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable49_4
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SPI_Init_7:
        LDRH     R0,[R5, #+14]
        CMP      R0,#+0
        BEQ.N    ??SPI_Init_8
        LDRH     R0,[R5, #+14]
        CMP      R0,#+128
        BEQ.N    ??SPI_Init_8
        MOVS     R2,#+225
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable49_5
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SPI_Init_8:
        LDRH     R0,[R5, #+16]
        CMP      R0,#+1
        BCS.N    ??SPI_Init_9
        MOVS     R2,#+226
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable49_6
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SPI_Init_9:
        LDRH     R0,[R4, #+0]
        MOVS     R6,R0
        ANDS     R6,R6,#0x3040
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
        LDRH     R1,[R5, #+14]
        ORRS     R0,R1,R0
        ORRS     R6,R0,R6
        STRH     R6,[R4, #+0]
        LDRH     R0,[R4, #+28]
        MOVW     R1,#+63487
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+28]
        LDRH     R0,[R5, #+16]
        STRH     R0,[R4, #+16]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2S_Init:
        PUSH     {R1-R11,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        MOVS     R7,#+2
        MOVS     R8,#+0
        MOVS     R9,#+1
        MOVS     R10,#+0
        MOVS     R11,#+0
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        LDR.W    R0,??DataTable47  ;; 0x40003800
        CMP      R4,R0
        BEQ.N    ??I2S_Init_0
        LDR.W    R0,??DataTable48  ;; 0x40003c00
        CMP      R4,R0
        BEQ.N    ??I2S_Init_0
        MOVW     R2,#+283
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable49_7
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2S_Init_0:
        LDRH     R0,[R5, #+0]
        CMP      R0,#+0
        BEQ.N    ??I2S_Init_1
        LDRH     R0,[R5, #+0]
        MOV      R1,#+256
        CMP      R0,R1
        BEQ.N    ??I2S_Init_1
        LDRH     R0,[R5, #+0]
        MOV      R1,#+512
        CMP      R0,R1
        BEQ.N    ??I2S_Init_1
        LDRH     R0,[R5, #+0]
        MOV      R1,#+768
        CMP      R0,R1
        BEQ.N    ??I2S_Init_1
        MOV      R2,#+284
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable49_8
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2S_Init_1:
        LDRH     R0,[R5, #+2]
        CMP      R0,#+0
        BEQ.N    ??I2S_Init_2
        LDRH     R0,[R5, #+2]
        CMP      R0,#+16
        BEQ.N    ??I2S_Init_2
        LDRH     R0,[R5, #+2]
        CMP      R0,#+32
        BEQ.N    ??I2S_Init_2
        LDRH     R0,[R5, #+2]
        CMP      R0,#+48
        BEQ.N    ??I2S_Init_2
        LDRH     R0,[R5, #+2]
        CMP      R0,#+176
        BEQ.N    ??I2S_Init_2
        MOVW     R2,#+285
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable49_9
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2S_Init_2:
        LDRH     R0,[R5, #+4]
        CMP      R0,#+0
        BEQ.N    ??I2S_Init_3
        LDRH     R0,[R5, #+4]
        CMP      R0,#+1
        BEQ.N    ??I2S_Init_3
        LDRH     R0,[R5, #+4]
        CMP      R0,#+3
        BEQ.N    ??I2S_Init_3
        LDRH     R0,[R5, #+4]
        CMP      R0,#+5
        BEQ.N    ??I2S_Init_3
        MOV      R2,#+286
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable49_10
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2S_Init_3:
        LDRH     R0,[R5, #+6]
        MOV      R1,#+512
        CMP      R0,R1
        BEQ.N    ??I2S_Init_4
        LDRH     R0,[R5, #+6]
        CMP      R0,#+0
        BEQ.N    ??I2S_Init_4
        MOVW     R2,#+287
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable49_11
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2S_Init_4:
        LDR      R0,[R5, #+8]
        CMP      R0,#+8000
        BCC.N    ??I2S_Init_5
        LDR      R0,[R5, #+8]
        LDR.W    R1,??DataTable49_12  ;; 0x2ee01
        CMP      R0,R1
        BCC.N    ??I2S_Init_6
??I2S_Init_5:
        LDR      R0,[R5, #+8]
        CMP      R0,#+2
        BEQ.N    ??I2S_Init_6
        MOV      R2,#+288
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable49_13
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2S_Init_6:
        LDRH     R0,[R5, #+12]
        CMP      R0,#+0
        BEQ.N    ??I2S_Init_7
        LDRH     R0,[R5, #+12]
        CMP      R0,#+8
        BEQ.N    ??I2S_Init_7
        MOVW     R2,#+289
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable49_14
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2S_Init_7:
        LDRH     R0,[R4, #+28]
        MOVW     R1,#+61504
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+28]
        MOVS     R0,#+2
        STRH     R0,[R4, #+32]
        LDRH     R0,[R4, #+28]
        MOVS     R6,R0
        LDR      R0,[R5, #+8]
        CMP      R0,#+2
        BNE.N    ??I2S_Init_8
        MOVS     R0,#+0
        MOV      R8,R0
        MOVS     R0,#+2
        MOVS     R7,R0
        B.N      ??I2S_Init_9
??I2S_Init_8:
        LDRH     R0,[R5, #+4]
        CMP      R0,#+0
        BNE.N    ??I2S_Init_10
        MOVS     R0,#+1
        MOV      R9,R0
        B.N      ??I2S_Init_11
??I2S_Init_10:
        MOVS     R0,#+2
        MOV      R9,R0
??I2S_Init_11:
        LDR.W    R0,??DataTable49_15  ;; 0x40023808
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+8
        BPL.N    ??I2S_Init_12
        LDR.W    R0,??DataTable49_15  ;; 0x40023808
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x800000
        LDR.W    R1,??DataTable49_15  ;; 0x40023808
        STR      R0,[R1, #+0]
??I2S_Init_12:
        LDR.W    R0,??DataTable49_16  ;; 0x40023884
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+6,#+9
        STR      R0,[SP, #+4]
        LDR.W    R0,??DataTable49_16  ;; 0x40023884
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+28,#+3
        STR      R0,[SP, #+0]
        LDR.W    R0,??DataTable49_17  ;; 0x40023804
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x3F
        STR      R0,[SP, #+8]
        LDR.W    R0,??DataTable50  ;; 0x7a1200
        LDR      R1,[SP, #+8]
        UDIV     R0,R0,R1
        LDR      R1,[SP, #+4]
        MULS     R0,R1,R0
        LDR      R1,[SP, #+0]
        UDIV     R0,R0,R1
        MOV      R11,R0
        LDRH     R0,[R5, #+6]
        MOV      R1,#+512
        CMP      R0,R1
        BNE.N    ??I2S_Init_13
        LSRS     R0,R11,#+8
        MOVS     R1,#+10
        MULS     R0,R1,R0
        LDR      R1,[R5, #+8]
        UDIV     R0,R0,R1
        ADDS     R0,R0,#+5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOV      R10,R0
        B.N      ??I2S_Init_14
??I2S_Init_13:
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        LSLS     R0,R9,#+5
        UDIV     R0,R11,R0
        MOVS     R1,#+10
        MULS     R0,R1,R0
        LDR      R1,[R5, #+8]
        UDIV     R0,R0,R1
        ADDS     R0,R0,#+5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOV      R10,R0
??I2S_Init_14:
        MOVS     R0,#+10
        UDIV     R10,R10,R0
        ANDS     R0,R10,#0x1
        MOV      R8,R0
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        SUBS     R0,R10,R8
        LSRS     R0,R0,#+1
        MOVS     R7,R0
        LSLS     R8,R8,#+8
??I2S_Init_9:
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R7,#+2
        BCC.N    ??I2S_Init_15
        MOV      R0,#+256
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R7,R0
        BCC.N    ??I2S_Init_16
??I2S_Init_15:
        MOVS     R0,#+2
        MOVS     R7,R0
        MOVS     R0,#+0
        MOV      R8,R0
??I2S_Init_16:
        LDRH     R0,[R5, #+6]
        ORRS     R0,R0,R8
        ORRS     R0,R0,R7
        STRH     R0,[R4, #+32]
        LDRH     R0,[R5, #+0]
        LDRH     R1,[R5, #+2]
        LDRH     R2,[R5, #+4]
        LDRH     R3,[R5, #+12]
        ORRS     R2,R3,R2
        ORRS     R1,R2,R1
        ORRS     R0,R1,R0
        ORRS     R0,R0,#0x800
        ORRS     R6,R0,R6
        STRH     R6,[R4, #+28]
        POP      {R0-R2,R4-R11,PC}  ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SPI_StructInit:
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
        MOVS     R1,#+0
        STRH     R1,[R0, #+14]
        MOVS     R1,#+7
        STRH     R1,[R0, #+16]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2S_StructInit:
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
        MOVS     R1,#+0
        STRH     R1,[R0, #+2]
        MOVS     R1,#+0
        STRH     R1,[R0, #+4]
        MOVS     R1,#+0
        STRH     R1,[R0, #+6]
        MOVS     R1,#+2
        STR      R1,[R0, #+8]
        MOVS     R1,#+0
        STRH     R1,[R0, #+12]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SPI_Cmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable46  ;; 0x40013000
        CMP      R4,R0
        BEQ.N    ??SPI_Cmd_0
        LDR.W    R0,??DataTable47  ;; 0x40003800
        CMP      R4,R0
        BEQ.N    ??SPI_Cmd_0
        LDR.W    R0,??DataTable48  ;; 0x40003c00
        CMP      R4,R0
        BEQ.N    ??SPI_Cmd_0
        MOV      R2,#+466
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SPI_ALL_PERIPH(SPIx)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SPI_Cmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??SPI_Cmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??SPI_Cmd_1
        MOVW     R2,#+467
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SPI_Cmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??SPI_Cmd_2
        LDRH     R0,[R4, #+0]
        ORRS     R0,R0,#0x40
        STRH     R0,[R4, #+0]
        B.N      ??SPI_Cmd_3
??SPI_Cmd_2:
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+65471
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+0]
??SPI_Cmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2S_Cmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable47  ;; 0x40003800
        CMP      R4,R0
        BEQ.N    ??I2S_Cmd_0
        LDR.W    R0,??DataTable48  ;; 0x40003c00
        CMP      R4,R0
        BEQ.N    ??I2S_Cmd_0
        MOV      R2,#+490
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SPI_23_PERIPH(SPIx)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2S_Cmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2S_Cmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??I2S_Cmd_1
        MOVW     R2,#+491
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??I2S_Cmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2S_Cmd_2
        LDRH     R0,[R4, #+28]
        ORRS     R0,R0,#0x400
        STRH     R0,[R4, #+28]
        B.N      ??I2S_Cmd_3
??I2S_Cmd_2:
        LDRH     R0,[R4, #+28]
        MOVW     R1,#+64511
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+28]
??I2S_Cmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SPI_DataSizeConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable46  ;; 0x40013000
        CMP      R4,R0
        BEQ.N    ??SPI_DataSizeConfig_0
        LDR.W    R0,??DataTable47  ;; 0x40003800
        CMP      R4,R0
        BEQ.N    ??SPI_DataSizeConfig_0
        LDR.W    R0,??DataTable48  ;; 0x40003c00
        CMP      R4,R0
        BEQ.N    ??SPI_DataSizeConfig_0
        MOVW     R2,#+517
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SPI_ALL_PERIPH(SPIx)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SPI_DataSizeConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2048
        BEQ.N    ??SPI_DataSizeConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??SPI_DataSizeConfig_1
        MOVW     R2,#+518
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SPI_DATASIZE(SPI_D...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SPI_DataSizeConfig_1:
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+63487
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+0]
        LDRH     R0,[R4, #+0]
        ORRS     R0,R5,R0
        STRH     R0,[R4, #+0]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SPI_BiDirectionalLineConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable46  ;; 0x40013000
        CMP      R4,R0
        BEQ.N    ??SPI_BiDirectionalLineConfig_0
        LDR.W    R0,??DataTable47  ;; 0x40003800
        CMP      R4,R0
        BEQ.N    ??SPI_BiDirectionalLineConfig_0
        LDR.W    R0,??DataTable48  ;; 0x40003c00
        CMP      R4,R0
        BEQ.N    ??SPI_BiDirectionalLineConfig_0
        MOVW     R2,#+537
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SPI_ALL_PERIPH(SPIx)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SPI_BiDirectionalLineConfig_0:
        MOVW     R0,#+49151
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??SPI_BiDirectionalLineConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+16384
        BEQ.N    ??SPI_BiDirectionalLineConfig_1
        MOVW     R2,#+538
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SPI_DIRECTION(SPI_...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SPI_BiDirectionalLineConfig_1:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+16384
        BNE.N    ??SPI_BiDirectionalLineConfig_2
        LDRH     R0,[R4, #+0]
        ORRS     R0,R0,#0x4000
        STRH     R0,[R4, #+0]
        B.N      ??SPI_BiDirectionalLineConfig_3
??SPI_BiDirectionalLineConfig_2:
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+49151
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+0]
??SPI_BiDirectionalLineConfig_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SPI_NSSInternalSoftwareConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable46  ;; 0x40013000
        CMP      R4,R0
        BEQ.N    ??SPI_NSSInternalSoftwareConfig_0
        LDR.W    R0,??DataTable47  ;; 0x40003800
        CMP      R4,R0
        BEQ.N    ??SPI_NSSInternalSoftwareConfig_0
        LDR.W    R0,??DataTable48  ;; 0x40003c00
        CMP      R4,R0
        BEQ.N    ??SPI_NSSInternalSoftwareConfig_0
        MOVW     R2,#+563
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SPI_ALL_PERIPH(SPIx)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SPI_NSSInternalSoftwareConfig_0:
        MOV      R0,#+256
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??SPI_NSSInternalSoftwareConfig_1
        MOVW     R0,#+65279
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??SPI_NSSInternalSoftwareConfig_1
        MOV      R2,#+564
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SPI_NSS_INTERNAL(S...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SPI_NSSInternalSoftwareConfig_1:
        MOVW     R0,#+65279
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??SPI_NSSInternalSoftwareConfig_2
        LDRH     R0,[R4, #+0]
        MOV      R1,#+256
        ORRS     R0,R1,R0
        STRH     R0,[R4, #+0]
        B.N      ??SPI_NSSInternalSoftwareConfig_3
??SPI_NSSInternalSoftwareConfig_2:
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+65279
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+0]
??SPI_NSSInternalSoftwareConfig_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SPI_SSOutputCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable46  ;; 0x40013000
        CMP      R4,R0
        BEQ.N    ??SPI_SSOutputCmd_0
        LDR.W    R0,??DataTable47  ;; 0x40003800
        CMP      R4,R0
        BEQ.N    ??SPI_SSOutputCmd_0
        LDR.W    R0,??DataTable48  ;; 0x40003c00
        CMP      R4,R0
        BEQ.N    ??SPI_SSOutputCmd_0
        MOVW     R2,#+587
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SPI_ALL_PERIPH(SPIx)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SPI_SSOutputCmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??SPI_SSOutputCmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??SPI_SSOutputCmd_1
        MOV      R2,#+588
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SPI_SSOutputCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??SPI_SSOutputCmd_2
        LDRH     R0,[R4, #+4]
        ORRS     R0,R0,#0x4
        STRH     R0,[R4, #+4]
        B.N      ??SPI_SSOutputCmd_3
??SPI_SSOutputCmd_2:
        LDRH     R0,[R4, #+4]
        MOVW     R1,#+65531
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+4]
??SPI_SSOutputCmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SPI_TIModeCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable46  ;; 0x40013000
        CMP      R4,R0
        BEQ.N    ??SPI_TIModeCmd_0
        LDR.W    R0,??DataTable47  ;; 0x40003800
        CMP      R4,R0
        BEQ.N    ??SPI_TIModeCmd_0
        LDR.W    R0,??DataTable48  ;; 0x40003c00
        CMP      R4,R0
        BEQ.N    ??SPI_TIModeCmd_0
        MOVW     R2,#+618
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SPI_ALL_PERIPH(SPIx)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SPI_TIModeCmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??SPI_TIModeCmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??SPI_TIModeCmd_1
        MOVW     R2,#+619
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SPI_TIModeCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??SPI_TIModeCmd_2
        LDRH     R0,[R4, #+4]
        ORRS     R0,R0,#0x10
        STRH     R0,[R4, #+4]
        B.N      ??SPI_TIModeCmd_3
??SPI_TIModeCmd_2:
        LDRH     R0,[R4, #+4]
        MOVW     R1,#+65519
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+4]
??SPI_TIModeCmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SPI_I2S_ReceiveData:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.N    R0,??DataTable46  ;; 0x40013000
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_ReceiveData_0
        LDR.W    R0,??DataTable47  ;; 0x40003800
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_ReceiveData_0
        LDR.W    R0,??DataTable48  ;; 0x40003c00
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_ReceiveData_0
        MOVW     R2,#+669
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SPI_ALL_PERIPH(SPIx)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SPI_I2S_ReceiveData_0:
        LDRH     R0,[R4, #+12]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SPI_I2S_SendData:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable46  ;; 0x40013000
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_SendData_0
        LDR.N    R0,??DataTable47  ;; 0x40003800
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_SendData_0
        LDR.W    R0,??DataTable48  ;; 0x40003c00
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_SendData_0
        MOVW     R2,#+685
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SPI_ALL_PERIPH(SPIx)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SPI_I2S_SendData_0:
        STRH     R5,[R4, #+12]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SPI_CalculateCRC:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable46  ;; 0x40013000
        CMP      R4,R0
        BEQ.N    ??SPI_CalculateCRC_0
        LDR.N    R0,??DataTable47  ;; 0x40003800
        CMP      R4,R0
        BEQ.N    ??SPI_CalculateCRC_0
        LDR.N    R0,??DataTable48  ;; 0x40003c00
        CMP      R4,R0
        BEQ.N    ??SPI_CalculateCRC_0
        MOVW     R2,#+774
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SPI_ALL_PERIPH(SPIx)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SPI_CalculateCRC_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??SPI_CalculateCRC_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??SPI_CalculateCRC_1
        MOVW     R2,#+775
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SPI_CalculateCRC_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??SPI_CalculateCRC_2
        LDRH     R0,[R4, #+0]
        ORRS     R0,R0,#0x2000
        STRH     R0,[R4, #+0]
        B.N      ??SPI_CalculateCRC_3
??SPI_CalculateCRC_2:
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+57343
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+0]
??SPI_CalculateCRC_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SPI_TransmitCRC:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.N    R0,??DataTable46  ;; 0x40013000
        CMP      R4,R0
        BEQ.N    ??SPI_TransmitCRC_0
        LDR.N    R0,??DataTable47  ;; 0x40003800
        CMP      R4,R0
        BEQ.N    ??SPI_TransmitCRC_0
        LDR.N    R0,??DataTable48  ;; 0x40003c00
        CMP      R4,R0
        BEQ.N    ??SPI_TransmitCRC_0
        MOV      R2,#+796
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SPI_ALL_PERIPH(SPIx)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SPI_TransmitCRC_0:
        LDRH     R0,[R4, #+0]
        ORRS     R0,R0,#0x1000
        STRH     R0,[R4, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SPI_GetCRC:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.N    R0,??DataTable46  ;; 0x40013000
        CMP      R4,R0
        BEQ.N    ??SPI_GetCRC_0
        LDR.N    R0,??DataTable47  ;; 0x40003800
        CMP      R4,R0
        BEQ.N    ??SPI_GetCRC_0
        LDR.N    R0,??DataTable48  ;; 0x40003c00
        CMP      R4,R0
        BEQ.N    ??SPI_GetCRC_0
        MOVW     R2,#+815
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SPI_ALL_PERIPH(SPIx)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SPI_GetCRC_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??SPI_GetCRC_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??SPI_GetCRC_1
        MOV      R2,#+816
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SPI_CRC(SPI_CRC)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SPI_GetCRC_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??SPI_GetCRC_2
        LDRH     R0,[R4, #+24]
        MOVS     R6,R0
        B.N      ??SPI_GetCRC_3
??SPI_GetCRC_2:
        LDRH     R0,[R4, #+20]
        MOVS     R6,R0
??SPI_GetCRC_3:
        MOVS     R0,R6
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SPI_GetCRCPolynomial:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.N    R0,??DataTable46  ;; 0x40013000
        CMP      R4,R0
        BEQ.N    ??SPI_GetCRCPolynomial_0
        LDR.N    R0,??DataTable47  ;; 0x40003800
        CMP      R4,R0
        BEQ.N    ??SPI_GetCRCPolynomial_0
        LDR.N    R0,??DataTable48  ;; 0x40003c00
        CMP      R4,R0
        BEQ.N    ??SPI_GetCRCPolynomial_0
        MOVW     R2,#+839
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SPI_ALL_PERIPH(SPIx)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SPI_GetCRCPolynomial_0:
        LDRH     R0,[R4, #+16]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SPI_I2S_DMACmd:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        LDR.N    R0,??DataTable46  ;; 0x40013000
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_DMACmd_0
        LDR.N    R0,??DataTable47  ;; 0x40003800
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_DMACmd_0
        LDR.N    R0,??DataTable48  ;; 0x40003c00
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_DMACmd_0
        MOV      R2,#+876
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SPI_ALL_PERIPH(SPIx)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SPI_I2S_DMACmd_0:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??SPI_I2S_DMACmd_1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BEQ.N    ??SPI_I2S_DMACmd_1
        MOVW     R2,#+877
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SPI_I2S_DMACmd_1:
        MOVW     R0,#+65532
        TST      R5,R0
        BNE.N    ??SPI_I2S_DMACmd_2
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BNE.N    ??SPI_I2S_DMACmd_3
??SPI_I2S_DMACmd_2:
        MOVW     R2,#+878
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SPI_I2S_DMAREQ(SPI...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SPI_I2S_DMACmd_3:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??SPI_I2S_DMACmd_4
        LDRH     R0,[R4, #+4]
        ORRS     R0,R5,R0
        STRH     R0,[R4, #+4]
        B.N      ??SPI_I2S_DMACmd_5
??SPI_I2S_DMACmd_4:
        LDRH     R0,[R4, #+4]
        BICS     R0,R0,R5
        STRH     R0,[R4, #+4]
??SPI_I2S_DMACmd_5:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SPI_I2S_ITConfig:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,#+0
        MOVS     R8,#+0
        LDR.N    R0,??DataTable46  ;; 0x40013000
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_ITConfig_0
        LDR.N    R0,??DataTable47  ;; 0x40003800
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_ITConfig_0
        LDR.N    R0,??DataTable48  ;; 0x40003c00
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_ITConfig_0
        MOVW     R2,#+987
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SPI_ALL_PERIPH(SPIx)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SPI_I2S_ITConfig_0:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??SPI_I2S_ITConfig_1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BEQ.N    ??SPI_I2S_ITConfig_1
        MOV      R2,#+988
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SPI_I2S_ITConfig_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+113
        BEQ.N    ??SPI_I2S_ITConfig_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+96
        BEQ.N    ??SPI_I2S_ITConfig_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+80
        BEQ.N    ??SPI_I2S_ITConfig_2
        MOVW     R2,#+989
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SPI_I2S_CONFIG_IT(...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SPI_I2S_ITConfig_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSRS     R0,R5,#+4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R7,R0
        MOVS     R0,#+1
        LSLS     R0,R0,R7
        MOV      R8,R0
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??SPI_I2S_ITConfig_3
        LDRH     R0,[R4, #+4]
        ORRS     R0,R8,R0
        STRH     R0,[R4, #+4]
        B.N      ??SPI_I2S_ITConfig_4
??SPI_I2S_ITConfig_3:
        LDRH     R0,[R4, #+4]
        BICS     R0,R0,R8
        STRH     R0,[R4, #+4]
??SPI_I2S_ITConfig_4:
        POP      {R4-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable46:
        DC32     0x40013000

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SPI_I2S_GetFlagStatus:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.W    R0,??DataTable50_1  ;; 0x40013000
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_GetFlagStatus_0
        LDR.N    R0,??DataTable47  ;; 0x40003800
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_GetFlagStatus_0
        LDR.N    R0,??DataTable48  ;; 0x40003c00
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_GetFlagStatus_0
        MOVW     R2,#+1030
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SPI_ALL_PERIPH(SPIx)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SPI_I2S_GetFlagStatus_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+128
        BEQ.N    ??SPI_I2S_GetFlagStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+64
        BEQ.N    ??SPI_I2S_GetFlagStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+32
        BEQ.N    ??SPI_I2S_GetFlagStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+16
        BEQ.N    ??SPI_I2S_GetFlagStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8
        BEQ.N    ??SPI_I2S_GetFlagStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4
        BEQ.N    ??SPI_I2S_GetFlagStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2
        BEQ.N    ??SPI_I2S_GetFlagStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+1
        BEQ.N    ??SPI_I2S_GetFlagStatus_1
        MOV      R0,#+256
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??SPI_I2S_GetFlagStatus_1
        MOVW     R2,#+1031
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SPI_I2S_GET_FLAG(S...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SPI_I2S_GetFlagStatus_1:
        LDRH     R0,[R4, #+8]
        TST      R0,R5
        BEQ.N    ??SPI_I2S_GetFlagStatus_2
        MOVS     R0,#+1
        MOVS     R6,R0
        B.N      ??SPI_I2S_GetFlagStatus_3
??SPI_I2S_GetFlagStatus_2:
        MOVS     R0,#+0
        MOVS     R6,R0
??SPI_I2S_GetFlagStatus_3:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable47:
        DC32     0x40003800

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable47_1:
        DC32     `?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable47_2:
        DC32     `?<Constant "IS_SPI_ALL_PERIPH(SPIx)">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SPI_I2S_ClearFlag:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable50_1  ;; 0x40013000
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_ClearFlag_0
        LDR.W    R0,??DataTable50_2  ;; 0x40003800
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_ClearFlag_0
        LDR.N    R0,??DataTable48  ;; 0x40003c00
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_ClearFlag_0
        MOVW     R2,#+1070
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SPI_ALL_PERIPH(SPIx)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SPI_I2S_ClearFlag_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+16
        BEQ.N    ??SPI_I2S_ClearFlag_1
        MOVW     R2,#+1071
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SPI_I2S_CLEAR_FLAG...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SPI_I2S_ClearFlag_1:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        MVNS     R0,R5
        STRH     R0,[R4, #+8]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable48:
        DC32     0x40003c00

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable48_1:
        DC32     `?<Constant "IS_SPI_DIRECTION_MODE...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable48_2:
        DC32     `?<Constant "IS_SPI_MODE(SPI_InitS...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SPI_I2S_GetITStatus:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        MOVS     R7,#+0
        MOVS     R8,#+0
        MOVS     R9,#+0
        LDR.W    R0,??DataTable50_1  ;; 0x40013000
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_GetITStatus_0
        LDR.W    R0,??DataTable50_2  ;; 0x40003800
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_GetITStatus_0
        LDR.W    R0,??DataTable50_3  ;; 0x40003c00
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_GetITStatus_0
        MOVW     R2,#+1098
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SPI_ALL_PERIPH(SPIx)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SPI_I2S_GetITStatus_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+96
        BEQ.N    ??SPI_I2S_GetITStatus_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+113
        BEQ.N    ??SPI_I2S_GetITStatus_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+84
        BEQ.N    ??SPI_I2S_GetITStatus_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+85
        BEQ.N    ??SPI_I2S_GetITStatus_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+86
        BEQ.N    ??SPI_I2S_GetITStatus_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+83
        BEQ.N    ??SPI_I2S_GetITStatus_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+88
        BEQ.N    ??SPI_I2S_GetITStatus_1
        MOVW     R2,#+1099
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SPI_I2S_GET_IT(SPI...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SPI_I2S_GetITStatus_1:
        MOVS     R0,#+1
        ANDS     R1,R5,#0xF
        LSLS     R0,R0,R1
        MOVS     R7,R0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSRS     R0,R5,#+4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOV      R8,R0
        MOVS     R0,#+1
        LSLS     R8,R0,R8
        LDRH     R0,[R4, #+4]
        ANDS     R0,R8,R0
        MOV      R9,R0
        LDRH     R0,[R4, #+8]
        TST      R0,R7
        BEQ.N    ??SPI_I2S_GetITStatus_2
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        CMP      R9,#+0
        BEQ.N    ??SPI_I2S_GetITStatus_2
        MOVS     R0,#+1
        MOVS     R6,R0
        B.N      ??SPI_I2S_GetITStatus_3
??SPI_I2S_GetITStatus_2:
        MOVS     R0,#+0
        MOVS     R6,R0
??SPI_I2S_GetITStatus_3:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4-R9,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49:
        DC32     `?<Constant "IS_SPI_DATASIZE(SPI_I...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49_1:
        DC32     `?<Constant "IS_SPI_CPOL(SPI_InitS...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49_2:
        DC32     `?<Constant "IS_SPI_CPHA(SPI_InitS...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49_3:
        DC32     `?<Constant "IS_SPI_NSS(SPI_InitSt...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49_4:
        DC32     `?<Constant "IS_SPI_BAUDRATE_PRESC...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49_5:
        DC32     `?<Constant "IS_SPI_FIRST_BIT(SPI_...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49_6:
        DC32     `?<Constant "IS_SPI_CRC_POLYNOMIAL...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49_7:
        DC32     `?<Constant "IS_SPI_23_PERIPH(SPIx)">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49_8:
        DC32     `?<Constant "IS_I2S_MODE(I2S_InitS...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49_9:
        DC32     `?<Constant "IS_I2S_STANDARD(I2S_I...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49_10:
        DC32     `?<Constant "IS_I2S_DATA_FORMAT(I2...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49_11:
        DC32     `?<Constant "IS_I2S_MCLK_OUTPUT(I2...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49_12:
        DC32     0x2ee01

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49_13:
        DC32     `?<Constant "IS_I2S_AUDIO_FREQ(I2S...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49_14:
        DC32     `?<Constant "IS_I2S_CPOL(I2S_InitS...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49_15:
        DC32     0x40023808

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49_16:
        DC32     0x40023884

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49_17:
        DC32     0x40023804

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_SPI_ALL_PERIPH(SPIx)">`:
        ; Initializer data, 24 bytes
        DC8 73, 83, 95, 83, 80, 73, 95, 65, 76, 76
        DC8 95, 80, 69, 82, 73, 80, 72, 40, 83, 80
        DC8 73, 120, 41, 0

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
        DC8 116, 109, 51, 50, 102, 50, 120, 120, 95, 115
        DC8 112, 105, 46, 99, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_SPI_23_PERIPH(SPIx)">`:
        ; Initializer data, 24 bytes
        DC8 73, 83, 95, 83, 80, 73, 95, 50, 51, 95
        DC8 80, 69, 82, 73, 80, 72, 40, 83, 80, 73
        DC8 120, 41, 0, 0

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SPI_I2S_ClearITPendingBit:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.N    R0,??DataTable50_1  ;; 0x40013000
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_ClearITPendingBit_0
        LDR.N    R0,??DataTable50_2  ;; 0x40003800
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_ClearITPendingBit_0
        LDR.N    R0,??DataTable50_3  ;; 0x40003c00
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_ClearITPendingBit_0
        MOVW     R2,#+1151
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SPI_ALL_PERIPH(SPIx)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SPI_I2S_ClearITPendingBit_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+84
        BEQ.N    ??SPI_I2S_ClearITPendingBit_1
        MOV      R2,#+1152
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SPI_I2S_CLEAR_IT(S...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SPI_I2S_ClearITPendingBit_1:
        MOVS     R0,#+1
        ANDS     R1,R5,#0xF
        LSLS     R0,R0,R1
        MOVS     R6,R0
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        MVNS     R0,R6
        STRH     R0,[R4, #+8]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable50:
        DC32     0x7a1200

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable50_1:
        DC32     0x40013000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable50_2:
        DC32     0x40003800

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable50_3:
        DC32     0x40003c00

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_FUNCTIONAL_STATE(N...">`:
        ; Initializer data, 32 bytes
        DC8 73, 83, 95, 70, 85, 78, 67, 84, 73, 79
        DC8 78, 65, 76, 95, 83, 84, 65, 84, 69, 40
        DC8 78, 101, 119, 83, 116, 97, 116, 101, 41, 0
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_SPI_DATASIZE(SPI_D...">`:
        ; Initializer data, 32 bytes
        DC8 73, 83, 95, 83, 80, 73, 95, 68, 65, 84
        DC8 65, 83, 73, 90, 69, 40, 83, 80, 73, 95
        DC8 68, 97, 116, 97, 83, 105, 122, 101, 41, 0
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_SPI_DIRECTION(SPI_...">`:
        ; Initializer data, 32 bytes
        DC8 73, 83, 95, 83, 80, 73, 95, 68, 73, 82
        DC8 69, 67, 84, 73, 79, 78, 40, 83, 80, 73
        DC8 95, 68, 105, 114, 101, 99, 116, 105, 111, 110
        DC8 41, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_SPI_NSS_INTERNAL(S...">`:
        ; Initializer data, 44 bytes
        DC8 73, 83, 95, 83, 80, 73, 95, 78, 83, 83
        DC8 95, 73, 78, 84, 69, 82, 78, 65, 76, 40
        DC8 83, 80, 73, 95, 78, 83, 83, 73, 110, 116
        DC8 101, 114, 110, 97, 108, 83, 111, 102, 116, 41
        DC8 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_SPI_CRC(SPI_CRC)">`:
        ; Initializer data, 20 bytes
        DC8 73, 83, 95, 83, 80, 73, 95, 67, 82, 67
        DC8 40, 83, 80, 73, 95, 67, 82, 67, 41, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_SPI_I2S_DMAREQ(SPI...">`:
        ; Initializer data, 36 bytes
        DC8 73, 83, 95, 83, 80, 73, 95, 73, 50, 83
        DC8 95, 68, 77, 65, 82, 69, 81, 40, 83, 80
        DC8 73, 95, 73, 50, 83, 95, 68, 77, 65, 82
        DC8 101, 113, 41, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_SPI_I2S_CONFIG_IT(...">`:
        ; Initializer data, 36 bytes
        DC8 73, 83, 95, 83, 80, 73, 95, 73, 50, 83
        DC8 95, 67, 79, 78, 70, 73, 71, 95, 73, 84
        DC8 40, 83, 80, 73, 95, 73, 50, 83, 95, 73
        DC8 84, 41, 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_SPI_I2S_GET_FLAG(S...">`:
        ; Initializer data, 36 bytes
        DC8 73, 83, 95, 83, 80, 73, 95, 73, 50, 83
        DC8 95, 71, 69, 84, 95, 70, 76, 65, 71, 40
        DC8 83, 80, 73, 95, 73, 50, 83, 95, 70, 76
        DC8 65, 71, 41, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_SPI_I2S_CLEAR_FLAG...">`:
        ; Initializer data, 36 bytes
        DC8 73, 83, 95, 83, 80, 73, 95, 73, 50, 83
        DC8 95, 67, 76, 69, 65, 82, 95, 70, 76, 65
        DC8 71, 40, 83, 80, 73, 95, 73, 50, 83, 95
        DC8 70, 76, 65, 71, 41, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_SPI_I2S_GET_IT(SPI...">`:
        ; Initializer data, 32 bytes
        DC8 73, 83, 95, 83, 80, 73, 95, 73, 50, 83
        DC8 95, 71, 69, 84, 95, 73, 84, 40, 83, 80
        DC8 73, 95, 73, 50, 83, 95, 73, 84, 41, 0
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_SPI_I2S_CLEAR_IT(S...">`:
        ; Initializer data, 32 bytes
        DC8 73, 83, 95, 83, 80, 73, 95, 73, 50, 83
        DC8 95, 67, 76, 69, 65, 82, 95, 73, 84, 40
        DC8 83, 80, 73, 95, 73, 50, 83, 95, 73, 84
        DC8 41, 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_SPI_DIRECTION_MODE...">`:
        ; Initializer data, 56 bytes
        DC8 73, 83, 95, 83, 80, 73, 95, 68, 73, 82
        DC8 69, 67, 84, 73, 79, 78, 95, 77, 79, 68
        DC8 69, 40, 83, 80, 73, 95, 73, 110, 105, 116
        DC8 83, 116, 114, 117, 99, 116, 45, 62, 83, 80
        DC8 73, 95, 68, 105, 114, 101, 99, 116, 105, 111
        DC8 110, 41, 0, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_SPI_MODE(SPI_InitS...">`:
        ; Initializer data, 40 bytes
        DC8 73, 83, 95, 83, 80, 73, 95, 77, 79, 68
        DC8 69, 40, 83, 80, 73, 95, 73, 110, 105, 116
        DC8 83, 116, 114, 117, 99, 116, 45, 62, 83, 80
        DC8 73, 95, 77, 111, 100, 101, 41, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_SPI_DATASIZE(SPI_I...">`:
        ; Initializer data, 48 bytes
        DC8 73, 83, 95, 83, 80, 73, 95, 68, 65, 84
        DC8 65, 83, 73, 90, 69, 40, 83, 80, 73, 95
        DC8 73, 110, 105, 116, 83, 116, 114, 117, 99, 116
        DC8 45, 62, 83, 80, 73, 95, 68, 97, 116, 97
        DC8 83, 105, 122, 101, 41, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_SPI_CPOL(SPI_InitS...">`:
        ; Initializer data, 40 bytes
        DC8 73, 83, 95, 83, 80, 73, 95, 67, 80, 79
        DC8 76, 40, 83, 80, 73, 95, 73, 110, 105, 116
        DC8 83, 116, 114, 117, 99, 116, 45, 62, 83, 80
        DC8 73, 95, 67, 80, 79, 76, 41, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_SPI_CPHA(SPI_InitS...">`:
        ; Initializer data, 40 bytes
        DC8 73, 83, 95, 83, 80, 73, 95, 67, 80, 72
        DC8 65, 40, 83, 80, 73, 95, 73, 110, 105, 116
        DC8 83, 116, 114, 117, 99, 116, 45, 62, 83, 80
        DC8 73, 95, 67, 80, 72, 65, 41, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_SPI_NSS(SPI_InitSt...">`:
        ; Initializer data, 36 bytes
        DC8 73, 83, 95, 83, 80, 73, 95, 78, 83, 83
        DC8 40, 83, 80, 73, 95, 73, 110, 105, 116, 83
        DC8 116, 114, 117, 99, 116, 45, 62, 83, 80, 73
        DC8 95, 78, 83, 83, 41, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_SPI_BAUDRATE_PRESC...">`:
        ; Initializer data, 68 bytes
        DC8 73, 83, 95, 83, 80, 73, 95, 66, 65, 85
        DC8 68, 82, 65, 84, 69, 95, 80, 82, 69, 83
        DC8 67, 65, 76, 69, 82, 40, 83, 80, 73, 95
        DC8 73, 110, 105, 116, 83, 116, 114, 117, 99, 116
        DC8 45, 62, 83, 80, 73, 95, 66, 97, 117, 100
        DC8 82, 97, 116, 101, 80, 114, 101, 115, 99, 97
        DC8 108, 101, 114, 41, 0, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_SPI_FIRST_BIT(SPI_...">`:
        ; Initializer data, 48 bytes
        DC8 73, 83, 95, 83, 80, 73, 95, 70, 73, 82
        DC8 83, 84, 95, 66, 73, 84, 40, 83, 80, 73
        DC8 95, 73, 110, 105, 116, 83, 116, 114, 117, 99
        DC8 116, 45, 62, 83, 80, 73, 95, 70, 105, 114
        DC8 115, 116, 66, 105, 116, 41, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_SPI_CRC_POLYNOMIAL...">`:
        ; Initializer data, 60 bytes
        DC8 73, 83, 95, 83, 80, 73, 95, 67, 82, 67
        DC8 95, 80, 79, 76, 89, 78, 79, 77, 73, 65
        DC8 76, 40, 83, 80, 73, 95, 73, 110, 105, 116
        DC8 83, 116, 114, 117, 99, 116, 45, 62, 83, 80
        DC8 73, 95, 67, 82, 67, 80, 111, 108, 121, 110
        DC8 111, 109, 105, 97, 108, 41, 0, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_I2S_MODE(I2S_InitS...">`:
        ; Initializer data, 40 bytes
        DC8 73, 83, 95, 73, 50, 83, 95, 77, 79, 68
        DC8 69, 40, 73, 50, 83, 95, 73, 110, 105, 116
        DC8 83, 116, 114, 117, 99, 116, 45, 62, 73, 50
        DC8 83, 95, 77, 111, 100, 101, 41, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_I2S_STANDARD(I2S_I...">`:
        ; Initializer data, 48 bytes
        DC8 73, 83, 95, 73, 50, 83, 95, 83, 84, 65
        DC8 78, 68, 65, 82, 68, 40, 73, 50, 83, 95
        DC8 73, 110, 105, 116, 83, 116, 114, 117, 99, 116
        DC8 45, 62, 73, 50, 83, 95, 83, 116, 97, 110
        DC8 100, 97, 114, 100, 41, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_I2S_DATA_FORMAT(I2...">`:
        ; Initializer data, 52 bytes
        DC8 73, 83, 95, 73, 50, 83, 95, 68, 65, 84
        DC8 65, 95, 70, 79, 82, 77, 65, 84, 40, 73
        DC8 50, 83, 95, 73, 110, 105, 116, 83, 116, 114
        DC8 117, 99, 116, 45, 62, 73, 50, 83, 95, 68
        DC8 97, 116, 97, 70, 111, 114, 109, 97, 116, 41
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_I2S_MCLK_OUTPUT(I2...">`:
        ; Initializer data, 52 bytes
        DC8 73, 83, 95, 73, 50, 83, 95, 77, 67, 76
        DC8 75, 95, 79, 85, 84, 80, 85, 84, 40, 73
        DC8 50, 83, 95, 73, 110, 105, 116, 83, 116, 114
        DC8 117, 99, 116, 45, 62, 73, 50, 83, 95, 77
        DC8 67, 76, 75, 79, 117, 116, 112, 117, 116, 41
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_I2S_AUDIO_FREQ(I2S...">`:
        ; Initializer data, 52 bytes
        DC8 73, 83, 95, 73, 50, 83, 95, 65, 85, 68
        DC8 73, 79, 95, 70, 82, 69, 81, 40, 73, 50
        DC8 83, 95, 73, 110, 105, 116, 83, 116, 114, 117
        DC8 99, 116, 45, 62, 73, 50, 83, 95, 65, 117
        DC8 100, 105, 111, 70, 114, 101, 113, 41, 0, 0
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_I2S_CPOL(I2S_InitS...">`:
        ; Initializer data, 40 bytes
        DC8 73, 83, 95, 73, 50, 83, 95, 67, 80, 79
        DC8 76, 40, 73, 50, 83, 95, 73, 110, 105, 116
        DC8 83, 116, 114, 117, 99, 116, 45, 62, 73, 50
        DC8 83, 95, 67, 80, 79, 76, 41, 0, 0, 0

        END
// 
//   720 bytes in section .rodata
// 3 952 bytes in section .text
// 
// 3 952 bytes of CODE  memory
//   720 bytes of CONST memory
//
//Errors: none
//Warnings: none
