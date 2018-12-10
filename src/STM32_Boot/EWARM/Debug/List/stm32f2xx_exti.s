///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.10.2.52244/W32 for ARM    04/Dec/2013  10:58:09 /
// Copyright 1999-2010 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\STM32F2xx_StdPeriph_Driver\src\stm32f /
//                    2xx_exti.c                                              /
//    Command line =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\STM32F2xx_StdPeriph_Driver\src\stm32f /
//                    2xx_exti.c -D STM32F10X_CL -D USE_STDPERIPH_DRIVER      /
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
//                    IAR6.1\STM32_Boot\EWARM\Debug\List\stm32f2xx_exti.s     /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f2xx_exti

        EXTERN __aeabi_assert
        EXTERN __iar_EmptyStepPoint

        PUBLIC EXTI_ClearFlag
        PUBLIC EXTI_ClearITPendingBit
        PUBLIC EXTI_DeInit
        PUBLIC EXTI_GenerateSWInterrupt
        PUBLIC EXTI_GetFlagStatus
        PUBLIC EXTI_GetITStatus
        PUBLIC EXTI_Init
        PUBLIC EXTI_StructInit


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
EXTI_DeInit:
        LDR.W    R0,??DataTable13  ;; 0x40013c00
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable13_1  ;; 0x40013c04
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable13_2  ;; 0x40013c08
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable13_3  ;; 0x40013c0c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable13_4  ;; 0x40013c14
        LDR.N    R1,??DataTable13_5  ;; 0x7fffff
        STR      R1,[R0, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
EXTI_Init:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        LDRB     R0,[R4, #+4]
        CMP      R0,#+0
        BEQ.N    ??EXTI_Init_0
        LDRB     R0,[R4, #+4]
        CMP      R0,#+4
        BEQ.N    ??EXTI_Init_0
        MOVS     R2,#+124
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_EXTI_MODE(EXTI_Ini...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??EXTI_Init_0:
        LDRB     R0,[R4, #+5]
        CMP      R0,#+8
        BEQ.N    ??EXTI_Init_1
        LDRB     R0,[R4, #+5]
        CMP      R0,#+12
        BEQ.N    ??EXTI_Init_1
        LDRB     R0,[R4, #+5]
        CMP      R0,#+16
        BEQ.N    ??EXTI_Init_1
        MOVS     R2,#+125
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_EXTI_TRIGGER(EXTI_...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??EXTI_Init_1:
        LDR      R0,[R4, #+0]
        LSRS     R0,R0,#+23
        LSLS     R0,R0,#+23
        CMP      R0,#+0
        BNE.N    ??EXTI_Init_2
        LDR      R0,[R4, #+0]
        CMP      R0,#+0
        BNE.N    ??EXTI_Init_3
??EXTI_Init_2:
        MOVS     R2,#+126
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_EXTI_LINE(EXTI_Ini...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??EXTI_Init_3:
        LDRB     R0,[R4, #+6]
        CMP      R0,#+0
        BEQ.N    ??EXTI_Init_4
        LDRB     R0,[R4, #+6]
        CMP      R0,#+1
        BEQ.N    ??EXTI_Init_4
        MOVS     R2,#+127
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(E...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??EXTI_Init_4:
        LDR.N    R0,??DataTable13  ;; 0x40013c00
        MOVS     R5,R0
        LDRB     R0,[R4, #+6]
        CMP      R0,#+0
        BEQ.N    ??EXTI_Init_5
        LDR.N    R0,??DataTable13  ;; 0x40013c00
        LDR      R0,[R0, #+0]
        LDR      R1,[R4, #+0]
        BICS     R0,R0,R1
        LDR.N    R1,??DataTable13  ;; 0x40013c00
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable13_1  ;; 0x40013c04
        LDR      R0,[R0, #+0]
        LDR      R1,[R4, #+0]
        BICS     R0,R0,R1
        LDR.N    R1,??DataTable13_1  ;; 0x40013c04
        STR      R0,[R1, #+0]
        LDRB     R0,[R4, #+4]
        ADDS     R5,R0,R5
        LDR      R0,[R5, #+0]
        LDR      R1,[R4, #+0]
        ORRS     R0,R1,R0
        STR      R0,[R5, #+0]
        LDR.N    R0,??DataTable13_2  ;; 0x40013c08
        LDR      R0,[R0, #+0]
        LDR      R1,[R4, #+0]
        BICS     R0,R0,R1
        LDR.N    R1,??DataTable13_2  ;; 0x40013c08
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable13_3  ;; 0x40013c0c
        LDR      R0,[R0, #+0]
        LDR      R1,[R4, #+0]
        BICS     R0,R0,R1
        LDR.N    R1,??DataTable13_3  ;; 0x40013c0c
        STR      R0,[R1, #+0]
        LDRB     R0,[R4, #+5]
        CMP      R0,#+16
        BNE.N    ??EXTI_Init_6
        LDR.N    R0,??DataTable13_2  ;; 0x40013c08
        LDR      R0,[R0, #+0]
        LDR      R1,[R4, #+0]
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable13_2  ;; 0x40013c08
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable13_3  ;; 0x40013c0c
        LDR      R0,[R0, #+0]
        LDR      R1,[R4, #+0]
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable13_3  ;; 0x40013c0c
        STR      R0,[R1, #+0]
        B.N      ??EXTI_Init_7
??EXTI_Init_6:
        LDR.N    R0,??DataTable13  ;; 0x40013c00
        MOVS     R5,R0
        LDRB     R0,[R4, #+5]
        ADDS     R5,R0,R5
        LDR      R0,[R5, #+0]
        LDR      R1,[R4, #+0]
        ORRS     R0,R1,R0
        STR      R0,[R5, #+0]
        B.N      ??EXTI_Init_7
??EXTI_Init_5:
        LDRB     R0,[R4, #+4]
        ADDS     R5,R0,R5
        LDR      R0,[R5, #+0]
        LDR      R1,[R4, #+0]
        BICS     R0,R0,R1
        STR      R0,[R5, #+0]
??EXTI_Init_7:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
EXTI_StructInit:
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        MOVS     R1,#+0
        STRB     R1,[R0, #+4]
        MOVS     R1,#+12
        STRB     R1,[R0, #+5]
        MOVS     R1,#+0
        STRB     R1,[R0, #+6]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
EXTI_GenerateSWInterrupt:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LSRS     R0,R4,#+23
        LSLS     R0,R0,#+23
        CMP      R0,#+0
        BNE.N    ??EXTI_GenerateSWInterrupt_0
        CMP      R4,#+0
        BNE.N    ??EXTI_GenerateSWInterrupt_1
??EXTI_GenerateSWInterrupt_0:
        MOVS     R2,#+193
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_EXTI_LINE(EXTI_Line)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??EXTI_GenerateSWInterrupt_1:
        LDR.N    R0,??DataTable13_6  ;; 0x40013c10
        LDR      R0,[R0, #+0]
        ORRS     R0,R4,R0
        LDR.N    R1,??DataTable13_6  ;; 0x40013c10
        STR      R0,[R1, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
EXTI_GetFlagStatus:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        CMP      R4,#+1
        BEQ.N    ??EXTI_GetFlagStatus_0
        CMP      R4,#+2
        BEQ.N    ??EXTI_GetFlagStatus_0
        CMP      R4,#+4
        BEQ.N    ??EXTI_GetFlagStatus_0
        CMP      R4,#+8
        BEQ.N    ??EXTI_GetFlagStatus_0
        CMP      R4,#+16
        BEQ.N    ??EXTI_GetFlagStatus_0
        CMP      R4,#+32
        BEQ.N    ??EXTI_GetFlagStatus_0
        CMP      R4,#+64
        BEQ.N    ??EXTI_GetFlagStatus_0
        CMP      R4,#+128
        BEQ.N    ??EXTI_GetFlagStatus_0
        MOV      R0,#+256
        CMP      R4,R0
        BEQ.N    ??EXTI_GetFlagStatus_0
        MOV      R0,#+512
        CMP      R4,R0
        BEQ.N    ??EXTI_GetFlagStatus_0
        CMP      R4,#+1024
        BEQ.N    ??EXTI_GetFlagStatus_0
        CMP      R4,#+2048
        BEQ.N    ??EXTI_GetFlagStatus_0
        CMP      R4,#+4096
        BEQ.N    ??EXTI_GetFlagStatus_0
        CMP      R4,#+8192
        BEQ.N    ??EXTI_GetFlagStatus_0
        CMP      R4,#+16384
        BEQ.N    ??EXTI_GetFlagStatus_0
        CMP      R4,#+32768
        BEQ.N    ??EXTI_GetFlagStatus_0
        CMP      R4,#+65536
        BEQ.N    ??EXTI_GetFlagStatus_0
        CMP      R4,#+131072
        BEQ.N    ??EXTI_GetFlagStatus_0
        CMP      R4,#+262144
        BEQ.N    ??EXTI_GetFlagStatus_0
        CMP      R4,#+524288
        BEQ.N    ??EXTI_GetFlagStatus_0
        CMP      R4,#+1048576
        BEQ.N    ??EXTI_GetFlagStatus_0
        CMP      R4,#+2097152
        BEQ.N    ??EXTI_GetFlagStatus_0
        CMP      R4,#+4194304
        BEQ.N    ??EXTI_GetFlagStatus_0
        MOVS     R2,#+224
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_GET_EXTI_LINE(EXTI...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??EXTI_GetFlagStatus_0:
        LDR.N    R0,??DataTable13_4  ;; 0x40013c14
        LDR      R0,[R0, #+0]
        TST      R0,R4
        BEQ.N    ??EXTI_GetFlagStatus_1
        MOVS     R0,#+1
        MOVS     R5,R0
        B.N      ??EXTI_GetFlagStatus_2
??EXTI_GetFlagStatus_1:
        MOVS     R0,#+0
        MOVS     R5,R0
??EXTI_GetFlagStatus_2:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
EXTI_ClearFlag:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LSRS     R0,R4,#+23
        LSLS     R0,R0,#+23
        CMP      R0,#+0
        BNE.N    ??EXTI_ClearFlag_0
        CMP      R4,#+0
        BNE.N    ??EXTI_ClearFlag_1
??EXTI_ClearFlag_0:
        MOVS     R2,#+246
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_EXTI_LINE(EXTI_Line)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??EXTI_ClearFlag_1:
        LDR.N    R0,??DataTable13_4  ;; 0x40013c14
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
EXTI_GetITStatus:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        MOVS     R6,#+0
        CMP      R4,#+1
        BEQ.N    ??EXTI_GetITStatus_0
        CMP      R4,#+2
        BEQ.N    ??EXTI_GetITStatus_0
        CMP      R4,#+4
        BEQ.N    ??EXTI_GetITStatus_0
        CMP      R4,#+8
        BEQ.N    ??EXTI_GetITStatus_0
        CMP      R4,#+16
        BEQ.N    ??EXTI_GetITStatus_0
        CMP      R4,#+32
        BEQ.N    ??EXTI_GetITStatus_0
        CMP      R4,#+64
        BEQ.N    ??EXTI_GetITStatus_0
        CMP      R4,#+128
        BEQ.N    ??EXTI_GetITStatus_0
        MOV      R0,#+256
        CMP      R4,R0
        BEQ.N    ??EXTI_GetITStatus_0
        MOV      R0,#+512
        CMP      R4,R0
        BEQ.N    ??EXTI_GetITStatus_0
        CMP      R4,#+1024
        BEQ.N    ??EXTI_GetITStatus_0
        CMP      R4,#+2048
        BEQ.N    ??EXTI_GetITStatus_0
        CMP      R4,#+4096
        BEQ.N    ??EXTI_GetITStatus_0
        CMP      R4,#+8192
        BEQ.N    ??EXTI_GetITStatus_0
        CMP      R4,#+16384
        BEQ.N    ??EXTI_GetITStatus_0
        CMP      R4,#+32768
        BEQ.N    ??EXTI_GetITStatus_0
        CMP      R4,#+65536
        BEQ.N    ??EXTI_GetITStatus_0
        CMP      R4,#+131072
        BEQ.N    ??EXTI_GetITStatus_0
        CMP      R4,#+262144
        BEQ.N    ??EXTI_GetITStatus_0
        CMP      R4,#+524288
        BEQ.N    ??EXTI_GetITStatus_0
        CMP      R4,#+1048576
        BEQ.N    ??EXTI_GetITStatus_0
        CMP      R4,#+2097152
        BEQ.N    ??EXTI_GetITStatus_0
        CMP      R4,#+4194304
        BEQ.N    ??EXTI_GetITStatus_0
        MOV      R2,#+262
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_GET_EXTI_LINE(EXTI...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??EXTI_GetITStatus_0:
        LDR.N    R0,??DataTable13  ;; 0x40013c00
        LDR      R0,[R0, #+0]
        ANDS     R0,R4,R0
        MOVS     R6,R0
        LDR.N    R0,??DataTable13_4  ;; 0x40013c14
        LDR      R0,[R0, #+0]
        TST      R0,R4
        BEQ.N    ??EXTI_GetITStatus_1
        CMP      R6,#+0
        BEQ.N    ??EXTI_GetITStatus_1
        MOVS     R0,#+1
        MOVS     R5,R0
        B.N      ??EXTI_GetITStatus_2
??EXTI_GetITStatus_1:
        MOVS     R0,#+0
        MOVS     R5,R0
??EXTI_GetITStatus_2:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
EXTI_ClearITPendingBit:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LSRS     R0,R4,#+23
        LSLS     R0,R0,#+23
        CMP      R0,#+0
        BNE.N    ??EXTI_ClearITPendingBit_0
        CMP      R4,#+0
        BNE.N    ??EXTI_ClearITPendingBit_1
??EXTI_ClearITPendingBit_0:
        MOVW     R2,#+285
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_EXTI_LINE(EXTI_Line)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??EXTI_ClearITPendingBit_1:
        LDR.N    R0,??DataTable13_4  ;; 0x40013c14
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13:
        DC32     0x40013c00

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13_1:
        DC32     0x40013c04

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13_2:
        DC32     0x40013c08

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13_3:
        DC32     0x40013c0c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13_4:
        DC32     0x40013c14

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13_5:
        DC32     0x7fffff

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13_6:
        DC32     0x40013c10

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_EXTI_MODE(EXTI_Ini...">`:
        ; Initializer data, 44 bytes
        DC8 73, 83, 95, 69, 88, 84, 73, 95, 77, 79
        DC8 68, 69, 40, 69, 88, 84, 73, 95, 73, 110
        DC8 105, 116, 83, 116, 114, 117, 99, 116, 45, 62
        DC8 69, 88, 84, 73, 95, 77, 111, 100, 101, 41
        DC8 0, 0, 0, 0

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
        DC8 116, 109, 51, 50, 102, 50, 120, 120, 95, 101
        DC8 120, 116, 105, 46, 99, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_EXTI_TRIGGER(EXTI_...">`:
        ; Initializer data, 48 bytes
        DC8 73, 83, 95, 69, 88, 84, 73, 95, 84, 82
        DC8 73, 71, 71, 69, 82, 40, 69, 88, 84, 73
        DC8 95, 73, 110, 105, 116, 83, 116, 114, 117, 99
        DC8 116, 45, 62, 69, 88, 84, 73, 95, 84, 114
        DC8 105, 103, 103, 101, 114, 41, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_EXTI_LINE(EXTI_Ini...">`:
        ; Initializer data, 44 bytes
        DC8 73, 83, 95, 69, 88, 84, 73, 95, 76, 73
        DC8 78, 69, 40, 69, 88, 84, 73, 95, 73, 110
        DC8 105, 116, 83, 116, 114, 117, 99, 116, 45, 62
        DC8 69, 88, 84, 73, 95, 76, 105, 110, 101, 41
        DC8 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_FUNCTIONAL_STATE(E...">`:
        ; Initializer data, 52 bytes
        DC8 73, 83, 95, 70, 85, 78, 67, 84, 73, 79
        DC8 78, 65, 76, 95, 83, 84, 65, 84, 69, 40
        DC8 69, 88, 84, 73, 95, 73, 110, 105, 116, 83
        DC8 116, 114, 117, 99, 116, 45, 62, 69, 88, 84
        DC8 73, 95, 76, 105, 110, 101, 67, 109, 100, 41
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_EXTI_LINE(EXTI_Line)">`:
        ; Initializer data, 24 bytes
        DC8 73, 83, 95, 69, 88, 84, 73, 95, 76, 73
        DC8 78, 69, 40, 69, 88, 84, 73, 95, 76, 105
        DC8 110, 101, 41, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_GET_EXTI_LINE(EXTI...">`:
        ; Initializer data, 28 bytes
        DC8 73, 83, 95, 71, 69, 84, 95, 69, 88, 84
        DC8 73, 95, 76, 73, 78, 69, 40, 69, 88, 84
        DC8 73, 95, 76, 105, 110, 101, 41, 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)

        END
// 
// 1 262 bytes in section .text
// 
// 1 262 bytes of CODE memory
//
//Errors: none
//Warnings: none
