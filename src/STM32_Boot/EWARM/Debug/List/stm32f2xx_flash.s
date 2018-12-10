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
//                    2xx_flash.c                                             /
//    Command line =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\STM32F2xx_StdPeriph_Driver\src\stm32f /
//                    2xx_flash.c -D STM32F10X_CL -D USE_STDPERIPH_DRIVER     /
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
//                    IAR6.1\STM32_Boot\EWARM\Debug\List\stm32f2xx_flash.s    /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f2xx_flash

        EXTERN __aeabi_assert
        EXTERN __iar_EmptyStepPoint

        PUBLIC FLASH_ClearFlag
        PUBLIC FLASH_DataCacheCmd
        PUBLIC FLASH_DataCacheReset
        PUBLIC FLASH_EraseAllSectors
        PUBLIC FLASH_EraseSector
        PUBLIC FLASH_GetFlagStatus
        PUBLIC FLASH_GetStatus
        PUBLIC FLASH_ITConfig
        PUBLIC FLASH_InstructionCacheCmd
        PUBLIC FLASH_InstructionCacheReset
        PUBLIC FLASH_Lock
        PUBLIC FLASH_OB_BORConfig
        PUBLIC FLASH_OB_GetBOR
        PUBLIC FLASH_OB_GetRDP
        PUBLIC FLASH_OB_GetUser
        PUBLIC FLASH_OB_GetWRP
        PUBLIC FLASH_OB_Launch
        PUBLIC FLASH_OB_Lock
        PUBLIC FLASH_OB_RDPConfig
        PUBLIC FLASH_OB_Unlock
        PUBLIC FLASH_OB_UserConfig
        PUBLIC FLASH_OB_WRPConfig
        PUBLIC FLASH_PrefetchBufferCmd
        PUBLIC FLASH_ProgramByte
        PUBLIC FLASH_ProgramDoubleWord
        PUBLIC FLASH_ProgramHalfWord
        PUBLIC FLASH_ProgramWord
        PUBLIC FLASH_SetLatency
        PUBLIC FLASH_Unlock
        PUBLIC FLASH_WaitForLastOperation


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_SetLatency:
        PUSH     {R4,LR}
        MOVS     R4,R0
        CMP      R4,#+0
        BEQ.N    ??FLASH_SetLatency_0
        CMP      R4,#+1
        BEQ.N    ??FLASH_SetLatency_0
        CMP      R4,#+2
        BEQ.N    ??FLASH_SetLatency_0
        CMP      R4,#+3
        BEQ.N    ??FLASH_SetLatency_0
        CMP      R4,#+4
        BEQ.N    ??FLASH_SetLatency_0
        CMP      R4,#+5
        BEQ.N    ??FLASH_SetLatency_0
        CMP      R4,#+6
        BEQ.N    ??FLASH_SetLatency_0
        CMP      R4,#+7
        BEQ.N    ??FLASH_SetLatency_0
        MOVS     R2,#+167
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FLASH_LATENCY(FLAS...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??FLASH_SetLatency_0:
        LDR.W    R0,??DataTable43  ;; 0x40023c00
        STRB     R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_PrefetchBufferCmd:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??FLASH_PrefetchBufferCmd_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??FLASH_PrefetchBufferCmd_0
        MOVS     R2,#+182
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??FLASH_PrefetchBufferCmd_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??FLASH_PrefetchBufferCmd_1
        LDR.W    R0,??DataTable43  ;; 0x40023c00
        LDR      R0,[R0, #+0]
        MOV      R1,#+256
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable43  ;; 0x40023c00
        STR      R0,[R1, #+0]
        B.N      ??FLASH_PrefetchBufferCmd_2
??FLASH_PrefetchBufferCmd_1:
        LDR.W    R0,??DataTable43  ;; 0x40023c00
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x100
        LDR.W    R1,??DataTable43  ;; 0x40023c00
        STR      R0,[R1, #+0]
??FLASH_PrefetchBufferCmd_2:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_InstructionCacheCmd:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??FLASH_InstructionCacheCmd_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??FLASH_InstructionCacheCmd_0
        MOVS     R2,#+204
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??FLASH_InstructionCacheCmd_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??FLASH_InstructionCacheCmd_1
        LDR.W    R0,??DataTable43  ;; 0x40023c00
        LDR      R0,[R0, #+0]
        MOV      R1,#+512
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable43  ;; 0x40023c00
        STR      R0,[R1, #+0]
        B.N      ??FLASH_InstructionCacheCmd_2
??FLASH_InstructionCacheCmd_1:
        LDR.W    R0,??DataTable43  ;; 0x40023c00
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x200
        LDR.W    R1,??DataTable43  ;; 0x40023c00
        STR      R0,[R1, #+0]
??FLASH_InstructionCacheCmd_2:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_DataCacheCmd:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??FLASH_DataCacheCmd_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??FLASH_DataCacheCmd_0
        MOVS     R2,#+225
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??FLASH_DataCacheCmd_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??FLASH_DataCacheCmd_1
        LDR.W    R0,??DataTable43  ;; 0x40023c00
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR.W    R1,??DataTable43  ;; 0x40023c00
        STR      R0,[R1, #+0]
        B.N      ??FLASH_DataCacheCmd_2
??FLASH_DataCacheCmd_1:
        LDR.W    R0,??DataTable43  ;; 0x40023c00
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x400
        LDR.W    R1,??DataTable43  ;; 0x40023c00
        STR      R0,[R1, #+0]
??FLASH_DataCacheCmd_2:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_InstructionCacheReset:
        LDR.W    R0,??DataTable43  ;; 0x40023c00
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x800
        LDR.W    R1,??DataTable43  ;; 0x40023c00
        STR      R0,[R1, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_DataCacheReset:
        LDR.W    R0,??DataTable43  ;; 0x40023c00
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.W    R1,??DataTable43  ;; 0x40023c00
        STR      R0,[R1, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_Unlock:
        LDR.W    R0,??DataTable43_1  ;; 0x40023c10
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BPL.N    ??FLASH_Unlock_0
        LDR.W    R0,??DataTable43_2  ;; 0x40023c04
        LDR.W    R1,??DataTable43_3  ;; 0x45670123
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable43_2  ;; 0x40023c04
        LDR.W    R1,??DataTable43_4  ;; 0xcdef89ab
        STR      R1,[R0, #+0]
??FLASH_Unlock_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_Lock:
        LDR.W    R0,??DataTable43_1  ;; 0x40023c10
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80000000
        LDR.W    R1,??DataTable43_1  ;; 0x40023c10
        STR      R0,[R1, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_EraseSector:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        MOVS     R7,#+8
        CMP      R4,#+0
        BEQ.N    ??FLASH_EraseSector_0
        CMP      R4,#+8
        BEQ.N    ??FLASH_EraseSector_0
        CMP      R4,#+16
        BEQ.N    ??FLASH_EraseSector_0
        CMP      R4,#+24
        BEQ.N    ??FLASH_EraseSector_0
        CMP      R4,#+32
        BEQ.N    ??FLASH_EraseSector_0
        CMP      R4,#+40
        BEQ.N    ??FLASH_EraseSector_0
        CMP      R4,#+48
        BEQ.N    ??FLASH_EraseSector_0
        CMP      R4,#+56
        BEQ.N    ??FLASH_EraseSector_0
        CMP      R4,#+64
        BEQ.N    ??FLASH_EraseSector_0
        CMP      R4,#+72
        BEQ.N    ??FLASH_EraseSector_0
        CMP      R4,#+80
        BEQ.N    ??FLASH_EraseSector_0
        CMP      R4,#+88
        BEQ.N    ??FLASH_EraseSector_0
        MOVW     R2,#+345
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FLASH_SECTOR(FLASH...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??FLASH_EraseSector_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??FLASH_EraseSector_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??FLASH_EraseSector_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+2
        BEQ.N    ??FLASH_EraseSector_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+3
        BEQ.N    ??FLASH_EraseSector_1
        MOV      R2,#+346
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_VOLTAGERANGE(Volta...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??FLASH_EraseSector_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??FLASH_EraseSector_2
        MOVS     R0,#+0
        MOVS     R6,R0
        B.N      ??FLASH_EraseSector_3
??FLASH_EraseSector_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BNE.N    ??FLASH_EraseSector_4
        MOV      R0,#+256
        MOVS     R6,R0
        B.N      ??FLASH_EraseSector_3
??FLASH_EraseSector_4:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+2
        BNE.N    ??FLASH_EraseSector_5
        MOV      R0,#+512
        MOVS     R6,R0
        B.N      ??FLASH_EraseSector_3
??FLASH_EraseSector_5:
        MOV      R0,#+768
        MOVS     R6,R0
??FLASH_EraseSector_3:
        BL       FLASH_WaitForLastOperation
        MOVS     R7,R0
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+8
        BNE.N    ??FLASH_EraseSector_6
        LDR.W    R0,??DataTable43_1  ;; 0x40023c10
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x300
        LDR.W    R1,??DataTable43_1  ;; 0x40023c10
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable43_1  ;; 0x40023c10
        LDR      R0,[R0, #+0]
        ORRS     R0,R6,R0
        LDR.W    R1,??DataTable43_1  ;; 0x40023c10
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable43_1  ;; 0x40023c10
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0xF8
        LDR.W    R1,??DataTable43_1  ;; 0x40023c10
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable43_1  ;; 0x40023c10
        LDR      R0,[R0, #+0]
        ORRS     R1,R4,#0x2
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable43_1  ;; 0x40023c10
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable43_1  ;; 0x40023c10
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000
        LDR.W    R1,??DataTable43_1  ;; 0x40023c10
        STR      R0,[R1, #+0]
        BL       FLASH_WaitForLastOperation
        MOVS     R7,R0
        LDR.W    R0,??DataTable43_1  ;; 0x40023c10
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x2
        LDR.W    R1,??DataTable43_1  ;; 0x40023c10
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable43_1  ;; 0x40023c10
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0xF8
        LDR.W    R1,??DataTable43_1  ;; 0x40023c10
        STR      R0,[R1, #+0]
??FLASH_EraseSector_6:
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_EraseAllSectors:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        MOVS     R6,#+8
        BL       FLASH_WaitForLastOperation
        MOVS     R6,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??FLASH_EraseAllSectors_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??FLASH_EraseAllSectors_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BEQ.N    ??FLASH_EraseAllSectors_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+3
        BEQ.N    ??FLASH_EraseAllSectors_0
        MOVW     R2,#+411
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_VOLTAGERANGE(Volta...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??FLASH_EraseAllSectors_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??FLASH_EraseAllSectors_1
        MOVS     R0,#+0
        MOVS     R5,R0
        B.N      ??FLASH_EraseAllSectors_2
??FLASH_EraseAllSectors_1:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??FLASH_EraseAllSectors_3
        MOV      R0,#+256
        MOVS     R5,R0
        B.N      ??FLASH_EraseAllSectors_2
??FLASH_EraseAllSectors_3:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BNE.N    ??FLASH_EraseAllSectors_4
        MOV      R0,#+512
        MOVS     R5,R0
        B.N      ??FLASH_EraseAllSectors_2
??FLASH_EraseAllSectors_4:
        MOV      R0,#+768
        MOVS     R5,R0
??FLASH_EraseAllSectors_2:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+8
        BNE.N    ??FLASH_EraseAllSectors_5
        LDR.W    R0,??DataTable43_1  ;; 0x40023c10
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x300
        LDR.W    R1,??DataTable43_1  ;; 0x40023c10
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable43_1  ;; 0x40023c10
        LDR      R0,[R0, #+0]
        ORRS     R0,R5,R0
        LDR.W    R1,??DataTable43_1  ;; 0x40023c10
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable43_1  ;; 0x40023c10
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.W    R1,??DataTable43_1  ;; 0x40023c10
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable43_1  ;; 0x40023c10
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000
        LDR.W    R1,??DataTable43_1  ;; 0x40023c10
        STR      R0,[R1, #+0]
        BL       FLASH_WaitForLastOperation
        MOVS     R6,R0
        LDR.W    R0,??DataTable43_1  ;; 0x40023c10
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x4
        LDR.W    R1,??DataTable43_1  ;; 0x40023c10
        STR      R0,[R1, #+0]
??FLASH_EraseAllSectors_5:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_ProgramDoubleWord:
        PUSH     {R3-R7,LR}
        MOVS     R6,R0
        MOVS     R4,R2
        MOVS     R5,R3
        MOVS     R7,#+8
        CMP      R6,#+134217728
        BCC.N    ??FLASH_ProgramDoubleWord_0
        LDR.W    R0,??DataTable43_5  ;; 0x80fffff
        CMP      R6,R0
        BCC.N    ??FLASH_ProgramDoubleWord_1
??FLASH_ProgramDoubleWord_0:
        LDR.W    R0,??DataTable43_6  ;; 0x1fff7800
        CMP      R6,R0
        BCC.N    ??FLASH_ProgramDoubleWord_2
        LDR.W    R0,??DataTable43_7  ;; 0x1fff7a0f
        CMP      R6,R0
        BCC.N    ??FLASH_ProgramDoubleWord_1
??FLASH_ProgramDoubleWord_2:
        MOV      R2,#+462
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FLASH_ADDRESS(Addr...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??FLASH_ProgramDoubleWord_1:
        BL       FLASH_WaitForLastOperation
        MOVS     R7,R0
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+8
        BNE.N    ??FLASH_ProgramDoubleWord_3
        LDR.W    R0,??DataTable43_1  ;; 0x40023c10
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x300
        LDR.W    R1,??DataTable43_1  ;; 0x40023c10
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable43_1  ;; 0x40023c10
        LDR      R0,[R0, #+0]
        MOV      R1,#+768
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable43_1  ;; 0x40023c10
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable43_1  ;; 0x40023c10
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.W    R1,??DataTable43_1  ;; 0x40023c10
        STR      R0,[R1, #+0]
        STRD     R4,R5,[R6, #+0]
        BL       FLASH_WaitForLastOperation
        MOVS     R7,R0
        LDR.W    R0,??DataTable43_1  ;; 0x40023c10
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.W    R1,??DataTable43_1  ;; 0x40023c10
        STR      R0,[R1, #+0]
??FLASH_ProgramDoubleWord_3:
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_ProgramWord:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+8
        CMP      R4,#+134217728
        BCC.N    ??FLASH_ProgramWord_0
        LDR.W    R0,??DataTable43_5  ;; 0x80fffff
        CMP      R4,R0
        BCC.N    ??FLASH_ProgramWord_1
??FLASH_ProgramWord_0:
        LDR.W    R0,??DataTable43_6  ;; 0x1fff7800
        CMP      R4,R0
        BCC.N    ??FLASH_ProgramWord_2
        LDR.W    R0,??DataTable43_7  ;; 0x1fff7a0f
        CMP      R4,R0
        BCC.N    ??FLASH_ProgramWord_1
??FLASH_ProgramWord_2:
        MOV      R2,#+500
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FLASH_ADDRESS(Addr...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??FLASH_ProgramWord_1:
        BL       FLASH_WaitForLastOperation
        MOVS     R6,R0
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+8
        BNE.N    ??FLASH_ProgramWord_3
        LDR.W    R0,??DataTable43_1  ;; 0x40023c10
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x300
        LDR.W    R1,??DataTable43_1  ;; 0x40023c10
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable43_1  ;; 0x40023c10
        LDR      R0,[R0, #+0]
        MOV      R1,#+512
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable43_1  ;; 0x40023c10
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable43_1  ;; 0x40023c10
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.W    R1,??DataTable43_1  ;; 0x40023c10
        STR      R0,[R1, #+0]
        STR      R5,[R4, #+0]
        BL       FLASH_WaitForLastOperation
        MOVS     R6,R0
        LDR.W    R0,??DataTable43_1  ;; 0x40023c10
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.W    R1,??DataTable43_1  ;; 0x40023c10
        STR      R0,[R1, #+0]
??FLASH_ProgramWord_3:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_ProgramHalfWord:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+8
        CMP      R4,#+134217728
        BCC.N    ??FLASH_ProgramHalfWord_0
        LDR.W    R0,??DataTable43_5  ;; 0x80fffff
        CMP      R4,R0
        BCC.N    ??FLASH_ProgramHalfWord_1
??FLASH_ProgramHalfWord_0:
        LDR.W    R0,??DataTable43_6  ;; 0x1fff7800
        CMP      R4,R0
        BCC.N    ??FLASH_ProgramHalfWord_2
        LDR.W    R0,??DataTable43_7  ;; 0x1fff7a0f
        CMP      R4,R0
        BCC.N    ??FLASH_ProgramHalfWord_1
??FLASH_ProgramHalfWord_2:
        MOVW     R2,#+538
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FLASH_ADDRESS(Addr...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??FLASH_ProgramHalfWord_1:
        BL       FLASH_WaitForLastOperation
        MOVS     R6,R0
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+8
        BNE.N    ??FLASH_ProgramHalfWord_3
        LDR.W    R0,??DataTable43_1  ;; 0x40023c10
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x300
        LDR.W    R1,??DataTable43_1  ;; 0x40023c10
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable43_1  ;; 0x40023c10
        LDR      R0,[R0, #+0]
        MOV      R1,#+256
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable43_1  ;; 0x40023c10
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable43_1  ;; 0x40023c10
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.W    R1,??DataTable43_1  ;; 0x40023c10
        STR      R0,[R1, #+0]
        STRH     R5,[R4, #+0]
        BL       FLASH_WaitForLastOperation
        MOVS     R6,R0
        LDR.W    R0,??DataTable43_1  ;; 0x40023c10
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.W    R1,??DataTable43_1  ;; 0x40023c10
        STR      R0,[R1, #+0]
??FLASH_ProgramHalfWord_3:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_ProgramByte:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+8
        CMP      R4,#+134217728
        BCC.N    ??FLASH_ProgramByte_0
        LDR.W    R0,??DataTable43_5  ;; 0x80fffff
        CMP      R4,R0
        BCC.N    ??FLASH_ProgramByte_1
??FLASH_ProgramByte_0:
        LDR.W    R0,??DataTable43_6  ;; 0x1fff7800
        CMP      R4,R0
        BCC.N    ??FLASH_ProgramByte_2
        LDR.W    R0,??DataTable43_7  ;; 0x1fff7a0f
        CMP      R4,R0
        BCC.N    ??FLASH_ProgramByte_1
??FLASH_ProgramByte_2:
        MOV      R2,#+576
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FLASH_ADDRESS(Addr...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??FLASH_ProgramByte_1:
        BL       FLASH_WaitForLastOperation
        MOVS     R6,R0
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+8
        BNE.N    ??FLASH_ProgramByte_3
        LDR.W    R0,??DataTable43_1  ;; 0x40023c10
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x300
        LDR.W    R1,??DataTable43_1  ;; 0x40023c10
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable43_1  ;; 0x40023c10
        LDR.W    R1,??DataTable43_1  ;; 0x40023c10
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable43_1  ;; 0x40023c10
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.W    R1,??DataTable43_1  ;; 0x40023c10
        STR      R0,[R1, #+0]
        STRB     R5,[R4, #+0]
        BL       FLASH_WaitForLastOperation
        MOVS     R6,R0
        LDR.W    R0,??DataTable43_1  ;; 0x40023c10
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.N    R1,??DataTable43_1  ;; 0x40023c10
        STR      R0,[R1, #+0]
??FLASH_ProgramByte_3:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_OB_Unlock:
        LDR.W    R0,??DataTable43_8  ;; 0x40023c14
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??FLASH_OB_Unlock_0
        LDR.N    R0,??DataTable43_9  ;; 0x40023c08
        LDR.N    R1,??DataTable43_10  ;; 0x8192a3b
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable43_9  ;; 0x40023c08
        LDR.N    R1,??DataTable43_11  ;; 0x4c5d6e7f
        STR      R1,[R0, #+0]
??FLASH_OB_Unlock_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_OB_Lock:
        LDR.N    R0,??DataTable43_8  ;; 0x40023c14
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable43_8  ;; 0x40023c14
        STR      R0,[R1, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_OB_WRPConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+8
        LSRS     R0,R4,#+12
        LSLS     R0,R0,#+12
        CMP      R0,#+0
        BNE.N    ??FLASH_OB_WRPConfig_0
        CMP      R4,#+0
        BNE.N    ??FLASH_OB_WRPConfig_1
??FLASH_OB_WRPConfig_0:
        MOV      R2,#+692
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_OB_WRP(OB_WRP)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??FLASH_OB_WRPConfig_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??FLASH_OB_WRPConfig_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??FLASH_OB_WRPConfig_2
        MOVW     R2,#+693
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??FLASH_OB_WRPConfig_2:
        BL       FLASH_WaitForLastOperation
        MOVS     R6,R0
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+8
        BNE.N    ??FLASH_OB_WRPConfig_3
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??FLASH_OB_WRPConfig_4
        LDR.N    R0,??DataTable43_12  ;; 0x40023c16
        LDRH     R0,[R0, #+0]
        BICS     R0,R0,R4
        LDR.N    R1,??DataTable43_12  ;; 0x40023c16
        STRH     R0,[R1, #+0]
        B.N      ??FLASH_OB_WRPConfig_3
??FLASH_OB_WRPConfig_4:
        LDR.N    R0,??DataTable43_12  ;; 0x40023c16
        LDRH     R0,[R0, #+0]
        ORRS     R0,R4,R0
        LDR.N    R1,??DataTable43_12  ;; 0x40023c16
        STRH     R0,[R1, #+0]
??FLASH_OB_WRPConfig_3:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_OB_RDPConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+8
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+170
        BEQ.N    ??FLASH_OB_RDPConfig_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+85
        BEQ.N    ??FLASH_OB_RDPConfig_0
        MOVW     R2,#+727
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_OB_RDP(OB_RDP)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??FLASH_OB_RDPConfig_0:
        BL       FLASH_WaitForLastOperation
        MOVS     R5,R0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+8
        BNE.N    ??FLASH_OB_RDPConfig_1
        LDR.N    R0,??DataTable43_13  ;; 0x40023c15
        STRB     R4,[R0, #+0]
??FLASH_OB_RDPConfig_1:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_OB_UserConfig:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,#+255
        MOVS     R8,#+8
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+32
        BEQ.N    ??FLASH_OB_UserConfig_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??FLASH_OB_UserConfig_0
        MOV      R2,#+760
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_OB_IWDG_SOURCE(OB_...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??FLASH_OB_UserConfig_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+64
        BEQ.N    ??FLASH_OB_UserConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??FLASH_OB_UserConfig_1
        MOVW     R2,#+761
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_OB_STOP_SOURCE(OB_...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??FLASH_OB_UserConfig_1:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+128
        BEQ.N    ??FLASH_OB_UserConfig_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??FLASH_OB_UserConfig_2
        MOVW     R2,#+762
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_OB_STDBY_SOURCE(OB...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??FLASH_OB_UserConfig_2:
        BL       FLASH_WaitForLastOperation
        MOV      R8,R0
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+8
        BNE.N    ??FLASH_OB_UserConfig_3
        LDR.N    R0,??DataTable43_8  ;; 0x40023c14
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0xF
        MOVS     R7,R0
        ORRS     R0,R7,R5
        ORRS     R0,R0,R6
        ORRS     R0,R0,R4
        LDR.N    R1,??DataTable43_8  ;; 0x40023c14
        STRB     R0,[R1, #+0]
??FLASH_OB_UserConfig_3:
        POP      {R4-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_OB_BORConfig:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+8
        BEQ.N    ??FLASH_OB_BORConfig_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+4
        BEQ.N    ??FLASH_OB_BORConfig_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??FLASH_OB_BORConfig_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+12
        BEQ.N    ??FLASH_OB_BORConfig_0
        MOVW     R2,#+790
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_OB_BOR(OB_BOR)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??FLASH_OB_BORConfig_0:
        LDR.N    R0,??DataTable43_8  ;; 0x40023c14
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0xF3
        LDR.N    R1,??DataTable43_8  ;; 0x40023c14
        STRB     R0,[R1, #+0]
        LDR.N    R0,??DataTable43_8  ;; 0x40023c14
        LDRB     R0,[R0, #+0]
        ORRS     R0,R4,R0
        LDR.N    R1,??DataTable43_8  ;; 0x40023c14
        STRB     R0,[R1, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_OB_Launch:
        PUSH     {R4,LR}
        MOVS     R4,#+8
        LDR.N    R0,??DataTable43_8  ;; 0x40023c14
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable43_8  ;; 0x40023c14
        STRB     R0,[R1, #+0]
        BL       FLASH_WaitForLastOperation
        MOVS     R4,R0
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_OB_GetUser:
        LDR.N    R0,??DataTable43_8  ;; 0x40023c14
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_OB_GetWRP:
        LDR.N    R0,??DataTable43_12  ;; 0x40023c16
        LDRH     R0,[R0, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_OB_GetRDP:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable43_13  ;; 0x40023c15
        LDRB     R1,[R1, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+170
        BEQ.N    ??FLASH_OB_GetRDP_0
        MOVS     R1,#+1
        MOVS     R0,R1
        B.N      ??FLASH_OB_GetRDP_1
??FLASH_OB_GetRDP_0:
        MOVS     R1,#+0
        MOVS     R0,R1
??FLASH_OB_GetRDP_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_OB_GetBOR:
        LDR.N    R0,??DataTable43_8  ;; 0x40023c14
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0xC
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_ITConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        BICS     R0,R4,#0x3000000
        CMP      R0,#+0
        BNE.N    ??FLASH_ITConfig_0
        CMP      R4,#+0
        BNE.N    ??FLASH_ITConfig_1
??FLASH_ITConfig_0:
        MOV      R2,#+904
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FLASH_IT(FLASH_IT)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??FLASH_ITConfig_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??FLASH_ITConfig_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??FLASH_ITConfig_2
        MOVW     R2,#+905
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??FLASH_ITConfig_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??FLASH_ITConfig_3
        LDR.N    R0,??DataTable43_1  ;; 0x40023c10
        LDR      R0,[R0, #+0]
        ORRS     R0,R4,R0
        LDR.N    R1,??DataTable43_1  ;; 0x40023c10
        STR      R0,[R1, #+0]
        B.N      ??FLASH_ITConfig_4
??FLASH_ITConfig_3:
        LDR.N    R0,??DataTable43_1  ;; 0x40023c10
        LDR      R0,[R0, #+0]
        BICS     R0,R0,R4
        LDR.N    R1,??DataTable43_1  ;; 0x40023c10
        STR      R0,[R1, #+0]
??FLASH_ITConfig_4:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_GetFlagStatus:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        CMP      R4,#+1
        BEQ.N    ??FLASH_GetFlagStatus_0
        CMP      R4,#+2
        BEQ.N    ??FLASH_GetFlagStatus_0
        CMP      R4,#+16
        BEQ.N    ??FLASH_GetFlagStatus_0
        CMP      R4,#+32
        BEQ.N    ??FLASH_GetFlagStatus_0
        CMP      R4,#+64
        BEQ.N    ??FLASH_GetFlagStatus_0
        CMP      R4,#+128
        BEQ.N    ??FLASH_GetFlagStatus_0
        CMP      R4,#+65536
        BEQ.N    ??FLASH_GetFlagStatus_0
        MOV      R2,#+936
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FLASH_GET_FLAG(FLA...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??FLASH_GetFlagStatus_0:
        LDR.N    R0,??DataTable43_14  ;; 0x40023c0c
        LDR      R0,[R0, #+0]
        TST      R0,R4
        BEQ.N    ??FLASH_GetFlagStatus_1
        MOVS     R0,#+1
        MOVS     R5,R0
        B.N      ??FLASH_GetFlagStatus_2
??FLASH_GetFlagStatus_1:
        MOVS     R0,#+0
        MOVS     R5,R0
??FLASH_GetFlagStatus_2:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_ClearFlag:
        PUSH     {R4,LR}
        MOVS     R4,R0
        BICS     R0,R4,#0xF3
        CMP      R0,#+0
        BNE.N    ??FLASH_ClearFlag_0
        CMP      R4,#+0
        BNE.N    ??FLASH_ClearFlag_1
??FLASH_ClearFlag_0:
        MOVW     R2,#+965
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FLASH_CLEAR_FLAG(F...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??FLASH_ClearFlag_1:
        LDR.N    R0,??DataTable43_14  ;; 0x40023c0c
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_GetStatus:
        MOVS     R0,#+8
        LDR.N    R1,??DataTable43_14  ;; 0x40023c0c
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+15
        BPL.N    ??FLASH_GetStatus_0
        MOVS     R1,#+1
        MOVS     R0,R1
        B.N      ??FLASH_GetStatus_1
??FLASH_GetStatus_0:
        LDR.N    R1,??DataTable43_14  ;; 0x40023c0c
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+27
        BPL.N    ??FLASH_GetStatus_2
        MOVS     R1,#+5
        MOVS     R0,R1
        B.N      ??FLASH_GetStatus_1
??FLASH_GetStatus_2:
        LDR.N    R1,??DataTable43_14  ;; 0x40023c0c
        LDR      R1,[R1, #+0]
        ANDS     R1,R1,#0xEF
        CMP      R1,#+0
        BEQ.N    ??FLASH_GetStatus_3
        MOVS     R1,#+6
        MOVS     R0,R1
        B.N      ??FLASH_GetStatus_1
??FLASH_GetStatus_3:
        LDR.N    R1,??DataTable43_14  ;; 0x40023c0c
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+30
        BPL.N    ??FLASH_GetStatus_4
        MOVS     R1,#+7
        MOVS     R0,R1
        B.N      ??FLASH_GetStatus_1
??FLASH_GetStatus_4:
        MOVS     R1,#+8
        MOVS     R0,R1
??FLASH_GetStatus_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable43:
        DC32     0x40023c00

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable43_1:
        DC32     0x40023c10

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable43_2:
        DC32     0x40023c04

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable43_3:
        DC32     0x45670123

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable43_4:
        DC32     0xcdef89ab

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable43_5:
        DC32     0x80fffff

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable43_6:
        DC32     0x1fff7800

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable43_7:
        DC32     0x1fff7a0f

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable43_8:
        DC32     0x40023c14

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable43_9:
        DC32     0x40023c08

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable43_10:
        DC32     0x8192a3b

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable43_11:
        DC32     0x4c5d6e7f

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable43_12:
        DC32     0x40023c16

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable43_13:
        DC32     0x40023c15

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable43_14:
        DC32     0x40023c0c

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_WaitForLastOperation:
        PUSH     {R7,LR}
        MOVS     R0,#+8
        STRB     R0,[SP, #+0]
        BL       FLASH_GetStatus
        STRB     R0,[SP, #+0]
??FLASH_WaitForLastOperation_0:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+1
        BNE.N    ??FLASH_WaitForLastOperation_1
        BL       FLASH_GetStatus
        STRB     R0,[SP, #+0]
        B.N      ??FLASH_WaitForLastOperation_0
??FLASH_WaitForLastOperation_1:
        LDRB     R0,[SP, #+0]
        POP      {R1,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_FLASH_LATENCY(FLAS...">`:
        ; Initializer data, 32 bytes
        DC8 73, 83, 95, 70, 76, 65, 83, 72, 95, 76
        DC8 65, 84, 69, 78, 67, 89, 40, 70, 76, 65
        DC8 83, 72, 95, 76, 97, 116, 101, 110, 99, 121
        DC8 41, 0

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
        DC8 116, 109, 51, 50, 102, 50, 120, 120, 95, 102
        DC8 108, 97, 115, 104, 46, 99, 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_FUNCTIONAL_STATE(N...">`:
        ; Initializer data, 32 bytes
        DC8 73, 83, 95, 70, 85, 78, 67, 84, 73, 79
        DC8 78, 65, 76, 95, 83, 84, 65, 84, 69, 40
        DC8 78, 101, 119, 83, 116, 97, 116, 101, 41, 0
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_FLASH_SECTOR(FLASH...">`:
        ; Initializer data, 32 bytes
        DC8 73, 83, 95, 70, 76, 65, 83, 72, 95, 83
        DC8 69, 67, 84, 79, 82, 40, 70, 76, 65, 83
        DC8 72, 95, 83, 101, 99, 116, 111, 114, 41, 0
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_VOLTAGERANGE(Volta...">`:
        ; Initializer data, 32 bytes
        DC8 73, 83, 95, 86, 79, 76, 84, 65, 71, 69
        DC8 82, 65, 78, 71, 69, 40, 86, 111, 108, 116
        DC8 97, 103, 101, 82, 97, 110, 103, 101, 41, 0
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_FLASH_ADDRESS(Addr...">`:
        ; Initializer data, 28 bytes
        DC8 73, 83, 95, 70, 76, 65, 83, 72, 95, 65
        DC8 68, 68, 82, 69, 83, 83, 40, 65, 100, 100
        DC8 114, 101, 115, 115, 41, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_OB_WRP(OB_WRP)">`:
        ; Initializer data, 20 bytes
        DC8 73, 83, 95, 79, 66, 95, 87, 82, 80, 40
        DC8 79, 66, 95, 87, 82, 80, 41, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_OB_RDP(OB_RDP)">`:
        ; Initializer data, 20 bytes
        DC8 73, 83, 95, 79, 66, 95, 82, 68, 80, 40
        DC8 79, 66, 95, 82, 68, 80, 41, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_OB_IWDG_SOURCE(OB_...">`:
        ; Initializer data, 28 bytes
        DC8 73, 83, 95, 79, 66, 95, 73, 87, 68, 71
        DC8 95, 83, 79, 85, 82, 67, 69, 40, 79, 66
        DC8 95, 73, 87, 68, 71, 41, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_OB_STOP_SOURCE(OB_...">`:
        ; Initializer data, 28 bytes
        DC8 73, 83, 95, 79, 66, 95, 83, 84, 79, 80
        DC8 95, 83, 79, 85, 82, 67, 69, 40, 79, 66
        DC8 95, 83, 84, 79, 80, 41, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_OB_STDBY_SOURCE(OB...">`:
        ; Initializer data, 32 bytes
        DC8 73, 83, 95, 79, 66, 95, 83, 84, 68, 66
        DC8 89, 95, 83, 79, 85, 82, 67, 69, 40, 79
        DC8 66, 95, 83, 84, 68, 66, 89, 41, 0, 0
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_OB_BOR(OB_BOR)">`:
        ; Initializer data, 20 bytes
        DC8 73, 83, 95, 79, 66, 95, 66, 79, 82, 40
        DC8 79, 66, 95, 66, 79, 82, 41, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_FLASH_IT(FLASH_IT)">`:
        ; Initializer data, 24 bytes
        DC8 73, 83, 95, 70, 76, 65, 83, 72, 95, 73
        DC8 84, 40, 70, 76, 65, 83, 72, 95, 73, 84
        DC8 41, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_FLASH_GET_FLAG(FLA...">`:
        ; Initializer data, 32 bytes
        DC8 73, 83, 95, 70, 76, 65, 83, 72, 95, 71
        DC8 69, 84, 95, 70, 76, 65, 71, 40, 70, 76
        DC8 65, 83, 72, 95, 70, 76, 65, 71, 41, 0
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_FLASH_CLEAR_FLAG(F...">`:
        ; Initializer data, 32 bytes
        DC8 73, 83, 95, 70, 76, 65, 83, 72, 95, 67
        DC8 76, 69, 65, 82, 95, 70, 76, 65, 71, 40
        DC8 70, 76, 65, 83, 72, 95, 70, 76, 65, 71
        DC8 41, 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)

        END
// 
// 2 960 bytes in section .text
// 
// 2 960 bytes of CODE memory
//
//Errors: none
//Warnings: none
