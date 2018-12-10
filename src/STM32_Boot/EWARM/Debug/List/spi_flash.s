///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.10.2.52244/W32 for ARM    04/Dec/2013  10:58:06 /
// Copyright 1999-2010 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\src\spi_flash.c                       /
//    Command line =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\src\spi_flash.c -D STM32F10X_CL -D    /
//                    USE_STDPERIPH_DRIVER -lcN D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú /
//                    \Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½øÐÍEGS701-1\STM32F2xx_Boot_V1 /
//                    .62\STM32F2xx_Boot_130815_IAR6.1\STM32_Boot\EWARM\Debug /
//                    \List\ -lb D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍE /
//                    GS701-1\¸Ä½øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_B /
//                    oot_130815_IAR6.1\STM32_Boot\EWARM\Debug\List\ -o       /
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
//                    IAR6.1\STM32_Boot\EWARM\Debug\List\spi_flash.s          /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME spi_flash

        EXTERN GPIO_Init
        EXTERN GPIO_PinAFConfig
        EXTERN GPIO_ResetBits
        EXTERN GPIO_SetBits
        EXTERN RCC_AHB1PeriphClockCmd
        EXTERN RCC_APB2PeriphClockCmd
        EXTERN SPI_Cmd
        EXTERN SPI_I2S_DeInit
        EXTERN SPI_I2S_GetFlagStatus
        EXTERN SPI_I2S_ReceiveData
        EXTERN SPI_I2S_SendData
        EXTERN SPI_Init

        PUBLIC SPI_FLASH_AllUnprotect
        PUBLIC sFLASH_DeInit
        PUBLIC sFLASH_EraseBulk
        PUBLIC sFLASH_EraseSector
        PUBLIC sFLASH_Init
        PUBLIC sFLASH_LowLevel_DeInit
        PUBLIC sFLASH_LowLevel_Init
        PUBLIC sFLASH_ReadBuffer
        PUBLIC sFLASH_ReadByte
        PUBLIC sFLASH_ReadID
        PUBLIC sFLASH_SendByte
        PUBLIC sFLASH_SendHalfWord
        PUBLIC sFLASH_StartReadSequence
        PUBLIC sFLASH_WaitForWriteEnd
        PUBLIC sFLASH_WriteBuffer
        PUBLIC sFLASH_WriteEnable
        PUBLIC sFLASH_WritePage
        PUBLIC spi_Delay_uS


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
spi_Delay_uS:
        MOVS     R2,#+0
        MOVS     R1,R2
??spi_Delay_uS_0:
        CMP      R0,R1
        BCC.N    ??spi_Delay_uS_1
        ADDS     R1,R1,#+1
        B.N      ??spi_Delay_uS_0
