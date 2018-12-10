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
//                    2xx_gpio.c                                              /
//    Command line =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\STM32F2xx_StdPeriph_Driver\src\stm32f /
//                    2xx_gpio.c -D STM32F10X_CL -D USE_STDPERIPH_DRIVER      /
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
//                    IAR6.1\STM32_Boot\EWARM\Debug\List\stm32f2xx_gpio.s     /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f2xx_gpio

        EXTERN RCC_AHB1PeriphResetCmd
        EXTERN __aeabi_assert
        EXTERN __iar_EmptyStepPoint

        PUBLIC GPIO_DeInit
        PUBLIC GPIO_Init
        PUBLIC GPIO_PinAFConfig
        PUBLIC GPIO_PinLockConfig
        PUBLIC GPIO_ReadInputData
        PUBLIC GPIO_ReadInputDataBit
        PUBLIC GPIO_ReadOutputData
        PUBLIC GPIO_ReadOutputDataBit
        PUBLIC GPIO_ResetBits
        PUBLIC GPIO_SetBits
        PUBLIC GPIO_StructInit
        PUBLIC GPIO_ToggleBits
        PUBLIC GPIO_Write
        PUBLIC GPIO_WriteBit


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GPIO_DeInit:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.W    R0,??DataTable23  ;; 0x40020000
        CMP      R4,R0
        BEQ.N    ??GPIO_DeInit_0
        LDR.W    R0,??DataTable23_1  ;; 0x40020400
        CMP      R4,R0
        BEQ.N    ??GPIO_DeInit_0
        LDR.W    R0,??DataTable23_2  ;; 0x40020800
        CMP      R4,R0
        BEQ.N    ??GPIO_DeInit_0
        LDR.W    R0,??DataTable23_3  ;; 0x40020c00
        CMP      R4,R0
        BEQ.N    ??GPIO_DeInit_0
        LDR.W    R0,??DataTable23_4  ;; 0x40021000
        CMP      R4,R0
        BEQ.N    ??GPIO_DeInit_0
        LDR.W    R0,??DataTable23_5  ;; 0x40021400
        CMP      R4,R0
        BEQ.N    ??GPIO_DeInit_0
        LDR.W    R0,??DataTable23_6  ;; 0x40021800
        CMP      R4,R0
        BEQ.N    ??GPIO_DeInit_0
        LDR.W    R0,??DataTable23_7  ;; 0x40021c00
        CMP      R4,R0
        BEQ.N    ??GPIO_DeInit_0
        LDR.W    R0,??DataTable24  ;; 0x40022000
        CMP      R4,R0
        BEQ.N    ??GPIO_DeInit_0
        MOVS     R2,#+123
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_GPIO_ALL_PERIPH(GP...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??GPIO_DeInit_0:
        LDR.W    R0,??DataTable23  ;; 0x40020000
        CMP      R4,R0
        BNE.N    ??GPIO_DeInit_1
        MOVS     R1,#+1
        MOVS     R0,#+1
        BL       RCC_AHB1PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+1
        BL       RCC_AHB1PeriphResetCmd
        B.N      ??GPIO_DeInit_2
??GPIO_DeInit_1:
        LDR.W    R0,??DataTable23_1  ;; 0x40020400
        CMP      R4,R0
        BNE.N    ??GPIO_DeInit_3
        MOVS     R1,#+1
        MOVS     R0,#+2
        BL       RCC_AHB1PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+2
        BL       RCC_AHB1PeriphResetCmd
        B.N      ??GPIO_DeInit_2
??GPIO_DeInit_3:
        LDR.W    R0,??DataTable23_2  ;; 0x40020800
        CMP      R4,R0
        BNE.N    ??GPIO_DeInit_4
        MOVS     R1,#+1
        MOVS     R0,#+4
        BL       RCC_AHB1PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+4
        BL       RCC_AHB1PeriphResetCmd
        B.N      ??GPIO_DeInit_2
??GPIO_DeInit_4:
        LDR.W    R0,??DataTable23_3  ;; 0x40020c00
        CMP      R4,R0
        BNE.N    ??GPIO_DeInit_5
        MOVS     R1,#+1
        MOVS     R0,#+8
        BL       RCC_AHB1PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+8
        BL       RCC_AHB1PeriphResetCmd
        B.N      ??GPIO_DeInit_2
??GPIO_DeInit_5:
        LDR.W    R0,??DataTable23_4  ;; 0x40021000
        CMP      R4,R0
        BNE.N    ??GPIO_DeInit_6
        MOVS     R1,#+1
        MOVS     R0,#+16
        BL       RCC_AHB1PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+16
        BL       RCC_AHB1PeriphResetCmd
        B.N      ??GPIO_DeInit_2
??GPIO_DeInit_6:
        LDR.W    R0,??DataTable23_5  ;; 0x40021400
        CMP      R4,R0
        BNE.N    ??GPIO_DeInit_7
        MOVS     R1,#+1
        MOVS     R0,#+32
        BL       RCC_AHB1PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+32
        BL       RCC_AHB1PeriphResetCmd
        B.N      ??GPIO_DeInit_2
??GPIO_DeInit_7:
        LDR.W    R0,??DataTable23_6  ;; 0x40021800
        CMP      R4,R0
        BNE.N    ??GPIO_DeInit_8
        MOVS     R1,#+1
        MOVS     R0,#+64
        BL       RCC_AHB1PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+64
        BL       RCC_AHB1PeriphResetCmd
        B.N      ??GPIO_DeInit_2
??GPIO_DeInit_8:
        LDR.W    R0,??DataTable23_7  ;; 0x40021c00
        CMP      R4,R0
        BNE.N    ??GPIO_DeInit_9
        MOVS     R1,#+1
        MOVS     R0,#+128
        BL       RCC_AHB1PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+128
        BL       RCC_AHB1PeriphResetCmd
        B.N      ??GPIO_DeInit_2
??GPIO_DeInit_9:
        LDR.W    R0,??DataTable24  ;; 0x40022000
        CMP      R4,R0
        BNE.N    ??GPIO_DeInit_2
        MOVS     R1,#+1
        MOV      R0,#+256
        BL       RCC_AHB1PeriphResetCmd
        MOVS     R1,#+0
        MOV      R0,#+256
        BL       RCC_AHB1PeriphResetCmd
??GPIO_DeInit_2:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GPIO_Init:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        MOVS     R7,#+0
        MOVS     R8,#+0
        LDR.W    R0,??DataTable23  ;; 0x40020000
        CMP      R4,R0
        BEQ.N    ??GPIO_Init_0
        LDR.W    R0,??DataTable23_1  ;; 0x40020400
        CMP      R4,R0
        BEQ.N    ??GPIO_Init_0
        LDR.W    R0,??DataTable23_2  ;; 0x40020800
        CMP      R4,R0
        BEQ.N    ??GPIO_Init_0
        LDR.W    R0,??DataTable23_3  ;; 0x40020c00
        CMP      R4,R0
        BEQ.N    ??GPIO_Init_0
        LDR.W    R0,??DataTable23_4  ;; 0x40021000
        CMP      R4,R0
        BEQ.N    ??GPIO_Init_0
        LDR.W    R0,??DataTable23_5  ;; 0x40021400
        CMP      R4,R0
        BEQ.N    ??GPIO_Init_0
        LDR.W    R0,??DataTable23_6  ;; 0x40021800
        CMP      R4,R0
        BEQ.N    ??GPIO_Init_0
        LDR.W    R0,??DataTable23_7  ;; 0x40021c00
        CMP      R4,R0
        BEQ.N    ??GPIO_Init_0
        LDR.W    R0,??DataTable24  ;; 0x40022000
        CMP      R4,R0
        BEQ.N    ??GPIO_Init_0
        MOVS     R2,#+187
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_GPIO_ALL_PERIPH(GP...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??GPIO_Init_0:
        LDR      R0,[R5, #+0]
        CMP      R0,#+0
        BNE.N    ??GPIO_Init_1
        MOVS     R2,#+188
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_GPIO_PIN(GPIO_Init...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??GPIO_Init_1:
        LDRB     R0,[R5, #+4]
        CMP      R0,#+0
        BEQ.N    ??GPIO_Init_2
        LDRB     R0,[R5, #+4]
        CMP      R0,#+1
        BEQ.N    ??GPIO_Init_2
        LDRB     R0,[R5, #+4]
        CMP      R0,#+2
        BEQ.N    ??GPIO_Init_2
        LDRB     R0,[R5, #+4]
        CMP      R0,#+3
        BEQ.N    ??GPIO_Init_2
        MOVS     R2,#+189
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_GPIO_MODE(GPIO_Ini...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??GPIO_Init_2:
        LDRB     R0,[R5, #+7]
        CMP      R0,#+0
        BEQ.N    ??GPIO_Init_3
        LDRB     R0,[R5, #+7]
        CMP      R0,#+1
        BEQ.N    ??GPIO_Init_3
        LDRB     R0,[R5, #+7]
        CMP      R0,#+2
        BEQ.N    ??GPIO_Init_3
        MOVS     R2,#+190
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_GPIO_PUPD(GPIO_Ini...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??GPIO_Init_3:
        MOVS     R0,#+0
        MOVS     R6,R0
??GPIO_Init_4:
        CMP      R6,#+16
        BCS.N    ??GPIO_Init_5
        MOVS     R0,#+1
        LSLS     R0,R0,R6
        MOVS     R7,R0
        LDR      R0,[R5, #+0]
        ANDS     R0,R7,R0
        MOV      R8,R0
        CMP      R8,R7
        BNE.N    ??GPIO_Init_6
        LDR      R0,[R4, #+0]
        MOVS     R1,#+3
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R2,R2,#+1
        LSLS     R1,R1,R2
        BICS     R0,R0,R1
        STR      R0,[R4, #+0]
        LDR      R0,[R4, #+0]
        LDRB     R1,[R5, #+4]
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R2,R2,#+1
        LSLS     R1,R1,R2
        ORRS     R0,R1,R0
        STR      R0,[R4, #+0]
        LDRB     R0,[R5, #+4]
        CMP      R0,#+1
        BEQ.N    ??GPIO_Init_7
        LDRB     R0,[R5, #+4]
        CMP      R0,#+2
        BNE.N    ??GPIO_Init_8
??GPIO_Init_7:
        LDRB     R0,[R5, #+5]
        CMP      R0,#+0
        BEQ.N    ??GPIO_Init_9
        LDRB     R0,[R5, #+5]
        CMP      R0,#+1
        BEQ.N    ??GPIO_Init_9
        LDRB     R0,[R5, #+5]
        CMP      R0,#+2
        BEQ.N    ??GPIO_Init_9
        LDRB     R0,[R5, #+5]
        CMP      R0,#+3
        BEQ.N    ??GPIO_Init_9
        MOVS     R2,#+208
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_GPIO_SPEED(GPIO_In...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??GPIO_Init_9:
        LDR      R0,[R4, #+8]
        MOVS     R1,#+3
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R2,R2,#+1
        LSLS     R1,R1,R2
        BICS     R0,R0,R1
        STR      R0,[R4, #+8]
        LDR      R0,[R4, #+8]
        LDRB     R1,[R5, #+5]
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R2,R2,#+1
        LSLS     R1,R1,R2
        ORRS     R0,R1,R0
        STR      R0,[R4, #+8]
        LDRB     R0,[R5, #+6]
        CMP      R0,#+0
        BEQ.N    ??GPIO_Init_10
        LDRB     R0,[R5, #+6]
        CMP      R0,#+1
        BEQ.N    ??GPIO_Init_10
        MOVS     R2,#+215
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_GPIO_OTYPE(GPIO_In...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??GPIO_Init_10:
        LDR      R0,[R4, #+4]
        MOVS     R1,#+1
        LSLS     R1,R1,R6
        BICS     R0,R0,R1
        STR      R0,[R4, #+4]
        LDR      R0,[R4, #+4]
        LDRB     R1,[R5, #+6]
        LSLS     R1,R1,R6
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        ORRS     R0,R1,R0
        STR      R0,[R4, #+4]
??GPIO_Init_8:
        LDR      R0,[R4, #+12]
        MOVS     R1,#+3
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R2,R2,#+1
        LSLS     R1,R1,R2
        BICS     R0,R0,R1
        STR      R0,[R4, #+12]
        LDR      R0,[R4, #+12]
        LDRB     R1,[R5, #+7]
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R2,R2,#+1
        LSLS     R1,R1,R2
        ORRS     R0,R1,R0
        STR      R0,[R4, #+12]
??GPIO_Init_6:
        ADDS     R6,R6,#+1
        B.N      ??GPIO_Init_4
??GPIO_Init_5:
        POP      {R4-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GPIO_StructInit:
        MOVW     R1,#+65535
        STR      R1,[R0, #+0]
        MOVS     R1,#+0
        STRB     R1,[R0, #+4]
        MOVS     R1,#+0
        STRB     R1,[R0, #+5]
        MOVS     R1,#+0
        STRB     R1,[R0, #+6]
        MOVS     R1,#+0
        STRB     R1,[R0, #+7]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GPIO_PinLockConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R0,#+65536
        STR      R0,[SP, #+0]
        LDR.W    R0,??DataTable23  ;; 0x40020000
        CMP      R4,R0
        BEQ.N    ??GPIO_PinLockConfig_0
        LDR.W    R0,??DataTable23_1  ;; 0x40020400
        CMP      R4,R0
        BEQ.N    ??GPIO_PinLockConfig_0
        LDR.W    R0,??DataTable23_2  ;; 0x40020800
        CMP      R4,R0
        BEQ.N    ??GPIO_PinLockConfig_0
        LDR.W    R0,??DataTable23_3  ;; 0x40020c00
        CMP      R4,R0
        BEQ.N    ??GPIO_PinLockConfig_0
        LDR.W    R0,??DataTable23_4  ;; 0x40021000
        CMP      R4,R0
        BEQ.N    ??GPIO_PinLockConfig_0
        LDR.W    R0,??DataTable23_5  ;; 0x40021400
        CMP      R4,R0
        BEQ.N    ??GPIO_PinLockConfig_0
        LDR.W    R0,??DataTable23_6  ;; 0x40021800
        CMP      R4,R0
        BEQ.N    ??GPIO_PinLockConfig_0
        LDR.W    R0,??DataTable23_7  ;; 0x40021c00
        CMP      R4,R0
        BEQ.N    ??GPIO_PinLockConfig_0
        LDR.W    R0,??DataTable24  ;; 0x40022000
        CMP      R4,R0
        BEQ.N    ??GPIO_PinLockConfig_0
        MOV      R2,#+260
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_GPIO_ALL_PERIPH(GP...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??GPIO_PinLockConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BNE.N    ??GPIO_PinLockConfig_1
        MOVW     R2,#+261
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_GPIO_PIN(GPIO_Pin)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??GPIO_PinLockConfig_1:
        LDR      R0,[SP, #+0]
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        ORRS     R0,R5,R0
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        STR      R0,[R4, #+28]
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        STR      R5,[R4, #+28]
        LDR      R0,[SP, #+0]
        STR      R0,[R4, #+28]
        LDR      R0,[R4, #+28]
        STR      R0,[SP, #+0]
        LDR      R0,[R4, #+28]
        STR      R0,[SP, #+0]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GPIO_ReadInputDataBit:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.W    R0,??DataTable23  ;; 0x40020000
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadInputDataBit_0
        LDR.W    R0,??DataTable23_1  ;; 0x40020400
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadInputDataBit_0
        LDR.W    R0,??DataTable23_2  ;; 0x40020800
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadInputDataBit_0
        LDR.W    R0,??DataTable23_3  ;; 0x40020c00
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadInputDataBit_0
        LDR.W    R0,??DataTable23_4  ;; 0x40021000
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadInputDataBit_0
        LDR.W    R0,??DataTable23_5  ;; 0x40021400
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadInputDataBit_0
        LDR.W    R0,??DataTable23_6  ;; 0x40021800
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadInputDataBit_0
        LDR.W    R0,??DataTable23_7  ;; 0x40021c00
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadInputDataBit_0
        LDR.W    R0,??DataTable24  ;; 0x40022000
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadInputDataBit_0
        MOV      R2,#+304
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_GPIO_ALL_PERIPH(GP...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??GPIO_ReadInputDataBit_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+1
        BEQ.N    ??GPIO_ReadInputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2
        BEQ.N    ??GPIO_ReadInputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4
        BEQ.N    ??GPIO_ReadInputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8
        BEQ.N    ??GPIO_ReadInputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+16
        BEQ.N    ??GPIO_ReadInputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+32
        BEQ.N    ??GPIO_ReadInputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+64
        BEQ.N    ??GPIO_ReadInputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+128
        BEQ.N    ??GPIO_ReadInputDataBit_1
        MOV      R0,#+256
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??GPIO_ReadInputDataBit_1
        MOV      R0,#+512
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??GPIO_ReadInputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+1024
        BEQ.N    ??GPIO_ReadInputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2048
        BEQ.N    ??GPIO_ReadInputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4096
        BEQ.N    ??GPIO_ReadInputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8192
        BEQ.N    ??GPIO_ReadInputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+16384
        BEQ.N    ??GPIO_ReadInputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+32768
        BEQ.N    ??GPIO_ReadInputDataBit_1
        MOVW     R2,#+305
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_GET_GPIO_PIN(GPIO_...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??GPIO_ReadInputDataBit_1:
        LDR      R0,[R4, #+16]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        TST      R0,R5
        BEQ.N    ??GPIO_ReadInputDataBit_2
        MOVS     R0,#+1
        MOVS     R6,R0
        B.N      ??GPIO_ReadInputDataBit_3
??GPIO_ReadInputDataBit_2:
        MOVS     R0,#+0
        MOVS     R6,R0
??GPIO_ReadInputDataBit_3:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GPIO_ReadInputData:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.W    R0,??DataTable23  ;; 0x40020000
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadInputData_0
        LDR.W    R0,??DataTable23_1  ;; 0x40020400
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadInputData_0
        LDR.W    R0,??DataTable23_2  ;; 0x40020800
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadInputData_0
        LDR.W    R0,??DataTable23_3  ;; 0x40020c00
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadInputData_0
        LDR.W    R0,??DataTable23_4  ;; 0x40021000
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadInputData_0
        LDR.W    R0,??DataTable23_5  ;; 0x40021400
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadInputData_0
        LDR.W    R0,??DataTable23_6  ;; 0x40021800
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadInputData_0
        LDR.W    R0,??DataTable23_7  ;; 0x40021c00
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadInputData_0
        LDR.W    R0,??DataTable24  ;; 0x40022000
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadInputData_0
        MOV      R2,#+326
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_GPIO_ALL_PERIPH(GP...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??GPIO_ReadInputData_0:
        LDR      R0,[R4, #+16]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GPIO_ReadOutputDataBit:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.W    R0,??DataTable23  ;; 0x40020000
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadOutputDataBit_0
        LDR.W    R0,??DataTable23_1  ;; 0x40020400
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadOutputDataBit_0
        LDR.W    R0,??DataTable23_2  ;; 0x40020800
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadOutputDataBit_0
        LDR.W    R0,??DataTable23_3  ;; 0x40020c00
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadOutputDataBit_0
        LDR.W    R0,??DataTable23_4  ;; 0x40021000
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadOutputDataBit_0
        LDR.W    R0,??DataTable23_5  ;; 0x40021400
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadOutputDataBit_0
        LDR.W    R0,??DataTable23_6  ;; 0x40021800
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadOutputDataBit_0
        LDR.W    R0,??DataTable23_7  ;; 0x40021c00
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadOutputDataBit_0
        LDR.W    R0,??DataTable24  ;; 0x40022000
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadOutputDataBit_0
        MOVW     R2,#+343
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_GPIO_ALL_PERIPH(GP...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??GPIO_ReadOutputDataBit_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+1
        BEQ.N    ??GPIO_ReadOutputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2
        BEQ.N    ??GPIO_ReadOutputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4
        BEQ.N    ??GPIO_ReadOutputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8
        BEQ.N    ??GPIO_ReadOutputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+16
        BEQ.N    ??GPIO_ReadOutputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+32
        BEQ.N    ??GPIO_ReadOutputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+64
        BEQ.N    ??GPIO_ReadOutputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+128
        BEQ.N    ??GPIO_ReadOutputDataBit_1
        MOV      R0,#+256
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??GPIO_ReadOutputDataBit_1
        MOV      R0,#+512
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??GPIO_ReadOutputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+1024
        BEQ.N    ??GPIO_ReadOutputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2048
        BEQ.N    ??GPIO_ReadOutputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4096
        BEQ.N    ??GPIO_ReadOutputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8192
        BEQ.N    ??GPIO_ReadOutputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+16384
        BEQ.N    ??GPIO_ReadOutputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+32768
        BEQ.N    ??GPIO_ReadOutputDataBit_1
        MOV      R2,#+344
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_GET_GPIO_PIN(GPIO_...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??GPIO_ReadOutputDataBit_1:
        LDR      R0,[R4, #+20]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        TST      R0,R5
        BEQ.N    ??GPIO_ReadOutputDataBit_2
        MOVS     R0,#+1
        MOVS     R6,R0
        B.N      ??GPIO_ReadOutputDataBit_3
??GPIO_ReadOutputDataBit_2:
        MOVS     R0,#+0
        MOVS     R6,R0
??GPIO_ReadOutputDataBit_3:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GPIO_ReadOutputData:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.N    R0,??DataTable23  ;; 0x40020000
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadOutputData_0
        LDR.N    R0,??DataTable23_1  ;; 0x40020400
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadOutputData_0
        LDR.N    R0,??DataTable23_2  ;; 0x40020800
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadOutputData_0
        LDR.N    R0,??DataTable23_3  ;; 0x40020c00
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadOutputData_0
        LDR.N    R0,??DataTable23_4  ;; 0x40021000
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadOutputData_0
        LDR.N    R0,??DataTable23_5  ;; 0x40021400
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadOutputData_0
        LDR.N    R0,??DataTable23_6  ;; 0x40021800
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadOutputData_0
        LDR.N    R0,??DataTable23_7  ;; 0x40021c00
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadOutputData_0
        LDR.W    R0,??DataTable24  ;; 0x40022000
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadOutputData_0
        MOVW     R2,#+365
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_GPIO_ALL_PERIPH(GP...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??GPIO_ReadOutputData_0:
        LDR      R0,[R4, #+20]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GPIO_SetBits:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable23  ;; 0x40020000
        CMP      R4,R0
        BEQ.N    ??GPIO_SetBits_0
        LDR.N    R0,??DataTable23_1  ;; 0x40020400
        CMP      R4,R0
        BEQ.N    ??GPIO_SetBits_0
        LDR.N    R0,??DataTable23_2  ;; 0x40020800
        CMP      R4,R0
        BEQ.N    ??GPIO_SetBits_0
        LDR.N    R0,??DataTable23_3  ;; 0x40020c00
        CMP      R4,R0
        BEQ.N    ??GPIO_SetBits_0
        LDR.N    R0,??DataTable23_4  ;; 0x40021000
        CMP      R4,R0
        BEQ.N    ??GPIO_SetBits_0
        LDR.N    R0,??DataTable23_5  ;; 0x40021400
        CMP      R4,R0
        BEQ.N    ??GPIO_SetBits_0
        LDR.N    R0,??DataTable23_6  ;; 0x40021800
        CMP      R4,R0
        BEQ.N    ??GPIO_SetBits_0
        LDR.N    R0,??DataTable23_7  ;; 0x40021c00
        CMP      R4,R0
        BEQ.N    ??GPIO_SetBits_0
        LDR.W    R0,??DataTable24  ;; 0x40022000
        CMP      R4,R0
        BEQ.N    ??GPIO_SetBits_0
        MOVW     R2,#+383
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_GPIO_ALL_PERIPH(GP...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??GPIO_SetBits_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BNE.N    ??GPIO_SetBits_1
        MOV      R2,#+384
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_GPIO_PIN(GPIO_Pin)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??GPIO_SetBits_1:
        STRH     R5,[R4, #+24]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GPIO_ResetBits:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable23  ;; 0x40020000
        CMP      R4,R0
        BEQ.N    ??GPIO_ResetBits_0
        LDR.N    R0,??DataTable23_1  ;; 0x40020400
        CMP      R4,R0
        BEQ.N    ??GPIO_ResetBits_0
        LDR.N    R0,??DataTable23_2  ;; 0x40020800
        CMP      R4,R0
        BEQ.N    ??GPIO_ResetBits_0
        LDR.N    R0,??DataTable23_3  ;; 0x40020c00
        CMP      R4,R0
        BEQ.N    ??GPIO_ResetBits_0
        LDR.N    R0,??DataTable23_4  ;; 0x40021000
        CMP      R4,R0
        BEQ.N    ??GPIO_ResetBits_0
        LDR.N    R0,??DataTable23_5  ;; 0x40021400
        CMP      R4,R0
        BEQ.N    ??GPIO_ResetBits_0
        LDR.N    R0,??DataTable23_6  ;; 0x40021800
        CMP      R4,R0
        BEQ.N    ??GPIO_ResetBits_0
        LDR.N    R0,??DataTable23_7  ;; 0x40021c00
        CMP      R4,R0
        BEQ.N    ??GPIO_ResetBits_0
        LDR.W    R0,??DataTable24  ;; 0x40022000
        CMP      R4,R0
        BEQ.N    ??GPIO_ResetBits_0
        MOV      R2,#+402
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_GPIO_ALL_PERIPH(GP...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??GPIO_ResetBits_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BNE.N    ??GPIO_ResetBits_1
        MOVW     R2,#+403
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_GPIO_PIN(GPIO_Pin)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??GPIO_ResetBits_1:
        STRH     R5,[R4, #+26]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GPIO_WriteBit:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        LDR.N    R0,??DataTable23  ;; 0x40020000
        CMP      R4,R0
        BEQ.N    ??GPIO_WriteBit_0
        LDR.N    R0,??DataTable23_1  ;; 0x40020400
        CMP      R4,R0
        BEQ.N    ??GPIO_WriteBit_0
        LDR.N    R0,??DataTable23_2  ;; 0x40020800
        CMP      R4,R0
        BEQ.N    ??GPIO_WriteBit_0
        LDR.N    R0,??DataTable23_3  ;; 0x40020c00
        CMP      R4,R0
        BEQ.N    ??GPIO_WriteBit_0
        LDR.N    R0,??DataTable23_4  ;; 0x40021000
        CMP      R4,R0
        BEQ.N    ??GPIO_WriteBit_0
        LDR.N    R0,??DataTable23_5  ;; 0x40021400
        CMP      R4,R0
        BEQ.N    ??GPIO_WriteBit_0
        LDR.N    R0,??DataTable23_6  ;; 0x40021800
        CMP      R4,R0
        BEQ.N    ??GPIO_WriteBit_0
        LDR.N    R0,??DataTable23_7  ;; 0x40021c00
        CMP      R4,R0
        BEQ.N    ??GPIO_WriteBit_0
        LDR.W    R0,??DataTable24  ;; 0x40022000
        CMP      R4,R0
        BEQ.N    ??GPIO_WriteBit_0
        MOV      R2,#+422
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_GPIO_ALL_PERIPH(GP...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??GPIO_WriteBit_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+1
        BEQ.N    ??GPIO_WriteBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2
        BEQ.N    ??GPIO_WriteBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4
        BEQ.N    ??GPIO_WriteBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8
        BEQ.N    ??GPIO_WriteBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+16
        BEQ.N    ??GPIO_WriteBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+32
        BEQ.N    ??GPIO_WriteBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+64
        BEQ.N    ??GPIO_WriteBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+128
        BEQ.N    ??GPIO_WriteBit_1
        MOV      R0,#+256
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??GPIO_WriteBit_1
        MOV      R0,#+512
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??GPIO_WriteBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+1024
        BEQ.N    ??GPIO_WriteBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2048
        BEQ.N    ??GPIO_WriteBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4096
        BEQ.N    ??GPIO_WriteBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8192
        BEQ.N    ??GPIO_WriteBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+16384
        BEQ.N    ??GPIO_WriteBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+32768
        BEQ.N    ??GPIO_WriteBit_1
        MOVW     R2,#+423
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_GET_GPIO_PIN(GPIO_...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??GPIO_WriteBit_1:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??GPIO_WriteBit_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BEQ.N    ??GPIO_WriteBit_2
        MOV      R2,#+424
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_GPIO_BIT_ACTION(Bi...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??GPIO_WriteBit_2:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??GPIO_WriteBit_3
        STRH     R5,[R4, #+24]
        B.N      ??GPIO_WriteBit_4
??GPIO_WriteBit_3:
        STRH     R5,[R4, #+26]
??GPIO_WriteBit_4:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GPIO_Write:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable23  ;; 0x40020000
        CMP      R4,R0
        BEQ.N    ??GPIO_Write_0
        LDR.N    R0,??DataTable23_1  ;; 0x40020400
        CMP      R4,R0
        BEQ.N    ??GPIO_Write_0
        LDR.N    R0,??DataTable23_2  ;; 0x40020800
        CMP      R4,R0
        BEQ.N    ??GPIO_Write_0
        LDR.N    R0,??DataTable23_3  ;; 0x40020c00
        CMP      R4,R0
        BEQ.N    ??GPIO_Write_0
        LDR.N    R0,??DataTable23_4  ;; 0x40021000
        CMP      R4,R0
        BEQ.N    ??GPIO_Write_0
        LDR.N    R0,??DataTable23_5  ;; 0x40021400
        CMP      R4,R0
        BEQ.N    ??GPIO_Write_0
        LDR.N    R0,??DataTable23_6  ;; 0x40021800
        CMP      R4,R0
        BEQ.N    ??GPIO_Write_0
        LDR.N    R0,??DataTable23_7  ;; 0x40021c00
        CMP      R4,R0
        BEQ.N    ??GPIO_Write_0
        LDR.W    R0,??DataTable24  ;; 0x40022000
        CMP      R4,R0
        BEQ.N    ??GPIO_Write_0
        MOVW     R2,#+445
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_GPIO_ALL_PERIPH(GP...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??GPIO_Write_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        STR      R5,[R4, #+20]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GPIO_ToggleBits:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable23  ;; 0x40020000
        CMP      R4,R0
        BEQ.N    ??GPIO_ToggleBits_0
        LDR.N    R0,??DataTable23_1  ;; 0x40020400
        CMP      R4,R0
        BEQ.N    ??GPIO_ToggleBits_0
        LDR.N    R0,??DataTable23_2  ;; 0x40020800
        CMP      R4,R0
        BEQ.N    ??GPIO_ToggleBits_0
        LDR.N    R0,??DataTable23_3  ;; 0x40020c00
        CMP      R4,R0
        BEQ.N    ??GPIO_ToggleBits_0
        LDR.N    R0,??DataTable23_4  ;; 0x40021000
        CMP      R4,R0
        BEQ.N    ??GPIO_ToggleBits_0
        LDR.N    R0,??DataTable23_5  ;; 0x40021400
        CMP      R4,R0
        BEQ.N    ??GPIO_ToggleBits_0
        LDR.N    R0,??DataTable23_6  ;; 0x40021800
        CMP      R4,R0
        BEQ.N    ??GPIO_ToggleBits_0
        LDR.N    R0,??DataTable23_7  ;; 0x40021c00
        CMP      R4,R0
        BEQ.N    ??GPIO_ToggleBits_0
        LDR.N    R0,??DataTable24  ;; 0x40022000
        CMP      R4,R0
        BEQ.N    ??GPIO_ToggleBits_0
        MOVW     R2,#+459
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_GPIO_ALL_PERIPH(GP...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??GPIO_ToggleBits_0:
        LDR      R0,[R4, #+20]
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        EORS     R0,R5,R0
        STR      R0,[R4, #+20]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable23:
        DC32     0x40020000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable23_1:
        DC32     0x40020400

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable23_2:
        DC32     0x40020800

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable23_3:
        DC32     0x40020c00

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable23_4:
        DC32     0x40021000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable23_5:
        DC32     0x40021400

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable23_6:
        DC32     0x40021800

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable23_7:
        DC32     0x40021c00

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_GPIO_ALL_PERIPH(GP...">`:
        ; Initializer data, 28 bytes
        DC8 73, 83, 95, 71, 80, 73, 79, 95, 65, 76
        DC8 76, 95, 80, 69, 82, 73, 80, 72, 40, 71
        DC8 80, 73, 79, 120, 41, 0, 0, 0

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
        DC8 116, 109, 51, 50, 102, 50, 120, 120, 95, 103
        DC8 112, 105, 111, 46, 99, 0

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GPIO_PinAFConfig:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,#+0
        MOVS     R8,#+0
        LDR.N    R0,??DataTable24_1  ;; 0x40020000
        CMP      R4,R0
        BEQ.N    ??GPIO_PinAFConfig_0
        LDR.N    R0,??DataTable24_2  ;; 0x40020400
        CMP      R4,R0
        BEQ.N    ??GPIO_PinAFConfig_0
        LDR.N    R0,??DataTable24_3  ;; 0x40020800
        CMP      R4,R0
        BEQ.N    ??GPIO_PinAFConfig_0
        LDR.N    R0,??DataTable24_4  ;; 0x40020c00
        CMP      R4,R0
        BEQ.N    ??GPIO_PinAFConfig_0
        LDR.N    R0,??DataTable24_5  ;; 0x40021000
        CMP      R4,R0
        BEQ.N    ??GPIO_PinAFConfig_0
        LDR.N    R0,??DataTable24_6  ;; 0x40021400
        CMP      R4,R0
        BEQ.N    ??GPIO_PinAFConfig_0
        LDR.N    R0,??DataTable24_7  ;; 0x40021800
        CMP      R4,R0
        BEQ.N    ??GPIO_PinAFConfig_0
        LDR.N    R0,??DataTable24_8  ;; 0x40021c00
        CMP      R4,R0
        BEQ.N    ??GPIO_PinAFConfig_0
        LDR.N    R0,??DataTable24  ;; 0x40022000
        CMP      R4,R0
        BEQ.N    ??GPIO_PinAFConfig_0
        MOVW     R2,#+534
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_GPIO_ALL_PERIPH(GP...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??GPIO_PinAFConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??GPIO_PinAFConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+1
        BEQ.N    ??GPIO_PinAFConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2
        BEQ.N    ??GPIO_PinAFConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+3
        BEQ.N    ??GPIO_PinAFConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4
        BEQ.N    ??GPIO_PinAFConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+5
        BEQ.N    ??GPIO_PinAFConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+6
        BEQ.N    ??GPIO_PinAFConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+7
        BEQ.N    ??GPIO_PinAFConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8
        BEQ.N    ??GPIO_PinAFConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+9
        BEQ.N    ??GPIO_PinAFConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+10
        BEQ.N    ??GPIO_PinAFConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+11
        BEQ.N    ??GPIO_PinAFConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+12
        BEQ.N    ??GPIO_PinAFConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+13
        BEQ.N    ??GPIO_PinAFConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+14
        BEQ.N    ??GPIO_PinAFConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+15
        BEQ.N    ??GPIO_PinAFConfig_1
        MOVW     R2,#+535
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_GPIO_PIN_SOURCE(GP...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??GPIO_PinAFConfig_1:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??GPIO_PinAFConfig_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+9
        BEQ.N    ??GPIO_PinAFConfig_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??GPIO_PinAFConfig_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??GPIO_PinAFConfig_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??GPIO_PinAFConfig_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??GPIO_PinAFConfig_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BEQ.N    ??GPIO_PinAFConfig_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BEQ.N    ??GPIO_PinAFConfig_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+2
        BEQ.N    ??GPIO_PinAFConfig_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+2
        BEQ.N    ??GPIO_PinAFConfig_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+2
        BEQ.N    ??GPIO_PinAFConfig_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+3
        BEQ.N    ??GPIO_PinAFConfig_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+4
        BEQ.N    ??GPIO_PinAFConfig_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+4
        BEQ.N    ??GPIO_PinAFConfig_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+4
        BEQ.N    ??GPIO_PinAFConfig_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+5
        BEQ.N    ??GPIO_PinAFConfig_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+5
        BEQ.N    ??GPIO_PinAFConfig_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+9
        BEQ.N    ??GPIO_PinAFConfig_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+6
        BEQ.N    ??GPIO_PinAFConfig_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+9
        BEQ.N    ??GPIO_PinAFConfig_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+7
        BEQ.N    ??GPIO_PinAFConfig_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+7
        BEQ.N    ??GPIO_PinAFConfig_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+7
        BEQ.N    ??GPIO_PinAFConfig_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+8
        BEQ.N    ??GPIO_PinAFConfig_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+8
        BEQ.N    ??GPIO_PinAFConfig_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+8
        BEQ.N    ??GPIO_PinAFConfig_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+9
        BEQ.N    ??GPIO_PinAFConfig_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+9
        BEQ.N    ??GPIO_PinAFConfig_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+10
        BEQ.N    ??GPIO_PinAFConfig_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+10
        BEQ.N    ??GPIO_PinAFConfig_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+11
        BEQ.N    ??GPIO_PinAFConfig_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+12
        BEQ.N    ??GPIO_PinAFConfig_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+12
        BEQ.N    ??GPIO_PinAFConfig_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+12
        BEQ.N    ??GPIO_PinAFConfig_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+13
        BEQ.N    ??GPIO_PinAFConfig_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+15
        BEQ.N    ??GPIO_PinAFConfig_2
        MOV      R2,#+536
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_GPIO_AF(GPIO_AF)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??GPIO_PinAFConfig_2:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ANDS     R0,R5,#0x7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R0,R0,#+2
        LSLS     R0,R6,R0
        MOVS     R7,R0
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        ASRS     R0,R5,#+3
        ADDS     R0,R4,R0, LSL #+2
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        ASRS     R1,R5,#+3
        ADDS     R1,R4,R1, LSL #+2
        LDR      R1,[R1, #+32]
        MOVS     R2,#+15
        ANDS     R3,R5,#0x7
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LSLS     R3,R3,#+2
        LSLS     R2,R2,R3
        BICS     R1,R1,R2
        STR      R1,[R0, #+32]
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        ASRS     R0,R5,#+3
        ADDS     R0,R4,R0, LSL #+2
        LDR      R0,[R0, #+32]
        ORRS     R0,R7,R0
        MOV      R8,R0
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        ASRS     R0,R5,#+3
        ADDS     R0,R4,R0, LSL #+2
        STR      R8,[R0, #+32]
        POP      {R4-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24:
        DC32     0x40022000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_1:
        DC32     0x40020000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_2:
        DC32     0x40020400

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_3:
        DC32     0x40020800

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_4:
        DC32     0x40020c00

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_5:
        DC32     0x40021000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_6:
        DC32     0x40021400

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_7:
        DC32     0x40021800

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable24_8:
        DC32     0x40021c00

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_GPIO_PIN(GPIO_Init...">`:
        ; Initializer data, 40 bytes
        DC8 73, 83, 95, 71, 80, 73, 79, 95, 80, 73
        DC8 78, 40, 71, 80, 73, 79, 95, 73, 110, 105
        DC8 116, 83, 116, 114, 117, 99, 116, 45, 62, 71
        DC8 80, 73, 79, 95, 80, 105, 110, 41, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_GPIO_MODE(GPIO_Ini...">`:
        ; Initializer data, 44 bytes
        DC8 73, 83, 95, 71, 80, 73, 79, 95, 77, 79
        DC8 68, 69, 40, 71, 80, 73, 79, 95, 73, 110
        DC8 105, 116, 83, 116, 114, 117, 99, 116, 45, 62
        DC8 71, 80, 73, 79, 95, 77, 111, 100, 101, 41
        DC8 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_GPIO_PUPD(GPIO_Ini...">`:
        ; Initializer data, 44 bytes
        DC8 73, 83, 95, 71, 80, 73, 79, 95, 80, 85
        DC8 80, 68, 40, 71, 80, 73, 79, 95, 73, 110
        DC8 105, 116, 83, 116, 114, 117, 99, 116, 45, 62
        DC8 71, 80, 73, 79, 95, 80, 117, 80, 100, 41
        DC8 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_GPIO_SPEED(GPIO_In...">`:
        ; Initializer data, 44 bytes
        DC8 73, 83, 95, 71, 80, 73, 79, 95, 83, 80
        DC8 69, 69, 68, 40, 71, 80, 73, 79, 95, 73
        DC8 110, 105, 116, 83, 116, 114, 117, 99, 116, 45
        DC8 62, 71, 80, 73, 79, 95, 83, 112, 101, 101
        DC8 100, 41, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_GPIO_OTYPE(GPIO_In...">`:
        ; Initializer data, 44 bytes
        DC8 73, 83, 95, 71, 80, 73, 79, 95, 79, 84
        DC8 89, 80, 69, 40, 71, 80, 73, 79, 95, 73
        DC8 110, 105, 116, 83, 116, 114, 117, 99, 116, 45
        DC8 62, 71, 80, 73, 79, 95, 79, 84, 121, 112
        DC8 101, 41, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_GPIO_PIN(GPIO_Pin)">`:
        ; Initializer data, 24 bytes
        DC8 73, 83, 95, 71, 80, 73, 79, 95, 80, 73
        DC8 78, 40, 71, 80, 73, 79, 95, 80, 105, 110
        DC8 41, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_GET_GPIO_PIN(GPIO_...">`:
        ; Initializer data, 28 bytes
        DC8 73, 83, 95, 71, 69, 84, 95, 71, 80, 73
        DC8 79, 95, 80, 73, 78, 40, 71, 80, 73, 79
        DC8 95, 80, 105, 110, 41, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_GPIO_BIT_ACTION(Bi...">`:
        ; Initializer data, 28 bytes
        DC8 73, 83, 95, 71, 80, 73, 79, 95, 66, 73
        DC8 84, 95, 65, 67, 84, 73, 79, 78, 40, 66
        DC8 105, 116, 86, 97, 108, 41, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_GPIO_PIN_SOURCE(GP...">`:
        ; Initializer data, 36 bytes
        DC8 73, 83, 95, 71, 80, 73, 79, 95, 80, 73
        DC8 78, 95, 83, 79, 85, 82, 67, 69, 40, 71
        DC8 80, 73, 79, 95, 80, 105, 110, 83, 111, 117
        DC8 114, 99, 101, 41, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_GPIO_AF(GPIO_AF)">`:
        ; Initializer data, 20 bytes
        DC8 73, 83, 95, 71, 80, 73, 79, 95, 65, 70
        DC8 40, 71, 80, 73, 79, 95, 65, 70, 41, 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)

        END
// 
// 3 480 bytes in section .text
// 
// 3 480 bytes of CODE memory
//
//Errors: none
//Warnings: none
