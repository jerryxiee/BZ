///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.10.2.52244/W32 for ARM    04/Dec/2013  10:58:12 /
// Copyright 1999-2010 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\STM32F2xx_StdPeriph_Driver\src\stm32f /
//                    2xx_rcc.c                                               /
//    Command line =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\STM32F2xx_StdPeriph_Driver\src\stm32f /
//                    2xx_rcc.c -D STM32F10X_CL -D USE_STDPERIPH_DRIVER -lcN  /
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
//                    IAR6.1\STM32_Boot\EWARM\Debug\List\stm32f2xx_rcc.s      /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f2xx_rcc

        EXTERN __aeabi_assert
        EXTERN __iar_EmptyStepPoint

        PUBLIC RCC_AHB1PeriphClockCmd
        PUBLIC RCC_AHB1PeriphClockLPModeCmd
        PUBLIC RCC_AHB1PeriphResetCmd
        PUBLIC RCC_AHB2PeriphClockCmd
        PUBLIC RCC_AHB2PeriphClockLPModeCmd
        PUBLIC RCC_AHB2PeriphResetCmd
        PUBLIC RCC_AHB3PeriphClockCmd
        PUBLIC RCC_AHB3PeriphClockLPModeCmd
        PUBLIC RCC_AHB3PeriphResetCmd
        PUBLIC RCC_APB1PeriphClockCmd
        PUBLIC RCC_APB1PeriphClockLPModeCmd
        PUBLIC RCC_APB1PeriphResetCmd
        PUBLIC RCC_APB2PeriphClockCmd
        PUBLIC RCC_APB2PeriphClockLPModeCmd
        PUBLIC RCC_APB2PeriphResetCmd
        PUBLIC RCC_AdjustHSICalibrationValue
        PUBLIC RCC_BackupResetCmd
        PUBLIC RCC_ClearFlag
        PUBLIC RCC_ClearITPendingBit
        PUBLIC RCC_ClockSecuritySystemCmd
        PUBLIC RCC_DeInit
        PUBLIC RCC_GetClocksFreq
        PUBLIC RCC_GetFlagStatus
        PUBLIC RCC_GetITStatus
        PUBLIC RCC_GetSYSCLKSource
        PUBLIC RCC_HCLKConfig
        PUBLIC RCC_HSEConfig
        PUBLIC RCC_HSICmd
        PUBLIC RCC_I2SCLKConfig
        PUBLIC RCC_ITConfig
        PUBLIC RCC_LSEConfig
        PUBLIC RCC_LSICmd
        PUBLIC RCC_MCO1Config
        PUBLIC RCC_MCO2Config
        PUBLIC RCC_PCLK1Config
        PUBLIC RCC_PCLK2Config
        PUBLIC RCC_PLLCmd
        PUBLIC RCC_PLLConfig
        PUBLIC RCC_PLLI2SCmd
        PUBLIC RCC_PLLI2SConfig
        PUBLIC RCC_RTCCLKCmd
        PUBLIC RCC_RTCCLKConfig
        PUBLIC RCC_SYSCLKConfig
        PUBLIC RCC_WaitForHSEStartUp


        SECTION `.data`:DATA:REORDER:NOROOT(2)
APBAHBPrescTable:
        DATA
        DC8 0, 0, 0, 0, 1, 2, 3, 4, 1, 2, 3, 4, 6, 7, 8, 9

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_DeInit:
        LDR.W    R0,??DataTable59  ;; 0x40023800
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.W    R1,??DataTable59  ;; 0x40023800
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable59_1  ;; 0x40023808
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable59  ;; 0x40023800
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable59_2  ;; 0xfef6ffff
        ANDS     R0,R1,R0
        LDR.W    R1,??DataTable59  ;; 0x40023800
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable59_3  ;; 0x40023804
        LDR.W    R1,??DataTable60  ;; 0x24003010
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable59  ;; 0x40023800
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x40000
        LDR.W    R1,??DataTable59  ;; 0x40023800
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable66  ;; 0x4002380c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_HSEConfig:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??RCC_HSEConfig_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??RCC_HSEConfig_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+5
        BEQ.N    ??RCC_HSEConfig_0
        MOVS     R2,#+240
        LDR.W    R1,??DataTable60_1
        LDR.W    R0,??DataTable60_2
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_HSEConfig_0:
        LDR.W    R0,??DataTable66_1  ;; 0x40023802
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        LDR.W    R0,??DataTable66_1  ;; 0x40023802
        STRB     R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_WaitForHSEStartUp:
        PUSH     {R3-R5,LR}
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R4,#+0
        MOVS     R5,#+0
