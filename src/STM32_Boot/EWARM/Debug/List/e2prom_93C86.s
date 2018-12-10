///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.10.2.52244/W32 for ARM    16/Jun/2013  11:44:30 /
// Copyright 1999-2010 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\dxl\EGS701(ÐÂ)\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\STM32F2xx_Boot\ /
//                    STM32_Boot\src\e2prom_93C86.c                           /
//    Command line =  "D:\dxl\EGS701(ÐÂ)\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\STM32F2xx_Boot /
//                    \STM32_Boot\src\e2prom_93C86.c" -D STM32F10X_CL -D      /
//                    USE_STDPERIPH_DRIVER -lcN "D:\dxl\EGS701(ÐÂ)\Ô´³ÌÐò\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot\STM32_Boot\EWARM\Debug\List\ /
//                    " -lb "D:\dxl\EGS701(ÐÂ)\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\STM32F2x /
//                    x_Boot\STM32_Boot\EWARM\Debug\List\" -o                 /
//                    "D:\dxl\EGS701(ÐÂ)\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\STM32F2xx_Boot /
//                    \STM32_Boot\EWARM\Debug\Obj\" --no_cse --no_unroll      /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M3 -e --warnings_are_errors --fpu=None     /
//                    --dlib_config "C:\Program Files\IAR Systems\Embedded    /
//                    Workbench 6.0\arm\INC\c\DLib_Config_Normal.h" -I        /
//                    "D:\dxl\EGS701(ÐÂ)\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\STM32F2xx_Boot /
//                    \STM32_Boot\EWARM\..\inc\" -I                           /
//                    "D:\dxl\EGS701(ÐÂ)\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\STM32F2xx_Boot /
//                    \STM32_Boot\EWARM\..\CMSIS\CM3\CoreSupport\" -I         /
//                    "D:\dxl\EGS701(ÐÂ)\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\STM32F2xx_Boot /
//                    \STM32_Boot\EWARM\..\STM32F2xx_StdPeriph_Driver\inc\"   /
//                    -I "D:\dxl\EGS701(ÐÂ)\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\STM32F2xx_B /
//                    oot\STM32_Boot\EWARM\..\CMSIS\CM3\DeviceSupport\ST\STM3 /
//                    2F2xx\" -On --use_c++_inline                            /
//    List file    =  D:\dxl\EGS701(ÐÂ)\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\STM32F2xx_Boot\ /
//                    STM32_Boot\EWARM\Debug\List\e2prom_93C86.s              /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME e2prom_93C86

        EXTERN GPIO_Init
        EXTERN GPIO_ReadInputDataBit
        EXTERN GPIO_ResetBits
        EXTERN GPIO_SetBits
        EXTERN GPIO_StructInit
        EXTERN RCC_AHB1PeriphClockCmd
        EXTERN __aeabi_memcpy4

        PUBLIC CheckEepromChip
        PUBLIC E2prom_ACK
        PUBLIC E2prom_EWDS
        PUBLIC E2prom_EWEN
        PUBLIC E2prom_InitIO
        PUBLIC E2prom_ReadByte
        PUBLIC E2prom_SendByte
        PUBLIC E2prom_Start
        PUBLIC E2prom_Stop
        PUBLIC E2prom_WriteByte
        PUBLIC I2C_NACK


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
E2prom_ReadByte:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??E2prom_ReadByte_0
??E2prom_ReadByte_1:
        BL       E2prom_InitIO
        BL       E2prom_Start
        LSLS     R0,R4,#+21
        LSRS     R0,R0,#+21
        ORRS     R0,R0,#0x3000
        MOV      R9,R0
        MOVS     R1,#+14
        MOV      R0,R9
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       E2prom_SendByte
        MOVS     R0,#+0
        MOV      R8,R0
??E2prom_ReadByte_2:
        MOVS     R0,#+0
        MOVS     R7,R0
??E2prom_ReadByte_3:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+8
        BCS.N    ??E2prom_ReadByte_4
        MOVS     R1,#+32
        LDR.N    R0,??DataTable8  ;; 0x40020000
        BL       GPIO_SetBits
        LSLS     R8,R8,#+1
        MOVS     R1,#+64
        LDR.N    R0,??DataTable8  ;; 0x40020000
        BL       GPIO_ReadInputDataBit
        ORRS     R0,R0,R8
        MOV      R8,R0
        MOVS     R1,#+32
        LDR.N    R0,??DataTable8  ;; 0x40020000
        BL       GPIO_ResetBits
        ADDS     R7,R7,#+1
        B.N      ??E2prom_ReadByte_3
