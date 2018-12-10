///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.10.2.52244/W32 for ARM    04/Dec/2013  10:58:06 /
// Copyright 1999-2010 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\src\memery.c                          /
//    Command line =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\src\memery.c -D STM32F10X_CL -D       /
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
//                    IAR6.1\STM32_Boot\EWARM\Debug\List\memery.s             /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME memery

        EXTERN FLASH_ProgramHalfWord

        PUBLIC WriteToMemory


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
WriteToMemory:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,#+0
        MOVS     R8,#+0
        MOV      R8,R6
        MOV      R9,R5
        MOVS     R0,#+0
        MOVS     R7,R0
??WriteToMemory_0:
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        MOVS     R0,#+2
        SDIV     R0,R8,R0
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R7,R0
        BGE.N    ??WriteToMemory_1
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        LDRH     R1,[R9, R7, LSL #+1]
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        ADDS     R0,R4,R7, LSL #+1
        BL       FLASH_ProgramHalfWord
        ADDS     R7,R7,#+1
        B.N      ??WriteToMemory_0
??WriteToMemory_1:
        MOVS     R0,#+0
        MOVS     R7,R0
??WriteToMemory_2:
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        MOVS     R0,#+2
        SDIV     R0,R8,R0
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R7,R0
        BGE.N    ??WriteToMemory_3
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        LDRH     R0,[R4, R7, LSL #+1]
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        LDRH     R1,[R9, R7, LSL #+1]
        CMP      R0,R1
        BEQ.N    ??WriteToMemory_4
        MOVS     R0,#+0
        B.N      ??WriteToMemory_5
??WriteToMemory_4:
        ADDS     R7,R7,#+1
        B.N      ??WriteToMemory_2
??WriteToMemory_3:
        MOVS     R0,#+1
??WriteToMemory_5:
        POP      {R1,R4-R9,PC}    ;; return

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)

        END
// 
// 110 bytes in section .text
// 
// 110 bytes of CODE memory
//
//Errors: none
//Warnings: none