??RCC_WaitForHSEStartUp_0:
        MOVS     R0,#+49
        BL       RCC_GetFlagStatus
        MOVS     R5,R0
        LDR      R0,[SP, #+0]
        ADDS     R0,R0,#+1
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        CMP      R0,#+1280
        BEQ.N    ??RCC_WaitForHSEStartUp_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RCC_WaitForHSEStartUp_0
??RCC_WaitForHSEStartUp_1:
        MOVS     R0,#+49
        BL       RCC_GetFlagStatus
        CMP      R0,#+0
        BEQ.N    ??RCC_WaitForHSEStartUp_2
        MOVS     R0,#+1
        MOVS     R4,R0
        B.N      ??RCC_WaitForHSEStartUp_3
??RCC_WaitForHSEStartUp_2:
        MOVS     R0,#+0
        MOVS     R4,R0
??RCC_WaitForHSEStartUp_3:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_AdjustHSICalibrationValue:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+32
        BCC.N    ??RCC_AdjustHSICalibrationValue_0
        MOV      R2,#+296
        LDR.W    R1,??DataTable60_1
        LDR.W    R0,??DataTable61
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_AdjustHSICalibrationValue_0:
        LDR.W    R0,??DataTable59  ;; 0x40023800
        LDR      R0,[R0, #+0]
        MOVS     R5,R0
        BICS     R5,R5,#0xF8
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ORRS     R5,R5,R4, LSL #+3
        LDR.W    R0,??DataTable59  ;; 0x40023800
        STR      R5,[R0, #+0]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_HSICmd:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??RCC_HSICmd_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??RCC_HSICmd_0
        MOVW     R2,#+331
        LDR.W    R1,??DataTable60_1
        LDR.W    R0,??DataTable62
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_HSICmd_0:
        LDR.W    R0,??DataTable68  ;; 0x42470000
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_LSEConfig:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??RCC_LSEConfig_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??RCC_LSEConfig_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+4
        BEQ.N    ??RCC_LSEConfig_0
        MOV      R2,#+356
        LDR.W    R1,??DataTable60_1
        LDR.W    R0,??DataTable63
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_LSEConfig_0:
        LDR.W    R0,??DataTable68_1  ;; 0x40023870
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        LDR.W    R0,??DataTable68_1  ;; 0x40023870
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,R4
        CMP      R0,#+1
        BEQ.N    ??RCC_LSEConfig_1
        CMP      R0,#+4
        BEQ.N    ??RCC_LSEConfig_2
        B.N      ??RCC_LSEConfig_3
??RCC_LSEConfig_1:
        LDR.W    R0,??DataTable68_1  ;; 0x40023870
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
        B.N      ??RCC_LSEConfig_4
??RCC_LSEConfig_2:
        LDR.W    R0,??DataTable68_1  ;; 0x40023870
        MOVS     R1,#+5
        STRB     R1,[R0, #+0]
        B.N      ??RCC_LSEConfig_4
??RCC_LSEConfig_3:
??RCC_LSEConfig_4:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_LSICmd:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??RCC_LSICmd_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??RCC_LSICmd_0
        MOV      R2,#+396
        LDR.W    R1,??DataTable60_1
        LDR.W    R0,??DataTable62
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_LSICmd_0:
        LDR.W    R0,??DataTable68_2  ;; 0x42470e80
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_PLLConfig:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        LDR      R8,[SP, #+24]
        CMP      R4,#+0
        BEQ.N    ??RCC_PLLConfig_0
        CMP      R4,#+4194304
        BEQ.N    ??RCC_PLLConfig_0
        MOVW     R2,#+439
        LDR.W    R1,??DataTable60_1
        LDR.W    R0,??DataTable64
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_PLLConfig_0:
        CMP      R5,#+64
        BCC.N    ??RCC_PLLConfig_1
        MOV      R2,#+440
        LDR.W    R1,??DataTable60_1
        LDR.W    R0,??DataTable64_1
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_PLLConfig_1:
        CMP      R6,#+192
        BCC.N    ??RCC_PLLConfig_2
        CMP      R6,#+432
        BLS.N    ??RCC_PLLConfig_3
??RCC_PLLConfig_2:
        MOVW     R2,#+441
        LDR.W    R1,??DataTable60_1
        LDR.W    R0,??DataTable65
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_PLLConfig_3:
        CMP      R7,#+2
        BEQ.N    ??RCC_PLLConfig_4
        CMP      R7,#+4
        BEQ.N    ??RCC_PLLConfig_4
        CMP      R7,#+6
        BEQ.N    ??RCC_PLLConfig_4
        CMP      R7,#+8
        BEQ.N    ??RCC_PLLConfig_4
        MOV      R2,#+442
        LDR.W    R1,??DataTable60_1
        LDR.W    R0,??DataTable65_1
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_PLLConfig_4:
        CMP      R8,#+4
        BCC.N    ??RCC_PLLConfig_5
        CMP      R8,#+16
        BCC.N    ??RCC_PLLConfig_6
??RCC_PLLConfig_5:
        MOVW     R2,#+443
        LDR.W    R1,??DataTable60_1
        LDR.W    R0,??DataTable65_2
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_PLLConfig_6:
        ORRS     R0,R5,R6, LSL #+6
        LSRS     R1,R7,#+1
        SUBS     R1,R1,#+1
        ORRS     R0,R0,R1, LSL #+16
        ORRS     R0,R4,R0
        ORRS     R0,R0,R8, LSL #+24
        LDR.W    R1,??DataTable59_3  ;; 0x40023804
        STR      R0,[R1, #+0]
        POP      {R4-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_PLLCmd:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??RCC_PLLCmd_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??RCC_PLLCmd_0
        MOV      R2,#+462
        LDR.W    R1,??DataTable60_1
        LDR.W    R0,??DataTable62
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_PLLCmd_0:
        LDR.W    R0,??DataTable69  ;; 0x42470060
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_PLLI2SConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        CMP      R4,#+192
        BCC.N    ??RCC_PLLI2SConfig_0
        CMP      R4,#+432
        BLS.N    ??RCC_PLLI2SConfig_1
??RCC_PLLI2SConfig_0:
        MOVW     R2,#+489
        LDR.W    R1,??DataTable60_1
        LDR.W    R0,??DataTable67
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_PLLI2SConfig_1:
        CMP      R5,#+2
        BCC.N    ??RCC_PLLI2SConfig_2
        CMP      R5,#+8
        BCC.N    ??RCC_PLLI2SConfig_3
??RCC_PLLI2SConfig_2:
        MOV      R2,#+490
        LDR.W    R1,??DataTable60_1
        LDR.W    R0,??DataTable67_1
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_PLLI2SConfig_3:
        LSLS     R0,R5,#+28
        ORRS     R0,R0,R4, LSL #+6
        LDR.W    R1,??DataTable69_1  ;; 0x40023884
        STR      R0,[R1, #+0]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_PLLI2SCmd:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??RCC_PLLI2SCmd_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??RCC_PLLI2SCmd_0
        MOVW     R2,#+505
        LDR.W    R1,??DataTable60_1
        LDR.W    R0,??DataTable62
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_PLLI2SCmd_0:
        LDR.W    R0,??DataTable70  ;; 0x42470068
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_ClockSecuritySystemCmd:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??RCC_ClockSecuritySystemCmd_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??RCC_ClockSecuritySystemCmd_0
        MOVW     R2,#+523
        LDR.W    R1,??DataTable60_1
        LDR.W    R0,??DataTable62
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_ClockSecuritySystemCmd_0:
        LDR.W    R0,??DataTable70_1  ;; 0x4247004c
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_MCO1Config:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        CMP      R4,#+0
        BEQ.N    ??RCC_MCO1Config_0
        CMP      R4,#+2097152
        BEQ.N    ??RCC_MCO1Config_0
        CMP      R4,#+4194304
        BEQ.N    ??RCC_MCO1Config_0
        CMP      R4,#+6291456
        BEQ.N    ??RCC_MCO1Config_0
        MOVW     R2,#+550
        LDR.W    R1,??DataTable60_1
        LDR.W    R0,??DataTable68_3
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_MCO1Config_0:
        CMP      R5,#+0
        BEQ.N    ??RCC_MCO1Config_1
        CMP      R5,#+67108864
        BEQ.N    ??RCC_MCO1Config_1
        CMP      R5,#+83886080
        BEQ.N    ??RCC_MCO1Config_1
        CMP      R5,#+100663296
        BEQ.N    ??RCC_MCO1Config_1
        CMP      R5,#+117440512
        BEQ.N    ??RCC_MCO1Config_1
        MOVW     R2,#+551
        LDR.W    R1,??DataTable60_1
        LDR.W    R0,??DataTable69_2
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_MCO1Config_1:
        LDR.W    R0,??DataTable59_1  ;; 0x40023808
        LDR      R0,[R0, #+0]
        MOVS     R6,R0
        BICS     R6,R6,#0x7600000
        ORRS     R0,R5,R4
        ORRS     R6,R0,R6
        LDR.W    R0,??DataTable59_1  ;; 0x40023808
        STR      R6,[R0, #+0]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_MCO2Config:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        CMP      R4,#+0
        BEQ.N    ??RCC_MCO2Config_0
        CMP      R4,#+1073741824
        BEQ.N    ??RCC_MCO2Config_0
        CMN      R4,#-2147483648
        BEQ.N    ??RCC_MCO2Config_0
        CMN      R4,#+1073741824
        BEQ.N    ??RCC_MCO2Config_0
        MOV      R2,#+588
        LDR.W    R1,??DataTable60_1
        LDR.W    R0,??DataTable69_3
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_MCO2Config_0:
        CMP      R5,#+0
        BEQ.N    ??RCC_MCO2Config_1
        CMP      R5,#+536870912
        BEQ.N    ??RCC_MCO2Config_1
        CMP      R5,#+671088640
        BEQ.N    ??RCC_MCO2Config_1
        CMP      R5,#+805306368
        BEQ.N    ??RCC_MCO2Config_1
        CMP      R5,#+939524096
        BEQ.N    ??RCC_MCO2Config_1
        MOVW     R2,#+589
        LDR.W    R1,??DataTable60_1
        LDR.W    R0,??DataTable69_4
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_MCO2Config_1:
        LDR.W    R0,??DataTable59_1  ;; 0x40023808
        LDR      R0,[R0, #+0]
        MOVS     R6,R0
        LSLS     R6,R6,#+5
        LSRS     R6,R6,#+5
        ORRS     R0,R5,R4
        ORRS     R6,R0,R6
        LDR.W    R0,??DataTable59_1  ;; 0x40023808
        STR      R6,[R0, #+0]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_SYSCLKConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        CMP      R4,#+0
        BEQ.N    ??RCC_SYSCLKConfig_0
        CMP      R4,#+1
        BEQ.N    ??RCC_SYSCLKConfig_0
        CMP      R4,#+2
        BEQ.N    ??RCC_SYSCLKConfig_0
        MOVW     R2,#+693
        LDR.W    R1,??DataTable60_1
        LDR.W    R0,??DataTable69_5
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_SYSCLKConfig_0:
        LDR.W    R0,??DataTable59_1  ;; 0x40023808
        LDR      R0,[R0, #+0]
        MOVS     R5,R0
        LSRS     R5,R5,#+2
        LSLS     R5,R5,#+2
        ORRS     R5,R4,R5
        LDR.W    R0,??DataTable59_1  ;; 0x40023808
        STR      R5,[R0, #+0]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_GetSYSCLKSource:
        LDR.W    R0,??DataTable59_1  ;; 0x40023808
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0xC
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_HCLKConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        CMP      R4,#+0
        BEQ.N    ??RCC_HCLKConfig_0
        CMP      R4,#+128
        BEQ.N    ??RCC_HCLKConfig_0
        CMP      R4,#+144
        BEQ.N    ??RCC_HCLKConfig_0
        CMP      R4,#+160
        BEQ.N    ??RCC_HCLKConfig_0
        CMP      R4,#+176
        BEQ.N    ??RCC_HCLKConfig_0
        CMP      R4,#+192
        BEQ.N    ??RCC_HCLKConfig_0
        CMP      R4,#+208
        BEQ.N    ??RCC_HCLKConfig_0
        CMP      R4,#+224
        BEQ.N    ??RCC_HCLKConfig_0
        CMP      R4,#+240
        BEQ.N    ??RCC_HCLKConfig_0
        MOVW     R2,#+746
        LDR.W    R1,??DataTable60_1
        LDR.W    R0,??DataTable70_2
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_HCLKConfig_0:
        LDR.W    R0,??DataTable59_1  ;; 0x40023808
        LDR      R0,[R0, #+0]
        MOVS     R5,R0
        BICS     R5,R5,#0xF0
        ORRS     R5,R4,R5
        LDR.W    R0,??DataTable59_1  ;; 0x40023808
        STR      R5,[R0, #+0]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_PCLK1Config:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        CMP      R4,#+0
        BEQ.N    ??RCC_PCLK1Config_0
        CMP      R4,#+4096
        BEQ.N    ??RCC_PCLK1Config_0
        CMP      R4,#+5120
        BEQ.N    ??RCC_PCLK1Config_0
        CMP      R4,#+6144
        BEQ.N    ??RCC_PCLK1Config_0
        CMP      R4,#+7168
        BEQ.N    ??RCC_PCLK1Config_0
        MOVW     R2,#+778
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable70_3
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_PCLK1Config_0:
        LDR.W    R0,??DataTable59_1  ;; 0x40023808
        LDR      R0,[R0, #+0]
        MOVS     R5,R0
        BICS     R5,R5,#0x1C00
        ORRS     R5,R4,R5
        LDR.W    R0,??DataTable59_1  ;; 0x40023808
        STR      R5,[R0, #+0]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_PCLK2Config:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        CMP      R4,#+0
        BEQ.N    ??RCC_PCLK2Config_0
        CMP      R4,#+4096
        BEQ.N    ??RCC_PCLK2Config_0
        CMP      R4,#+5120
        BEQ.N    ??RCC_PCLK2Config_0
        CMP      R4,#+6144
        BEQ.N    ??RCC_PCLK2Config_0
        CMP      R4,#+7168
        BEQ.N    ??RCC_PCLK2Config_0
        MOVW     R2,#+809
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable70_3
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_PCLK2Config_0:
        LDR.W    R0,??DataTable59_1  ;; 0x40023808
        LDR      R0,[R0, #+0]
        MOVS     R5,R0
        BICS     R5,R5,#0xE000
        ORRS     R5,R5,R4, LSL #+3
        LDR.W    R0,??DataTable59_1  ;; 0x40023808
        STR      R5,[R0, #+0]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_GetClocksFreq:
        PUSH     {R4-R7}
        MOVS     R1,#+0
        MOVS     R2,#+0
        MOVS     R3,#+0
        MOVS     R4,#+2
        MOVS     R5,#+0
        MOVS     R6,#+2
        LDR.W    R7,??DataTable59_1  ;; 0x40023808
        LDR      R7,[R7, #+0]
        ANDS     R7,R7,#0xC
        MOVS     R1,R7
        MOVS     R7,R1
        CMP      R7,#+0
        BEQ.N    ??RCC_GetClocksFreq_0
        CMP      R7,#+4
        BEQ.N    ??RCC_GetClocksFreq_1
        CMP      R7,#+8
        BEQ.N    ??RCC_GetClocksFreq_2
        B.N      ??RCC_GetClocksFreq_3
??RCC_GetClocksFreq_0:
        LDR.W    R7,??DataTable71  ;; 0xf42400
        STR      R7,[R0, #+0]
        B.N      ??RCC_GetClocksFreq_4
??RCC_GetClocksFreq_1:
        LDR.W    R7,??DataTable71_1  ;; 0x7a1200
        STR      R7,[R0, #+0]
        B.N      ??RCC_GetClocksFreq_4
??RCC_GetClocksFreq_2:
        LDR.W    R7,??DataTable59_3  ;; 0x40023804
        LDR      R7,[R7, #+0]
        UBFX     R7,R7,#+22,#+1
        MOVS     R5,R7
        LDR.W    R7,??DataTable59_3  ;; 0x40023804
        LDR      R7,[R7, #+0]
        ANDS     R7,R7,#0x3F
        MOVS     R6,R7
        CMP      R5,#+0
        BEQ.N    ??RCC_GetClocksFreq_5
        LDR.W    R7,??DataTable71_1  ;; 0x7a1200
        UDIV     R7,R7,R6
        LDR.W    R12,??DataTable59_3  ;; 0x40023804
        LDR      R12,[R12, #+0]
        UBFX     R12,R12,#+6,#+9
        MUL      R7,R12,R7
        MOVS     R3,R7
        B.N      ??RCC_GetClocksFreq_6
??RCC_GetClocksFreq_5:
        LDR.W    R7,??DataTable71  ;; 0xf42400
        UDIV     R7,R7,R6
        LDR.W    R12,??DataTable59_3  ;; 0x40023804
        LDR      R12,[R12, #+0]
        UBFX     R12,R12,#+6,#+9
        MUL      R7,R12,R7
        MOVS     R3,R7
??RCC_GetClocksFreq_6:
        LDR.W    R7,??DataTable59_3  ;; 0x40023804
        LDR      R7,[R7, #+0]
        UBFX     R7,R7,#+16,#+2
        ADDS     R7,R7,#+1
        LSLS     R7,R7,#+1
        MOVS     R4,R7
        UDIV     R7,R3,R4
        STR      R7,[R0, #+0]
        B.N      ??RCC_GetClocksFreq_4
??RCC_GetClocksFreq_3:
        LDR.W    R7,??DataTable71  ;; 0xf42400
        STR      R7,[R0, #+0]
??RCC_GetClocksFreq_4:
        LDR.W    R7,??DataTable59_1  ;; 0x40023808
        LDR      R7,[R7, #+0]
        ANDS     R7,R7,#0xF0
        MOVS     R1,R7
        LSRS     R1,R1,#+4
        LDR.W    R7,??DataTable74
        LDRB     R7,[R1, R7]
        MOVS     R2,R7
        LDR      R7,[R0, #+0]
        LSRS     R7,R7,R2
        STR      R7,[R0, #+4]
        LDR.W    R7,??DataTable59_1  ;; 0x40023808
        LDR      R7,[R7, #+0]
        ANDS     R7,R7,#0x1C00
        MOVS     R1,R7
        LSRS     R1,R1,#+10
        LDR.W    R7,??DataTable74
        LDRB     R7,[R1, R7]
        MOVS     R2,R7
        LDR      R7,[R0, #+4]
        LSRS     R7,R7,R2
        STR      R7,[R0, #+8]
        LDR.W    R7,??DataTable59_1  ;; 0x40023808
        LDR      R7,[R7, #+0]
        ANDS     R7,R7,#0xE000
        MOVS     R1,R7
        LSRS     R1,R1,#+13
        LDR.W    R7,??DataTable74
        LDRB     R7,[R1, R7]
        MOVS     R2,R7
        LDR      R7,[R0, #+4]
        LSRS     R7,R7,R2
        STR      R7,[R0, #+12]
        POP      {R4-R7}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_RTCCLKConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        MOV      R0,#+256
        CMP      R4,R0
        BEQ.W    ??RCC_RTCCLKConfig_0
        MOV      R0,#+512
        CMP      R4,R0
        BEQ.W    ??RCC_RTCCLKConfig_0
        LDR.W    R0,??DataTable73  ;; 0x20300
        CMP      R4,R0
        BEQ.N    ??RCC_RTCCLKConfig_0
        LDR.W    R0,??DataTable73_1  ;; 0x30300
        CMP      R4,R0
        BEQ.N    ??RCC_RTCCLKConfig_0
        LDR.W    R0,??DataTable73_2  ;; 0x40300
        CMP      R4,R0
        BEQ.N    ??RCC_RTCCLKConfig_0
        LDR.W    R0,??DataTable73_3  ;; 0x50300
        CMP      R4,R0
        BEQ.N    ??RCC_RTCCLKConfig_0
        LDR.W    R0,??DataTable73_4  ;; 0x60300
        CMP      R4,R0
        BEQ.N    ??RCC_RTCCLKConfig_0
        LDR.W    R0,??DataTable73_5  ;; 0x70300
        CMP      R4,R0
        BEQ.N    ??RCC_RTCCLKConfig_0
        LDR.W    R0,??DataTable73_6  ;; 0x80300
        CMP      R4,R0
        BEQ.N    ??RCC_RTCCLKConfig_0
        LDR.W    R0,??DataTable73_7  ;; 0x90300
        CMP      R4,R0
        BEQ.N    ??RCC_RTCCLKConfig_0
        LDR.W    R0,??DataTable73_8  ;; 0xa0300
        CMP      R4,R0
        BEQ.N    ??RCC_RTCCLKConfig_0
        LDR.W    R0,??DataTable73_9  ;; 0xb0300
        CMP      R4,R0
        BEQ.N    ??RCC_RTCCLKConfig_0
        LDR.W    R0,??DataTable73_10  ;; 0xc0300
        CMP      R4,R0
        BEQ.N    ??RCC_RTCCLKConfig_0
        LDR.W    R0,??DataTable73_11  ;; 0xd0300
        CMP      R4,R0
        BEQ.N    ??RCC_RTCCLKConfig_0
        LDR.W    R0,??DataTable74_1  ;; 0xe0300
        CMP      R4,R0
        BEQ.N    ??RCC_RTCCLKConfig_0
        LDR.W    R0,??DataTable74_2  ;; 0xf0300
        CMP      R4,R0
        BEQ.N    ??RCC_RTCCLKConfig_0
        LDR.W    R0,??DataTable74_3  ;; 0x100300
        CMP      R4,R0
        BEQ.N    ??RCC_RTCCLKConfig_0
        LDR.W    R0,??DataTable74_4  ;; 0x110300
        CMP      R4,R0
        BEQ.N    ??RCC_RTCCLKConfig_0
        LDR.W    R0,??DataTable74_5  ;; 0x120300
        CMP      R4,R0
        BEQ.N    ??RCC_RTCCLKConfig_0
        LDR.W    R0,??DataTable74_6  ;; 0x130300
        CMP      R4,R0
        BEQ.N    ??RCC_RTCCLKConfig_0
        LDR.W    R0,??DataTable74_7  ;; 0x140300
        CMP      R4,R0
        BEQ.N    ??RCC_RTCCLKConfig_0
        LDR.W    R0,??DataTable74_8  ;; 0x150300
        CMP      R4,R0
        BEQ.N    ??RCC_RTCCLKConfig_0
        LDR.W    R0,??DataTable74_9  ;; 0x160300
        CMP      R4,R0
        BEQ.N    ??RCC_RTCCLKConfig_0
        LDR.W    R0,??DataTable74_10  ;; 0x170300
        CMP      R4,R0
        BEQ.N    ??RCC_RTCCLKConfig_0
        LDR.W    R0,??DataTable74_11  ;; 0x180300
        CMP      R4,R0
        BEQ.N    ??RCC_RTCCLKConfig_0
        LDR.W    R0,??DataTable74_12  ;; 0x190300
        CMP      R4,R0
        BEQ.N    ??RCC_RTCCLKConfig_0
        LDR.W    R0,??DataTable74_13  ;; 0x1a0300
        CMP      R4,R0
        BEQ.N    ??RCC_RTCCLKConfig_0
        LDR.W    R0,??DataTable74_14  ;; 0x1b0300
        CMP      R4,R0
        BEQ.N    ??RCC_RTCCLKConfig_0
        LDR.W    R0,??DataTable74_15  ;; 0x1c0300
        CMP      R4,R0
        BEQ.N    ??RCC_RTCCLKConfig_0
        LDR.W    R0,??DataTable74_16  ;; 0x1d0300
        CMP      R4,R0
        BEQ.N    ??RCC_RTCCLKConfig_0
        LDR.W    R0,??DataTable74_17  ;; 0x1e0300
        CMP      R4,R0
        BEQ.N    ??RCC_RTCCLKConfig_0
        LDR.W    R0,??DataTable74_18  ;; 0x1f0300
        CMP      R4,R0
        BEQ.N    ??RCC_RTCCLKConfig_0
        MOVW     R2,#+986
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable74_19
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_RTCCLKConfig_0:
        MOV      R0,#+768
        ANDS     R0,R0,R4
        MOV      R1,#+768
        CMP      R0,R1
        BNE.N    ??RCC_RTCCLKConfig_1
        LDR.N    R0,??DataTable59_1  ;; 0x40023808
        LDR      R0,[R0, #+0]
        MOVS     R5,R0
        BICS     R5,R5,#0x1F0000
        LDR.W    R0,??DataTable75  ;; 0xffffcff
        ANDS     R0,R0,R4
        ORRS     R5,R0,R5
        LDR.N    R0,??DataTable59_1  ;; 0x40023808
        STR      R5,[R0, #+0]
??RCC_RTCCLKConfig_1:
        LDR.W    R0,??DataTable75_1  ;; 0x40023870
        LDR      R0,[R0, #+0]
        LSLS     R1,R4,#+20
        LSRS     R1,R1,#+20
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable75_1  ;; 0x40023870
        STR      R0,[R1, #+0]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_RTCCLKCmd:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??RCC_RTCCLKCmd_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??RCC_RTCCLKCmd_0
        MOV      R2,#+1016
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_RTCCLKCmd_0:
        LDR.W    R0,??DataTable75_2  ;; 0x42470e3c
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_BackupResetCmd:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??RCC_BackupResetCmd_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??RCC_BackupResetCmd_0
        MOVW     R2,#+1033
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_BackupResetCmd_0:
        LDR.W    R0,??DataTable75_3  ;; 0x42470e40
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_I2SCLKConfig:
        PUSH     {R4,LR}
        MOVS     R4,R0
        CMP      R4,#+0
        BEQ.N    ??RCC_I2SCLKConfig_0
        CMP      R4,#+1
        BEQ.N    ??RCC_I2SCLKConfig_0
        MOVW     R2,#+1053
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable75_4
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_I2SCLKConfig_0:
        LDR.W    R0,??DataTable75_5  ;; 0x4247015c
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_AHB1PeriphClockCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable75_6  ;; 0x819bee00
        TST      R4,R0
        BNE.N    ??RCC_AHB1PeriphClockCmd_0
        CMP      R4,#+0
        BNE.N    ??RCC_AHB1PeriphClockCmd_1
??RCC_AHB1PeriphClockCmd_0:
        MOVW     R2,#+1091
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable75_7
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_AHB1PeriphClockCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RCC_AHB1PeriphClockCmd_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??RCC_AHB1PeriphClockCmd_2
        MOVW     R2,#+1093
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_AHB1PeriphClockCmd_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RCC_AHB1PeriphClockCmd_3
        LDR.W    R0,??DataTable75_8  ;; 0x40023830
        LDR      R0,[R0, #+0]
        ORRS     R0,R4,R0
        LDR.W    R1,??DataTable75_8  ;; 0x40023830
        STR      R0,[R1, #+0]
        B.N      ??RCC_AHB1PeriphClockCmd_4
??RCC_AHB1PeriphClockCmd_3:
        LDR.W    R0,??DataTable75_8  ;; 0x40023830
        LDR      R0,[R0, #+0]
        BICS     R0,R0,R4
        LDR.W    R1,??DataTable75_8  ;; 0x40023830
        STR      R0,[R1, #+0]
??RCC_AHB1PeriphClockCmd_4:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_AHB2PeriphClockCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        BICS     R0,R4,#0xF1
        CMP      R0,#+0
        BNE.N    ??RCC_AHB2PeriphClockCmd_0
        CMP      R4,#+0
        BNE.N    ??RCC_AHB2PeriphClockCmd_1
??RCC_AHB2PeriphClockCmd_0:
        MOVW     R2,#+1123
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable75_9
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_AHB2PeriphClockCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RCC_AHB2PeriphClockCmd_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??RCC_AHB2PeriphClockCmd_2
        MOVW     R2,#+1124
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_AHB2PeriphClockCmd_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RCC_AHB2PeriphClockCmd_3
        LDR.W    R0,??DataTable75_10  ;; 0x40023834
        LDR      R0,[R0, #+0]
        ORRS     R0,R4,R0
        LDR.W    R1,??DataTable75_10  ;; 0x40023834
        STR      R0,[R1, #+0]
        B.N      ??RCC_AHB2PeriphClockCmd_4
??RCC_AHB2PeriphClockCmd_3:
        LDR.W    R0,??DataTable75_10  ;; 0x40023834
        LDR      R0,[R0, #+0]
        BICS     R0,R0,R4
        LDR.W    R1,??DataTable75_10  ;; 0x40023834
        STR      R0,[R1, #+0]
??RCC_AHB2PeriphClockCmd_4:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_AHB3PeriphClockCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LSRS     R0,R4,#+1
        LSLS     R0,R0,#+1
        CMP      R0,#+0
        BNE.N    ??RCC_AHB3PeriphClockCmd_0
        CMP      R4,#+0
        BNE.N    ??RCC_AHB3PeriphClockCmd_1
??RCC_AHB3PeriphClockCmd_0:
        MOVW     R2,#+1150
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_RCC_AHB3_PERIPH(RC...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_AHB3PeriphClockCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RCC_AHB3PeriphClockCmd_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??RCC_AHB3PeriphClockCmd_2
        MOVW     R2,#+1151
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_AHB3PeriphClockCmd_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RCC_AHB3PeriphClockCmd_3
        LDR.W    R0,??DataTable75_11  ;; 0x40023838
        LDR      R0,[R0, #+0]
        ORRS     R0,R4,R0
        LDR.W    R1,??DataTable75_11  ;; 0x40023838
        STR      R0,[R1, #+0]
        B.N      ??RCC_AHB3PeriphClockCmd_4
??RCC_AHB3PeriphClockCmd_3:
        LDR.W    R0,??DataTable75_11  ;; 0x40023838
        LDR      R0,[R0, #+0]
        BICS     R0,R0,R4
        LDR.W    R1,??DataTable75_11  ;; 0x40023838
        STR      R0,[R1, #+0]
??RCC_AHB3PeriphClockCmd_4:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_APB1PeriphClockCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable75_12  ;; 0xc9013600
        TST      R4,R0
        BNE.N    ??RCC_APB1PeriphClockCmd_0
        CMP      R4,#+0
        BNE.N    ??RCC_APB1PeriphClockCmd_1
??RCC_APB1PeriphClockCmd_0:
        MOV      R2,#+1200
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_RCC_APB1_PERIPH(RC...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_APB1PeriphClockCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RCC_APB1PeriphClockCmd_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??RCC_APB1PeriphClockCmd_2
        MOVW     R2,#+1201
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_APB1PeriphClockCmd_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RCC_APB1PeriphClockCmd_3
        LDR.W    R0,??DataTable75_13  ;; 0x40023840
        LDR      R0,[R0, #+0]
        ORRS     R0,R4,R0
        LDR.W    R1,??DataTable75_13  ;; 0x40023840
        STR      R0,[R1, #+0]
        B.N      ??RCC_APB1PeriphClockCmd_4
??RCC_APB1PeriphClockCmd_3:
        LDR.W    R0,??DataTable75_13  ;; 0x40023840
        LDR      R0,[R0, #+0]
        BICS     R0,R0,R4
        LDR.W    R1,??DataTable75_13  ;; 0x40023840
        STR      R0,[R1, #+0]
??RCC_APB1PeriphClockCmd_4:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable59:
        DC32     0x40023800

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable59_1:
        DC32     0x40023808

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable59_2:
        DC32     0xfef6ffff

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable59_3:
        DC32     0x40023804

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_APB2PeriphClockCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable75_14  ;; 0xfff8a0cc
        TST      R4,R0
        BNE.N    ??RCC_APB2PeriphClockCmd_0
        CMP      R4,#+0
        BNE.N    ??RCC_APB2PeriphClockCmd_1
??RCC_APB2PeriphClockCmd_0:
        MOV      R2,#+1240
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_RCC_APB2_PERIPH(RC...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_APB2PeriphClockCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RCC_APB2PeriphClockCmd_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??RCC_APB2PeriphClockCmd_2
        MOVW     R2,#+1241
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_APB2PeriphClockCmd_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RCC_APB2PeriphClockCmd_3
        LDR.W    R0,??DataTable75_15  ;; 0x40023844
        LDR      R0,[R0, #+0]
        ORRS     R0,R4,R0
        LDR.W    R1,??DataTable75_15  ;; 0x40023844
        STR      R0,[R1, #+0]
        B.N      ??RCC_APB2PeriphClockCmd_4
??RCC_APB2PeriphClockCmd_3:
        LDR.W    R0,??DataTable75_15  ;; 0x40023844
        LDR      R0,[R0, #+0]
        BICS     R0,R0,R4
        LDR.W    R1,??DataTable75_15  ;; 0x40023844
        STR      R0,[R1, #+0]
??RCC_APB2PeriphClockCmd_4:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable60:
        DC32     0x24003010

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable60_1:
        DC32     `?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable60_2:
        DC32     `?<Constant "IS_RCC_HSE(RCC_HSE)">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_AHB1PeriphResetCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable75_16  ;; 0xdd9fee00
        TST      R4,R0
        BNE.N    ??RCC_AHB1PeriphResetCmd_0
        CMP      R4,#+0
        BNE.N    ??RCC_AHB1PeriphResetCmd_1
??RCC_AHB1PeriphResetCmd_0:
        MOVW     R2,#+1279
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_RCC_AHB1_RESET_PER...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_AHB1PeriphResetCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RCC_AHB1PeriphResetCmd_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??RCC_AHB1PeriphResetCmd_2
        MOV      R2,#+1280
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_AHB1PeriphResetCmd_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RCC_AHB1PeriphResetCmd_3
        LDR.W    R0,??DataTable75_17  ;; 0x40023810
        LDR      R0,[R0, #+0]
        ORRS     R0,R4,R0
        LDR.W    R1,??DataTable75_17  ;; 0x40023810
        STR      R0,[R1, #+0]
        B.N      ??RCC_AHB1PeriphResetCmd_4
??RCC_AHB1PeriphResetCmd_3:
        LDR.W    R0,??DataTable75_17  ;; 0x40023810
        LDR      R0,[R0, #+0]
        BICS     R0,R0,R4
        LDR.W    R1,??DataTable75_17  ;; 0x40023810
        STR      R0,[R1, #+0]
??RCC_AHB1PeriphResetCmd_4:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable61:
        DC32     `?<Constant "IS_RCC_CALIBRATION_VA...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_AHB2PeriphResetCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        BICS     R0,R4,#0xF1
        CMP      R0,#+0
        BNE.N    ??RCC_AHB2PeriphResetCmd_0
        CMP      R4,#+0
        BNE.N    ??RCC_AHB2PeriphResetCmd_1
??RCC_AHB2PeriphResetCmd_0:
        MOVW     R2,#+1308
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_RCC_AHB2_PERIPH(RC...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_AHB2PeriphResetCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RCC_AHB2PeriphResetCmd_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??RCC_AHB2PeriphResetCmd_2
        MOVW     R2,#+1309
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_AHB2PeriphResetCmd_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RCC_AHB2PeriphResetCmd_3
        LDR.W    R0,??DataTable75_18  ;; 0x40023814
        LDR      R0,[R0, #+0]
        ORRS     R0,R4,R0
        LDR.W    R1,??DataTable75_18  ;; 0x40023814
        STR      R0,[R1, #+0]
        B.N      ??RCC_AHB2PeriphResetCmd_4
??RCC_AHB2PeriphResetCmd_3:
        LDR.W    R0,??DataTable75_18  ;; 0x40023814
        LDR      R0,[R0, #+0]
        BICS     R0,R0,R4
        LDR.W    R1,??DataTable75_18  ;; 0x40023814
        STR      R0,[R1, #+0]
??RCC_AHB2PeriphResetCmd_4:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable62:
        DC32     `?<Constant "IS_FUNCTIONAL_STATE(N...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_AHB3PeriphResetCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LSRS     R0,R4,#+1
        LSLS     R0,R0,#+1
        CMP      R0,#+0
        BNE.N    ??RCC_AHB3PeriphResetCmd_0
        CMP      R4,#+0
        BNE.N    ??RCC_AHB3PeriphResetCmd_1
??RCC_AHB3PeriphResetCmd_0:
        MOVW     R2,#+1332
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_RCC_AHB3_PERIPH(RC...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_AHB3PeriphResetCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RCC_AHB3PeriphResetCmd_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??RCC_AHB3PeriphResetCmd_2
        MOVW     R2,#+1333
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_AHB3PeriphResetCmd_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RCC_AHB3PeriphResetCmd_3
        LDR.W    R0,??DataTable75_19  ;; 0x40023818
        LDR      R0,[R0, #+0]
        ORRS     R0,R4,R0
        LDR.W    R1,??DataTable75_19  ;; 0x40023818
        STR      R0,[R1, #+0]
        B.N      ??RCC_AHB3PeriphResetCmd_4
??RCC_AHB3PeriphResetCmd_3:
        LDR.W    R0,??DataTable75_19  ;; 0x40023818
        LDR      R0,[R0, #+0]
        BICS     R0,R0,R4
        LDR.W    R1,??DataTable75_19  ;; 0x40023818
        STR      R0,[R1, #+0]
??RCC_AHB3PeriphResetCmd_4:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable63:
        DC32     `?<Constant "IS_RCC_LSE(RCC_LSE)">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_APB1PeriphResetCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable75_12  ;; 0xc9013600
        TST      R4,R0
        BNE.N    ??RCC_APB1PeriphResetCmd_0
        CMP      R4,#+0
        BNE.N    ??RCC_APB1PeriphResetCmd_1
??RCC_APB1PeriphResetCmd_0:
        MOVW     R2,#+1379
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_RCC_APB1_PERIPH(RC...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_APB1PeriphResetCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RCC_APB1PeriphResetCmd_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??RCC_APB1PeriphResetCmd_2
        MOVW     R2,#+1380
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_APB1PeriphResetCmd_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RCC_APB1PeriphResetCmd_3
        LDR.W    R0,??DataTable75_20  ;; 0x40023820
        LDR      R0,[R0, #+0]
        ORRS     R0,R4,R0
        LDR.W    R1,??DataTable75_20  ;; 0x40023820
        STR      R0,[R1, #+0]
        B.N      ??RCC_APB1PeriphResetCmd_4
??RCC_APB1PeriphResetCmd_3:
        LDR.W    R0,??DataTable75_20  ;; 0x40023820
        LDR      R0,[R0, #+0]
        BICS     R0,R0,R4
        LDR.W    R1,??DataTable75_20  ;; 0x40023820
        STR      R0,[R1, #+0]
??RCC_APB1PeriphResetCmd_4:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable64:
        DC32     `?<Constant "IS_RCC_PLL_SOURCE(RCC...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable64_1:
        DC32     `?<Constant "IS_RCC_PLLM_VALUE(PLLM)">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_APB2PeriphResetCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable75_21  ;; 0xfff8a6cc
        TST      R4,R0
        BNE.N    ??RCC_APB2PeriphResetCmd_0
        CMP      R4,#+0
        BNE.N    ??RCC_APB2PeriphResetCmd_1
??RCC_APB2PeriphResetCmd_0:
        MOVW     R2,#+1415
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_RCC_APB2_RESET_PER...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_APB2PeriphResetCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RCC_APB2PeriphResetCmd_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??RCC_APB2PeriphResetCmd_2
        MOV      R2,#+1416
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_APB2PeriphResetCmd_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RCC_APB2PeriphResetCmd_3
        LDR.W    R0,??DataTable75_22  ;; 0x40023824
        LDR      R0,[R0, #+0]
        ORRS     R0,R4,R0
        LDR.W    R1,??DataTable75_22  ;; 0x40023824
        STR      R0,[R1, #+0]
        B.N      ??RCC_APB2PeriphResetCmd_4
??RCC_APB2PeriphResetCmd_3:
        LDR.W    R0,??DataTable75_22  ;; 0x40023824
        LDR      R0,[R0, #+0]
        BICS     R0,R0,R4
        LDR.W    R1,??DataTable75_22  ;; 0x40023824
        STR      R0,[R1, #+0]
??RCC_APB2PeriphResetCmd_4:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable65:
        DC32     `?<Constant "IS_RCC_PLLN_VALUE(PLLN)">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable65_1:
        DC32     `?<Constant "IS_RCC_PLLP_VALUE(PLLP)">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable65_2:
        DC32     `?<Constant "IS_RCC_PLLQ_VALUE(PLLQ)">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_AHB1PeriphClockLPModeCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable75_23  ;; 0x81986e00
        TST      R4,R0
        BNE.N    ??RCC_AHB1PeriphClockLPModeCmd_0
        CMP      R4,#+0
        BNE.N    ??RCC_AHB1PeriphClockLPModeCmd_1
??RCC_AHB1PeriphClockLPModeCmd_0:
        MOVW     R2,#+1461
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_RCC_AHB1_LPMODE_PE...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_AHB1PeriphClockLPModeCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RCC_AHB1PeriphClockLPModeCmd_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??RCC_AHB1PeriphClockLPModeCmd_2
        MOVW     R2,#+1462
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_AHB1PeriphClockLPModeCmd_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RCC_AHB1PeriphClockLPModeCmd_3
        LDR.W    R0,??DataTable75_24  ;; 0x40023850
        LDR      R0,[R0, #+0]
        ORRS     R0,R4,R0
        LDR.W    R1,??DataTable75_24  ;; 0x40023850
        STR      R0,[R1, #+0]
        B.N      ??RCC_AHB1PeriphClockLPModeCmd_4
??RCC_AHB1PeriphClockLPModeCmd_3:
        LDR.W    R0,??DataTable75_24  ;; 0x40023850
        LDR      R0,[R0, #+0]
        BICS     R0,R0,R4
        LDR.W    R1,??DataTable75_24  ;; 0x40023850
        STR      R0,[R1, #+0]
??RCC_AHB1PeriphClockLPModeCmd_4:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable66:
        DC32     0x4002380c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable66_1:
        DC32     0x40023802

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_AHB2PeriphClockLPModeCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        BICS     R0,R4,#0xF1
        CMP      R0,#+0
        BNE.N    ??RCC_AHB2PeriphClockLPModeCmd_0
        CMP      R4,#+0
        BNE.N    ??RCC_AHB2PeriphClockLPModeCmd_1
??RCC_AHB2PeriphClockLPModeCmd_0:
        MOVW     R2,#+1493
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_RCC_AHB2_PERIPH(RC...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_AHB2PeriphClockLPModeCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RCC_AHB2PeriphClockLPModeCmd_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??RCC_AHB2PeriphClockLPModeCmd_2
        MOVW     R2,#+1494
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_AHB2PeriphClockLPModeCmd_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RCC_AHB2PeriphClockLPModeCmd_3
        LDR.W    R0,??DataTable75_25  ;; 0x40023854
        LDR      R0,[R0, #+0]
        ORRS     R0,R4,R0
        LDR.W    R1,??DataTable75_25  ;; 0x40023854
        STR      R0,[R1, #+0]
        B.N      ??RCC_AHB2PeriphClockLPModeCmd_4
??RCC_AHB2PeriphClockLPModeCmd_3:
        LDR.W    R0,??DataTable75_25  ;; 0x40023854
        LDR      R0,[R0, #+0]
        BICS     R0,R0,R4
        LDR.W    R1,??DataTable75_25  ;; 0x40023854
        STR      R0,[R1, #+0]
??RCC_AHB2PeriphClockLPModeCmd_4:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable67:
        DC32     `?<Constant "IS_RCC_PLLI2SN_VALUE(...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable67_1:
        DC32     `?<Constant "IS_RCC_PLLI2SR_VALUE(...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_AHB3PeriphClockLPModeCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LSRS     R0,R4,#+1
        LSLS     R0,R0,#+1
        CMP      R0,#+0
        BNE.N    ??RCC_AHB3PeriphClockLPModeCmd_0
        CMP      R4,#+0
        BNE.N    ??RCC_AHB3PeriphClockLPModeCmd_1
??RCC_AHB3PeriphClockLPModeCmd_0:
        MOV      R2,#+1520
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_RCC_AHB3_PERIPH(RC...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_AHB3PeriphClockLPModeCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RCC_AHB3PeriphClockLPModeCmd_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??RCC_AHB3PeriphClockLPModeCmd_2
        MOVW     R2,#+1521
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_AHB3PeriphClockLPModeCmd_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RCC_AHB3PeriphClockLPModeCmd_3
        LDR.W    R0,??DataTable75_26  ;; 0x40023858
        LDR      R0,[R0, #+0]
        ORRS     R0,R4,R0
        LDR.W    R1,??DataTable75_26  ;; 0x40023858
        STR      R0,[R1, #+0]
        B.N      ??RCC_AHB3PeriphClockLPModeCmd_4
??RCC_AHB3PeriphClockLPModeCmd_3:
        LDR.W    R0,??DataTable75_26  ;; 0x40023858
        LDR      R0,[R0, #+0]
        BICS     R0,R0,R4
        LDR.W    R1,??DataTable75_26  ;; 0x40023858
        STR      R0,[R1, #+0]
??RCC_AHB3PeriphClockLPModeCmd_4:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable68:
        DC32     0x42470000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable68_1:
        DC32     0x40023870

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable68_2:
        DC32     0x42470e80

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable68_3:
        DC32     `?<Constant "IS_RCC_MCO1SOURCE(RCC...">`

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
RCC_APB1PeriphClockLPModeCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable75_12  ;; 0xc9013600
        TST      R4,R0
        BNE.N    ??RCC_APB1PeriphClockLPModeCmd_0
        CMP      R4,#+0
        BNE.N    ??RCC_APB1PeriphClockLPModeCmd_1
??RCC_APB1PeriphClockLPModeCmd_0:
        MOVW     R2,#+1570
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_RCC_APB1_PERIPH(RC...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_APB1PeriphClockLPModeCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RCC_APB1PeriphClockLPModeCmd_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??RCC_APB1PeriphClockLPModeCmd_2
        MOVW     R2,#+1571
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_APB1PeriphClockLPModeCmd_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RCC_APB1PeriphClockLPModeCmd_3
        LDR.W    R0,??DataTable75_27  ;; 0x40023860
        LDR      R0,[R0, #+0]
        ORRS     R0,R4,R0
        LDR.W    R1,??DataTable75_27  ;; 0x40023860
        STR      R0,[R1, #+0]
        B.N      ??RCC_APB1PeriphClockLPModeCmd_4
??RCC_APB1PeriphClockLPModeCmd_3:
        LDR.W    R0,??DataTable75_27  ;; 0x40023860
        LDR      R0,[R0, #+0]
        BICS     R0,R0,R4
        LDR.W    R1,??DataTable75_27  ;; 0x40023860
        STR      R0,[R1, #+0]
??RCC_APB1PeriphClockLPModeCmd_4:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable69:
        DC32     0x42470060

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable69_1:
        DC32     0x40023884

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable69_2:
        DC32     `?<Constant "IS_RCC_MCO1DIV(RCC_MC...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable69_3:
        DC32     `?<Constant "IS_RCC_MCO2SOURCE(RCC...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable69_4:
        DC32     `?<Constant "IS_RCC_MCO2DIV(RCC_MC...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable69_5:
        DC32     `?<Constant "IS_RCC_SYSCLK_SOURCE(...">`

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
        DC8 116, 109, 51, 50, 102, 50, 120, 120, 95, 114
        DC8 99, 99, 46, 99, 0, 0

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_APB2PeriphClockLPModeCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable75_14  ;; 0xfff8a0cc
        TST      R4,R0
        BNE.N    ??RCC_APB2PeriphClockLPModeCmd_0
        CMP      R4,#+0
        BNE.N    ??RCC_APB2PeriphClockLPModeCmd_1
??RCC_APB2PeriphClockLPModeCmd_0:
        MOVW     R2,#+1610
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_RCC_APB2_PERIPH(RC...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_APB2PeriphClockLPModeCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RCC_APB2PeriphClockLPModeCmd_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??RCC_APB2PeriphClockLPModeCmd_2
        MOVW     R2,#+1611
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_APB2PeriphClockLPModeCmd_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RCC_APB2PeriphClockLPModeCmd_3
        LDR.W    R0,??DataTable75_28  ;; 0x40023864
        LDR      R0,[R0, #+0]
        ORRS     R0,R4,R0
        LDR.W    R1,??DataTable75_28  ;; 0x40023864
        STR      R0,[R1, #+0]
        B.N      ??RCC_APB2PeriphClockLPModeCmd_4
??RCC_APB2PeriphClockLPModeCmd_3:
        LDR.W    R0,??DataTable75_28  ;; 0x40023864
        LDR      R0,[R0, #+0]
        BICS     R0,R0,R4
        LDR.W    R1,??DataTable75_28  ;; 0x40023864
        STR      R0,[R1, #+0]
??RCC_APB2PeriphClockLPModeCmd_4:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable70:
        DC32     0x42470068

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable70_1:
        DC32     0x4247004c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable70_2:
        DC32     `?<Constant "IS_RCC_HCLK(RCC_SYSCLK)">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable70_3:
        DC32     `?<Constant "IS_RCC_PCLK(RCC_HCLK)">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_ITConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R0,#+192
        TST      R4,R0
        BNE.N    ??RCC_ITConfig_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??RCC_ITConfig_1
??RCC_ITConfig_0:
        MOVW     R2,#+1655
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_RCC_IT(RCC_IT)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_ITConfig_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RCC_ITConfig_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??RCC_ITConfig_2
        MOV      R2,#+1656
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_ITConfig_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RCC_ITConfig_3
        LDR.W    R0,??DataTable75_29  ;; 0x4002380d
        LDRB     R0,[R0, #+0]
        ORRS     R0,R4,R0
        LDR.W    R1,??DataTable75_29  ;; 0x4002380d
        STRB     R0,[R1, #+0]
        B.N      ??RCC_ITConfig_4
??RCC_ITConfig_3:
        LDR.W    R0,??DataTable75_29  ;; 0x4002380d
        LDRB     R0,[R0, #+0]
        BICS     R0,R0,R4
        LDR.W    R1,??DataTable75_29  ;; 0x4002380d
        STRB     R0,[R1, #+0]
??RCC_ITConfig_4:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable71:
        DC32     0xf42400

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable71_1:
        DC32     0x7a1200

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_GetFlagStatus:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        MOVS     R6,#+0
        MOVS     R7,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+33
        BEQ.N    ??RCC_GetFlagStatus_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+49
        BEQ.N    ??RCC_GetFlagStatus_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+57
        BEQ.N    ??RCC_GetFlagStatus_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+65
        BEQ.N    ??RCC_GetFlagStatus_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+97
        BEQ.N    ??RCC_GetFlagStatus_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+121
        BEQ.N    ??RCC_GetFlagStatus_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+122
        BEQ.N    ??RCC_GetFlagStatus_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+123
        BEQ.N    ??RCC_GetFlagStatus_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+124
        BEQ.N    ??RCC_GetFlagStatus_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+125
        BEQ.N    ??RCC_GetFlagStatus_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+126
        BEQ.N    ??RCC_GetFlagStatus_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+127
        BEQ.N    ??RCC_GetFlagStatus_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+59
        BEQ.N    ??RCC_GetFlagStatus_0
        MOVW     R2,#+1695
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_RCC_FLAG(RCC_FLAG)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_GetFlagStatus_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSRS     R0,R4,#+5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R5,R0
        CMP      R5,#+1
        BNE.N    ??RCC_GetFlagStatus_1
        LDR.N    R0,??DataTable75_30  ;; 0x40023800
        LDR      R0,[R0, #+0]
        MOVS     R6,R0
        B.N      ??RCC_GetFlagStatus_2
??RCC_GetFlagStatus_1:
        CMP      R5,#+2
        BNE.N    ??RCC_GetFlagStatus_3
        LDR.N    R0,??DataTable75_1  ;; 0x40023870
        LDR      R0,[R0, #+0]
        MOVS     R6,R0
        B.N      ??RCC_GetFlagStatus_2
??RCC_GetFlagStatus_3:
        LDR.N    R0,??DataTable75_31  ;; 0x40023874
        LDR      R0,[R0, #+0]
        MOVS     R6,R0
??RCC_GetFlagStatus_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ANDS     R0,R4,#0x1F
        MOVS     R5,R0
        MOVS     R0,#+1
        LSLS     R0,R0,R5
        TST      R6,R0
        BEQ.N    ??RCC_GetFlagStatus_4
        MOVS     R0,#+1
        MOVS     R7,R0
        B.N      ??RCC_GetFlagStatus_5
??RCC_GetFlagStatus_4:
        MOVS     R0,#+0
        MOVS     R7,R0
??RCC_GetFlagStatus_5:
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_ClearFlag:
        LDR.N    R0,??DataTable75_31  ;; 0x40023874
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.N    R1,??DataTable75_31  ;; 0x40023874
        STR      R0,[R1, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable73:
        DC32     0x20300

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable73_1:
        DC32     0x30300

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable73_2:
        DC32     0x40300

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable73_3:
        DC32     0x50300

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable73_4:
        DC32     0x60300

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable73_5:
        DC32     0x70300

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable73_6:
        DC32     0x80300

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable73_7:
        DC32     0x90300

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable73_8:
        DC32     0xa0300

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable73_9:
        DC32     0xb0300

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable73_10:
        DC32     0xc0300

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable73_11:
        DC32     0xd0300

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_GetITStatus:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??RCC_GetITStatus_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BEQ.N    ??RCC_GetITStatus_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+4
        BEQ.N    ??RCC_GetITStatus_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+8
        BEQ.N    ??RCC_GetITStatus_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+16
        BEQ.N    ??RCC_GetITStatus_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+128
        BEQ.N    ??RCC_GetITStatus_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+32
        BEQ.N    ??RCC_GetITStatus_0
        MOVW     R2,#+1757
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_RCC_GET_IT(RCC_IT)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_GetITStatus_0:
        LDR.N    R0,??DataTable75_32  ;; 0x4002380c
        LDR      R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        TST      R0,R4
        BEQ.N    ??RCC_GetITStatus_1
        MOVS     R0,#+1
        MOVS     R5,R0
        B.N      ??RCC_GetITStatus_2
??RCC_GetITStatus_1:
        MOVS     R0,#+0
        MOVS     R5,R0
??RCC_GetITStatus_2:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable74:
        DC32     APBAHBPrescTable

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable74_1:
        DC32     0xe0300

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable74_2:
        DC32     0xf0300

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable74_3:
        DC32     0x100300

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable74_4:
        DC32     0x110300

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable74_5:
        DC32     0x120300

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable74_6:
        DC32     0x130300

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable74_7:
        DC32     0x140300

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable74_8:
        DC32     0x150300

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable74_9:
        DC32     0x160300

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable74_10:
        DC32     0x170300

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable74_11:
        DC32     0x180300

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable74_12:
        DC32     0x190300

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable74_13:
        DC32     0x1a0300

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable74_14:
        DC32     0x1b0300

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable74_15:
        DC32     0x1c0300

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable74_16:
        DC32     0x1d0300

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable74_17:
        DC32     0x1e0300

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable74_18:
        DC32     0x1f0300

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable74_19:
        DC32     `?<Constant "IS_RCC_RTCCLK_SOURCE(...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_RCC_AHB2_PERIPH(RC...">`:
        ; Initializer data, 36 bytes
        DC8 73, 83, 95, 82, 67, 67, 95, 65, 72, 66
        DC8 50, 95, 80, 69, 82, 73, 80, 72, 40, 82
        DC8 67, 67, 95, 65, 72, 66, 50, 80, 101, 114
        DC8 105, 112, 104, 41, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_RCC_AHB3_PERIPH(RC...">`:
        ; Initializer data, 36 bytes
        DC8 73, 83, 95, 82, 67, 67, 95, 65, 72, 66
        DC8 51, 95, 80, 69, 82, 73, 80, 72, 40, 82
        DC8 67, 67, 95, 65, 72, 66, 51, 80, 101, 114
        DC8 105, 112, 104, 41, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_RCC_APB1_PERIPH(RC...">`:
        ; Initializer data, 36 bytes
        DC8 73, 83, 95, 82, 67, 67, 95, 65, 80, 66
        DC8 49, 95, 80, 69, 82, 73, 80, 72, 40, 82
        DC8 67, 67, 95, 65, 80, 66, 49, 80, 101, 114
        DC8 105, 112, 104, 41, 0, 0

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_ClearITPendingBit:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LSLS     R0,R4,#+25
        BMI.N    ??RCC_ClearITPendingBit_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??RCC_ClearITPendingBit_1
??RCC_ClearITPendingBit_0:
        MOVW     R2,#+1788
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_RCC_CLEAR_IT(RCC_IT)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RCC_ClearITPendingBit_1:
        LDR.N    R0,??DataTable75_33  ;; 0x4002380e
        STRB     R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75:
        DC32     0xffffcff

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75_1:
        DC32     0x40023870

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75_2:
        DC32     0x42470e3c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75_3:
        DC32     0x42470e40

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75_4:
        DC32     `?<Constant "IS_RCC_I2SCLK_SOURCE(...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75_5:
        DC32     0x4247015c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75_6:
        DC32     0x819bee00

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75_7:
        DC32     `?<Constant "IS_RCC_AHB1_CLOCK_PER...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75_8:
        DC32     0x40023830

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75_9:
        DC32     `?<Constant "IS_RCC_AHB2_PERIPH(RC...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75_10:
        DC32     0x40023834

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75_11:
        DC32     0x40023838

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75_12:
        DC32     0xc9013600

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75_13:
        DC32     0x40023840

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75_14:
        DC32     0xfff8a0cc

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75_15:
        DC32     0x40023844

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75_16:
        DC32     0xdd9fee00

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75_17:
        DC32     0x40023810

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75_18:
        DC32     0x40023814

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75_19:
        DC32     0x40023818

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75_20:
        DC32     0x40023820

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75_21:
        DC32     0xfff8a6cc

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75_22:
        DC32     0x40023824

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75_23:
        DC32     0x81986e00

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75_24:
        DC32     0x40023850

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75_25:
        DC32     0x40023854

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75_26:
        DC32     0x40023858

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75_27:
        DC32     0x40023860

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75_28:
        DC32     0x40023864

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75_29:
        DC32     0x4002380d

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75_30:
        DC32     0x40023800

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75_31:
        DC32     0x40023874

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75_32:
        DC32     0x4002380c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75_33:
        DC32     0x4002380e

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_RCC_APB2_PERIPH(RC...">`:
        ; Initializer data, 36 bytes
        DC8 73, 83, 95, 82, 67, 67, 95, 65, 80, 66
        DC8 50, 95, 80, 69, 82, 73, 80, 72, 40, 82
        DC8 67, 67, 95, 65, 80, 66, 50, 80, 101, 114
        DC8 105, 112, 104, 41, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_RCC_AHB1_RESET_PER...">`:
        ; Initializer data, 44 bytes
        DC8 73, 83, 95, 82, 67, 67, 95, 65, 72, 66
        DC8 49, 95, 82, 69, 83, 69, 84, 95, 80, 69
        DC8 82, 73, 80, 72, 40, 82, 67, 67, 95, 65
        DC8 72, 66, 49, 80, 101, 114, 105, 112, 104, 41
        DC8 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_RCC_APB2_RESET_PER...">`:
        ; Initializer data, 44 bytes
        DC8 73, 83, 95, 82, 67, 67, 95, 65, 80, 66
        DC8 50, 95, 82, 69, 83, 69, 84, 95, 80, 69
        DC8 82, 73, 80, 72, 40, 82, 67, 67, 95, 65
        DC8 80, 66, 50, 80, 101, 114, 105, 112, 104, 41
        DC8 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_RCC_AHB1_LPMODE_PE...">`:
        ; Initializer data, 44 bytes
        DC8 73, 83, 95, 82, 67, 67, 95, 65, 72, 66
        DC8 49, 95, 76, 80, 77, 79, 68, 69, 95, 80
        DC8 69, 82, 73, 80, 72, 40, 82, 67, 67, 95
        DC8 65, 72, 66, 49, 80, 101, 114, 105, 112, 104
        DC8 41, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_RCC_IT(RCC_IT)">`:
        ; Initializer data, 20 bytes
        DC8 73, 83, 95, 82, 67, 67, 95, 73, 84, 40
        DC8 82, 67, 67, 95, 73, 84, 41, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_RCC_FLAG(RCC_FLAG)">`:
        ; Initializer data, 24 bytes
        DC8 73, 83, 95, 82, 67, 67, 95, 70, 76, 65
        DC8 71, 40, 82, 67, 67, 95, 70, 76, 65, 71
        DC8 41, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_RCC_GET_IT(RCC_IT)">`:
        ; Initializer data, 24 bytes
        DC8 73, 83, 95, 82, 67, 67, 95, 71, 69, 84
        DC8 95, 73, 84, 40, 82, 67, 67, 95, 73, 84
        DC8 41, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_RCC_CLEAR_IT(RCC_IT)">`:
        ; Initializer data, 24 bytes
        DC8 73, 83, 95, 82, 67, 67, 95, 67, 76, 69
        DC8 65, 82, 95, 73, 84, 40, 82, 67, 67, 95
        DC8 73, 84, 41, 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RCC_HSE(RCC_HSE)">`:
        ; Initializer data, 20 bytes
        DC8 73, 83, 95, 82, 67, 67, 95, 72, 83, 69
        DC8 40, 82, 67, 67, 95, 72, 83, 69, 41, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RCC_CALIBRATION_VA...">`:
        ; Initializer data, 48 bytes
        DC8 73, 83, 95, 82, 67, 67, 95, 67, 65, 76
        DC8 73, 66, 82, 65, 84, 73, 79, 78, 95, 86
        DC8 65, 76, 85, 69, 40, 72, 83, 73, 67, 97
        DC8 108, 105, 98, 114, 97, 116, 105, 111, 110, 86
        DC8 97, 108, 117, 101, 41, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RCC_LSE(RCC_LSE)">`:
        ; Initializer data, 20 bytes
        DC8 73, 83, 95, 82, 67, 67, 95, 76, 83, 69
        DC8 40, 82, 67, 67, 95, 76, 83, 69, 41, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RCC_PLL_SOURCE(RCC...">`:
        ; Initializer data, 36 bytes
        DC8 73, 83, 95, 82, 67, 67, 95, 80, 76, 76
        DC8 95, 83, 79, 85, 82, 67, 69, 40, 82, 67
        DC8 67, 95, 80, 76, 76, 83, 111, 117, 114, 99
        DC8 101, 41, 0, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RCC_PLLM_VALUE(PLLM)">`:
        ; Initializer data, 24 bytes
        DC8 73, 83, 95, 82, 67, 67, 95, 80, 76, 76
        DC8 77, 95, 86, 65, 76, 85, 69, 40, 80, 76
        DC8 76, 77, 41, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RCC_PLLN_VALUE(PLLN)">`:
        ; Initializer data, 24 bytes
        DC8 73, 83, 95, 82, 67, 67, 95, 80, 76, 76
        DC8 78, 95, 86, 65, 76, 85, 69, 40, 80, 76
        DC8 76, 78, 41, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RCC_PLLP_VALUE(PLLP)">`:
        ; Initializer data, 24 bytes
        DC8 73, 83, 95, 82, 67, 67, 95, 80, 76, 76
        DC8 80, 95, 86, 65, 76, 85, 69, 40, 80, 76
        DC8 76, 80, 41, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RCC_PLLQ_VALUE(PLLQ)">`:
        ; Initializer data, 24 bytes
        DC8 73, 83, 95, 82, 67, 67, 95, 80, 76, 76
        DC8 81, 95, 86, 65, 76, 85, 69, 40, 80, 76
        DC8 76, 81, 41, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RCC_PLLI2SN_VALUE(...">`:
        ; Initializer data, 32 bytes
        DC8 73, 83, 95, 82, 67, 67, 95, 80, 76, 76
        DC8 73, 50, 83, 78, 95, 86, 65, 76, 85, 69
        DC8 40, 80, 76, 76, 73, 50, 83, 78, 41, 0
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RCC_PLLI2SR_VALUE(...">`:
        ; Initializer data, 32 bytes
        DC8 73, 83, 95, 82, 67, 67, 95, 80, 76, 76
        DC8 73, 50, 83, 82, 95, 86, 65, 76, 85, 69
        DC8 40, 80, 76, 76, 73, 50, 83, 82, 41, 0
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RCC_MCO1SOURCE(RCC...">`:
        ; Initializer data, 36 bytes
        DC8 73, 83, 95, 82, 67, 67, 95, 77, 67, 79
        DC8 49, 83, 79, 85, 82, 67, 69, 40, 82, 67
        DC8 67, 95, 77, 67, 79, 49, 83, 111, 117, 114
        DC8 99, 101, 41, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RCC_MCO1DIV(RCC_MC...">`:
        ; Initializer data, 28 bytes
        DC8 73, 83, 95, 82, 67, 67, 95, 77, 67, 79
        DC8 49, 68, 73, 86, 40, 82, 67, 67, 95, 77
        DC8 67, 79, 49, 68, 105, 118, 41, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RCC_MCO2SOURCE(RCC...">`:
        ; Initializer data, 36 bytes
        DC8 73, 83, 95, 82, 67, 67, 95, 77, 67, 79
        DC8 50, 83, 79, 85, 82, 67, 69, 40, 82, 67
        DC8 67, 95, 77, 67, 79, 50, 83, 111, 117, 114
        DC8 99, 101, 41, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RCC_MCO2DIV(RCC_MC...">`:
        ; Initializer data, 28 bytes
        DC8 73, 83, 95, 82, 67, 67, 95, 77, 67, 79
        DC8 50, 68, 73, 86, 40, 82, 67, 67, 95, 77
        DC8 67, 79, 50, 68, 105, 118, 41, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RCC_SYSCLK_SOURCE(...">`:
        ; Initializer data, 40 bytes
        DC8 73, 83, 95, 82, 67, 67, 95, 83, 89, 83
        DC8 67, 76, 75, 95, 83, 79, 85, 82, 67, 69
        DC8 40, 82, 67, 67, 95, 83, 89, 83, 67, 76
        DC8 75, 83, 111, 117, 114, 99, 101, 41, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RCC_HCLK(RCC_SYSCLK)">`:
        ; Initializer data, 24 bytes
        DC8 73, 83, 95, 82, 67, 67, 95, 72, 67, 76
        DC8 75, 40, 82, 67, 67, 95, 83, 89, 83, 67
        DC8 76, 75, 41, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RCC_PCLK(RCC_HCLK)">`:
        ; Initializer data, 24 bytes
        DC8 73, 83, 95, 82, 67, 67, 95, 80, 67, 76
        DC8 75, 40, 82, 67, 67, 95, 72, 67, 76, 75
        DC8 41, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RCC_RTCCLK_SOURCE(...">`:
        ; Initializer data, 40 bytes
        DC8 73, 83, 95, 82, 67, 67, 95, 82, 84, 67
        DC8 67, 76, 75, 95, 83, 79, 85, 82, 67, 69
        DC8 40, 82, 67, 67, 95, 82, 84, 67, 67, 76
        DC8 75, 83, 111, 117, 114, 99, 101, 41, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RCC_I2SCLK_SOURCE(...">`:
        ; Initializer data, 40 bytes
        DC8 73, 83, 95, 82, 67, 67, 95, 73, 50, 83
        DC8 67, 76, 75, 95, 83, 79, 85, 82, 67, 69
        DC8 40, 82, 67, 67, 95, 73, 50, 83, 67, 76
        DC8 75, 83, 111, 117, 114, 99, 101, 41, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RCC_AHB1_CLOCK_PER...">`:
        ; Initializer data, 44 bytes
        DC8 73, 83, 95, 82, 67, 67, 95, 65, 72, 66
        DC8 49, 95, 67, 76, 79, 67, 75, 95, 80, 69
        DC8 82, 73, 80, 72, 40, 82, 67, 67, 95, 65
        DC8 72, 66, 49, 80, 101, 114, 105, 112, 104, 41
        DC8 0, 0, 0, 0

        END
// 
//    16 bytes in section .data
//   624 bytes in section .rodata
// 5 178 bytes in section .text
// 
// 5 178 bytes of CODE  memory
//   624 bytes of CONST memory
//    16 bytes of DATA  memory
//
//Errors: none
//Warnings: none