??spi_Delay_uS_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SPI_FLASH_AllUnprotect:
        PUSH     {R4,LR}
        MOVS     R4,#+0
        BL       sFLASH_WriteEnable
        MOVS     R1,#+16
        LDR.W    R0,??DataTable13  ;; 0x40020000
        BL       GPIO_ResetBits
        MOVS     R0,#+20
        BL       spi_Delay_uS
        MOVS     R0,#+1
        BL       sFLASH_SendByte
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       sFLASH_SendByte
        MOVS     R1,#+16
        LDR.W    R0,??DataTable13  ;; 0x40020000
        BL       GPIO_SetBits
        MOVS     R0,#+20
        BL       spi_Delay_uS
        BL       sFLASH_WaitForWriteEnd
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
sFLASH_DeInit:
        PUSH     {R7,LR}
        BL       sFLASH_LowLevel_DeInit
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
sFLASH_Init:
        PUSH     {LR}
        SUB      SP,SP,#+20
        BL       sFLASH_LowLevel_Init
        MOVS     R1,#+16
        LDR.W    R0,??DataTable13  ;; 0x40020000
        BL       GPIO_SetBits
        MOVS     R0,#+20
        BL       spi_Delay_uS
        MOVS     R0,#+0
        STRH     R0,[SP, #+0]
        MOV      R0,#+260
        STRH     R0,[SP, #+2]
        MOVS     R0,#+0
        STRH     R0,[SP, #+4]
        MOVS     R0,#+2
        STRH     R0,[SP, #+6]
        MOVS     R0,#+1
        STRH     R0,[SP, #+8]
        MOV      R0,#+512
        STRH     R0,[SP, #+10]
        MOVS     R0,#+24
        STRH     R0,[SP, #+12]
        MOVS     R0,#+0
        STRH     R0,[SP, #+14]
        MOVS     R0,#+7
        STRH     R0,[SP, #+16]
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable13_1  ;; 0x40013000
        BL       SPI_Init
        MOVS     R1,#+1
        LDR.W    R0,??DataTable13_1  ;; 0x40013000
        BL       SPI_Cmd
        ADD      SP,SP,#+20
        POP      {PC}             ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
sFLASH_EraseSector:
        PUSH     {R4,LR}
        MOVS     R4,R0
        BL       sFLASH_LowLevel_Init
        BL       sFLASH_WriteEnable
        MOVS     R1,#+16
        LDR.W    R0,??DataTable13  ;; 0x40020000
        BL       GPIO_ResetBits
        MOVS     R0,#+20
        BL       spi_Delay_uS
        MOVS     R0,#+32
        BL       sFLASH_SendByte
        LSRS     R0,R4,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       sFLASH_SendByte
        LSRS     R0,R4,#+8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       sFLASH_SendByte
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       sFLASH_SendByte
        MOVS     R1,#+16
        LDR.W    R0,??DataTable13  ;; 0x40020000
        BL       GPIO_SetBits
        MOVS     R0,#+20
        BL       spi_Delay_uS
        BL       sFLASH_WaitForWriteEnd
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
sFLASH_EraseBulk:
        PUSH     {R7,LR}
        BL       sFLASH_LowLevel_Init
        BL       sFLASH_WriteEnable
        MOVS     R1,#+16
        LDR.W    R0,??DataTable13  ;; 0x40020000
        BL       GPIO_ResetBits
        MOVS     R0,#+20
        BL       spi_Delay_uS
        MOVS     R0,#+199
        BL       sFLASH_SendByte
        MOVS     R1,#+16
        LDR.W    R0,??DataTable13  ;; 0x40020000
        BL       GPIO_SetBits
        MOVS     R0,#+20
        BL       spi_Delay_uS
        BL       sFLASH_WaitForWriteEnd
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
sFLASH_WritePage:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        BL       sFLASH_LowLevel_Init
        BL       sFLASH_WriteEnable
        MOVS     R1,#+16
        LDR.W    R0,??DataTable13  ;; 0x40020000
        BL       GPIO_ResetBits
        MOVS     R0,#+20
        BL       spi_Delay_uS
        MOVS     R0,#+2
        BL       sFLASH_SendByte
        LSRS     R0,R5,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       sFLASH_SendByte
        LSRS     R0,R5,#+8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       sFLASH_SendByte
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       sFLASH_SendByte
??sFLASH_WritePage_0:
        MOVS     R0,R6
        SUBS     R6,R0,#+1
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BEQ.N    ??sFLASH_WritePage_1
        LDRB     R0,[R4, #+0]
        BL       sFLASH_SendByte
        ADDS     R4,R4,#+1
        B.N      ??sFLASH_WritePage_0
??sFLASH_WritePage_1:
        MOVS     R1,#+16
        LDR.W    R0,??DataTable13  ;; 0x40020000
        BL       GPIO_SetBits
        MOVS     R0,#+20
        BL       spi_Delay_uS
        BL       sFLASH_WaitForWriteEnd
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
sFLASH_WriteBuffer:
        PUSH     {R3-R11,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R11,#+0
        MOVS     R7,#+0
        MOVS     R8,#+0
        MOVS     R9,#+0
        MOVS     R10,#+0
        MOV      R0,#+256
        UDIV     R1,R5,R0
        MLS      R1,R1,R0,R5
        MOV      R8,R1
        RSBS     R0,R8,#+0
        MOV      R9,R0
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        MOV      R0,#+256
        SDIV     R0,R6,R0
        MOV      R11,R0
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        MOV      R0,#+256
        SDIV     R1,R6,R0
        MLS      R1,R1,R0,R6
        MOVS     R7,R1
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BNE.N    ??sFLASH_WriteBuffer_0
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        CMP      R11,#+0
        BNE.N    ??sFLASH_WriteBuffer_1
        MOVS     R2,R6
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,R5
        MOVS     R0,R4
        BL       sFLASH_WritePage
        B.N      ??sFLASH_WriteBuffer_2
??sFLASH_WriteBuffer_1:
        MOV      R0,R11
        SUBS     R11,R0,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??sFLASH_WriteBuffer_3
        MOV      R2,#+256
        MOVS     R1,R5
        MOVS     R0,R4
        BL       sFLASH_WritePage
        ADDW     R5,R5,#+256
        ADDW     R4,R4,#+256
        B.N      ??sFLASH_WriteBuffer_1
??sFLASH_WriteBuffer_3:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R2,R7
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,R5
        MOVS     R0,R4
        BL       sFLASH_WritePage
        B.N      ??sFLASH_WriteBuffer_2
??sFLASH_WriteBuffer_0:
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        CMP      R11,#+0
        BNE.N    ??sFLASH_WriteBuffer_4
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R9,R7
        BCS.N    ??sFLASH_WriteBuffer_5
        SUBS     R0,R7,R9
        MOV      R10,R0
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        MOV      R2,R9
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,R5
        MOVS     R0,R4
        BL       sFLASH_WritePage
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        ADDS     R5,R9,R5
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        ADDS     R4,R9,R4
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        MOV      R2,R10
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,R5
        MOVS     R0,R4
        BL       sFLASH_WritePage
        B.N      ??sFLASH_WriteBuffer_2
??sFLASH_WriteBuffer_5:
        MOVS     R2,R6
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,R5
        MOVS     R0,R4
        BL       sFLASH_WritePage
        B.N      ??sFLASH_WriteBuffer_2
??sFLASH_WriteBuffer_4:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        SUBS     R6,R6,R9
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        MOV      R0,#+256
        SDIV     R0,R6,R0
        MOV      R11,R0
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        MOV      R0,#+256
        SDIV     R1,R6,R0
        MLS      R1,R1,R0,R6
        MOVS     R7,R1
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        MOV      R2,R9
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,R5
        MOVS     R0,R4
        BL       sFLASH_WritePage
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        ADDS     R5,R9,R5
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        ADDS     R4,R9,R4
??sFLASH_WriteBuffer_6:
        MOV      R0,R11
        SUBS     R11,R0,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??sFLASH_WriteBuffer_7
        MOV      R2,#+256
        MOVS     R1,R5
        MOVS     R0,R4
        BL       sFLASH_WritePage
        ADDW     R5,R5,#+256
        ADDW     R4,R4,#+256
        B.N      ??sFLASH_WriteBuffer_6
??sFLASH_WriteBuffer_7:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+0
        BEQ.N    ??sFLASH_WriteBuffer_2
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R2,R7
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,R5
        MOVS     R0,R4
        BL       sFLASH_WritePage
??sFLASH_WriteBuffer_2:
        POP      {R0,R4-R11,PC}   ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
sFLASH_ReadBuffer:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        BL       sFLASH_LowLevel_Init
        MOVS     R1,#+16
        LDR.N    R0,??DataTable13  ;; 0x40020000
        BL       GPIO_ResetBits
        MOVS     R0,#+20
        BL       spi_Delay_uS
        MOVS     R0,#+3
        BL       sFLASH_SendByte
        LSRS     R0,R5,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       sFLASH_SendByte
        LSRS     R0,R5,#+8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       sFLASH_SendByte
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       sFLASH_SendByte
??sFLASH_ReadBuffer_0:
        MOVS     R0,R6
        SUBS     R6,R0,#+1
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BEQ.N    ??sFLASH_ReadBuffer_1
        MOVS     R0,#+165
        BL       sFLASH_SendByte
        STRB     R0,[R4, #+0]
        ADDS     R4,R4,#+1
        B.N      ??sFLASH_ReadBuffer_0
??sFLASH_ReadBuffer_1:
        MOVS     R1,#+16
        LDR.N    R0,??DataTable13  ;; 0x40020000
        BL       GPIO_SetBits
        MOVS     R0,#+20
        BL       spi_Delay_uS
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
sFLASH_ReadID:
        PUSH     {R3-R7,LR}
        MOVS     R4,#+0
        MOVS     R5,#+0
        MOVS     R6,#+0
        MOVS     R7,#+0
        MOVS     R1,#+16
        LDR.N    R0,??DataTable13  ;; 0x40020000
        BL       GPIO_ResetBits
        MOVS     R0,#+20
        BL       spi_Delay_uS
        MOVS     R0,#+159
        BL       sFLASH_SendByte
        MOVS     R0,#+165
        BL       sFLASH_SendByte
        MOVS     R5,R0
        MOVS     R0,#+165
        BL       sFLASH_SendByte
        MOVS     R6,R0
        MOVS     R0,#+165
        BL       sFLASH_SendByte
        MOVS     R7,R0
        MOVS     R1,#+16
        LDR.N    R0,??DataTable13  ;; 0x40020000
        BL       GPIO_SetBits
        MOVS     R0,#+20
        BL       spi_Delay_uS
        LSLS     R0,R6,#+8
        ORRS     R0,R0,R5, LSL #+16
        ORRS     R0,R7,R0
        MOVS     R4,R0
        MOVS     R0,R4
        POP      {R1,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
sFLASH_StartReadSequence:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOVS     R1,#+16
        LDR.N    R0,??DataTable13  ;; 0x40020000
        BL       GPIO_ResetBits
        MOVS     R0,#+20
        BL       spi_Delay_uS
        MOVS     R0,#+3
        BL       sFLASH_SendByte
        LSRS     R0,R4,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       sFLASH_SendByte
        LSRS     R0,R4,#+8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       sFLASH_SendByte
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       sFLASH_SendByte
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
sFLASH_ReadByte:
        PUSH     {R7,LR}
        MOVS     R0,#+165
        BL       sFLASH_SendByte
        POP      {R1,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
sFLASH_SendByte:
        PUSH     {R4,LR}
        MOVS     R4,R0
??sFLASH_SendByte_0:
        MOVS     R1,#+2
        LDR.N    R0,??DataTable13_1  ;; 0x40013000
        BL       SPI_I2S_GetFlagStatus
        CMP      R0,#+0
        BEQ.N    ??sFLASH_SendByte_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R1,R4
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.N    R0,??DataTable13_1  ;; 0x40013000
        BL       SPI_I2S_SendData
??sFLASH_SendByte_1:
        MOVS     R1,#+1
        LDR.N    R0,??DataTable13_1  ;; 0x40013000
        BL       SPI_I2S_GetFlagStatus
        CMP      R0,#+0
        BEQ.N    ??sFLASH_SendByte_1
        LDR.N    R0,??DataTable13_1  ;; 0x40013000
        BL       SPI_I2S_ReceiveData
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
sFLASH_SendHalfWord:
        PUSH     {R4,LR}
        MOVS     R4,R0
??sFLASH_SendHalfWord_0:
        MOVS     R1,#+2
        LDR.N    R0,??DataTable13_1  ;; 0x40013000
        BL       SPI_I2S_GetFlagStatus
        CMP      R0,#+0
        BEQ.N    ??sFLASH_SendHalfWord_0
        MOVS     R1,R4
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.N    R0,??DataTable13_1  ;; 0x40013000
        BL       SPI_I2S_SendData
??sFLASH_SendHalfWord_1:
        MOVS     R1,#+1
        LDR.N    R0,??DataTable13_1  ;; 0x40013000
        BL       SPI_I2S_GetFlagStatus
        CMP      R0,#+0
        BEQ.N    ??sFLASH_SendHalfWord_1
        LDR.N    R0,??DataTable13_1  ;; 0x40013000
        BL       SPI_I2S_ReceiveData
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
sFLASH_WriteEnable:
        PUSH     {R7,LR}
        MOVS     R1,#+16
        LDR.N    R0,??DataTable13  ;; 0x40020000
        BL       GPIO_ResetBits
        MOVS     R0,#+20
        BL       spi_Delay_uS
        MOVS     R0,#+6
        BL       sFLASH_SendByte
        MOVS     R1,#+16
        LDR.N    R0,??DataTable13  ;; 0x40020000
        BL       GPIO_SetBits
        MOVS     R0,#+20
        BL       spi_Delay_uS
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
sFLASH_WaitForWriteEnd:
        PUSH     {R4,LR}
        MOVS     R4,#+0
        MOVS     R1,#+16
        LDR.N    R0,??DataTable13  ;; 0x40020000
        BL       GPIO_ResetBits
        MOVS     R0,#+20
        BL       spi_Delay_uS
        MOVS     R0,#+5
        BL       sFLASH_SendByte
??sFLASH_WaitForWriteEnd_0:
        MOVS     R0,#+165
        BL       sFLASH_SendByte
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R0,R4,#+31
        BMI.N    ??sFLASH_WaitForWriteEnd_0
        MOVS     R1,#+16
        LDR.N    R0,??DataTable13  ;; 0x40020000
        BL       GPIO_SetBits
        MOVS     R0,#+20
        BL       spi_Delay_uS
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
sFLASH_LowLevel_Init:
        PUSH     {LR}
        SUB      SP,SP,#+12
        MOVS     R1,#+1
        MOV      R0,#+4096
        BL       RCC_APB2PeriphClockCmd
        MOVS     R1,#+1
        MOVS     R0,#+1
        BL       RCC_AHB1PeriphClockCmd
        MOVS     R2,#+5
        MOVS     R1,#+5
        LDR.N    R0,??DataTable13  ;; 0x40020000
        BL       GPIO_PinAFConfig
        MOVS     R2,#+5
        MOVS     R1,#+6
        LDR.N    R0,??DataTable13  ;; 0x40020000
        BL       GPIO_PinAFConfig
        MOVS     R2,#+5
        MOVS     R1,#+7
        LDR.N    R0,??DataTable13  ;; 0x40020000
        BL       GPIO_PinAFConfig
        MOVS     R0,#+2
        STRB     R0,[SP, #+4]
        MOVS     R0,#+1
        STRB     R0,[SP, #+5]
        MOVS     R0,#+0
        STRB     R0,[SP, #+6]
        MOVS     R0,#+2
        STRB     R0,[SP, #+7]
        MOVS     R0,#+32
        STR      R0,[SP, #+0]
        ADD      R1,SP,#+0
        LDR.N    R0,??DataTable13  ;; 0x40020000
        BL       GPIO_Init
        MOVS     R0,#+128
        STR      R0,[SP, #+0]
        ADD      R1,SP,#+0
        LDR.N    R0,??DataTable13  ;; 0x40020000
        BL       GPIO_Init
        MOVS     R0,#+64
        STR      R0,[SP, #+0]
        ADD      R1,SP,#+0
        LDR.N    R0,??DataTable13  ;; 0x40020000
        BL       GPIO_Init
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
        LDR.N    R0,??DataTable13  ;; 0x40020000
        BL       GPIO_Init
        POP      {R0-R2,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
sFLASH_LowLevel_DeInit:
        PUSH     {LR}
        SUB      SP,SP,#+12
        MOVS     R1,#+0
        LDR.N    R0,??DataTable13_1  ;; 0x40013000
        BL       SPI_Cmd
        LDR.N    R0,??DataTable13_1  ;; 0x40013000
        BL       SPI_I2S_DeInit
        MOVS     R1,#+0
        MOV      R0,#+4096
        BL       RCC_APB2PeriphClockCmd
        MOVS     R0,#+0
        STRB     R0,[SP, #+4]
        MOVS     R0,#+0
        STRB     R0,[SP, #+7]
        MOVS     R0,#+32
        STR      R0,[SP, #+0]
        ADD      R1,SP,#+0
        LDR.N    R0,??DataTable13  ;; 0x40020000
        BL       GPIO_Init
        MOVS     R0,#+64
        STR      R0,[SP, #+0]
        ADD      R1,SP,#+0
        LDR.N    R0,??DataTable13  ;; 0x40020000
        BL       GPIO_Init
        MOVS     R0,#+128
        STR      R0,[SP, #+0]
        ADD      R1,SP,#+0
        LDR.N    R0,??DataTable13  ;; 0x40020000
        BL       GPIO_Init
        MOVS     R0,#+16
        STR      R0,[SP, #+0]
        ADD      R1,SP,#+0
        LDR.N    R0,??DataTable13  ;; 0x40020000
        BL       GPIO_Init
        POP      {R0-R2,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13:
        DC32     0x40020000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13_1:
        DC32     0x40013000

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)

        END
// 
// 1 474 bytes in section .text
// 
// 1 474 bytes of CODE memory
//
//Errors: none
//Warnings: none
