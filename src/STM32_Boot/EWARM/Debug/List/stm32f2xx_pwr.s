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
//                    2xx_pwr.c                                               /
//    Command line =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\STM32F2xx_StdPeriph_Driver\src\stm32f /
//                    2xx_pwr.c -D STM32F10X_CL -D USE_STDPERIPH_DRIVER -lcN  /
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
//                    IAR6.1\STM32_Boot\EWARM\Debug\List\stm32f2xx_pwr.s      /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f2xx_pwr

        EXTERN RCC_APB1PeriphResetCmd
        EXTERN __aeabi_assert
        EXTERN __iar_EmptyStepPoint

        PUBLIC PWR_BackupAccessCmd
        PUBLIC PWR_BackupRegulatorCmd
        PUBLIC PWR_ClearFlag
        PUBLIC PWR_DeInit
        PUBLIC PWR_EnterSTANDBYMode
        PUBLIC PWR_EnterSTOPMode
        PUBLIC PWR_FlashPowerDownCmd
        PUBLIC PWR_GetFlagStatus
        PUBLIC PWR_PVDCmd
        PUBLIC PWR_PVDLevelConfig
        PUBLIC PWR_WakeUpPinCmd


        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// static __interwork __softfp void __WFI()
__WFI:
        wfi              
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// static __interwork __softfp void __WFE()
__WFE:
        wfe              
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
PWR_DeInit:
        PUSH     {R7,LR}
        MOVS     R1,#+1
        MOVS     R0,#+268435456
        BL       RCC_APB1PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+268435456
        BL       RCC_APB1PeriphResetCmd
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
PWR_BackupAccessCmd:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??PWR_BackupAccessCmd_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??PWR_BackupAccessCmd_0
        MOVS     R2,#+133
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??PWR_BackupAccessCmd_0:
        LDR.N    R0,??DataTable16  ;; 0x420e0020
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
PWR_PVDLevelConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        CMP      R4,#+0
        BEQ.N    ??PWR_PVDLevelConfig_0
        CMP      R4,#+32
        BEQ.N    ??PWR_PVDLevelConfig_0
        CMP      R4,#+64
        BEQ.N    ??PWR_PVDLevelConfig_0
        CMP      R4,#+96
        BEQ.N    ??PWR_PVDLevelConfig_0
        CMP      R4,#+128
        BEQ.N    ??PWR_PVDLevelConfig_0
        CMP      R4,#+160
        BEQ.N    ??PWR_PVDLevelConfig_0
        CMP      R4,#+192
        BEQ.N    ??PWR_PVDLevelConfig_0
        CMP      R4,#+224
        BEQ.N    ??PWR_PVDLevelConfig_0
        MOVS     R2,#+181
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_PWR_PVD_LEVEL(PWR_...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??PWR_PVDLevelConfig_0:
        LDR.N    R0,??DataTable16_1  ;; 0x40007000
        LDR      R0,[R0, #+0]
        MOVS     R5,R0
        BICS     R5,R5,#0xE0
        ORRS     R5,R4,R5
        LDR.N    R0,??DataTable16_1  ;; 0x40007000
        STR      R5,[R0, #+0]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
PWR_PVDCmd:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??PWR_PVDCmd_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??PWR_PVDCmd_0
        MOVS     R2,#+204
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??PWR_PVDCmd_0:
        LDR.N    R0,??DataTable16_2  ;; 0x420e0010
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
PWR_WakeUpPinCmd:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??PWR_WakeUpPinCmd_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??PWR_WakeUpPinCmd_0
        MOVS     R2,#+238
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??PWR_WakeUpPinCmd_0:
        LDR.N    R0,??DataTable16_3  ;; 0x420e00a0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
PWR_BackupRegulatorCmd:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??PWR_BackupRegulatorCmd_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??PWR_BackupRegulatorCmd_0
        MOV      R2,#+286
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??PWR_BackupRegulatorCmd_0:
        LDR.N    R0,??DataTable16_4  ;; 0x420e00a4
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
PWR_FlashPowerDownCmd:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??PWR_FlashPowerDownCmd_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??PWR_FlashPowerDownCmd_0
        MOVW     R2,#+321
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??PWR_FlashPowerDownCmd_0:
        LDR.N    R0,??DataTable16_5  ;; 0x420e0024
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
PWR_EnterSTOPMode:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        CMP      R4,#+0
        BEQ.N    ??PWR_EnterSTOPMode_0
        CMP      R4,#+1
        BEQ.N    ??PWR_EnterSTOPMode_0
        MOVW     R2,#+463
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_PWR_REGULATOR(PWR_...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??PWR_EnterSTOPMode_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??PWR_EnterSTOPMode_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+2
        BEQ.N    ??PWR_EnterSTOPMode_1
        MOV      R2,#+464
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_PWR_STOP_ENTRY(PWR...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??PWR_EnterSTOPMode_1:
        LDR.N    R0,??DataTable16_1  ;; 0x40007000
        LDR      R0,[R0, #+0]
        MOVS     R6,R0
        LSRS     R6,R6,#+2
        LSLS     R6,R6,#+2
        ORRS     R6,R4,R6
        LDR.N    R0,??DataTable16_1  ;; 0x40007000
        STR      R6,[R0, #+0]
        LDR.N    R0,??DataTable16_6  ;; 0xe000ed10
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.N    R1,??DataTable16_6  ;; 0xe000ed10
        STR      R0,[R1, #+0]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BNE.N    ??PWR_EnterSTOPMode_2
        BL       __WFI
        B.N      ??PWR_EnterSTOPMode_3
??PWR_EnterSTOPMode_2:
        BL       __WFE
??PWR_EnterSTOPMode_3:
        LDR.N    R0,??DataTable16_6  ;; 0xe000ed10
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x4
        LDR.N    R1,??DataTable16_6  ;; 0xe000ed10
        STR      R0,[R1, #+0]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
PWR_EnterSTANDBYMode:
        PUSH     {R7,LR}
        LDR.N    R0,??DataTable16_1  ;; 0x40007000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.N    R1,??DataTable16_1  ;; 0x40007000
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable16_1  ;; 0x40007000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable16_1  ;; 0x40007000
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable16_6  ;; 0xe000ed10
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.N    R1,??DataTable16_6  ;; 0xe000ed10
        STR      R0,[R1, #+0]
        BL       __WFI
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
PWR_GetFlagStatus:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        CMP      R4,#+1
        BEQ.N    ??PWR_GetFlagStatus_0
        CMP      R4,#+2
        BEQ.N    ??PWR_GetFlagStatus_0
        CMP      R4,#+4
        BEQ.N    ??PWR_GetFlagStatus_0
        CMP      R4,#+8
        BEQ.N    ??PWR_GetFlagStatus_0
        MOVW     R2,#+566
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_PWR_GET_FLAG(PWR_F...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??PWR_GetFlagStatus_0:
        LDR.N    R0,??DataTable16_7  ;; 0x40007004
        LDR      R0,[R0, #+0]
        TST      R0,R4
        BEQ.N    ??PWR_GetFlagStatus_1
        MOVS     R0,#+1
        MOVS     R5,R0
        B.N      ??PWR_GetFlagStatus_2
??PWR_GetFlagStatus_1:
        MOVS     R0,#+0
        MOVS     R5,R0
??PWR_GetFlagStatus_2:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
PWR_ClearFlag:
        PUSH     {R4,LR}
        MOVS     R4,R0
        CMP      R4,#+1
        BEQ.N    ??PWR_ClearFlag_0
        CMP      R4,#+2
        BEQ.N    ??PWR_ClearFlag_0
        MOVW     R2,#+591
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_PWR_CLEAR_FLAG(PWR...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??PWR_ClearFlag_0:
        LDR.N    R0,??DataTable16_1  ;; 0x40007000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,R4, LSL #+2
        LDR.N    R1,??DataTable16_1  ;; 0x40007000
        STR      R0,[R1, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable16:
        DC32     0x420e0020

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable16_1:
        DC32     0x40007000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable16_2:
        DC32     0x420e0010

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable16_3:
        DC32     0x420e00a0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable16_4:
        DC32     0x420e00a4

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable16_5:
        DC32     0x420e0024

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable16_6:
        DC32     0xe000ed10

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable16_7:
        DC32     0x40007004

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
        DC8 116, 109, 51, 50, 102, 50, 120, 120, 95, 112
        DC8 119, 114, 46, 99, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_PWR_PVD_LEVEL(PWR_...">`:
        ; Initializer data, 32 bytes
        DC8 73, 83, 95, 80, 87, 82, 95, 80, 86, 68
        DC8 95, 76, 69, 86, 69, 76, 40, 80, 87, 82
        DC8 95, 80, 86, 68, 76, 101, 118, 101, 108, 41
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_PWR_REGULATOR(PWR_...">`:
        ; Initializer data, 32 bytes
        DC8 73, 83, 95, 80, 87, 82, 95, 82, 69, 71
        DC8 85, 76, 65, 84, 79, 82, 40, 80, 87, 82
        DC8 95, 82, 101, 103, 117, 108, 97, 116, 111, 114
        DC8 41, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_PWR_STOP_ENTRY(PWR...">`:
        ; Initializer data, 36 bytes
        DC8 73, 83, 95, 80, 87, 82, 95, 83, 84, 79
        DC8 80, 95, 69, 78, 84, 82, 89, 40, 80, 87
        DC8 82, 95, 83, 84, 79, 80, 69, 110, 116, 114
        DC8 121, 41, 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_PWR_GET_FLAG(PWR_F...">`:
        ; Initializer data, 28 bytes
        DC8 73, 83, 95, 80, 87, 82, 95, 71, 69, 84
        DC8 95, 70, 76, 65, 71, 40, 80, 87, 82, 95
        DC8 70, 76, 65, 71, 41, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_PWR_CLEAR_FLAG(PWR...">`:
        ; Initializer data, 28 bytes
        DC8 73, 83, 95, 80, 87, 82, 95, 67, 76, 69
        DC8 65, 82, 95, 70, 76, 65, 71, 40, 80, 87
        DC8 82, 95, 70, 76, 65, 71, 41, 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)

        END
// 
// 998 bytes in section .text
// 
// 998 bytes of CODE memory
//
//Errors: none
//Warnings: none
