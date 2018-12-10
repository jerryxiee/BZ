///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.10.2.52244/W32 for ARM    04/Dec/2013  10:58:08 /
// Copyright 1999-2010 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\STM32F2xx_StdPeriph_Driver\src\stm32f /
//                    2xx_cryp_aes.c                                          /
//    Command line =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\STM32F2xx_StdPeriph_Driver\src\stm32f /
//                    2xx_cryp_aes.c -D STM32F10X_CL -D USE_STDPERIPH_DRIVER  /
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
//                    IAR6.1\STM32_Boot\EWARM\Debug\List\stm32f2xx_cryp_aes.s /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f2xx_cryp_aes

        EXTERN CRYP_Cmd
        EXTERN CRYP_DataIn
        EXTERN CRYP_DataOut
        EXTERN CRYP_FIFOFlush
        EXTERN CRYP_GetFlagStatus
        EXTERN CRYP_IVInit
        EXTERN CRYP_Init
        EXTERN CRYP_KeyInit
        EXTERN CRYP_KeyStructInit

        PUBLIC CRYP_AES_CBC
        PUBLIC CRYP_AES_CTR
        PUBLIC CRYP_AES_ECB


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CRYP_AES_ECB:
        PUSH     {R0-R11,LR}
        SUB      SP,SP,#+44
        LDR      R4,[SP, #+96]
        LDR      R5,[SP, #+100]
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R6,#+0
        MOVS     R7,#+1
        LDR      R10,[SP, #+48]
        LDR      R11,[SP, #+56]
        MOV      R8,R5
        MOVS     R9,#+0
        ADD      R0,SP,#+12
        BL       CRYP_KeyStructInit
        LDRH     R0,[SP, #+52]
        CMP      R0,#+128
        BEQ.N    ??CRYP_AES_ECB_0
        CMP      R0,#+192
        BEQ.N    ??CRYP_AES_ECB_1
        CMP      R0,#+256
        BEQ.N    ??CRYP_AES_ECB_2
        B.N      ??CRYP_AES_ECB_3
??CRYP_AES_ECB_0:
        MOVS     R0,#+0
        STRH     R0,[SP, #+10]
        LDR      R0,[R10, #+0]
        REV      R0,R0
        STR      R0,[SP, #+28]
        ADDS     R10,R10,#+4
        LDR      R0,[R10, #+0]
        REV      R0,R0
        STR      R0,[SP, #+32]
        ADDS     R10,R10,#+4
        LDR      R0,[R10, #+0]
        REV      R0,R0
        STR      R0,[SP, #+36]
        ADDS     R10,R10,#+4
        LDR      R0,[R10, #+0]
        REV      R0,R0
        STR      R0,[SP, #+40]
        B.N      ??CRYP_AES_ECB_4
??CRYP_AES_ECB_1:
        MOV      R0,#+256
        STRH     R0,[SP, #+10]
        LDR      R0,[R10, #+0]
        REV      R0,R0
        STR      R0,[SP, #+20]
        ADDS     R10,R10,#+4
        LDR      R0,[R10, #+0]
        REV      R0,R0
        STR      R0,[SP, #+24]
        ADDS     R10,R10,#+4
        LDR      R0,[R10, #+0]
        REV      R0,R0
        STR      R0,[SP, #+28]
        ADDS     R10,R10,#+4
        LDR      R0,[R10, #+0]
        REV      R0,R0
        STR      R0,[SP, #+32]
        ADDS     R10,R10,#+4
        LDR      R0,[R10, #+0]
        REV      R0,R0
        STR      R0,[SP, #+36]
        ADDS     R10,R10,#+4
        LDR      R0,[R10, #+0]
        REV      R0,R0
        STR      R0,[SP, #+40]
        B.N      ??CRYP_AES_ECB_4
??CRYP_AES_ECB_2:
        MOV      R0,#+512
        STRH     R0,[SP, #+10]
        LDR      R0,[R10, #+0]
        REV      R0,R0
        STR      R0,[SP, #+12]
        ADDS     R10,R10,#+4
        LDR      R0,[R10, #+0]
        REV      R0,R0
        STR      R0,[SP, #+16]
        ADDS     R10,R10,#+4
        LDR      R0,[R10, #+0]
        REV      R0,R0
        STR      R0,[SP, #+20]
        ADDS     R10,R10,#+4
        LDR      R0,[R10, #+0]
        REV      R0,R0
        STR      R0,[SP, #+24]
        ADDS     R10,R10,#+4
        LDR      R0,[R10, #+0]
        REV      R0,R0
        STR      R0,[SP, #+28]
        ADDS     R10,R10,#+4
        LDR      R0,[R10, #+0]
        REV      R0,R0
        STR      R0,[SP, #+32]
        ADDS     R10,R10,#+4
        LDR      R0,[R10, #+0]
        REV      R0,R0
        STR      R0,[SP, #+36]
        ADDS     R10,R10,#+4
        LDR      R0,[R10, #+0]
        REV      R0,R0
        STR      R0,[SP, #+40]
        B.N      ??CRYP_AES_ECB_4
??CRYP_AES_ECB_3:
??CRYP_AES_ECB_4:
        LDRB     R0,[SP, #+44]
        CMP      R0,#+0
        BNE.N    ??CRYP_AES_ECB_5
        BL       CRYP_FIFOFlush
        MOVS     R0,#+4
        STRH     R0,[SP, #+4]
        MOVS     R0,#+56
        STRH     R0,[SP, #+6]
        MOVS     R0,#+0
        STRH     R0,[SP, #+8]
        ADD      R0,SP,#+4
        BL       CRYP_Init
        ADD      R0,SP,#+12
        BL       CRYP_KeyInit
        MOVS     R0,#+1
        BL       CRYP_Cmd
??CRYP_AES_ECB_6:
        MOVS     R0,#+16
        BL       CRYP_GetFlagStatus
        MOVS     R6,R0
        LDR      R0,[SP, #+0]
        ADDS     R0,R0,#+1
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        CMP      R0,#+65536
        BEQ.N    ??CRYP_AES_ECB_7
        CMP      R6,#+0
        BNE.N    ??CRYP_AES_ECB_6
??CRYP_AES_ECB_7:
        CMP      R6,#+0
        BEQ.N    ??CRYP_AES_ECB_8
        MOVS     R0,#+0
        MOVS     R7,R0
        B.N      ??CRYP_AES_ECB_9
??CRYP_AES_ECB_8:
        MOVS     R0,#+4
        STRH     R0,[SP, #+4]
        B.N      ??CRYP_AES_ECB_9
??CRYP_AES_ECB_5:
        ADD      R0,SP,#+12
        BL       CRYP_KeyInit
        MOVS     R0,#+0
        STRH     R0,[SP, #+4]
??CRYP_AES_ECB_9:
        MOVS     R0,#+32
        STRH     R0,[SP, #+6]
        MOVS     R0,#+128
        STRH     R0,[SP, #+8]
        ADD      R0,SP,#+4
        BL       CRYP_Init
        BL       CRYP_FIFOFlush
        MOVS     R0,#+1
        BL       CRYP_Cmd
        MOVS     R0,#+0
        MOV      R9,R0
??CRYP_AES_ECB_10:
        CMP      R9,R4
        BCS.N    ??CRYP_AES_ECB_11
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+0
        BEQ.N    ??CRYP_AES_ECB_11
        LDR      R0,[R11, #+0]
        BL       CRYP_DataIn
        ADDS     R11,R11,#+4
        LDR      R0,[R11, #+0]
        BL       CRYP_DataIn
        ADDS     R11,R11,#+4
        LDR      R0,[R11, #+0]
        BL       CRYP_DataIn
        ADDS     R11,R11,#+4
        LDR      R0,[R11, #+0]
        BL       CRYP_DataIn
        ADDS     R11,R11,#+4
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
??CRYP_AES_ECB_12:
        MOVS     R0,#+16
        BL       CRYP_GetFlagStatus
        MOVS     R6,R0
        LDR      R0,[SP, #+0]
        ADDS     R0,R0,#+1
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        CMP      R0,#+65536
        BEQ.N    ??CRYP_AES_ECB_13
        CMP      R6,#+0
        BNE.N    ??CRYP_AES_ECB_12
??CRYP_AES_ECB_13:
        CMP      R6,#+0
        BEQ.N    ??CRYP_AES_ECB_14
        MOVS     R0,#+0
        MOVS     R7,R0
        B.N      ??CRYP_AES_ECB_15
??CRYP_AES_ECB_14:
        BL       CRYP_DataOut
        STR      R0,[R8, #+0]
        ADDS     R8,R8,#+4
        BL       CRYP_DataOut
        STR      R0,[R8, #+0]
        ADDS     R8,R8,#+4
        BL       CRYP_DataOut
        STR      R0,[R8, #+0]
        ADDS     R8,R8,#+4
        BL       CRYP_DataOut
        STR      R0,[R8, #+0]
        ADDS     R8,R8,#+4
??CRYP_AES_ECB_15:
        ADDS     R9,R9,#+16
        B.N      ??CRYP_AES_ECB_10
??CRYP_AES_ECB_11:
        MOVS     R0,#+0
        BL       CRYP_Cmd
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      SP,SP,#+60
        POP      {R4-R11,PC}      ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CRYP_AES_CBC:
        PUSH     {R0-R11,LR}
        SUB      SP,SP,#+60
        LDR      R4,[SP, #+116]
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R5,#+0
        MOVS     R6,#+1
        LDR      R9,[SP, #+68]
        LDR      R11,[SP, #+112]
        LDR      R7,[SP, #+120]
        LDR      R10,[SP, #+64]
        MOVS     R8,#+0
        ADD      R0,SP,#+12
        BL       CRYP_KeyStructInit
        LDRH     R0,[SP, #+72]
        CMP      R0,#+128
        BEQ.N    ??CRYP_AES_CBC_0
        CMP      R0,#+192
        BEQ.N    ??CRYP_AES_CBC_1
        CMP      R0,#+256
        BEQ.N    ??CRYP_AES_CBC_2
        B.N      ??CRYP_AES_CBC_3
??CRYP_AES_CBC_0:
        MOVS     R0,#+0
        STRH     R0,[SP, #+10]
        LDR      R0,[R9, #+0]
        REV      R0,R0
        STR      R0,[SP, #+28]
        ADDS     R9,R9,#+4
        LDR      R0,[R9, #+0]
        REV      R0,R0
        STR      R0,[SP, #+32]
        ADDS     R9,R9,#+4
        LDR      R0,[R9, #+0]
        REV      R0,R0
        STR      R0,[SP, #+36]
        ADDS     R9,R9,#+4
        LDR      R0,[R9, #+0]
        REV      R0,R0
        STR      R0,[SP, #+40]
        B.N      ??CRYP_AES_CBC_4
??CRYP_AES_CBC_1:
        MOV      R0,#+256
        STRH     R0,[SP, #+10]
        LDR      R0,[R9, #+0]
        REV      R0,R0
        STR      R0,[SP, #+20]
        ADDS     R9,R9,#+4
        LDR      R0,[R9, #+0]
        REV      R0,R0
        STR      R0,[SP, #+24]
        ADDS     R9,R9,#+4
        LDR      R0,[R9, #+0]
        REV      R0,R0
        STR      R0,[SP, #+28]
        ADDS     R9,R9,#+4
        LDR      R0,[R9, #+0]
        REV      R0,R0
        STR      R0,[SP, #+32]
        ADDS     R9,R9,#+4
        LDR      R0,[R9, #+0]
        REV      R0,R0
        STR      R0,[SP, #+36]
        ADDS     R9,R9,#+4
        LDR      R0,[R9, #+0]
        REV      R0,R0
        STR      R0,[SP, #+40]
        B.N      ??CRYP_AES_CBC_4
??CRYP_AES_CBC_2:
        MOV      R0,#+512
        STRH     R0,[SP, #+10]
        LDR      R0,[R9, #+0]
        REV      R0,R0
        STR      R0,[SP, #+12]
        ADDS     R9,R9,#+4
        LDR      R0,[R9, #+0]
        REV      R0,R0
        STR      R0,[SP, #+16]
        ADDS     R9,R9,#+4
        LDR      R0,[R9, #+0]
        REV      R0,R0
        STR      R0,[SP, #+20]
        ADDS     R9,R9,#+4
        LDR      R0,[R9, #+0]
        REV      R0,R0
        STR      R0,[SP, #+24]
        ADDS     R9,R9,#+4
        LDR      R0,[R9, #+0]
        REV      R0,R0
        STR      R0,[SP, #+28]
        ADDS     R9,R9,#+4
        LDR      R0,[R9, #+0]
        REV      R0,R0
        STR      R0,[SP, #+32]
        ADDS     R9,R9,#+4
        LDR      R0,[R9, #+0]
        REV      R0,R0
        STR      R0,[SP, #+36]
        ADDS     R9,R9,#+4
        LDR      R0,[R9, #+0]
        REV      R0,R0
        STR      R0,[SP, #+40]
        B.N      ??CRYP_AES_CBC_4
??CRYP_AES_CBC_3:
??CRYP_AES_CBC_4:
        LDR      R0,[R10, #+0]
        REV      R0,R0
        STR      R0,[SP, #+44]
        ADDS     R10,R10,#+4
        LDR      R0,[R10, #+0]
        REV      R0,R0
        STR      R0,[SP, #+48]
        ADDS     R10,R10,#+4
        LDR      R0,[R10, #+0]
        REV      R0,R0
        STR      R0,[SP, #+52]
        ADDS     R10,R10,#+4
        LDR      R0,[R10, #+0]
        REV      R0,R0
        STR      R0,[SP, #+56]
        LDRB     R0,[SP, #+60]
        CMP      R0,#+0
        BNE.N    ??CRYP_AES_CBC_5
        BL       CRYP_FIFOFlush
        MOVS     R0,#+4
        STRH     R0,[SP, #+4]
        MOVS     R0,#+56
        STRH     R0,[SP, #+6]
        MOVS     R0,#+0
        STRH     R0,[SP, #+8]
        ADD      R0,SP,#+4
        BL       CRYP_Init
        ADD      R0,SP,#+12
        BL       CRYP_KeyInit
        MOVS     R0,#+1
        BL       CRYP_Cmd
??CRYP_AES_CBC_6:
        MOVS     R0,#+16
        BL       CRYP_GetFlagStatus
        MOVS     R5,R0
        LDR      R0,[SP, #+0]
        ADDS     R0,R0,#+1
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        CMP      R0,#+65536
        BEQ.N    ??CRYP_AES_CBC_7
        CMP      R5,#+0
        BNE.N    ??CRYP_AES_CBC_6
??CRYP_AES_CBC_7:
        CMP      R5,#+0
        BEQ.N    ??CRYP_AES_CBC_8
        MOVS     R0,#+0
        MOVS     R6,R0
        B.N      ??CRYP_AES_CBC_9
??CRYP_AES_CBC_8:
        MOVS     R0,#+4
        STRH     R0,[SP, #+4]
        B.N      ??CRYP_AES_CBC_9
??CRYP_AES_CBC_5:
        ADD      R0,SP,#+12
        BL       CRYP_KeyInit
        MOVS     R0,#+0
        STRH     R0,[SP, #+4]
??CRYP_AES_CBC_9:
        MOVS     R0,#+40
        STRH     R0,[SP, #+6]
        MOVS     R0,#+128
        STRH     R0,[SP, #+8]
        ADD      R0,SP,#+4
        BL       CRYP_Init
        ADD      R0,SP,#+44
        BL       CRYP_IVInit
        BL       CRYP_FIFOFlush
        MOVS     R0,#+1
        BL       CRYP_Cmd
        MOVS     R0,#+0
        MOV      R8,R0
??CRYP_AES_CBC_10:
        CMP      R8,R4
        BCS.N    ??CRYP_AES_CBC_11
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??CRYP_AES_CBC_11
        LDR      R0,[R11, #+0]
        BL       CRYP_DataIn
        ADDS     R11,R11,#+4
        LDR      R0,[R11, #+0]
        BL       CRYP_DataIn
        ADDS     R11,R11,#+4
        LDR      R0,[R11, #+0]
        BL       CRYP_DataIn
        ADDS     R11,R11,#+4
        LDR      R0,[R11, #+0]
        BL       CRYP_DataIn
        ADDS     R11,R11,#+4
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
??CRYP_AES_CBC_12:
        MOVS     R0,#+16
        BL       CRYP_GetFlagStatus
        MOVS     R5,R0
        LDR      R0,[SP, #+0]
        ADDS     R0,R0,#+1
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        CMP      R0,#+65536
        BEQ.N    ??CRYP_AES_CBC_13
        CMP      R5,#+0
        BNE.N    ??CRYP_AES_CBC_12
??CRYP_AES_CBC_13:
        CMP      R5,#+0
        BEQ.N    ??CRYP_AES_CBC_14
        MOVS     R0,#+0
        MOVS     R6,R0
        B.N      ??CRYP_AES_CBC_15
??CRYP_AES_CBC_14:
        BL       CRYP_DataOut
        STR      R0,[R7, #+0]
        ADDS     R7,R7,#+4
        BL       CRYP_DataOut
        STR      R0,[R7, #+0]
        ADDS     R7,R7,#+4
        BL       CRYP_DataOut
        STR      R0,[R7, #+0]
        ADDS     R7,R7,#+4
        BL       CRYP_DataOut
        STR      R0,[R7, #+0]
        ADDS     R7,R7,#+4
??CRYP_AES_CBC_15:
        ADDS     R8,R8,#+16
        B.N      ??CRYP_AES_CBC_10
??CRYP_AES_CBC_11:
        MOVS     R0,#+0
        BL       CRYP_Cmd
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      SP,SP,#+76
        POP      {R4-R11,PC}      ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CRYP_AES_CTR:
        PUSH     {R0-R11,LR}
        SUB      SP,SP,#+60
        LDR      R4,[SP, #+116]
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R5,#+0
        MOVS     R6,#+1
        LDR      R9,[SP, #+68]
        LDR      R11,[SP, #+112]
        LDR      R7,[SP, #+120]
        LDR      R10,[SP, #+64]
        MOVS     R8,#+0
        ADD      R0,SP,#+12
        BL       CRYP_KeyStructInit
        LDRH     R0,[SP, #+72]
        CMP      R0,#+128
        BEQ.N    ??CRYP_AES_CTR_0
        CMP      R0,#+192
        BEQ.N    ??CRYP_AES_CTR_1
        CMP      R0,#+256
        BEQ.N    ??CRYP_AES_CTR_2
        B.N      ??CRYP_AES_CTR_3
??CRYP_AES_CTR_0:
        MOVS     R0,#+0
        STRH     R0,[SP, #+10]
        LDR      R0,[R9, #+0]
        REV      R0,R0
        STR      R0,[SP, #+28]
        ADDS     R9,R9,#+4
        LDR      R0,[R9, #+0]
        REV      R0,R0
        STR      R0,[SP, #+32]
        ADDS     R9,R9,#+4
        LDR      R0,[R9, #+0]
        REV      R0,R0
        STR      R0,[SP, #+36]
        ADDS     R9,R9,#+4
        LDR      R0,[R9, #+0]
        REV      R0,R0
        STR      R0,[SP, #+40]
        B.N      ??CRYP_AES_CTR_4
??CRYP_AES_CTR_1:
        MOV      R0,#+256
        STRH     R0,[SP, #+10]
        LDR      R0,[R9, #+0]
        REV      R0,R0
        STR      R0,[SP, #+20]
        ADDS     R9,R9,#+4
        LDR      R0,[R9, #+0]
        REV      R0,R0
        STR      R0,[SP, #+24]
        ADDS     R9,R9,#+4
        LDR      R0,[R9, #+0]
        REV      R0,R0
        STR      R0,[SP, #+28]
        ADDS     R9,R9,#+4
        LDR      R0,[R9, #+0]
        REV      R0,R0
        STR      R0,[SP, #+32]
        ADDS     R9,R9,#+4
        LDR      R0,[R9, #+0]
        REV      R0,R0
        STR      R0,[SP, #+36]
        ADDS     R9,R9,#+4
        LDR      R0,[R9, #+0]
        REV      R0,R0
        STR      R0,[SP, #+40]
        B.N      ??CRYP_AES_CTR_4
??CRYP_AES_CTR_2:
        MOV      R0,#+512
        STRH     R0,[SP, #+10]
        LDR      R0,[R9, #+0]
        REV      R0,R0
        STR      R0,[SP, #+12]
        ADDS     R9,R9,#+4
        LDR      R0,[R9, #+0]
        REV      R0,R0
        STR      R0,[SP, #+16]
        ADDS     R9,R9,#+4
        LDR      R0,[R9, #+0]
        REV      R0,R0
        STR      R0,[SP, #+20]
        ADDS     R9,R9,#+4
        LDR      R0,[R9, #+0]
        REV      R0,R0
        STR      R0,[SP, #+24]
        ADDS     R9,R9,#+4
        LDR      R0,[R9, #+0]
        REV      R0,R0
        STR      R0,[SP, #+28]
        ADDS     R9,R9,#+4
        LDR      R0,[R9, #+0]
        REV      R0,R0
        STR      R0,[SP, #+32]
        ADDS     R9,R9,#+4
        LDR      R0,[R9, #+0]
        REV      R0,R0
        STR      R0,[SP, #+36]
        ADDS     R9,R9,#+4
        LDR      R0,[R9, #+0]
        REV      R0,R0
        STR      R0,[SP, #+40]
        B.N      ??CRYP_AES_CTR_4
??CRYP_AES_CTR_3:
??CRYP_AES_CTR_4:
        LDR      R0,[R10, #+0]
        REV      R0,R0
        STR      R0,[SP, #+44]
        ADDS     R10,R10,#+4
        LDR      R0,[R10, #+0]
        REV      R0,R0
        STR      R0,[SP, #+48]
        ADDS     R10,R10,#+4
        LDR      R0,[R10, #+0]
        REV      R0,R0
        STR      R0,[SP, #+52]
        ADDS     R10,R10,#+4
        LDR      R0,[R10, #+0]
        REV      R0,R0
        STR      R0,[SP, #+56]
        ADD      R0,SP,#+12
        BL       CRYP_KeyInit
        LDRB     R0,[SP, #+60]
        CMP      R0,#+0
        BNE.N    ??CRYP_AES_CTR_5
        MOVS     R0,#+4
        STRH     R0,[SP, #+4]
        B.N      ??CRYP_AES_CTR_6
??CRYP_AES_CTR_5:
        MOVS     R0,#+0
        STRH     R0,[SP, #+4]
??CRYP_AES_CTR_6:
        MOVS     R0,#+48
        STRH     R0,[SP, #+6]
        MOVS     R0,#+128
        STRH     R0,[SP, #+8]
        ADD      R0,SP,#+4
        BL       CRYP_Init
        ADD      R0,SP,#+44
        BL       CRYP_IVInit
        BL       CRYP_FIFOFlush
        MOVS     R0,#+1
        BL       CRYP_Cmd
        MOVS     R0,#+0
        MOV      R8,R0
??CRYP_AES_CTR_7:
        CMP      R8,R4
        BCS.N    ??CRYP_AES_CTR_8
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??CRYP_AES_CTR_8
        LDR      R0,[R11, #+0]
        BL       CRYP_DataIn
        ADDS     R11,R11,#+4
        LDR      R0,[R11, #+0]
        BL       CRYP_DataIn
        ADDS     R11,R11,#+4
        LDR      R0,[R11, #+0]
        BL       CRYP_DataIn
        ADDS     R11,R11,#+4
        LDR      R0,[R11, #+0]
        BL       CRYP_DataIn
        ADDS     R11,R11,#+4
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
??CRYP_AES_CTR_9:
        MOVS     R0,#+16
        BL       CRYP_GetFlagStatus
        MOVS     R5,R0
        LDR      R0,[SP, #+0]
        ADDS     R0,R0,#+1
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        CMP      R0,#+65536
        BEQ.N    ??CRYP_AES_CTR_10
        CMP      R5,#+0
        BNE.N    ??CRYP_AES_CTR_9
??CRYP_AES_CTR_10:
        CMP      R5,#+0
        BEQ.N    ??CRYP_AES_CTR_11
        MOVS     R0,#+0
        MOVS     R6,R0
        B.N      ??CRYP_AES_CTR_12
??CRYP_AES_CTR_11:
        BL       CRYP_DataOut
        STR      R0,[R7, #+0]
        ADDS     R7,R7,#+4
        BL       CRYP_DataOut
        STR      R0,[R7, #+0]
        ADDS     R7,R7,#+4
        BL       CRYP_DataOut
        STR      R0,[R7, #+0]
        ADDS     R7,R7,#+4
        BL       CRYP_DataOut
        STR      R0,[R7, #+0]
        ADDS     R7,R7,#+4
??CRYP_AES_CTR_12:
        ADDS     R8,R8,#+16
        B.N      ??CRYP_AES_CTR_7
??CRYP_AES_CTR_8:
        MOVS     R0,#+0
        BL       CRYP_Cmd
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      SP,SP,#+76
        POP      {R4-R11,PC}      ;; return

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)

        END
// 
// 1 778 bytes in section .text
// 
// 1 778 bytes of CODE memory
//
//Errors: none
//Warnings: none
