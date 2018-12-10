///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.10.2.52244/W32 for ARM    04/Dec/2013  10:58:10 /
// Copyright 1999-2010 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\STM32F2xx_StdPeriph_Driver\src\stm32f /
//                    2xx_hash.c                                              /
//    Command line =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\STM32F2xx_StdPeriph_Driver\src\stm32f /
//                    2xx_hash.c -D STM32F10X_CL -D USE_STDPERIPH_DRIVER      /
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
//                    IAR6.1\STM32_Boot\EWARM\Debug\List\stm32f2xx_hash.s     /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f2xx_hash

        EXTERN RCC_AHB2PeriphResetCmd
        EXTERN __aeabi_assert
        EXTERN __iar_EmptyStepPoint

        PUBLIC HASH_ClearFlag
        PUBLIC HASH_ClearITPendingBit
        PUBLIC HASH_DMACmd
        PUBLIC HASH_DataIn
        PUBLIC HASH_DeInit
        PUBLIC HASH_GetDigest
        PUBLIC HASH_GetFlagStatus
        PUBLIC HASH_GetITStatus
        PUBLIC HASH_GetInFIFOWordsNbr
        PUBLIC HASH_ITConfig
        PUBLIC HASH_Init
        PUBLIC HASH_Reset
        PUBLIC HASH_RestoreContext
        PUBLIC HASH_SaveContext
        PUBLIC HASH_SetLastWordValidBitsNbr
        PUBLIC HASH_StartDigest
        PUBLIC HASH_StructInit


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
HASH_DeInit:
        PUSH     {R7,LR}
        MOVS     R1,#+1
        MOVS     R0,#+32
        BL       RCC_AHB2PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+32
        BL       RCC_AHB2PeriphResetCmd
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
HASH_Init:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR      R0,[R4, #+0]
        CMP      R0,#+0
        BEQ.N    ??HASH_Init_0
        LDR      R0,[R4, #+0]
        CMP      R0,#+128
        BEQ.N    ??HASH_Init_0
        MOVS     R2,#+194
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_HASH_ALGOSELECTION...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??HASH_Init_0:
        LDR      R0,[R4, #+8]
        CMP      R0,#+0
        BEQ.N    ??HASH_Init_1
        LDR      R0,[R4, #+8]
        CMP      R0,#+16
        BEQ.N    ??HASH_Init_1
        LDR      R0,[R4, #+8]
        CMP      R0,#+32
        BEQ.N    ??HASH_Init_1
        LDR      R0,[R4, #+8]
        CMP      R0,#+48
        BEQ.N    ??HASH_Init_1
        MOVS     R2,#+195
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_HASH_DATATYPE(HASH...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??HASH_Init_1:
        LDR      R0,[R4, #+4]
        CMP      R0,#+0
        BEQ.N    ??HASH_Init_2
        LDR      R0,[R4, #+4]
        CMP      R0,#+64
        BEQ.N    ??HASH_Init_2
        MOVS     R2,#+196
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_HASH_ALGOMODE(HASH...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??HASH_Init_2:
        LDR.W    R0,??DataTable25  ;; 0x50060400
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0xF0
        LDR.N    R1,??DataTable25  ;; 0x50060400
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable25  ;; 0x50060400
        LDR      R0,[R0, #+0]
        LDR      R1,[R4, #+0]
        LDR      R2,[R4, #+8]
        ORRS     R1,R2,R1
        LDR      R2,[R4, #+4]
        ORRS     R1,R2,R1
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable25  ;; 0x50060400
        STR      R0,[R1, #+0]
        LDR      R0,[R4, #+4]
        CMP      R0,#+64
        BNE.N    ??HASH_Init_3
        LDR      R0,[R4, #+12]
        CMP      R0,#+0
        BEQ.N    ??HASH_Init_4
        LDR      R0,[R4, #+12]
        CMP      R0,#+65536
        BEQ.N    ??HASH_Init_4
        MOVS     R2,#+207
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_HASH_HMAC_KEYTYPE(...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??HASH_Init_4:
        LDR.N    R0,??DataTable25  ;; 0x50060400
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x10000
        LDR.N    R1,??DataTable25  ;; 0x50060400
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable25  ;; 0x50060400
        LDR      R0,[R0, #+0]
        LDR      R1,[R4, #+12]
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable25  ;; 0x50060400
        STR      R0,[R1, #+0]
??HASH_Init_3:
        LDR.N    R0,??DataTable25  ;; 0x50060400
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.N    R1,??DataTable25  ;; 0x50060400
        STR      R0,[R1, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
HASH_StructInit:
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
HASH_Reset:
        LDR.N    R0,??DataTable25  ;; 0x50060400
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.N    R1,??DataTable25  ;; 0x50060400
        STR      R0,[R1, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
HASH_SetLastWordValidBitsNbr:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+32
        BCC.N    ??HASH_SetLastWordValidBitsNbr_0
        MOV      R2,#+294
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_HASH_VALIDBITSNUMB...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??HASH_SetLastWordValidBitsNbr_0:
        LDR.N    R0,??DataTable25_1  ;; 0x50060408
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+5
        LSLS     R0,R0,#+5
        LDR.N    R1,??DataTable25_1  ;; 0x50060408
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable25_1  ;; 0x50060408
        LDR      R0,[R0, #+0]
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        ORRS     R0,R4,R0
        LDR.N    R1,??DataTable25_1  ;; 0x50060408
        STR      R0,[R1, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
HASH_DataIn:
        LDR.N    R1,??DataTable25_2  ;; 0x50060404
        STR      R0,[R1, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
HASH_GetInFIFOWordsNbr:
        LDR.N    R0,??DataTable25  ;; 0x50060400
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+8
        ANDS     R0,R0,#0xF
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
HASH_GetDigest:
        LDR.N    R1,??DataTable25_3  ;; 0x5006040c
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
        LDR.N    R1,??DataTable25_4  ;; 0x50060410
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+4]
        LDR.N    R1,??DataTable25_5  ;; 0x50060414
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+8]
        LDR.N    R1,??DataTable25_6  ;; 0x50060418
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+12]
        LDR.N    R1,??DataTable25_7  ;; 0x5006041c
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+16]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
HASH_StartDigest:
        LDR.N    R0,??DataTable25_1  ;; 0x50060408
        LDR      R0,[R0, #+0]
        MOV      R1,#+256
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable25_1  ;; 0x50060408
        STR      R0,[R1, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
HASH_SaveContext:
        MOVS     R1,#+0
        LDR.N    R2,??DataTable25_8  ;; 0x50060420
        LDR      R2,[R2, #+0]
        STR      R2,[R0, #+0]
        LDR.N    R2,??DataTable25_1  ;; 0x50060408
        LDR      R2,[R2, #+0]
        STR      R2,[R0, #+4]
        LDR.N    R2,??DataTable25  ;; 0x50060400
        LDR      R2,[R2, #+0]
        STR      R2,[R0, #+8]
        MOVS     R2,#+0
        MOVS     R1,R2
??HASH_SaveContext_0:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+51
        BCS.N    ??HASH_SaveContext_1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R2,R0,R1, LSL #+2
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R3,??DataTable25_9  ;; 0x500604f8
        LDR      R3,[R3, R1, LSL #+2]
        STR      R3,[R2, #+12]
        ADDS     R1,R1,#+1
        B.N      ??HASH_SaveContext_0
??HASH_SaveContext_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
HASH_RestoreContext:
        MOVS     R1,#+0
        LDR.N    R2,??DataTable25_8  ;; 0x50060420
        LDR      R3,[R0, #+0]
        STR      R3,[R2, #+0]
        LDR      R2,[R0, #+4]
        LDR.N    R3,??DataTable25_1  ;; 0x50060408
        STR      R2,[R3, #+0]
        LDR      R2,[R0, #+8]
        LDR.N    R3,??DataTable25  ;; 0x50060400
        STR      R2,[R3, #+0]
        LDR.N    R2,??DataTable25  ;; 0x50060400
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x4
        LDR.N    R3,??DataTable25  ;; 0x50060400
        STR      R2,[R3, #+0]
        MOVS     R2,#+0
        MOVS     R1,R2
??HASH_RestoreContext_0:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+51
        BCS.N    ??HASH_RestoreContext_1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R2,R0,R1, LSL #+2
        LDR      R2,[R2, #+12]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R3,??DataTable25_9  ;; 0x500604f8
        STR      R2,[R3, R1, LSL #+2]
        ADDS     R1,R1,#+1
        B.N      ??HASH_RestoreContext_0
??HASH_RestoreContext_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
HASH_DMACmd:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??HASH_DMACmd_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??HASH_DMACmd_0
        MOVW     R2,#+463
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??HASH_DMACmd_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??HASH_DMACmd_1
        LDR.N    R0,??DataTable25  ;; 0x50060400
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8
        LDR.N    R1,??DataTable25  ;; 0x50060400
        STR      R0,[R1, #+0]
        B.N      ??HASH_DMACmd_2
??HASH_DMACmd_1:
        LDR.N    R0,??DataTable25  ;; 0x50060400
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x8
        LDR.N    R1,??DataTable25  ;; 0x50060400
        STR      R0,[R1, #+0]
??HASH_DMACmd_2:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
HASH_ITConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R0,#+252
        TST      R4,R0
        BNE.N    ??HASH_ITConfig_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??HASH_ITConfig_1
??HASH_ITConfig_0:
        MOVW     R2,#+558
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_HASH_IT(HASH_IT)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??HASH_ITConfig_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??HASH_ITConfig_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??HASH_ITConfig_2
        MOVW     R2,#+559
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??HASH_ITConfig_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??HASH_ITConfig_3
        LDR.N    R0,??DataTable25_8  ;; 0x50060420
        LDR      R0,[R0, #+0]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ORRS     R0,R4,R0
        LDR.N    R1,??DataTable25_8  ;; 0x50060420
        STR      R0,[R1, #+0]
        B.N      ??HASH_ITConfig_4
??HASH_ITConfig_3:
        LDR.N    R0,??DataTable25_8  ;; 0x50060420
        LDR      R0,[R0, #+0]
        MVNS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ANDS     R0,R1,R0
        LDR.N    R1,??DataTable25_8  ;; 0x50060420
        STR      R0,[R1, #+0]
??HASH_ITConfig_4:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
HASH_GetFlagStatus:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        MOVS     R6,#+0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+1
        BEQ.N    ??HASH_GetFlagStatus_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+2
        BEQ.N    ??HASH_GetFlagStatus_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+4
        BEQ.N    ??HASH_GetFlagStatus_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+8
        BEQ.N    ??HASH_GetFlagStatus_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+4096
        BEQ.N    ??HASH_GetFlagStatus_0
        MOVW     R2,#+590
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_HASH_GET_FLAG(HASH...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??HASH_GetFlagStatus_0:
        LSLS     R0,R4,#+19
        BPL.N    ??HASH_GetFlagStatus_1
        LDR.N    R0,??DataTable25  ;; 0x50060400
        LDR      R0,[R0, #+0]
        MOVS     R6,R0
        B.N      ??HASH_GetFlagStatus_2
??HASH_GetFlagStatus_1:
        LDR.N    R0,??DataTable25_10  ;; 0x50060424
        LDR      R0,[R0, #+0]
        MOVS     R6,R0
??HASH_GetFlagStatus_2:
        MOVS     R0,R6
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        TST      R0,R4
        BEQ.N    ??HASH_GetFlagStatus_3
        MOVS     R0,#+1
        MOVS     R5,R0
        B.N      ??HASH_GetFlagStatus_4
??HASH_GetFlagStatus_3:
        MOVS     R0,#+0
        MOVS     R5,R0
??HASH_GetFlagStatus_4:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
HASH_ClearFlag:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+1
        BEQ.N    ??HASH_ClearFlag_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+2
        BEQ.N    ??HASH_ClearFlag_0
        MOV      R2,#+628
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_HASH_CLEAR_FLAG(HA...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??HASH_ClearFlag_0:
        LDR.N    R0,??DataTable25_10  ;; 0x50060424
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        MVNS     R1,R4
        STR      R1,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
HASH_GetITStatus:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        MOVS     R6,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??HASH_GetITStatus_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BEQ.N    ??HASH_GetITStatus_0
        MOVW     R2,#+647
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_HASH_GET_IT(HASH_IT)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??HASH_GetITStatus_0:
        LDR.N    R0,??DataTable25_10  ;; 0x50060424
        LDR      R0,[R0, #+0]
        MOVS     R6,R0
        LDR.N    R0,??DataTable25_8  ;; 0x50060420
        LDR      R0,[R0, #+0]
        ANDS     R0,R6,R0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        TST      R0,R4
        BEQ.N    ??HASH_GetITStatus_1
        MOVS     R0,#+1
        MOVS     R5,R0
        B.N      ??HASH_GetITStatus_2
??HASH_GetITStatus_1:
        MOVS     R0,#+0
        MOVS     R5,R0
??HASH_GetITStatus_2:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
HASH_ClearITPendingBit:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOVS     R0,#+252
        TST      R4,R0
        BNE.N    ??HASH_ClearITPendingBit_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??HASH_ClearITPendingBit_1
??HASH_ClearITPendingBit_0:
        MOVW     R2,#+678
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_HASH_IT(HASH_IT)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??HASH_ClearITPendingBit_1:
        MVNS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable25_10  ;; 0x50060424
        STR      R0,[R1, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable25:
        DC32     0x50060400

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable25_1:
        DC32     0x50060408

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable25_2:
        DC32     0x50060404

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable25_3:
        DC32     0x5006040c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable25_4:
        DC32     0x50060410

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable25_5:
        DC32     0x50060414

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable25_6:
        DC32     0x50060418

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable25_7:
        DC32     0x5006041c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable25_8:
        DC32     0x50060420

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable25_9:
        DC32     0x500604f8

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable25_10:
        DC32     0x50060424

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_HASH_ALGOSELECTION...">`:
        ; Initializer data, 60 bytes
        DC8 73, 83, 95, 72, 65, 83, 72, 95, 65, 76
        DC8 71, 79, 83, 69, 76, 69, 67, 84, 73, 79
        DC8 78, 40, 72, 65, 83, 72, 95, 73, 110, 105
        DC8 116, 83, 116, 114, 117, 99, 116, 45, 62, 72
        DC8 65, 83, 72, 95, 65, 108, 103, 111, 83, 101
        DC8 108, 101, 99, 116, 105, 111, 110, 41, 0, 0

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
        DC8 116, 109, 51, 50, 102, 50, 120, 120, 95, 104
        DC8 97, 115, 104, 46, 99, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_HASH_DATATYPE(HASH...">`:
        ; Initializer data, 52 bytes
        DC8 73, 83, 95, 72, 65, 83, 72, 95, 68, 65
        DC8 84, 65, 84, 89, 80, 69, 40, 72, 65, 83
        DC8 72, 95, 73, 110, 105, 116, 83, 116, 114, 117
        DC8 99, 116, 45, 62, 72, 65, 83, 72, 95, 68
        DC8 97, 116, 97, 84, 121, 112, 101, 41, 0, 0
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_HASH_ALGOMODE(HASH...">`:
        ; Initializer data, 52 bytes
        DC8 73, 83, 95, 72, 65, 83, 72, 95, 65, 76
        DC8 71, 79, 77, 79, 68, 69, 40, 72, 65, 83
        DC8 72, 95, 73, 110, 105, 116, 83, 116, 114, 117
        DC8 99, 116, 45, 62, 72, 65, 83, 72, 95, 65
        DC8 108, 103, 111, 77, 111, 100, 101, 41, 0, 0
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_HASH_HMAC_KEYTYPE(...">`:
        ; Initializer data, 56 bytes
        DC8 73, 83, 95, 72, 65, 83, 72, 95, 72, 77
        DC8 65, 67, 95, 75, 69, 89, 84, 89, 80, 69
        DC8 40, 72, 65, 83, 72, 95, 73, 110, 105, 116
        DC8 83, 116, 114, 117, 99, 116, 45, 62, 72, 65
        DC8 83, 72, 95, 72, 77, 65, 67, 75, 101, 121
        DC8 84, 121, 112, 101, 41, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_HASH_VALIDBITSNUMB...">`:
        ; Initializer data, 40 bytes
        DC8 73, 83, 95, 72, 65, 83, 72, 95, 86, 65
        DC8 76, 73, 68, 66, 73, 84, 83, 78, 85, 77
        DC8 66, 69, 82, 40, 86, 97, 108, 105, 100, 78
        DC8 117, 109, 98, 101, 114, 41, 0, 0, 0, 0

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
`?<Constant "IS_HASH_IT(HASH_IT)">`:
        ; Initializer data, 20 bytes
        DC8 73, 83, 95, 72, 65, 83, 72, 95, 73, 84
        DC8 40, 72, 65, 83, 72, 95, 73, 84, 41, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_HASH_GET_FLAG(HASH...">`:
        ; Initializer data, 28 bytes
        DC8 73, 83, 95, 72, 65, 83, 72, 95, 71, 69
        DC8 84, 95, 70, 76, 65, 71, 40, 72, 65, 83
        DC8 72, 95, 70, 76, 65, 71, 41, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_HASH_CLEAR_FLAG(HA...">`:
        ; Initializer data, 32 bytes
        DC8 73, 83, 95, 72, 65, 83, 72, 95, 67, 76
        DC8 69, 65, 82, 95, 70, 76, 65, 71, 40, 72
        DC8 65, 83, 72, 95, 70, 76, 65, 71, 41, 0
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_HASH_GET_IT(HASH_IT)">`:
        ; Initializer data, 24 bytes
        DC8 73, 83, 95, 72, 65, 83, 72, 95, 71, 69
        DC8 84, 95, 73, 84, 40, 72, 65, 83, 72, 95
        DC8 73, 84, 41, 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)

        END
// 
// 1 566 bytes in section .text
// 
// 1 566 bytes of CODE memory
//
//Errors: none
//Warnings: none
