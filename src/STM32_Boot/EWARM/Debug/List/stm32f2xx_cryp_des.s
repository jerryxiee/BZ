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
//                    2xx_cryp_des.c                                          /
//    Command line =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\STM32F2xx_StdPeriph_Driver\src\stm32f /
//                    2xx_cryp_des.c -D STM32F10X_CL -D USE_STDPERIPH_DRIVER  /
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
//                    IAR6.1\STM32_Boot\EWARM\Debug\List\stm32f2xx_cryp_des.s /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f2xx_cryp_des

        EXTERN CRYP_Cmd
        EXTERN CRYP_DataIn
        EXTERN CRYP_DataOut
        EXTERN CRYP_FIFOFlush
        EXTERN CRYP_GetFlagStatus
        EXTERN CRYP_IVInit
        EXTERN CRYP_Init
        EXTERN CRYP_KeyInit
        EXTERN CRYP_KeyStructInit

        PUBLIC CRYP_DES_CBC
        PUBLIC CRYP_DES_ECB


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CRYP_DES_ECB:
        PUSH     {R0-R2,R4-R11,LR}
        SUB      SP,SP,#+48
        MOVS     R4,R3
        LDR      R5,[SP, #+96]
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R6,#+0
        MOVS     R7,#+1
        LDR      R10,[SP, #+52]
        LDR      R11,[SP, #+56]
        MOV      R8,R5
        MOVS     R9,#+0
        ADD      R0,SP,#+12
        BL       CRYP_KeyStructInit
        LDRB     R0,[SP, #+48]
        CMP      R0,#+1
        BNE.N    ??CRYP_DES_ECB_0
        MOVS     R0,#+0
        STRH     R0,[SP, #+4]
        B.N      ??CRYP_DES_ECB_1
??CRYP_DES_ECB_0:
        MOVS     R0,#+4
        STRH     R0,[SP, #+4]
??CRYP_DES_ECB_1:
        MOVS     R0,#+16
        STRH     R0,[SP, #+6]
        MOVS     R0,#+128
        STRH     R0,[SP, #+8]
        ADD      R0,SP,#+4
        BL       CRYP_Init
        LDR      R0,[R10, #+0]
        REV      R0,R0
        STR      R0,[SP, #+20]
        ADDS     R10,R10,#+4
        LDR      R0,[R10, #+0]
        REV      R0,R0
        STR      R0,[SP, #+24]
        ADD      R0,SP,#+12
        BL       CRYP_KeyInit
        BL       CRYP_FIFOFlush
        MOVS     R0,#+1
        BL       CRYP_Cmd
        MOVS     R0,#+0
        MOV      R9,R0
??CRYP_DES_ECB_2:
        CMP      R9,R4
        BCS.N    ??CRYP_DES_ECB_3
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+0
        BEQ.N    ??CRYP_DES_ECB_3
        LDR      R0,[R11, #+0]
        BL       CRYP_DataIn
        ADDS     R11,R11,#+4
        LDR      R0,[R11, #+0]
        BL       CRYP_DataIn
        ADDS     R11,R11,#+4
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
??CRYP_DES_ECB_4:
        MOVS     R0,#+16
        BL       CRYP_GetFlagStatus
        MOVS     R6,R0
        LDR      R0,[SP, #+0]
        ADDS     R0,R0,#+1
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        CMP      R0,#+65536
        BEQ.N    ??CRYP_DES_ECB_5
        CMP      R6,#+0
        BNE.N    ??CRYP_DES_ECB_4
??CRYP_DES_ECB_5:
        CMP      R6,#+0
        BEQ.N    ??CRYP_DES_ECB_6
        MOVS     R0,#+0
        MOVS     R7,R0
        B.N      ??CRYP_DES_ECB_7
??CRYP_DES_ECB_6:
        BL       CRYP_DataOut
        STR      R0,[R8, #+0]
        ADDS     R8,R8,#+4
        BL       CRYP_DataOut
        STR      R0,[R8, #+0]
        ADDS     R8,R8,#+4
??CRYP_DES_ECB_7:
        ADDS     R9,R9,#+8
        B.N      ??CRYP_DES_ECB_2
??CRYP_DES_ECB_3:
        MOVS     R0,#+0
        BL       CRYP_Cmd
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      SP,SP,#+60
        POP      {R4-R11,PC}      ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CRYP_DES_CBC:
        PUSH     {R0-R11,LR}
        SUB      SP,SP,#+60
        LDR      R4,[SP, #+112]
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R5,#+0
        MOVS     R6,#+1
        LDR      R9,[SP, #+64]
        LDR      R11,[SP, #+72]
        LDR      R7,[SP, #+116]
        LDR      R10,[SP, #+68]
        MOVS     R8,#+0
        ADD      R0,SP,#+28
        BL       CRYP_KeyStructInit
        LDRB     R0,[SP, #+60]
        CMP      R0,#+1
        BNE.N    ??CRYP_DES_CBC_0
        MOVS     R0,#+0
        STRH     R0,[SP, #+4]
        B.N      ??CRYP_DES_CBC_1
??CRYP_DES_CBC_0:
        MOVS     R0,#+4
        STRH     R0,[SP, #+4]
??CRYP_DES_CBC_1:
        MOVS     R0,#+24
        STRH     R0,[SP, #+6]
        MOVS     R0,#+128
        STRH     R0,[SP, #+8]
        ADD      R0,SP,#+4
        BL       CRYP_Init
        LDR      R0,[R9, #+0]
        REV      R0,R0
        STR      R0,[SP, #+36]
        ADDS     R9,R9,#+4
        LDR      R0,[R9, #+0]
        REV      R0,R0
        STR      R0,[SP, #+40]
        ADD      R0,SP,#+28
        BL       CRYP_KeyInit
        LDR      R0,[R10, #+0]
        REV      R0,R0
        STR      R0,[SP, #+12]
        ADDS     R10,R10,#+4
        LDR      R0,[R10, #+0]
        REV      R0,R0
        STR      R0,[SP, #+16]
        ADD      R0,SP,#+12
        BL       CRYP_IVInit
        BL       CRYP_FIFOFlush
        MOVS     R0,#+1
        BL       CRYP_Cmd
        MOVS     R0,#+0
        MOV      R8,R0
??CRYP_DES_CBC_2:
        CMP      R8,R4
        BCS.N    ??CRYP_DES_CBC_3
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??CRYP_DES_CBC_3
        LDR      R0,[R11, #+0]
        BL       CRYP_DataIn
        ADDS     R11,R11,#+4
        LDR      R0,[R11, #+0]
        BL       CRYP_DataIn
        ADDS     R11,R11,#+4
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
??CRYP_DES_CBC_4:
        MOVS     R0,#+16
        BL       CRYP_GetFlagStatus
        MOVS     R5,R0
        LDR      R0,[SP, #+0]
        ADDS     R0,R0,#+1
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        CMP      R0,#+65536
        BEQ.N    ??CRYP_DES_CBC_5
        CMP      R5,#+0
        BNE.N    ??CRYP_DES_CBC_4
??CRYP_DES_CBC_5:
        CMP      R5,#+0
        BEQ.N    ??CRYP_DES_CBC_6
        MOVS     R0,#+0
        MOVS     R6,R0
        B.N      ??CRYP_DES_CBC_7
??CRYP_DES_CBC_6:
        BL       CRYP_DataOut
        STR      R0,[R7, #+0]
        ADDS     R7,R7,#+4
        BL       CRYP_DataOut
        STR      R0,[R7, #+0]
        ADDS     R7,R7,#+4
??CRYP_DES_CBC_7:
        ADDS     R8,R8,#+8
        B.N      ??CRYP_DES_CBC_2
??CRYP_DES_CBC_3:
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
// 496 bytes in section .text
// 
// 496 bytes of CODE memory
//
//Errors: none
//Warnings: none
