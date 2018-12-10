///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.10.2.52244/W32 for ARM    04/Dec/2013  10:58:13 /
// Copyright 1999-2010 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\STM32F2xx_StdPeriph_Driver\src\stm32f /
//                    2xx_sdio.c                                              /
//    Command line =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\STM32F2xx_StdPeriph_Driver\src\stm32f /
//                    2xx_sdio.c -D STM32F10X_CL -D USE_STDPERIPH_DRIVER      /
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
//                    IAR6.1\STM32_Boot\EWARM\Debug\List\stm32f2xx_sdio.s     /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f2xx_sdio

        EXTERN RCC_APB2PeriphResetCmd
        EXTERN __aeabi_assert
        EXTERN __iar_EmptyStepPoint

        PUBLIC SDIO_CEATAITCmd
        PUBLIC SDIO_ClearFlag
        PUBLIC SDIO_ClearITPendingBit
        PUBLIC SDIO_ClockCmd
        PUBLIC SDIO_CmdStructInit
        PUBLIC SDIO_CommandCompletionCmd
        PUBLIC SDIO_DMACmd
        PUBLIC SDIO_DataConfig
        PUBLIC SDIO_DataStructInit
        PUBLIC SDIO_DeInit
        PUBLIC SDIO_GetCommandResponse
        PUBLIC SDIO_GetDataCounter
        PUBLIC SDIO_GetFIFOCount
        PUBLIC SDIO_GetFlagStatus
        PUBLIC SDIO_GetITStatus
        PUBLIC SDIO_GetPowerState
        PUBLIC SDIO_GetResponse
        PUBLIC SDIO_ITConfig
        PUBLIC SDIO_Init
        PUBLIC SDIO_ReadData
        PUBLIC SDIO_SendCEATACmd
        PUBLIC SDIO_SendCommand
        PUBLIC SDIO_SendSDIOSuspendCmd
        PUBLIC SDIO_SetPowerState
        PUBLIC SDIO_SetSDIOOperation
        PUBLIC SDIO_SetSDIOReadWaitMode
        PUBLIC SDIO_StartSDIOReadWait
        PUBLIC SDIO_StopSDIOReadWait
        PUBLIC SDIO_StructInit
        PUBLIC SDIO_WriteData


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_DeInit:
        PUSH     {R7,LR}
        MOVS     R1,#+1
        MOV      R0,#+2048
        BL       RCC_APB2PeriphResetCmd
        MOVS     R1,#+0
        MOV      R0,#+2048
        BL       RCC_APB2PeriphResetCmd
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_Init:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        LDR      R0,[R4, #+0]
        CMP      R0,#+0
        BEQ.N    ??SDIO_Init_0
        LDR      R0,[R4, #+0]
        CMP      R0,#+8192
        BEQ.N    ??SDIO_Init_0
        MOVW     R2,#+277
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SDIO_CLOCK_EDGE(SD...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SDIO_Init_0:
        LDR      R0,[R4, #+4]
        CMP      R0,#+0
        BEQ.N    ??SDIO_Init_1
        LDR      R0,[R4, #+4]
        CMP      R0,#+1024
        BEQ.N    ??SDIO_Init_1
        MOV      R2,#+278
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SDIO_CLOCK_BYPASS(...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SDIO_Init_1:
        LDR      R0,[R4, #+8]
        CMP      R0,#+0
        BEQ.N    ??SDIO_Init_2
        LDR      R0,[R4, #+8]
        MOV      R1,#+512
        CMP      R0,R1
        BEQ.N    ??SDIO_Init_2
        MOVW     R2,#+279
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SDIO_CLOCK_POWER_S...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SDIO_Init_2:
        LDR      R0,[R4, #+12]
        CMP      R0,#+0
        BEQ.N    ??SDIO_Init_3
        LDR      R0,[R4, #+12]
        CMP      R0,#+2048
        BEQ.N    ??SDIO_Init_3
        LDR      R0,[R4, #+12]
        CMP      R0,#+4096
        BEQ.N    ??SDIO_Init_3
        MOV      R2,#+280
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SDIO_BUS_WIDE(SDIO...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SDIO_Init_3:
        LDR      R0,[R4, #+16]
        CMP      R0,#+0
        BEQ.N    ??SDIO_Init_4
        LDR      R0,[R4, #+16]
        CMP      R0,#+16384
        BEQ.N    ??SDIO_Init_4
        MOVW     R2,#+281
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SDIO_HARDWARE_FLOW...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SDIO_Init_4:
        LDR.W    R0,??DataTable49  ;; 0x40012c04
        LDR      R0,[R0, #+0]
        MOVS     R5,R0
        LDR.W    R0,??DataTable49_1  ;; 0xffff8100
        ANDS     R5,R0,R5
        LDRB     R0,[R4, #+20]
        LDR      R1,[R4, #+8]
        ORRS     R0,R1,R0
        LDR      R1,[R4, #+4]
        ORRS     R0,R1,R0
        LDR      R1,[R4, #+12]
        ORRS     R0,R1,R0
        LDR      R1,[R4, #+0]
        ORRS     R0,R1,R0
        LDR      R1,[R4, #+16]
        ORRS     R0,R1,R0
        ORRS     R5,R0,R5
        LDR.W    R0,??DataTable49  ;; 0x40012c04
        STR      R5,[R0, #+0]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_StructInit:
        MOVS     R1,#+0
        STRB     R1,[R0, #+20]
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_ClockCmd:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??SDIO_ClockCmd_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??SDIO_ClockCmd_0
        MOV      R2,#+330
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SDIO_ClockCmd_0:
        LDR.W    R0,??DataTable49_2  ;; 0x422580a0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_SetPowerState:
        PUSH     {R4,LR}
        MOVS     R4,R0
        CMP      R4,#+0
        BEQ.N    ??SDIO_SetPowerState_0
        CMP      R4,#+3
        BEQ.N    ??SDIO_SetPowerState_0
        MOV      R2,#+346
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SDIO_POWER_STATE(S...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SDIO_SetPowerState_0:
        LDR.W    R0,??DataTable49_3  ;; 0x40012c00
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+2
        LSLS     R0,R0,#+2
        LDR.W    R1,??DataTable49_3  ;; 0x40012c00
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable49_3  ;; 0x40012c00
        LDR      R0,[R0, #+0]
        ORRS     R0,R4,R0
        LDR.W    R1,??DataTable49_3  ;; 0x40012c00
        STR      R0,[R1, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_GetPowerState:
        LDR.W    R0,??DataTable49_3  ;; 0x40012c00
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x3
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_SendCommand:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        LDR      R0,[R4, #+4]
        CMP      R0,#+64
        BCC.N    ??SDIO_SendCommand_0
        MOV      R2,#+398
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SDIO_CMD_INDEX(SDI...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SDIO_SendCommand_0:
        LDR      R0,[R4, #+8]
        CMP      R0,#+0
        BEQ.N    ??SDIO_SendCommand_1
        LDR      R0,[R4, #+8]
        CMP      R0,#+64
        BEQ.N    ??SDIO_SendCommand_1
        LDR      R0,[R4, #+8]
        CMP      R0,#+192
        BEQ.N    ??SDIO_SendCommand_1
        MOVW     R2,#+399
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SDIO_RESPONSE(SDIO...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SDIO_SendCommand_1:
        LDR      R0,[R4, #+12]
        CMP      R0,#+0
        BEQ.N    ??SDIO_SendCommand_2
        LDR      R0,[R4, #+12]
        MOV      R1,#+256
        CMP      R0,R1
        BEQ.N    ??SDIO_SendCommand_2
        LDR      R0,[R4, #+12]
        MOV      R1,#+512
        CMP      R0,R1
        BEQ.N    ??SDIO_SendCommand_2
        MOV      R2,#+400
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SDIO_WAIT(SDIO_Cmd...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SDIO_SendCommand_2:
        LDR      R0,[R4, #+16]
        CMP      R0,#+1024
        BEQ.N    ??SDIO_SendCommand_3
        LDR      R0,[R4, #+16]
        CMP      R0,#+0
        BEQ.N    ??SDIO_SendCommand_3
        MOVW     R2,#+401
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SDIO_CPSM(SDIO_Cmd...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SDIO_SendCommand_3:
        LDR.W    R0,??DataTable49_4  ;; 0x40012c08
        LDR      R1,[R4, #+0]
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable49_5  ;; 0x40012c0c
        LDR      R0,[R0, #+0]
        MOVS     R5,R0
        LSRS     R5,R5,#+11
        LSLS     R5,R5,#+11
        LDR      R0,[R4, #+4]
        LDR      R1,[R4, #+8]
        ORRS     R0,R1,R0
        LDR      R1,[R4, #+12]
        ORRS     R0,R1,R0
        LDR      R1,[R4, #+16]
        ORRS     R0,R1,R0
        ORRS     R5,R0,R5
        LDR.W    R0,??DataTable49_5  ;; 0x40012c0c
        STR      R5,[R0, #+0]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_CmdStructInit:
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_GetCommandResponse:
        LDR.W    R0,??DataTable49_6  ;; 0x40012c10
        LDR      R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_GetResponse:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        CMP      R4,#+0
        BEQ.N    ??SDIO_GetResponse_0
        CMP      R4,#+4
        BEQ.N    ??SDIO_GetResponse_0
        CMP      R4,#+8
        BEQ.N    ??SDIO_GetResponse_0
        CMP      R4,#+12
        BEQ.N    ??SDIO_GetResponse_0
        MOV      R2,#+464
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SDIO_RESP(SDIO_RESP)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SDIO_GetResponse_0:
        LDR.W    R0,??DataTable49_7  ;; 0x40012c14
        ADDS     R0,R0,R4
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        LDR      R0,[R0, #+0]
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_DataConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        LDR      R0,[R4, #+4]
        CMP      R0,#+33554432
        BCC.N    ??SDIO_DataConfig_0
        MOV      R2,#+502
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SDIO_DATA_LENGTH(S...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SDIO_DataConfig_0:
        LDR      R0,[R4, #+8]
        CMP      R0,#+0
        BEQ.N    ??SDIO_DataConfig_1
        LDR      R0,[R4, #+8]
        CMP      R0,#+16
        BEQ.N    ??SDIO_DataConfig_1
        LDR      R0,[R4, #+8]
        CMP      R0,#+32
        BEQ.N    ??SDIO_DataConfig_1
        LDR      R0,[R4, #+8]
        CMP      R0,#+48
        BEQ.N    ??SDIO_DataConfig_1
        LDR      R0,[R4, #+8]
        CMP      R0,#+64
        BEQ.N    ??SDIO_DataConfig_1
        LDR      R0,[R4, #+8]
        CMP      R0,#+80
        BEQ.N    ??SDIO_DataConfig_1
        LDR      R0,[R4, #+8]
        CMP      R0,#+96
        BEQ.N    ??SDIO_DataConfig_1
        LDR      R0,[R4, #+8]
        CMP      R0,#+112
        BEQ.N    ??SDIO_DataConfig_1
        LDR      R0,[R4, #+8]
        CMP      R0,#+128
        BEQ.N    ??SDIO_DataConfig_1
        LDR      R0,[R4, #+8]
        CMP      R0,#+144
        BEQ.N    ??SDIO_DataConfig_1
        LDR      R0,[R4, #+8]
        CMP      R0,#+160
        BEQ.N    ??SDIO_DataConfig_1
        LDR      R0,[R4, #+8]
        CMP      R0,#+176
        BEQ.N    ??SDIO_DataConfig_1
        LDR      R0,[R4, #+8]
        CMP      R0,#+192
        BEQ.N    ??SDIO_DataConfig_1
        LDR      R0,[R4, #+8]
        CMP      R0,#+208
        BEQ.N    ??SDIO_DataConfig_1
        LDR      R0,[R4, #+8]
        CMP      R0,#+224
        BEQ.N    ??SDIO_DataConfig_1
        MOVW     R2,#+503
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SDIO_BLOCK_SIZE(SD...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SDIO_DataConfig_1:
        LDR      R0,[R4, #+12]
        CMP      R0,#+0
        BEQ.N    ??SDIO_DataConfig_2
        LDR      R0,[R4, #+12]
        CMP      R0,#+2
        BEQ.N    ??SDIO_DataConfig_2
        MOV      R2,#+504
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SDIO_TRANSFER_DIR(...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SDIO_DataConfig_2:
        LDR      R0,[R4, #+16]
        CMP      R0,#+4
        BEQ.N    ??SDIO_DataConfig_3
        LDR      R0,[R4, #+16]
        CMP      R0,#+0
        BEQ.N    ??SDIO_DataConfig_3
        MOVW     R2,#+505
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SDIO_TRANSFER_MODE...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SDIO_DataConfig_3:
        LDR      R0,[R4, #+20]
        CMP      R0,#+1
        BEQ.N    ??SDIO_DataConfig_4
        LDR      R0,[R4, #+20]
        CMP      R0,#+0
        BEQ.N    ??SDIO_DataConfig_4
        MOV      R2,#+506
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SDIO_DPSM(SDIO_Dat...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SDIO_DataConfig_4:
        LDR.W    R0,??DataTable49_8  ;; 0x40012c24
        LDR      R1,[R4, #+0]
        STR      R1,[R0, #+0]
        LDR      R0,[R4, #+4]
        LDR.W    R1,??DataTable49_9  ;; 0x40012c28
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable49_10  ;; 0x40012c2c
        LDR      R0,[R0, #+0]
        MOVS     R5,R0
        BICS     R5,R5,#0xF7
        LDR      R0,[R4, #+8]
        LDR      R1,[R4, #+12]
        ORRS     R0,R1,R0
        LDR      R1,[R4, #+16]
        ORRS     R0,R1,R0
        LDR      R1,[R4, #+20]
        ORRS     R0,R1,R0
        ORRS     R5,R0,R5
        LDR.W    R0,??DataTable49_10  ;; 0x40012c2c
        STR      R5,[R0, #+0]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_DataStructInit:
        MOVS     R1,#-1
        STR      R1,[R0, #+0]
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_GetDataCounter:
        LDR.W    R0,??DataTable49_11  ;; 0x40012c30
        LDR      R0,[R0, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_ReadData:
        LDR.W    R0,??DataTable49_12  ;; 0x40012c80
        LDR      R0,[R0, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_WriteData:
        LDR.W    R1,??DataTable49_12  ;; 0x40012c80
        STR      R0,[R1, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_GetFIFOCount:
        LDR.W    R0,??DataTable49_13  ;; 0x40012c48
        LDR      R0,[R0, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_StartSDIOReadWait:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??SDIO_StartSDIOReadWait_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??SDIO_StartSDIOReadWait_0
        MOV      R2,#+616
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SDIO_StartSDIOReadWait_0:
        LDR.W    R0,??DataTable49_14  ;; 0x422585a0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_StopSDIOReadWait:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??SDIO_StopSDIOReadWait_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??SDIO_StopSDIOReadWait_0
        MOVW     R2,#+630
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SDIO_StopSDIOReadWait_0:
        LDR.W    R0,??DataTable49_15  ;; 0x422585a4
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_SetSDIOReadWaitMode:
        PUSH     {R4,LR}
        MOVS     R4,R0
        CMP      R4,#+0
        BEQ.N    ??SDIO_SetSDIOReadWaitMode_0
        CMP      R4,#+1
        BEQ.N    ??SDIO_SetSDIOReadWaitMode_0
        MOVW     R2,#+646
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SDIO_READWAIT_MODE...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SDIO_SetSDIOReadWaitMode_0:
        LDR.W    R0,??DataTable49_16  ;; 0x422585a8
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_SetSDIOOperation:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??SDIO_SetSDIOOperation_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??SDIO_SetSDIOOperation_0
        MOV      R2,#+660
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SDIO_SetSDIOOperation_0:
        LDR.W    R0,??DataTable49_17  ;; 0x422585ac
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_SendSDIOSuspendCmd:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??SDIO_SendSDIOSuspendCmd_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??SDIO_SendSDIOSuspendCmd_0
        MOVW     R2,#+674
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SDIO_SendSDIOSuspendCmd_0:
        LDR.N    R0,??DataTable49_18  ;; 0x422581ac
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_CommandCompletionCmd:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??SDIO_CommandCompletionCmd_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??SDIO_CommandCompletionCmd_0
        MOVW     R2,#+706
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SDIO_CommandCompletionCmd_0:
        LDR.N    R0,??DataTable49_19  ;; 0x422581b0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_CEATAITCmd:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??SDIO_CEATAITCmd_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??SDIO_CEATAITCmd_0
        MOV      R2,#+720
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SDIO_CEATAITCmd_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MVNS     R0,R4
        ANDS     R0,R0,#0x1
        LDR.N    R1,??DataTable49_20  ;; 0x422581b4
        STR      R0,[R1, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_SendCEATACmd:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??SDIO_SendCEATACmd_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??SDIO_SendCEATACmd_0
        MOVW     R2,#+734
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SDIO_SendCEATACmd_0:
        LDR.N    R0,??DataTable49_21  ;; 0x422581b8
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_DMACmd:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??SDIO_DMACmd_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??SDIO_DMACmd_0
        MOVW     R2,#+766
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SDIO_DMACmd_0:
        LDR.N    R0,??DataTable49_22  ;; 0x4225858c
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_ITConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        TST      R4,#0xFF000000
        BNE.N    ??SDIO_ITConfig_0
        CMP      R4,#+0
        BNE.N    ??SDIO_ITConfig_1
??SDIO_ITConfig_0:
        MOV      R2,#+824
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SDIO_IT(SDIO_IT)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SDIO_ITConfig_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??SDIO_ITConfig_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??SDIO_ITConfig_2
        MOVW     R2,#+825
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SDIO_ITConfig_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??SDIO_ITConfig_3
        LDR.N    R0,??DataTable49_23  ;; 0x40012c3c
        LDR      R0,[R0, #+0]
        ORRS     R0,R4,R0
        LDR.N    R1,??DataTable49_23  ;; 0x40012c3c
        STR      R0,[R1, #+0]
        B.N      ??SDIO_ITConfig_4
??SDIO_ITConfig_3:
        LDR.N    R0,??DataTable49_23  ;; 0x40012c3c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,R4
        LDR.N    R1,??DataTable49_23  ;; 0x40012c3c
        STR      R0,[R1, #+0]
??SDIO_ITConfig_4:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_GetFlagStatus:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        CMP      R4,#+1
        BEQ.N    ??SDIO_GetFlagStatus_0
        CMP      R4,#+2
        BEQ.N    ??SDIO_GetFlagStatus_0
        CMP      R4,#+4
        BEQ.N    ??SDIO_GetFlagStatus_0
        CMP      R4,#+8
        BEQ.N    ??SDIO_GetFlagStatus_0
        CMP      R4,#+16
        BEQ.N    ??SDIO_GetFlagStatus_0
        CMP      R4,#+32
        BEQ.N    ??SDIO_GetFlagStatus_0
        CMP      R4,#+64
        BEQ.N    ??SDIO_GetFlagStatus_0
        CMP      R4,#+128
        BEQ.N    ??SDIO_GetFlagStatus_0
        MOV      R0,#+256
        CMP      R4,R0
        BEQ.N    ??SDIO_GetFlagStatus_0
        MOV      R0,#+512
        CMP      R4,R0
        BEQ.N    ??SDIO_GetFlagStatus_0
        CMP      R4,#+1024
        BEQ.N    ??SDIO_GetFlagStatus_0
        CMP      R4,#+2048
        BEQ.N    ??SDIO_GetFlagStatus_0
        CMP      R4,#+4096
        BEQ.N    ??SDIO_GetFlagStatus_0
        CMP      R4,#+8192
        BEQ.N    ??SDIO_GetFlagStatus_0
        CMP      R4,#+16384
        BEQ.N    ??SDIO_GetFlagStatus_0
        CMP      R4,#+32768
        BEQ.N    ??SDIO_GetFlagStatus_0
        CMP      R4,#+65536
        BEQ.N    ??SDIO_GetFlagStatus_0
        CMP      R4,#+131072
        BEQ.N    ??SDIO_GetFlagStatus_0
        CMP      R4,#+262144
        BEQ.N    ??SDIO_GetFlagStatus_0
        CMP      R4,#+524288
        BEQ.N    ??SDIO_GetFlagStatus_0
        CMP      R4,#+1048576
        BEQ.N    ??SDIO_GetFlagStatus_0
        CMP      R4,#+2097152
        BEQ.N    ??SDIO_GetFlagStatus_0
        CMP      R4,#+4194304
        BEQ.N    ??SDIO_GetFlagStatus_0
        CMP      R4,#+8388608
        BEQ.N    ??SDIO_GetFlagStatus_0
        MOVW     R2,#+874
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SDIO_FLAG(SDIO_FLAG)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SDIO_GetFlagStatus_0:
        LDR.N    R0,??DataTable49_24  ;; 0x40012c34
        LDR      R0,[R0, #+0]
        TST      R0,R4
        BEQ.N    ??SDIO_GetFlagStatus_1
        MOVS     R0,#+1
        MOVS     R5,R0
        B.N      ??SDIO_GetFlagStatus_2
??SDIO_GetFlagStatus_1:
        MOVS     R0,#+0
        MOVS     R5,R0
??SDIO_GetFlagStatus_2:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_ClearFlag:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.N    R0,??DataTable49_25  ;; 0xff3ff800
        TST      R4,R0
        BNE.N    ??SDIO_ClearFlag_0
        CMP      R4,#+0
        BNE.N    ??SDIO_ClearFlag_1
??SDIO_ClearFlag_0:
        MOVW     R2,#+909
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SDIO_CLEAR_FLAG(SD...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SDIO_ClearFlag_1:
        LDR.N    R0,??DataTable49_26  ;; 0x40012c38
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_GetITStatus:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        CMP      R4,#+1
        BEQ.N    ??SDIO_GetITStatus_0
        CMP      R4,#+2
        BEQ.N    ??SDIO_GetITStatus_0
        CMP      R4,#+4
        BEQ.N    ??SDIO_GetITStatus_0
        CMP      R4,#+8
        BEQ.N    ??SDIO_GetITStatus_0
        CMP      R4,#+16
        BEQ.N    ??SDIO_GetITStatus_0
        CMP      R4,#+32
        BEQ.N    ??SDIO_GetITStatus_0
        CMP      R4,#+64
        BEQ.N    ??SDIO_GetITStatus_0
        CMP      R4,#+128
        BEQ.N    ??SDIO_GetITStatus_0
        MOV      R0,#+256
        CMP      R4,R0
        BEQ.N    ??SDIO_GetITStatus_0
        MOV      R0,#+512
        CMP      R4,R0
        BEQ.N    ??SDIO_GetITStatus_0
        CMP      R4,#+1024
        BEQ.N    ??SDIO_GetITStatus_0
        CMP      R4,#+2048
        BEQ.N    ??SDIO_GetITStatus_0
        CMP      R4,#+4096
        BEQ.N    ??SDIO_GetITStatus_0
        CMP      R4,#+8192
        BEQ.N    ??SDIO_GetITStatus_0
        CMP      R4,#+16384
        BEQ.N    ??SDIO_GetITStatus_0
        CMP      R4,#+32768
        BEQ.N    ??SDIO_GetITStatus_0
        CMP      R4,#+65536
        BEQ.N    ??SDIO_GetITStatus_0
        CMP      R4,#+131072
        BEQ.N    ??SDIO_GetITStatus_0
        CMP      R4,#+262144
        BEQ.N    ??SDIO_GetITStatus_0
        CMP      R4,#+524288
        BEQ.N    ??SDIO_GetITStatus_0
        CMP      R4,#+1048576
        BEQ.N    ??SDIO_GetITStatus_0
        CMP      R4,#+2097152
        BEQ.N    ??SDIO_GetITStatus_0
        CMP      R4,#+4194304
        BEQ.N    ??SDIO_GetITStatus_0
        CMP      R4,#+8388608
        BEQ.N    ??SDIO_GetITStatus_0
        MOVW     R2,#+950
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SDIO_GET_IT(SDIO_IT)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SDIO_GetITStatus_0:
        LDR.N    R0,??DataTable49_24  ;; 0x40012c34
        LDR      R0,[R0, #+0]
        TST      R0,R4
        BEQ.N    ??SDIO_GetITStatus_1
        MOVS     R0,#+1
        MOVS     R5,R0
        B.N      ??SDIO_GetITStatus_2
??SDIO_GetITStatus_1:
        MOVS     R0,#+0
        MOVS     R5,R0
??SDIO_GetITStatus_2:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_ClearITPendingBit:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.N    R0,??DataTable49_25  ;; 0xff3ff800
        TST      R4,R0
        BNE.N    ??SDIO_ClearITPendingBit_0
        CMP      R4,#+0
        BNE.N    ??SDIO_ClearITPendingBit_1
??SDIO_ClearITPendingBit_0:
        MOV      R2,#+984
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_SDIO_CLEAR_IT(SDIO...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??SDIO_ClearITPendingBit_1:
        LDR.N    R0,??DataTable49_26  ;; 0x40012c38
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49:
        DC32     0x40012c04

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49_1:
        DC32     0xffff8100

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49_2:
        DC32     0x422580a0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49_3:
        DC32     0x40012c00

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49_4:
        DC32     0x40012c08

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49_5:
        DC32     0x40012c0c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49_6:
        DC32     0x40012c10

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49_7:
        DC32     0x40012c14

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49_8:
        DC32     0x40012c24

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49_9:
        DC32     0x40012c28

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49_10:
        DC32     0x40012c2c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49_11:
        DC32     0x40012c30

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49_12:
        DC32     0x40012c80

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49_13:
        DC32     0x40012c48

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49_14:
        DC32     0x422585a0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49_15:
        DC32     0x422585a4

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49_16:
        DC32     0x422585a8

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49_17:
        DC32     0x422585ac

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49_18:
        DC32     0x422581ac

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49_19:
        DC32     0x422581b0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49_20:
        DC32     0x422581b4

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49_21:
        DC32     0x422581b8

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49_22:
        DC32     0x4225858c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49_23:
        DC32     0x40012c3c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49_24:
        DC32     0x40012c34

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49_25:
        DC32     0xff3ff800

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable49_26:
        DC32     0x40012c38

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_SDIO_CLOCK_EDGE(SD...">`:
        ; Initializer data, 52 bytes
        DC8 73, 83, 95, 83, 68, 73, 79, 95, 67, 76
        DC8 79, 67, 75, 95, 69, 68, 71, 69, 40, 83
        DC8 68, 73, 79, 95, 73, 110, 105, 116, 83, 116
        DC8 114, 117, 99, 116, 45, 62, 83, 68, 73, 79
        DC8 95, 67, 108, 111, 99, 107, 69, 100, 103, 101
        DC8 41, 0

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
        DC8 116, 109, 51, 50, 102, 50, 120, 120, 95, 115
        DC8 100, 105, 111, 46, 99, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_SDIO_CLOCK_BYPASS(...">`:
        ; Initializer data, 56 bytes
        DC8 73, 83, 95, 83, 68, 73, 79, 95, 67, 76
        DC8 79, 67, 75, 95, 66, 89, 80, 65, 83, 83
        DC8 40, 83, 68, 73, 79, 95, 73, 110, 105, 116
        DC8 83, 116, 114, 117, 99, 116, 45, 62, 83, 68
        DC8 73, 79, 95, 67, 108, 111, 99, 107, 66, 121
        DC8 112, 97, 115, 115, 41, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_SDIO_CLOCK_POWER_S...">`:
        ; Initializer data, 64 bytes
        DC8 73, 83, 95, 83, 68, 73, 79, 95, 67, 76
        DC8 79, 67, 75, 95, 80, 79, 87, 69, 82, 95
        DC8 83, 65, 86, 69, 40, 83, 68, 73, 79, 95
        DC8 73, 110, 105, 116, 83, 116, 114, 117, 99, 116
        DC8 45, 62, 83, 68, 73, 79, 95, 67, 108, 111
        DC8 99, 107, 80, 111, 119, 101, 114, 83, 97, 118
        DC8 101, 41, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_SDIO_BUS_WIDE(SDIO...">`:
        ; Initializer data, 48 bytes
        DC8 73, 83, 95, 83, 68, 73, 79, 95, 66, 85
        DC8 83, 95, 87, 73, 68, 69, 40, 83, 68, 73
        DC8 79, 95, 73, 110, 105, 116, 83, 116, 114, 117
        DC8 99, 116, 45, 62, 83, 68, 73, 79, 95, 66
        DC8 117, 115, 87, 105, 100, 101, 41, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_SDIO_HARDWARE_FLOW...">`:
        ; Initializer data, 76 bytes
        DC8 73, 83, 95, 83, 68, 73, 79, 95, 72, 65
        DC8 82, 68, 87, 65, 82, 69, 95, 70, 76, 79
        DC8 87, 95, 67, 79, 78, 84, 82, 79, 76, 40
        DC8 83, 68, 73, 79, 95, 73, 110, 105, 116, 83
        DC8 116, 114, 117, 99, 116, 45, 62, 83, 68, 73
        DC8 79, 95, 72, 97, 114, 100, 119, 97, 114, 101
        DC8 70, 108, 111, 119, 67, 111, 110, 116, 114, 111
        DC8 108, 41, 0, 0, 0, 0

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
`?<Constant "IS_SDIO_POWER_STATE(S...">`:
        ; Initializer data, 40 bytes
        DC8 73, 83, 95, 83, 68, 73, 79, 95, 80, 79
        DC8 87, 69, 82, 95, 83, 84, 65, 84, 69, 40
        DC8 83, 68, 73, 79, 95, 80, 111, 119, 101, 114
        DC8 83, 116, 97, 116, 101, 41, 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_SDIO_CMD_INDEX(SDI...">`:
        ; Initializer data, 56 bytes
        DC8 73, 83, 95, 83, 68, 73, 79, 95, 67, 77
        DC8 68, 95, 73, 78, 68, 69, 88, 40, 83, 68
        DC8 73, 79, 95, 67, 109, 100, 73, 110, 105, 116
        DC8 83, 116, 114, 117, 99, 116, 45, 62, 83, 68
        DC8 73, 79, 95, 67, 109, 100, 73, 110, 100, 101
        DC8 120, 41, 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_SDIO_RESPONSE(SDIO...">`:
        ; Initializer data, 52 bytes
        DC8 73, 83, 95, 83, 68, 73, 79, 95, 82, 69
        DC8 83, 80, 79, 78, 83, 69, 40, 83, 68, 73
        DC8 79, 95, 67, 109, 100, 73, 110, 105, 116, 83
        DC8 116, 114, 117, 99, 116, 45, 62, 83, 68, 73
        DC8 79, 95, 82, 101, 115, 112, 111, 110, 115, 101
        DC8 41, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_SDIO_WAIT(SDIO_Cmd...">`:
        ; Initializer data, 44 bytes
        DC8 73, 83, 95, 83, 68, 73, 79, 95, 87, 65
        DC8 73, 84, 40, 83, 68, 73, 79, 95, 67, 109
        DC8 100, 73, 110, 105, 116, 83, 116, 114, 117, 99
        DC8 116, 45, 62, 83, 68, 73, 79, 95, 87, 97
        DC8 105, 116, 41, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_SDIO_CPSM(SDIO_Cmd...">`:
        ; Initializer data, 44 bytes
        DC8 73, 83, 95, 83, 68, 73, 79, 95, 67, 80
        DC8 83, 77, 40, 83, 68, 73, 79, 95, 67, 109
        DC8 100, 73, 110, 105, 116, 83, 116, 114, 117, 99
        DC8 116, 45, 62, 83, 68, 73, 79, 95, 67, 80
        DC8 83, 77, 41, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_SDIO_RESP(SDIO_RESP)">`:
        ; Initializer data, 24 bytes
        DC8 73, 83, 95, 83, 68, 73, 79, 95, 82, 69
        DC8 83, 80, 40, 83, 68, 73, 79, 95, 82, 69
        DC8 83, 80, 41, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_SDIO_DATA_LENGTH(S...">`:
        ; Initializer data, 60 bytes
        DC8 73, 83, 95, 83, 68, 73, 79, 95, 68, 65
        DC8 84, 65, 95, 76, 69, 78, 71, 84, 72, 40
        DC8 83, 68, 73, 79, 95, 68, 97, 116, 97, 73
        DC8 110, 105, 116, 83, 116, 114, 117, 99, 116, 45
        DC8 62, 83, 68, 73, 79, 95, 68, 97, 116, 97
        DC8 76, 101, 110, 103, 116, 104, 41, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_SDIO_BLOCK_SIZE(SD...">`:
        ; Initializer data, 60 bytes
        DC8 73, 83, 95, 83, 68, 73, 79, 95, 66, 76
        DC8 79, 67, 75, 95, 83, 73, 90, 69, 40, 83
        DC8 68, 73, 79, 95, 68, 97, 116, 97, 73, 110
        DC8 105, 116, 83, 116, 114, 117, 99, 116, 45, 62
        DC8 83, 68, 73, 79, 95, 68, 97, 116, 97, 66
        DC8 108, 111, 99, 107, 83, 105, 122, 101, 41, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_SDIO_TRANSFER_DIR(...">`:
        ; Initializer data, 60 bytes
        DC8 73, 83, 95, 83, 68, 73, 79, 95, 84, 82
        DC8 65, 78, 83, 70, 69, 82, 95, 68, 73, 82
        DC8 40, 83, 68, 73, 79, 95, 68, 97, 116, 97
        DC8 73, 110, 105, 116, 83, 116, 114, 117, 99, 116
        DC8 45, 62, 83, 68, 73, 79, 95, 84, 114, 97
        DC8 110, 115, 102, 101, 114, 68, 105, 114, 41, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_SDIO_TRANSFER_MODE...">`:
        ; Initializer data, 64 bytes
        DC8 73, 83, 95, 83, 68, 73, 79, 95, 84, 82
        DC8 65, 78, 83, 70, 69, 82, 95, 77, 79, 68
        DC8 69, 40, 83, 68, 73, 79, 95, 68, 97, 116
        DC8 97, 73, 110, 105, 116, 83, 116, 114, 117, 99
        DC8 116, 45, 62, 83, 68, 73, 79, 95, 84, 114
        DC8 97, 110, 115, 102, 101, 114, 77, 111, 100, 101
        DC8 41, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_SDIO_DPSM(SDIO_Dat...">`:
        ; Initializer data, 48 bytes
        DC8 73, 83, 95, 83, 68, 73, 79, 95, 68, 80
        DC8 83, 77, 40, 83, 68, 73, 79, 95, 68, 97
        DC8 116, 97, 73, 110, 105, 116, 83, 116, 114, 117
        DC8 99, 116, 45, 62, 83, 68, 73, 79, 95, 68
        DC8 80, 83, 77, 41, 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_SDIO_READWAIT_MODE...">`:
        ; Initializer data, 44 bytes
        DC8 73, 83, 95, 83, 68, 73, 79, 95, 82, 69
        DC8 65, 68, 87, 65, 73, 84, 95, 77, 79, 68
        DC8 69, 40, 83, 68, 73, 79, 95, 82, 101, 97
        DC8 100, 87, 97, 105, 116, 77, 111, 100, 101, 41
        DC8 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_SDIO_IT(SDIO_IT)">`:
        ; Initializer data, 20 bytes
        DC8 73, 83, 95, 83, 68, 73, 79, 95, 73, 84
        DC8 40, 83, 68, 73, 79, 95, 73, 84, 41, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_SDIO_FLAG(SDIO_FLAG)">`:
        ; Initializer data, 24 bytes
        DC8 73, 83, 95, 83, 68, 73, 79, 95, 70, 76
        DC8 65, 71, 40, 83, 68, 73, 79, 95, 70, 76
        DC8 65, 71, 41, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_SDIO_CLEAR_FLAG(SD...">`:
        ; Initializer data, 32 bytes
        DC8 73, 83, 95, 83, 68, 73, 79, 95, 67, 76
        DC8 69, 65, 82, 95, 70, 76, 65, 71, 40, 83
        DC8 68, 73, 79, 95, 70, 76, 65, 71, 41, 0
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_SDIO_GET_IT(SDIO_IT)">`:
        ; Initializer data, 24 bytes
        DC8 73, 83, 95, 83, 68, 73, 79, 95, 71, 69
        DC8 84, 95, 73, 84, 40, 83, 68, 73, 79, 95
        DC8 73, 84, 41, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_SDIO_CLEAR_IT(SDIO...">`:
        ; Initializer data, 28 bytes
        DC8 73, 83, 95, 83, 68, 73, 79, 95, 67, 76
        DC8 69, 65, 82, 95, 73, 84, 40, 83, 68, 73
        DC8 79, 95, 73, 84, 41, 0, 0, 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)

        END
// 
// 3 324 bytes in section .text
// 
// 3 324 bytes of CODE memory
//
//Errors: none
//Warnings: none
