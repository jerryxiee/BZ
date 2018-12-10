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
//                    2xx_wwdg.c                                              /
//    Command line =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\STM32F2xx_StdPeriph_Driver\src\stm32f /
//                    2xx_wwdg.c -D STM32F10X_CL -D USE_STDPERIPH_DRIVER      /
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
//                    IAR6.1\STM32_Boot\EWARM\Debug\List\stm32f2xx_wwdg.s     /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f2xx_wwdg

        EXTERN RCC_APB1PeriphResetCmd
        EXTERN __aeabi_assert
        EXTERN __iar_EmptyStepPoint

        PUBLIC WWDG_ClearFlag
        PUBLIC WWDG_DeInit
        PUBLIC WWDG_Enable
        PUBLIC WWDG_EnableIT
        PUBLIC WWDG_GetFlagStatus
        PUBLIC WWDG_SetCounter
        PUBLIC WWDG_SetPrescaler
        PUBLIC WWDG_SetWindowValue


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
WWDG_DeInit:
        PUSH     {R7,LR}
        MOVS     R1,#+1
        MOV      R0,#+2048
        BL       RCC_APB1PeriphResetCmd
        MOVS     R1,#+0
        MOV      R0,#+2048
        BL       RCC_APB1PeriphResetCmd
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
WWDG_SetPrescaler:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        CMP      R4,#+0
        BEQ.N    ??WWDG_SetPrescaler_0
        CMP      R4,#+128
        BEQ.N    ??WWDG_SetPrescaler_0
        MOV      R0,#+256
        CMP      R4,R0
        BEQ.N    ??WWDG_SetPrescaler_0
        MOV      R0,#+384
        CMP      R4,R0
        BEQ.N    ??WWDG_SetPrescaler_0
        MOVS     R2,#+154
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_WWDG_PRESCALER(WWD...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??WWDG_SetPrescaler_0:
        LDR.N    R0,??DataTable10  ;; 0x40002c04
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x180
        MOVS     R5,R0
        ORRS     R5,R4,R5
        LDR.N    R0,??DataTable10  ;; 0x40002c04
        STR      R5,[R0, #+0]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
WWDG_SetWindowValue:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+128
        BCC.N    ??WWDG_SetWindowValue_0
        MOVS     R2,#+174
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_WWDG_WINDOW_VALUE(...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??WWDG_SetWindowValue_0:
        LDR.N    R0,??DataTable10  ;; 0x40002c04
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+7
        LSLS     R0,R0,#+7
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ANDS     R1,R4,#0x7F
        ORRS     R0,R1,R0
        STR      R0,[SP, #+0]
        LDR.N    R0,??DataTable10  ;; 0x40002c04
        LDR      R1,[SP, #+0]
        STR      R1,[R0, #+0]
        POP      {R0,R1,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
WWDG_EnableIT:
        LDR.N    R0,??DataTable10_1  ;; 0x420580a4
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
WWDG_SetCounter:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+64
        BCC.N    ??WWDG_SetCounter_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+128
        BCC.N    ??WWDG_SetCounter_1
??WWDG_SetCounter_0:
        MOVS     R2,#+207
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_WWDG_COUNTER(Counter)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??WWDG_SetCounter_1:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ANDS     R0,R4,#0x7F
        LDR.N    R1,??DataTable10_2  ;; 0x40002c00
        STR      R0,[R1, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
WWDG_Enable:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+64
        BCC.N    ??WWDG_Enable_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+128
        BCC.N    ??WWDG_Enable_1
??WWDG_Enable_0:
        MOVS     R2,#+238
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_WWDG_COUNTER(Counter)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??WWDG_Enable_1:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ORRS     R0,R4,#0x80
        LDR.N    R1,??DataTable10_2  ;; 0x40002c00
        STR      R0,[R1, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
WWDG_GetFlagStatus:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable10_3  ;; 0x40002c08
        LDR      R1,[R1, #+0]
        CMP      R1,#+0
        BEQ.N    ??WWDG_GetFlagStatus_0
        MOVS     R1,#+1
        MOVS     R0,R1
        B.N      ??WWDG_GetFlagStatus_1
??WWDG_GetFlagStatus_0:
        MOVS     R1,#+0
        MOVS     R0,R1
??WWDG_GetFlagStatus_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
WWDG_ClearFlag:
        LDR.N    R0,??DataTable10_3  ;; 0x40002c08
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable10:
        DC32     0x40002c04

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable10_1:
        DC32     0x420580a4

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable10_2:
        DC32     0x40002c00

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable10_3:
        DC32     0x40002c08

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_WWDG_PRESCALER(WWD...">`:
        ; Initializer data, 36 bytes
        DC8 73, 83, 95, 87, 87, 68, 71, 95, 80, 82
        DC8 69, 83, 67, 65, 76, 69, 82, 40, 87, 87
        DC8 68, 71, 95, 80, 114, 101, 115, 99, 97, 108
        DC8 101, 114, 41, 0, 0, 0

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
        DC8 116, 109, 51, 50, 102, 50, 120, 120, 95, 119
        DC8 119, 100, 103, 46, 99, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_WWDG_WINDOW_VALUE(...">`:
        ; Initializer data, 36 bytes
        DC8 73, 83, 95, 87, 87, 68, 71, 95, 87, 73
        DC8 78, 68, 79, 87, 95, 86, 65, 76, 85, 69
        DC8 40, 87, 105, 110, 100, 111, 119, 86, 97, 108
        DC8 117, 101, 41, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_WWDG_COUNTER(Counter)">`:
        ; Initializer data, 28 bytes
        DC8 73, 83, 95, 87, 87, 68, 71, 95, 67, 79
        DC8 85, 78, 84, 69, 82, 40, 67, 111, 117, 110
        DC8 116, 101, 114, 41, 0, 0, 0, 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)

        END
// 
// 578 bytes in section .text
// 
// 578 bytes of CODE memory
//
//Errors: none
//Warnings: none