??E2prom_ReadByte_4:
        STRB     R8,[R5, #+0]
        ADDS     R5,R5,#+1
        SUBS     R6,R6,#+1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BNE.N    ??E2prom_ReadByte_2
        BL       E2prom_Start
        MOVS     R1,#+16
        LDR.N    R0,??DataTable8_1  ;; 0x40021800
        BL       GPIO_ResetBits
??E2prom_ReadByte_0:
        POP      {R0,R4-R9,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
E2prom_WriteByte:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        BL       E2prom_InitIO
        MOV      R1,#+32768
        LDR.N    R0,??DataTable8  ;; 0x40020000
        BL       GPIO_SetBits
        BL       E2prom_EWEN
        BL       E2prom_Start
        LSLS     R0,R4,#+21
        LSRS     R0,R0,#+21
        ORRS     R0,R0,#0x2800
        MOVS     R6,R0
        MOVS     R1,#+14
        MOVS     R0,R6
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       E2prom_SendByte
        MOVS     R1,#+8
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       E2prom_SendByte
        BL       E2prom_ACK
        MOVS     R7,R0
        BL       E2prom_Stop
        BL       E2prom_EWDS
        MOVS     R1,#+16
        LDR.N    R0,??DataTable8_1  ;; 0x40021800
        BL       GPIO_ResetBits
        MOV      R1,#+32768
        LDR.N    R0,??DataTable8  ;; 0x40020000
        BL       GPIO_ResetBits
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
E2prom_InitIO:
        PUSH     {LR}
        SUB      SP,SP,#+12
        ADD      R0,SP,#+0
        BL       GPIO_StructInit
        MOVS     R1,#+1
        MOVS     R0,#+1
        BL       RCC_AHB1PeriphClockCmd
        MOVS     R0,#+32
        STR      R0,[SP, #+0]
        MOVS     R0,#+1
        STRB     R0,[SP, #+4]
        MOVS     R0,#+0
        STRB     R0,[SP, #+6]
        MOVS     R0,#+2
        STRB     R0,[SP, #+5]
        MOVS     R0,#+0
        STRB     R0,[SP, #+7]
        ADD      R1,SP,#+0
        LDR.N    R0,??DataTable8  ;; 0x40020000
        BL       GPIO_Init
        MOVS     R1,#+1
        MOVS     R0,#+1
        BL       RCC_AHB1PeriphClockCmd
        MOVS     R0,#+128
        STR      R0,[SP, #+0]
        ADD      R1,SP,#+0
        LDR.N    R0,??DataTable8  ;; 0x40020000
        BL       GPIO_Init
        MOVS     R1,#+1
        MOVS     R0,#+64
        BL       RCC_AHB1PeriphClockCmd
        MOVS     R0,#+16
        STR      R0,[SP, #+0]
        ADD      R1,SP,#+0
        LDR.N    R0,??DataTable8_1  ;; 0x40021800
        BL       GPIO_Init
        MOVS     R1,#+1
        MOVS     R0,#+1
        BL       RCC_AHB1PeriphClockCmd
        MOV      R0,#+32768
        STR      R0,[SP, #+0]
        ADD      R1,SP,#+0
        LDR.N    R0,??DataTable8  ;; 0x40020000
        BL       GPIO_Init
        MOVS     R1,#+1
        MOVS     R0,#+1
        BL       RCC_AHB1PeriphClockCmd
        MOVS     R0,#+64
        STR      R0,[SP, #+0]
        MOVS     R0,#+0
        STRB     R0,[SP, #+4]
        MOVS     R0,#+2
        STRB     R0,[SP, #+5]
        MOVS     R0,#+0
        STRB     R0,[SP, #+7]
        ADD      R1,SP,#+0
        LDR.N    R0,??DataTable8  ;; 0x40020000
        BL       GPIO_Init
        POP      {R0-R2,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CheckEepromChip:
        PUSH     {R2-R6,LR}
        ADD      R0,SP,#+4
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        ADD      R0,SP,#+0
        ADR.W    R1,`?<Constant "AB">`
        MOVS     R2,#+3
        BL       __aeabi_memcpy4
        MOVS     R6,#+1
        MOVW     R0,#+2046
        MOVS     R5,R0
        MOVS     R0,#+0
        MOVS     R4,R0
??CheckEepromChip_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+3
        BCS.N    ??CheckEepromChip_1
        LDRB     R1,[SP, #+0]
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       E2prom_WriteByte
        LDRB     R1,[SP, #+1]
        ADDS     R0,R5,#+1
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       E2prom_WriteByte
        MOVS     R2,#+2
        ADD      R1,SP,#+4
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       E2prom_ReadByte
        LDRB     R0,[SP, #+0]
        LDRB     R1,[SP, #+4]
        CMP      R0,R1
        BNE.N    ??CheckEepromChip_2
        LDRB     R0,[SP, #+1]
        LDRB     R1,[SP, #+5]
        CMP      R0,R1
        BEQ.N    ??CheckEepromChip_3
??CheckEepromChip_2:
        MOVS     R0,#+0
        MOVS     R6,R0
        B.N      ??CheckEepromChip_1
??CheckEepromChip_3:
        ADDS     R4,R4,#+1
        B.N      ??CheckEepromChip_0
??CheckEepromChip_1:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4-R6,PC}  ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
E2prom_Start:
        PUSH     {R7,LR}
        MOVS     R1,#+32
        LDR.N    R0,??DataTable8  ;; 0x40020000
        BL       GPIO_ResetBits
        MOVS     R1,#+128
        LDR.N    R0,??DataTable8  ;; 0x40020000
        BL       GPIO_SetBits
        MOVS     R1,#+16
        LDR.N    R0,??DataTable8_1  ;; 0x40021800
        BL       GPIO_SetBits
        MOVS     R1,#+32
        LDR.N    R0,??DataTable8  ;; 0x40020000
        BL       GPIO_SetBits
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
E2prom_Stop:
        PUSH     {R7,LR}
        MOVS     R1,#+16
        LDR.N    R0,??DataTable8_1  ;; 0x40021800
        BL       GPIO_ResetBits
        MOVS     R1,#+128
        LDR.N    R0,??DataTable8  ;; 0x40020000
        BL       GPIO_SetBits
        MOVS     R1,#+32
        LDR.N    R0,??DataTable8  ;; 0x40020000
        BL       GPIO_SetBits
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
E2prom_ACK:
        PUSH     {R7,LR}
        MOVS     R1,#+16
        LDR.N    R0,??DataTable8_1  ;; 0x40021800
        BL       GPIO_ResetBits
        MOVS     R1,#+16
        LDR.N    R0,??DataTable8_1  ;; 0x40021800
        BL       GPIO_ResetBits
        MOVS     R1,#+16
        LDR.N    R0,??DataTable8_1  ;; 0x40021800
        BL       GPIO_SetBits
??E2prom_ACK_0:
        MOVS     R1,#+64
        LDR.N    R0,??DataTable8  ;; 0x40020000
        BL       GPIO_ReadInputDataBit
        CMP      R0,#+0
        BEQ.N    ??E2prom_ACK_0
        MOVS     R0,#+1
        POP      {R1,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_NACK:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
E2prom_SendByte:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        RSBS     R0,R5,#+16
        LSLS     R4,R4,R0
        MOVS     R0,#+0
        MOVS     R6,R0
??E2prom_SendByte_0:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R6,R5
        BCS.N    ??E2prom_SendByte_1
        LSLS     R0,R4,#+16
        BMI.N    ??E2prom_SendByte_2
        MOVS     R1,#+128
        LDR.N    R0,??DataTable8  ;; 0x40020000
        BL       GPIO_ResetBits
        B.N      ??E2prom_SendByte_3
??E2prom_SendByte_2:
        MOVS     R1,#+128
        LDR.N    R0,??DataTable8  ;; 0x40020000
        BL       GPIO_SetBits
??E2prom_SendByte_3:
        MOVS     R1,#+32
        LDR.N    R0,??DataTable8  ;; 0x40020000
        BL       GPIO_SetBits
        MOVS     R1,#+32
        LDR.N    R0,??DataTable8  ;; 0x40020000
        BL       GPIO_ResetBits
        LSLS     R4,R4,#+1
        ADDS     R6,R6,#+1
        B.N      ??E2prom_SendByte_0
??E2prom_SendByte_1:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable8:
        DC32     0x40020000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable8_1:
        DC32     0x40021800

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
E2prom_EWEN:
        PUSH     {R7,LR}
        BL       E2prom_Start
        MOVS     R1,#+14
        MOV      R0,#+9728
        BL       E2prom_SendByte
        BL       E2prom_Stop
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
E2prom_EWDS:
        PUSH     {R7,LR}
        BL       E2prom_Start
        MOVS     R1,#+14
        MOV      R0,#+8192
        BL       E2prom_SendByte
        BL       E2prom_Stop
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "AB">`:
        ; Initializer data, 4 bytes
        DC8 65, 66, 0, 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant {0}>`:
        ; Initializer data, 4 bytes
        DC8 0, 0, 0, 0

        END
// 
//   4 bytes in section .rodata
// 730 bytes in section .text
// 
// 730 bytes of CODE  memory
//   4 bytes of CONST memory
//
//Errors: none
//Warnings: none
