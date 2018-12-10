///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.10.2.52244/W32 for ARM    04/Dec/2013  10:58:05 /
// Copyright 1999-2010 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\src\E2prom_25LC320A.c                 /
//    Command line =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\src\E2prom_25LC320A.c -D              /
//                    STM32F10X_CL -D USE_STDPERIPH_DRIVER -lcN               /
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
//                    IAR6.1\STM32_Boot\EWARM\Debug\List\E2prom_25LC320A.s    /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME E2prom_25LC320A

        EXTERN GPIO_Init
        EXTERN GPIO_ResetBits
        EXTERN GPIO_SetBits
        EXTERN RCC_AHB1PeriphClockCmd
        EXTERN sFLASH_LowLevel_Init
        EXTERN sFLASH_ReadByte
        EXTERN sFLASH_SendByte
        EXTERN spi_Delay_uS

        PUBLIC CheckEepromChip
        PUBLIC E2prom_InitIO
        PUBLIC E2prom_ReadByte
        PUBLIC E2prom_ReadStatusRegister
        PUBLIC E2prom_WriteByte


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
E2prom_InitIO:
        PUSH     {LR}
        SUB      SP,SP,#+12
        MOVS     R1,#+1
        MOVS     R0,#+64
        BL       RCC_AHB1PeriphClockCmd
        MOVS     R0,#+16
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
        LDR.N    R0,??DataTable5  ;; 0x40021800
        BL       GPIO_Init
        MOVS     R1,#+1
        MOVS     R0,#+1
        BL       RCC_AHB1PeriphClockCmd
        MOV      R0,#+32768
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
        LDR.N    R0,??DataTable5_1  ;; 0x40020000
        BL       GPIO_Init
        MOVS     R1,#+16
        LDR.N    R0,??DataTable5  ;; 0x40021800
        BL       GPIO_SetBits
        MOVS     R0,#+30
        BL       spi_Delay_uS
        MOV      R1,#+32768
        LDR.N    R0,??DataTable5_1  ;; 0x40020000
        BL       GPIO_SetBits
        MOVS     R0,#+30
        BL       spi_Delay_uS
        POP      {R0-R2,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
E2prom_ReadByte:
        PUSH     {R3-R11,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R11,#+0
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??E2prom_ReadByte_0
??E2prom_ReadByte_1:
        MOV      R9,R5
??E2prom_ReadByte_2:
        ADDS     R11,R11,#+1
        BL       E2prom_ReadStatusRegister
        MOV      R8,R0
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        LSLS     R0,R8,#+31
        BPL.N    ??E2prom_ReadByte_3
        MOV      R0,#+1000
        BL       spi_Delay_uS
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        CMP      R11,#+51
        BCC.N    ??E2prom_ReadByte_2
        B.N      ??E2prom_ReadByte_4
??E2prom_ReadByte_3:
        MOVS     R1,#+16
        LDR.N    R0,??DataTable5  ;; 0x40021800
        BL       GPIO_ResetBits
        MOVS     R0,#+30
        BL       spi_Delay_uS
        MOVS     R0,#+3
        BL       sFLASH_SendByte
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LSRS     R0,R4,#+8
        MOV      R10,R0
        MOV      R0,R10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       sFLASH_SendByte
        MOVS     R0,R4
        MOV      R10,R0
        MOV      R0,R10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       sFLASH_SendByte
        MOVS     R0,#+0
        MOVS     R7,R0
        B.N      ??E2prom_ReadByte_5
??E2prom_ReadByte_4:
        B.N      ??E2prom_ReadByte_0
??E2prom_ReadByte_5:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R7,R6
        BCS.N    ??E2prom_ReadByte_6
        BL       sFLASH_ReadByte
        STRB     R0,[R9, #+0]
        ADDS     R9,R9,#+1
        ADDS     R7,R7,#+1
        B.N      ??E2prom_ReadByte_5
??E2prom_ReadByte_6:
        MOVS     R1,#+16
        LDR.N    R0,??DataTable5  ;; 0x40021800
        BL       GPIO_SetBits
        MOVS     R0,#+30
        BL       spi_Delay_uS
??E2prom_ReadByte_0:
        POP      {R0,R4-R11,PC}   ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
E2prom_WriteByte:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R8,#+0
??E2prom_WriteByte_0:
        ADDS     R8,R8,#+1
        BL       E2prom_ReadStatusRegister
        MOVS     R7,R0
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LSLS     R0,R7,#+31
        BPL.N    ??E2prom_WriteByte_1
        MOV      R0,#+1000
        BL       spi_Delay_uS
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+51
        BCC.N    ??E2prom_WriteByte_0
        B.N      ??E2prom_WriteByte_2
??E2prom_WriteByte_1:
        MOVS     R1,#+16
        LDR.N    R0,??DataTable5  ;; 0x40021800
        BL       GPIO_ResetBits
        MOVS     R0,#+30
        BL       spi_Delay_uS
        MOVS     R0,#+6
        BL       sFLASH_SendByte
        MOVS     R1,#+16
        LDR.N    R0,??DataTable5  ;; 0x40021800
        BL       GPIO_SetBits
        MOVS     R0,#+30
        BL       spi_Delay_uS
        MOVS     R1,#+16
        LDR.N    R0,??DataTable5  ;; 0x40021800
        BL       GPIO_ResetBits
        MOVS     R0,#+30
        BL       spi_Delay_uS
        MOVS     R0,#+2
        BL       sFLASH_SendByte
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LSRS     R0,R4,#+8
        MOVS     R6,R0
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       sFLASH_SendByte
        MOVS     R0,R4
        MOVS     R6,R0
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       sFLASH_SendByte
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       sFLASH_SendByte
        MOVS     R1,#+16
        LDR.N    R0,??DataTable5  ;; 0x40021800
        BL       GPIO_SetBits
        MOVS     R0,#+30
        BL       spi_Delay_uS
        MOVS     R0,#+1
        B.N      ??E2prom_WriteByte_3
??E2prom_WriteByte_2:
        MOVS     R0,#+0
??E2prom_WriteByte_3:
        POP      {R4-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
E2prom_ReadStatusRegister:
        PUSH     {R4,LR}
        BL       sFLASH_LowLevel_Init
        MOVS     R1,#+16
        LDR.N    R0,??DataTable5  ;; 0x40021800
        BL       GPIO_ResetBits
        MOVS     R0,#+30
        BL       spi_Delay_uS
        MOVS     R0,#+5
        BL       sFLASH_SendByte
        BL       sFLASH_ReadByte
        MOVS     R4,R0
        MOVS     R1,#+16
        LDR.N    R0,??DataTable5  ;; 0x40021800
        BL       GPIO_SetBits
        MOVS     R0,#+30
        BL       spi_Delay_uS
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable5:
        DC32     0x40021800

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable5_1:
        DC32     0x40020000

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CheckEepromChip:
        PUSH     {R3-R5,LR}
        ADD      R0,SP,#+2
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
        ADD      R0,SP,#+0
        ADR.W    R1,`?<Constant "OK">`
        LDRH     R2,[R1, #0]
        STRH     R2,[R0, #+0]
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
        ADD      R1,SP,#+2
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       E2prom_ReadByte
        LDRB     R0,[SP, #+0]
        LDRB     R1,[SP, #+2]
        CMP      R0,R1
        BNE.N    ??CheckEepromChip_2
        LDRB     R0,[SP, #+1]
        LDRB     R1,[SP, #+3]
        CMP      R0,R1
        BNE.N    ??CheckEepromChip_2
        MOVS     R0,#+1
        B.N      ??CheckEepromChip_3
??CheckEepromChip_2:
        ADDS     R4,R4,#+1
        B.N      ??CheckEepromChip_0
??CheckEepromChip_1:
        MOVS     R0,#+0
??CheckEepromChip_3:
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "OK">`:
        ; Initializer data, 2 bytes
        DC8 79, 75

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)

        SECTION `.rodata`:CONST:NOROOT(1)
        DATA
`?<Constant {0}>`:
        ; Initializer data, 2 bytes
        DC8 0, 0

        END
// 
//   2 bytes in section .rodata
// 616 bytes in section .text
// 
// 616 bytes of CODE  memory
//   2 bytes of CONST memory
//
//Errors: none
//Warnings: none
