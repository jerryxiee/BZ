///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.10.2.52244/W32 for ARM    04/Dec/2013  10:58:06 /
// Copyright 1999-2010 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\STM32F2xx_StdPeriph_Driver\src\misc.c /
//    Command line =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\STM32F2xx_StdPeriph_Driver\src\misc.c /
//                     -D STM32F10X_CL -D USE_STDPERIPH_DRIVER -lcN           /
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
//                    IAR6.1\STM32_Boot\EWARM\Debug\List\misc.s               /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME misc

        EXTERN __aeabi_assert
        EXTERN __iar_EmptyStepPoint

        PUBLIC NVIC_Init
        PUBLIC NVIC_PriorityGroupConfig
        PUBLIC NVIC_SetVectorTable
        PUBLIC NVIC_SystemLPConfig
        PUBLIC SysTick_CLKSourceConfig


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
NVIC_PriorityGroupConfig:
        PUSH     {R4,LR}
        MOVS     R4,R0
        CMP      R4,#+1792
        BEQ.N    ??NVIC_PriorityGroupConfig_0
        CMP      R4,#+1536
        BEQ.N    ??NVIC_PriorityGroupConfig_0
        CMP      R4,#+1280
        BEQ.N    ??NVIC_PriorityGroupConfig_0
        CMP      R4,#+1024
        BEQ.N    ??NVIC_PriorityGroupConfig_0
        MOV      R0,#+768
        CMP      R4,R0
        BEQ.N    ??NVIC_PriorityGroupConfig_0
        MOVS     R2,#+115
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_NVIC_PRIORITY_GROU...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??NVIC_PriorityGroupConfig_0:
        LDR.N    R0,??DataTable7  ;; 0x5fa0000
        ORRS     R0,R0,R4
        LDR.N    R1,??DataTable7_1  ;; 0xe000ed0c
        STR      R0,[R1, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
NVIC_Init:
        PUSH     {R4-R7}
        MOVS     R3,#+0
        MOVS     R1,#+0
        MOVS     R2,#+15
        LDRB     R4,[R0, #+3]
        CMP      R4,#+0
        BEQ.N    ??NVIC_Init_0
        LDR.N    R4,??DataTable7_1  ;; 0xe000ed0c
        LDR      R4,[R4, #+0]
        ANDS     R4,R4,#0x700
        RSBS     R4,R4,#+1792
        LSRS     R4,R4,#+8
        MOVS     R3,R4
        RSBS     R4,R3,#+4
        MOVS     R1,R4
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ASRS     R2,R2,R3
        LDRB     R4,[R0, #+1]
        LSLS     R4,R4,R1
        MOVS     R3,R4
        LDRB     R4,[R0, #+2]
        ANDS     R4,R2,R4
        ORRS     R3,R4,R3
        LSLS     R3,R3,#+4
        LDRB     R4,[R0, #+0]
        LDR.N    R5,??DataTable7_2  ;; 0xe000e400
        STRB     R3,[R4, R5]
        LDRB     R4,[R0, #+0]
        ASRS     R4,R4,#+5
        LDR.N    R5,??DataTable7_3  ;; 0xe000e100
        MOVS     R6,#+1
        LDRB     R7,[R0, #+0]
        ANDS     R7,R7,#0x1F
        LSLS     R6,R6,R7
        STR      R6,[R5, R4, LSL #+2]
        B.N      ??NVIC_Init_1
??NVIC_Init_0:
        LDRB     R4,[R0, #+0]
        ASRS     R4,R4,#+5
        LDR.N    R5,??DataTable7_4  ;; 0xe000e180
        MOVS     R6,#+1
        LDRB     R7,[R0, #+0]
        ANDS     R7,R7,#0x1F
        LSLS     R6,R6,R7
        STR      R6,[R5, R4, LSL #+2]
??NVIC_Init_1:
        POP      {R4-R7}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
NVIC_SetVectorTable:
        LDR.N    R2,??DataTable7_5  ;; 0x1fffff80
        ANDS     R2,R2,R1
        ORRS     R2,R2,R0
        LDR.N    R3,??DataTable7_6  ;; 0xe000ed08
        STR      R2,[R3, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
NVIC_SystemLPConfig:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??NVIC_SystemLPConfig_0
        LDR.N    R2,??DataTable7_7  ;; 0xe000ed10
        LDR      R2,[R2, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ORRS     R2,R0,R2
        LDR.N    R3,??DataTable7_7  ;; 0xe000ed10
        STR      R2,[R3, #+0]
        B.N      ??NVIC_SystemLPConfig_1
??NVIC_SystemLPConfig_0:
        LDR.N    R2,??DataTable7_7  ;; 0xe000ed10
        LDR      R2,[R2, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BICS     R2,R2,R0
        LDR.N    R3,??DataTable7_7  ;; 0xe000ed10
        STR      R2,[R3, #+0]
??NVIC_SystemLPConfig_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SysTick_CLKSourceConfig:
        PUSH     {R4,LR}
        MOVS     R4,R0
        CMP      R4,#+4
        BEQ.N    ??SysTick_CLKSourceConfig_0
        CMN      R4,#+5
        BEQ.N    ??SysTick_CLKSourceConfig_0
        MOVS     R2,#+225
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SYSTICK_CLK_SOURCE...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SysTick_CLKSourceConfig_0:
        CMP      R4,#+4
        BNE.N    ??SysTick_CLKSourceConfig_1
        LDR.N    R0,??DataTable7_8  ;; 0xe000e010
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.N    R1,??DataTable7_8  ;; 0xe000e010
        STR      R0,[R1, #+0]
        B.N      ??SysTick_CLKSourceConfig_2
??SysTick_CLKSourceConfig_1:
        LDR.N    R0,??DataTable7_8  ;; 0xe000e010
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x4
        LDR.N    R1,??DataTable7_8  ;; 0xe000e010
        STR      R0,[R1, #+0]
??SysTick_CLKSourceConfig_2:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable7:
        DC32     0x5fa0000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable7_1:
        DC32     0xe000ed0c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable7_2:
        DC32     0xe000e400

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable7_3:
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable7_4:
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable7_5:
        DC32     0x1fffff80

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable7_6:
        DC32     0xe000ed08

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable7_7:
        DC32     0xe000ed10

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable7_8:
        DC32     0xe000e010

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_NVIC_PRIORITY_GROU...">`:
        ; Initializer data, 44 bytes
        DC8 73, 83, 95, 78, 86, 73, 67, 95, 80, 82
        DC8 73, 79, 82, 73, 84, 89, 95, 71, 82, 79
        DC8 85, 80, 40, 78, 86, 73, 67, 95, 80, 114
        DC8 105, 111, 114, 105, 116, 121, 71, 114, 111, 117
        DC8 112, 41, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`:
        ; Initializer data, 168 bytes
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
        DC8 105, 118, 101, 114, 92, 115, 114, 99, 92, 109
        DC8 105, 115, 99, 46, 99, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_SYSTICK_CLK_SOURCE...">`:
        ; Initializer data, 44 bytes
        DC8 73, 83, 95, 83, 89, 83, 84, 73, 67, 75
        DC8 95, 67, 76, 75, 95, 83, 79, 85, 82, 67
        DC8 69, 40, 83, 121, 115, 84, 105, 99, 107, 95
        DC8 67, 76, 75, 83, 111, 117, 114, 99, 101, 41
        DC8 0, 0, 0, 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)

        END
// 
// 572 bytes in section .text
// 
// 572 bytes of CODE memory
//
//Errors: none
//Warnings: none
