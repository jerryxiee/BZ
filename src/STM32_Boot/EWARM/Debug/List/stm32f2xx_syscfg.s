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
//                    2xx_syscfg.c                                            /
//    Command line =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\STM32F2xx_StdPeriph_Driver\src\stm32f /
//                    2xx_syscfg.c -D STM32F10X_CL -D USE_STDPERIPH_DRIVER    /
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
//                    IAR6.1\STM32_Boot\EWARM\Debug\List\stm32f2xx_syscfg.s   /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f2xx_syscfg

        EXTERN RCC_APB2PeriphResetCmd
        EXTERN __aeabi_assert
        EXTERN __iar_EmptyStepPoint

        PUBLIC SYSCFG_CompensationCellCmd
        PUBLIC SYSCFG_DeInit
        PUBLIC SYSCFG_ETH_MediaInterfaceConfig
        PUBLIC SYSCFG_EXTILineConfig
        PUBLIC SYSCFG_GetCompensationCellStatus
        PUBLIC SYSCFG_MemoryRemapConfig


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SYSCFG_DeInit:
        PUSH     {R7,LR}
        MOVS     R1,#+1
        MOV      R0,#+16384
        BL       RCC_APB2PeriphResetCmd
        MOVS     R1,#+0
        MOV      R0,#+16384
        BL       RCC_APB2PeriphResetCmd
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SYSCFG_MemoryRemapConfig:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??SYSCFG_MemoryRemapConfig_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??SYSCFG_MemoryRemapConfig_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+3
        BEQ.N    ??SYSCFG_MemoryRemapConfig_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BEQ.N    ??SYSCFG_MemoryRemapConfig_0
        MOVS     R2,#+112
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SYSCFG_MEMORY_REMA...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SYSCFG_MemoryRemapConfig_0:
        LDR.N    R0,??DataTable10  ;; 0x40013800
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SYSCFG_EXTILineConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??SYSCFG_EXTILineConfig_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??SYSCFG_EXTILineConfig_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BEQ.N    ??SYSCFG_EXTILineConfig_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+3
        BEQ.N    ??SYSCFG_EXTILineConfig_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+4
        BEQ.N    ??SYSCFG_EXTILineConfig_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+5
        BEQ.N    ??SYSCFG_EXTILineConfig_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+6
        BEQ.N    ??SYSCFG_EXTILineConfig_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+7
        BEQ.N    ??SYSCFG_EXTILineConfig_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+8
        BEQ.N    ??SYSCFG_EXTILineConfig_0
        MOVS     R2,#+131
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_EXTI_PORT_SOURCE(E...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SYSCFG_EXTILineConfig_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??SYSCFG_EXTILineConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??SYSCFG_EXTILineConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+2
        BEQ.N    ??SYSCFG_EXTILineConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+3
        BEQ.N    ??SYSCFG_EXTILineConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+4
        BEQ.N    ??SYSCFG_EXTILineConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+5
        BEQ.N    ??SYSCFG_EXTILineConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+6
        BEQ.N    ??SYSCFG_EXTILineConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+7
        BEQ.N    ??SYSCFG_EXTILineConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+8
        BEQ.N    ??SYSCFG_EXTILineConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+9
        BEQ.N    ??SYSCFG_EXTILineConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+10
        BEQ.N    ??SYSCFG_EXTILineConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+11
        BEQ.N    ??SYSCFG_EXTILineConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+12
        BEQ.N    ??SYSCFG_EXTILineConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+13
        BEQ.N    ??SYSCFG_EXTILineConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+14
        BEQ.N    ??SYSCFG_EXTILineConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+15
        BEQ.N    ??SYSCFG_EXTILineConfig_1
        MOVS     R2,#+132
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_EXTI_PIN_SOURCE(EX...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SYSCFG_EXTILineConfig_1:
        MOVS     R0,#+15
        ANDS     R1,R5,#0x3
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R1,R1,#+2
        LSLS     R0,R0,R1
        MOVS     R6,R0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ASRS     R0,R5,#+2
        LDR.N    R1,??DataTable10_1  ;; 0x40013808
        LDR      R0,[R1, R0, LSL #+2]
        BICS     R0,R0,R6
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ASRS     R1,R5,#+2
        LDR.N    R2,??DataTable10_1  ;; 0x40013808
        STR      R0,[R2, R1, LSL #+2]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ASRS     R0,R5,#+2
        LDR.N    R1,??DataTable10_1  ;; 0x40013808
        LDR      R0,[R1, R0, LSL #+2]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ANDS     R1,R5,#0x3
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R1,R1,#+2
        LSLS     R1,R4,R1
        ORRS     R0,R1,R0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ASRS     R1,R5,#+2
        LDR.N    R2,??DataTable10_1  ;; 0x40013808
        STR      R0,[R2, R1, LSL #+2]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SYSCFG_ETH_MediaInterfaceConfig:
        PUSH     {R4,LR}
        MOVS     R4,R0
        CMP      R4,#+0
        BEQ.N    ??SYSCFG_ETH_MediaInterfaceConfig_0
        CMP      R4,#+1
        BEQ.N    ??SYSCFG_ETH_MediaInterfaceConfig_0
        MOVS     R2,#+149
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SYSCFG_ETH_MEDIA_I...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SYSCFG_ETH_MediaInterfaceConfig_0:
        LDR.N    R0,??DataTable10_2  ;; 0x422700dc
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SYSCFG_CompensationCellCmd:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??SYSCFG_CompensationCellCmd_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??SYSCFG_CompensationCellCmd_0
        MOVS     R2,#+167
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SYSCFG_CompensationCellCmd_0:
        LDR.N    R0,??DataTable10_3  ;; 0x42270400
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SYSCFG_GetCompensationCellStatus:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable10_4  ;; 0x40013820
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+23
        BPL.N    ??SYSCFG_GetCompensationCellStatus_0
        MOVS     R1,#+1
        MOVS     R0,R1
        B.N      ??SYSCFG_GetCompensationCellStatus_1
??SYSCFG_GetCompensationCellStatus_0:
        MOVS     R1,#+0
        MOVS     R0,R1
??SYSCFG_GetCompensationCellStatus_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable10:
        DC32     0x40013800

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable10_1:
        DC32     0x40013808

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable10_2:
        DC32     0x422700dc

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable10_3:
        DC32     0x42270400

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable10_4:
        DC32     0x40013820

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_SYSCFG_MEMORY_REMA...">`:
        ; Initializer data, 52 bytes
        DC8 73, 83, 95, 83, 89, 83, 67, 70, 71, 95
        DC8 77, 69, 77, 79, 82, 89, 95, 82, 69, 77
        DC8 65, 80, 95, 67, 79, 78, 70, 73, 78, 71
        DC8 40, 83, 89, 83, 67, 70, 71, 95, 77, 101
        DC8 109, 111, 114, 121, 82, 101, 109, 97, 112, 41
        DC8 0, 0

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
        DC8 116, 109, 51, 50, 102, 50, 120, 120, 95, 115
        DC8 121, 115, 99, 102, 103, 46, 99, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_EXTI_PORT_SOURCE(E...">`:
        ; Initializer data, 44 bytes
        DC8 73, 83, 95, 69, 88, 84, 73, 95, 80, 79
        DC8 82, 84, 95, 83, 79, 85, 82, 67, 69, 40
        DC8 69, 88, 84, 73, 95, 80, 111, 114, 116, 83
        DC8 111, 117, 114, 99, 101, 71, 80, 73, 79, 120
        DC8 41, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_EXTI_PIN_SOURCE(EX...">`:
        ; Initializer data, 36 bytes
        DC8 73, 83, 95, 69, 88, 84, 73, 95, 80, 73
        DC8 78, 95, 83, 79, 85, 82, 67, 69, 40, 69
        DC8 88, 84, 73, 95, 80, 105, 110, 83, 111, 117
        DC8 114, 99, 101, 120, 41, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_SYSCFG_ETH_MEDIA_I...">`:
        ; Initializer data, 60 bytes
        DC8 73, 83, 95, 83, 89, 83, 67, 70, 71, 95
        DC8 69, 84, 72, 95, 77, 69, 68, 73, 65, 95
        DC8 73, 78, 84, 69, 82, 70, 65, 67, 69, 40
        DC8 83, 89, 83, 67, 70, 71, 95, 69, 84, 72
        DC8 95, 77, 101, 100, 105, 97, 73, 110, 116, 101
        DC8 114, 102, 97, 99, 101, 41, 0, 0, 0, 0

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
// 872 bytes in section .text
// 
// 872 bytes of CODE memory
//
//Errors: none
//Warnings: none
