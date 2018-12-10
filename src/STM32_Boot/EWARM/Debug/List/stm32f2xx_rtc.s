///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.10.2.52244/W32 for ARM    04/Dec/2013  10:58:12 /
// Copyright 1999-2010 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\STM32F2xx_StdPeriph_Driver\src\stm32f /
//                    2xx_rtc.c                                               /
//    Command line =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\STM32F2xx_StdPeriph_Driver\src\stm32f /
//                    2xx_rtc.c -D STM32F10X_CL -D USE_STDPERIPH_DRIVER -lcN  /
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
//                    IAR6.1\STM32_Boot\EWARM\Debug\List\stm32f2xx_rtc.s      /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f2xx_rtc

        EXTERN __aeabi_assert
        EXTERN __iar_EmptyStepPoint

        PUBLIC RTC_AlarmCmd
        PUBLIC RTC_AlarmStructInit
        PUBLIC RTC_CalibOutputCmd
        PUBLIC RTC_ClearFlag
        PUBLIC RTC_ClearITPendingBit
        PUBLIC RTC_CoarseCalibCmd
        PUBLIC RTC_CoarseCalibConfig
        PUBLIC RTC_DateStructInit
        PUBLIC RTC_DayLightSavingConfig
        PUBLIC RTC_DeInit
        PUBLIC RTC_EnterInitMode
        PUBLIC RTC_ExitInitMode
        PUBLIC RTC_GetAlarm
        PUBLIC RTC_GetDate
        PUBLIC RTC_GetFlagStatus
        PUBLIC RTC_GetITStatus
        PUBLIC RTC_GetStoreOperation
        PUBLIC RTC_GetTime
        PUBLIC RTC_GetTimeStamp
        PUBLIC RTC_GetWakeUpCounter
        PUBLIC RTC_ITConfig
        PUBLIC RTC_Init
        PUBLIC RTC_OutputConfig
        PUBLIC RTC_OutputTypeConfig
        PUBLIC RTC_ReadBackupRegister
        PUBLIC RTC_RefClockCmd
        PUBLIC RTC_SetAlarm
        PUBLIC RTC_SetDate
        PUBLIC RTC_SetTime
        PUBLIC RTC_SetWakeUpCounter
        PUBLIC RTC_StructInit
        PUBLIC RTC_TamperCmd
        PUBLIC RTC_TamperPinSelection
        PUBLIC RTC_TamperTriggerConfig
        PUBLIC RTC_TimeStampCmd
        PUBLIC RTC_TimeStampPinSelection
        PUBLIC RTC_TimeStructInit
        PUBLIC RTC_WaitForSynchro
        PUBLIC RTC_WakeUpClockConfig
        PUBLIC RTC_WakeUpCmd
        PUBLIC RTC_WriteBackupRegister
        PUBLIC RTC_WriteProtectionCmd


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_DeInit:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+8
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R4,#+0
        MOVS     R5,#+0
        LDR.W    R0,??DataTable71  ;; 0x40002824
        MOVS     R1,#+202
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable71  ;; 0x40002824
        MOVS     R1,#+83
        STR      R1,[R0, #+0]
        BL       RTC_EnterInitMode
        CMP      R0,#+0
        BNE.N    ??RTC_DeInit_0
        MOVS     R0,#+0
        MOVS     R5,R0
        B.N      ??RTC_DeInit_1
??RTC_DeInit_0:
        LDR.W    R0,??DataTable69  ;; 0x40002800
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable69_1  ;; 0x40002804
        MOVW     R1,#+8449
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable69_2  ;; 0x40002808
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x7
        LDR.W    R1,??DataTable69_2  ;; 0x40002808
        STR      R0,[R1, #+0]
??RTC_DeInit_2:
        LDR.W    R0,??DataTable72  ;; 0x4000280c
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x4
        MOVS     R4,R0
        LDR      R0,[SP, #+0]
        ADDS     R0,R0,#+1
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        CMP      R0,#+65536
        BEQ.N    ??RTC_DeInit_3
        CMP      R4,#+0
        BEQ.N    ??RTC_DeInit_2
??RTC_DeInit_3:
        LDR.W    R0,??DataTable72  ;; 0x4000280c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+29
        BMI.N    ??RTC_DeInit_4
        MOVS     R0,#+0
        MOVS     R5,R0
        B.N      ??RTC_DeInit_1
??RTC_DeInit_4:
        LDR.W    R0,??DataTable69_2  ;; 0x40002808
        LDR      R6,[R0, #+0]
        LDR.W    R0,??DataTable69_2  ;; 0x40002808
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable69_3  ;; 0x40002814
        MOVW     R1,#+65535
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable69_4  ;; 0x40002810
        LDR.W    R1,??DataTable69_5  ;; 0x7f00ff
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable69_6  ;; 0x40002818
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable69_7  ;; 0x4000281c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable69_8  ;; 0x40002820
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable72  ;; 0x4000280c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable70  ;; 0x40002840
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        BL       RTC_WaitForSynchro
        CMP      R0,#+0
        BNE.N    ??RTC_DeInit_5
        MOVS     R0,#+0
        MOVS     R5,R0
        B.N      ??RTC_DeInit_1
??RTC_DeInit_5:
        MOVS     R0,#+1
        MOVS     R5,R0
??RTC_DeInit_1:
        LDR.W    R0,??DataTable71  ;; 0x40002824
        MOVS     R1,#+255
        STR      R1,[R0, #+0]
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4-R6,PC}  ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_Init:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        LDR      R0,[R4, #+0]
        CMP      R0,#+64
        BEQ.N    ??RTC_Init_0
        LDR      R0,[R4, #+0]
        CMP      R0,#+0
        BEQ.N    ??RTC_Init_0
        MOVW     R2,#+429
        LDR.W    R1,??DataTable70_1
        LDR.W    R0,??DataTable70_2
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_Init_0:
        LDR      R0,[R4, #+4]
        CMP      R0,#+128
        BCC.N    ??RTC_Init_1
        MOV      R2,#+430
        LDR.W    R1,??DataTable70_1
        LDR.W    R0,??DataTable70_3
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_Init_1:
        LDR      R0,[R4, #+8]
        CMP      R0,#+8192
        BCC.N    ??RTC_Init_2
        MOVW     R2,#+431
        LDR.W    R1,??DataTable70_1
        LDR.W    R0,??DataTable70_4
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_Init_2:
        LDR.W    R0,??DataTable71  ;; 0x40002824
        MOVS     R1,#+202
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable71  ;; 0x40002824
        MOVS     R1,#+83
        STR      R1,[R0, #+0]
        BL       RTC_EnterInitMode
        CMP      R0,#+0
        BNE.N    ??RTC_Init_3
        MOVS     R0,#+0
        MOVS     R5,R0
        B.N      ??RTC_Init_4
??RTC_Init_3:
        LDR.W    R0,??DataTable69_2  ;; 0x40002808
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x40
        LDR.W    R1,??DataTable69_2  ;; 0x40002808
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable69_2  ;; 0x40002808
        LDR      R0,[R0, #+0]
        LDR      R1,[R4, #+0]
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable69_2  ;; 0x40002808
        STR      R0,[R1, #+0]
        LDR      R0,[R4, #+8]
        LDR.W    R1,??DataTable69_4  ;; 0x40002810
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable69_4  ;; 0x40002810
        LDR      R0,[R0, #+0]
        LDR      R1,[R4, #+4]
        ORRS     R0,R0,R1, LSL #+16
        LDR.W    R1,??DataTable69_4  ;; 0x40002810
        STR      R0,[R1, #+0]
        BL       RTC_ExitInitMode
        MOVS     R0,#+1
        MOVS     R5,R0
??RTC_Init_4:
        LDR.W    R0,??DataTable71  ;; 0x40002824
        MOVS     R1,#+255
        STR      R1,[R0, #+0]
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_StructInit:
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        MOVS     R1,#+127
        STR      R1,[R0, #+4]
        MOVS     R1,#+255
        STR      R1,[R0, #+8]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_WriteProtectionCmd:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??RTC_WriteProtectionCmd_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??RTC_WriteProtectionCmd_0
        MOVW     R2,#+495
        LDR.W    R1,??DataTable70_1
        LDR.W    R0,??DataTable71_1
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_WriteProtectionCmd_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??RTC_WriteProtectionCmd_1
        LDR.W    R0,??DataTable71  ;; 0x40002824
        MOVS     R1,#+255
        STR      R1,[R0, #+0]
        B.N      ??RTC_WriteProtectionCmd_2
??RTC_WriteProtectionCmd_1:
        LDR.W    R0,??DataTable71  ;; 0x40002824
        MOVS     R1,#+202
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable71  ;; 0x40002824
        MOVS     R1,#+83
        STR      R1,[R0, #+0]
??RTC_WriteProtectionCmd_2:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_EnterInitMode:
        SUB      SP,SP,#+4
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R0,#+0
        MOVS     R1,#+0
        LDR.W    R2,??DataTable72  ;; 0x4000280c
        LDR      R2,[R2, #+0]
        LSLS     R2,R2,#+25
        BMI.N    ??RTC_EnterInitMode_0
        LDR.W    R2,??DataTable72  ;; 0x4000280c
        MOVS     R3,#-1
        STR      R3,[R2, #+0]
??RTC_EnterInitMode_1:
        LDR.W    R2,??DataTable72  ;; 0x4000280c
        LDR      R2,[R2, #+0]
        ANDS     R2,R2,#0x40
        MOVS     R1,R2
        LDR      R2,[SP, #+0]
        ADDS     R2,R2,#+1
        STR      R2,[SP, #+0]
        LDR      R2,[SP, #+0]
        CMP      R2,#+65536
        BEQ.N    ??RTC_EnterInitMode_2
        CMP      R1,#+0
        BEQ.N    ??RTC_EnterInitMode_1
??RTC_EnterInitMode_2:
        LDR.W    R2,??DataTable72  ;; 0x4000280c
        LDR      R2,[R2, #+0]
        LSLS     R2,R2,#+25
        BPL.N    ??RTC_EnterInitMode_3
        MOVS     R2,#+1
        MOVS     R0,R2
        B.N      ??RTC_EnterInitMode_4
??RTC_EnterInitMode_3:
        MOVS     R2,#+0
        MOVS     R0,R2
        B.N      ??RTC_EnterInitMode_4
??RTC_EnterInitMode_0:
        MOVS     R2,#+1
        MOVS     R0,R2
??RTC_EnterInitMode_4:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      SP,SP,#+4
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_ExitInitMode:
        LDR.W    R0,??DataTable74  ;; 0x4000280c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x80
        LDR.W    R1,??DataTable74  ;; 0x4000280c
        STR      R0,[R1, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_WaitForSynchro:
        SUB      SP,SP,#+4
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R0,#+0
        MOVS     R1,#+0
        LDR.W    R2,??DataTable71  ;; 0x40002824
        MOVS     R3,#+202
        STR      R3,[R2, #+0]
        LDR.W    R2,??DataTable71  ;; 0x40002824
        MOVS     R3,#+83
        STR      R3,[R2, #+0]
        LDR.W    R2,??DataTable72  ;; 0x4000280c
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0xA0
        LDR.W    R3,??DataTable72  ;; 0x4000280c
        STR      R2,[R3, #+0]
??RTC_WaitForSynchro_0:
        LDR.W    R2,??DataTable72  ;; 0x4000280c
        LDR      R2,[R2, #+0]
        ANDS     R2,R2,#0x20
        MOVS     R1,R2
        LDR      R2,[SP, #+0]
        ADDS     R2,R2,#+1
        STR      R2,[SP, #+0]
        LDR      R2,[SP, #+0]
        CMP      R2,#+32768
        BEQ.N    ??RTC_WaitForSynchro_1
        CMP      R1,#+0
        BEQ.N    ??RTC_WaitForSynchro_0
??RTC_WaitForSynchro_1:
        LDR.W    R2,??DataTable72  ;; 0x4000280c
        LDR      R2,[R2, #+0]
        LSLS     R2,R2,#+26
        BPL.N    ??RTC_WaitForSynchro_2
        MOVS     R2,#+1
        MOVS     R0,R2
        B.N      ??RTC_WaitForSynchro_3
??RTC_WaitForSynchro_2:
        MOVS     R2,#+0
        MOVS     R0,R2
??RTC_WaitForSynchro_3:
        LDR.W    R2,??DataTable71  ;; 0x40002824
        MOVS     R3,#+255
        STR      R3,[R2, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      SP,SP,#+4
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_RefClockCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??RTC_RefClockCmd_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??RTC_RefClockCmd_0
        MOVW     R2,#+634
        LDR.W    R1,??DataTable70_1
        LDR.W    R0,??DataTable71_1
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_RefClockCmd_0:
        LDR.W    R0,??DataTable71  ;; 0x40002824
        MOVS     R1,#+202
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable71  ;; 0x40002824
        MOVS     R1,#+83
        STR      R1,[R0, #+0]
        BL       RTC_EnterInitMode
        CMP      R0,#+0
        BNE.N    ??RTC_RefClockCmd_1
        MOVS     R0,#+0
        MOVS     R5,R0
        B.N      ??RTC_RefClockCmd_2
??RTC_RefClockCmd_1:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??RTC_RefClockCmd_3
        LDR.W    R0,??DataTable69_2  ;; 0x40002808
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10
        LDR.W    R1,??DataTable69_2  ;; 0x40002808
        STR      R0,[R1, #+0]
        B.N      ??RTC_RefClockCmd_4
??RTC_RefClockCmd_3:
        LDR.W    R0,??DataTable69_2  ;; 0x40002808
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x10
        LDR.W    R1,??DataTable69_2  ;; 0x40002808
        STR      R0,[R1, #+0]
??RTC_RefClockCmd_4:
        BL       RTC_ExitInitMode
        MOVS     R0,#+1
        MOVS     R5,R0
??RTC_RefClockCmd_2:
        LDR.W    R0,??DataTable71  ;; 0x40002824
        MOVS     R1,#+255
        STR      R1,[R0, #+0]
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_SetTime:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        MOVS     R7,#+0
        CMP      R4,#+0
        BEQ.N    ??RTC_SetTime_0
        CMP      R4,#+1
        BEQ.N    ??RTC_SetTime_0
        MOVW     R2,#+706
        LDR.W    R1,??DataTable70_1
        LDR.W    R0,??DataTable75
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_SetTime_0:
        CMP      R4,#+0
        BNE.N    ??RTC_SetTime_1
        LDR.W    R0,??DataTable69_2  ;; 0x40002808
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??RTC_SetTime_2
        LDRB     R0,[R5, #+0]
        CMP      R0,#+1
        BCC.N    ??RTC_SetTime_3
        LDRB     R0,[R5, #+0]
        CMP      R0,#+13
        BCC.N    ??RTC_SetTime_4
??RTC_SetTime_3:
        MOV      R2,#+712
        LDR.W    R1,??DataTable70_1
        LDR.W    R0,??DataTable75_1
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_SetTime_4:
        LDRB     R0,[R5, #+3]
        CMP      R0,#+0
        BEQ.N    ??RTC_SetTime_5
        LDRB     R0,[R5, #+3]
        CMP      R0,#+64
        BEQ.N    ??RTC_SetTime_5
        MOVW     R2,#+713
        LDR.W    R1,??DataTable70_1
        LDR.W    R0,??DataTable76
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
        B.N      ??RTC_SetTime_5
??RTC_SetTime_2:
        MOVS     R0,#+0
        STRB     R0,[R5, #+3]
        LDRB     R0,[R5, #+0]
        CMP      R0,#+24
        BCC.N    ??RTC_SetTime_5
        MOVW     R2,#+718
        LDR.W    R1,??DataTable70_1
        LDR.W    R0,??DataTable76_1
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_SetTime_5:
        LDRB     R0,[R5, #+1]
        CMP      R0,#+60
        BCC.N    ??RTC_SetTime_6
        MOV      R2,#+720
        LDR.W    R1,??DataTable70_1
        LDR.W    R0,??DataTable76_2
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_SetTime_6:
        LDRB     R0,[R5, #+2]
        CMP      R0,#+60
        BCC.N    ??RTC_SetTime_7
        MOVW     R2,#+721
        LDR.W    R1,??DataTable70_1
        LDR.W    R0,??DataTable76_3
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
        B.N      ??RTC_SetTime_7
??RTC_SetTime_1:
        LDR.W    R0,??DataTable69_2  ;; 0x40002808
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??RTC_SetTime_8
        LDRB     R0,[R5, #+0]
        BL       RTC_Bcd2ToByte
        MOVS     R6,R0
        CMP      R6,#+0
        BEQ.N    ??RTC_SetTime_9
        CMP      R6,#+13
        BCC.N    ??RTC_SetTime_10
??RTC_SetTime_9:
        MOV      R2,#+728
        LDR.W    R1,??DataTable70_1
        LDR.W    R0,??DataTable76_4
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_SetTime_10:
        LDRB     R0,[R5, #+3]
        CMP      R0,#+0
        BEQ.N    ??RTC_SetTime_11
        LDRB     R0,[R5, #+3]
        CMP      R0,#+64
        BEQ.N    ??RTC_SetTime_11
        MOVW     R2,#+729
        LDR.W    R1,??DataTable70_1
        LDR.W    R0,??DataTable76
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
        B.N      ??RTC_SetTime_11
??RTC_SetTime_8:
        MOVS     R0,#+0
        STRB     R0,[R5, #+3]
        LDRB     R0,[R5, #+0]
        BL       RTC_Bcd2ToByte
        CMP      R0,#+24
        BCC.N    ??RTC_SetTime_11
        MOVW     R2,#+734
        LDR.W    R1,??DataTable70_1
        LDR.W    R0,??DataTable77
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_SetTime_11:
        LDRB     R0,[R5, #+1]
        BL       RTC_Bcd2ToByte
        CMP      R0,#+60
        BCC.N    ??RTC_SetTime_12
        MOV      R2,#+736
        LDR.W    R1,??DataTable70_1
        LDR.W    R0,??DataTable77_1
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_SetTime_12:
        LDRB     R0,[R5, #+2]
        BL       RTC_Bcd2ToByte
        CMP      R0,#+60
        BCC.N    ??RTC_SetTime_7
        MOVW     R2,#+737
        LDR.W    R1,??DataTable70_1
        LDR.W    R0,??DataTable77_2
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_SetTime_7:
        CMP      R4,#+0
        BEQ.N    ??RTC_SetTime_13
        LDRB     R0,[R5, #+0]
        LDRB     R1,[R5, #+1]
        LSLS     R1,R1,#+8
        ORRS     R0,R1,R0, LSL #+16
        LDRB     R1,[R5, #+2]
        ORRS     R0,R1,R0
        LDRB     R1,[R5, #+3]
        ORRS     R0,R0,R1, LSL #+16
        MOVS     R6,R0
        B.N      ??RTC_SetTime_14
??RTC_SetTime_13:
        LDRB     R0,[R5, #+0]
        BL       RTC_ByteToBcd2
        MOV      R8,R0
        LDRB     R0,[R5, #+1]
        BL       RTC_ByteToBcd2
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R0,R0,#+8
        ORRS     R8,R0,R8, LSL #+16
        LDRB     R0,[R5, #+2]
        BL       RTC_ByteToBcd2
        ORRS     R0,R0,R8
        LDRB     R1,[R5, #+3]
        ORRS     R0,R0,R1, LSL #+16
        MOVS     R6,R0
??RTC_SetTime_14:
        LDR.W    R0,??DataTable71  ;; 0x40002824
        MOVS     R1,#+202
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable71  ;; 0x40002824
        MOVS     R1,#+83
        STR      R1,[R0, #+0]
        BL       RTC_EnterInitMode
        CMP      R0,#+0
        BNE.N    ??RTC_SetTime_15
        MOVS     R0,#+0
        MOVS     R7,R0
        B.N      ??RTC_SetTime_16
??RTC_SetTime_15:
        LDR.W    R0,??DataTable78  ;; 0x7f7f7f
        ANDS     R0,R0,R6
        LDR.W    R1,??DataTable69  ;; 0x40002800
        STR      R0,[R1, #+0]
        BL       RTC_ExitInitMode
        BL       RTC_WaitForSynchro
        CMP      R0,#+0
        BNE.N    ??RTC_SetTime_17
        MOVS     R0,#+0
        MOVS     R7,R0
        B.N      ??RTC_SetTime_16
??RTC_SetTime_17:
        MOVS     R0,#+1
        MOVS     R7,R0
??RTC_SetTime_16:
        LDR.W    R0,??DataTable71  ;; 0x40002824
        MOVS     R1,#+255
        STR      R1,[R0, #+0]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_TimeStructInit:
        MOVS     R1,#+0
        STRB     R1,[R0, #+3]
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
        MOVS     R1,#+0
        STRB     R1,[R0, #+2]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_GetTime:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        CMP      R4,#+0
        BEQ.N    ??RTC_GetTime_0
        CMP      R4,#+1
        BEQ.N    ??RTC_GetTime_0
        MOV      R2,#+820
        LDR.W    R1,??DataTable70_1
        LDR.W    R0,??DataTable75
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_GetTime_0:
        LDR.W    R0,??DataTable69  ;; 0x40002800
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable78  ;; 0x7f7f7f
        ANDS     R0,R1,R0
        MOVS     R6,R0
        LSRS     R0,R6,#+16
        ANDS     R0,R0,#0x3F
        STRB     R0,[R5, #+0]
        LSRS     R0,R6,#+8
        ANDS     R0,R0,#0x7F
        STRB     R0,[R5, #+1]
        ANDS     R0,R6,#0x7F
        STRB     R0,[R5, #+2]
        LSRS     R0,R6,#+16
        ANDS     R0,R0,#0x40
        STRB     R0,[R5, #+3]
        CMP      R4,#+0
        BNE.N    ??RTC_GetTime_1
        LDRB     R0,[R5, #+0]
        BL       RTC_Bcd2ToByte
        STRB     R0,[R5, #+0]
        LDRB     R0,[R5, #+1]
        BL       RTC_Bcd2ToByte
        STRB     R0,[R5, #+1]
        LDRB     R0,[R5, #+2]
        BL       RTC_Bcd2ToByte
        STRB     R0,[R5, #+2]
??RTC_GetTime_1:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_SetDate:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        MOVS     R7,#+0
        CMP      R4,#+0
        BEQ.N    ??RTC_SetDate_0
        CMP      R4,#+1
        BEQ.N    ??RTC_SetDate_0
        MOVW     R2,#+859
        LDR.W    R1,??DataTable70_1
        LDR.W    R0,??DataTable75
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_SetDate_0:
        CMP      R4,#+0
        BNE.N    ??RTC_SetDate_1
        LDRB     R0,[R5, #+1]
        LSLS     R0,R0,#+27
        BPL.N    ??RTC_SetDate_1
        LDRB     R0,[R5, #+1]
        ANDS     R0,R0,#0xEF
        ADDS     R0,R0,#+10
        STRB     R0,[R5, #+1]
??RTC_SetDate_1:
        CMP      R4,#+0
        BNE.N    ??RTC_SetDate_2
        LDRB     R0,[R5, #+3]
        CMP      R0,#+100
        BCC.N    ??RTC_SetDate_3
        MOVW     R2,#+867
        LDR.W    R1,??DataTable70_1
        LDR.W    R0,??DataTable79
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_SetDate_3:
        LDRB     R0,[R5, #+1]
        CMP      R0,#+1
        BCC.N    ??RTC_SetDate_4
        LDRB     R0,[R5, #+1]
        CMP      R0,#+13
        BCC.N    ??RTC_SetDate_5
??RTC_SetDate_4:
        MOV      R2,#+868
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable79_1
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_SetDate_5:
        LDRB     R0,[R5, #+2]
        CMP      R0,#+1
        BCC.N    ??RTC_SetDate_6
        LDRB     R0,[R5, #+2]
        CMP      R0,#+32
        BCC.N    ??RTC_SetDate_7
??RTC_SetDate_6:
        MOVW     R2,#+869
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable79_2
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
        B.N      ??RTC_SetDate_7
??RTC_SetDate_2:
        LDRB     R0,[R5, #+3]
        BL       RTC_Bcd2ToByte
        CMP      R0,#+100
        BCC.N    ??RTC_SetDate_8
        MOVW     R2,#+873
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable79_3
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_SetDate_8:
        LDRB     R0,[R5, #+1]
        BL       RTC_Bcd2ToByte
        MOVS     R6,R0
        CMP      R6,#+0
        BEQ.N    ??RTC_SetDate_9
        CMP      R6,#+13
        BCC.N    ??RTC_SetDate_10
??RTC_SetDate_9:
        MOVW     R2,#+875
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable79_4
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_SetDate_10:
        LDRB     R0,[R5, #+2]
        BL       RTC_Bcd2ToByte
        MOVS     R6,R0
        CMP      R6,#+0
        BEQ.N    ??RTC_SetDate_11
        CMP      R6,#+32
        BCC.N    ??RTC_SetDate_7
??RTC_SetDate_11:
        MOVW     R2,#+877
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable79_5
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_SetDate_7:
        LDRB     R0,[R5, #+0]
        CMP      R0,#+1
        BEQ.N    ??RTC_SetDate_12
        LDRB     R0,[R5, #+0]
        CMP      R0,#+2
        BEQ.N    ??RTC_SetDate_12
        LDRB     R0,[R5, #+0]
        CMP      R0,#+3
        BEQ.N    ??RTC_SetDate_12
        LDRB     R0,[R5, #+0]
        CMP      R0,#+4
        BEQ.N    ??RTC_SetDate_12
        LDRB     R0,[R5, #+0]
        CMP      R0,#+5
        BEQ.N    ??RTC_SetDate_12
        LDRB     R0,[R5, #+0]
        CMP      R0,#+6
        BEQ.N    ??RTC_SetDate_12
        LDRB     R0,[R5, #+0]
        CMP      R0,#+7
        BEQ.N    ??RTC_SetDate_12
        MOVW     R2,#+879
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable79_6
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_SetDate_12:
        CMP      R4,#+0
        BEQ.N    ??RTC_SetDate_13
        LDRB     R0,[R5, #+3]
        LDRB     R1,[R5, #+1]
        LSLS     R1,R1,#+8
        ORRS     R0,R1,R0, LSL #+16
        LDRB     R1,[R5, #+2]
        ORRS     R0,R1,R0
        LDRB     R1,[R5, #+0]
        ORRS     R0,R0,R1, LSL #+13
        MOVS     R6,R0
        B.N      ??RTC_SetDate_14
??RTC_SetDate_13:
        LDRB     R0,[R5, #+3]
        BL       RTC_ByteToBcd2
        MOV      R8,R0
        LDRB     R0,[R5, #+1]
        BL       RTC_ByteToBcd2
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R0,R0,#+8
        ORRS     R8,R0,R8, LSL #+16
        LDRB     R0,[R5, #+2]
        BL       RTC_ByteToBcd2
        ORRS     R0,R0,R8
        LDRB     R1,[R5, #+0]
        ORRS     R0,R0,R1, LSL #+13
        MOVS     R6,R0
??RTC_SetDate_14:
        LDR.W    R0,??DataTable71  ;; 0x40002824
        MOVS     R1,#+202
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable71  ;; 0x40002824
        MOVS     R1,#+83
        STR      R1,[R0, #+0]
        BL       RTC_EnterInitMode
        CMP      R0,#+0
        BNE.N    ??RTC_SetDate_15
        MOVS     R0,#+0
        MOVS     R7,R0
        B.N      ??RTC_SetDate_16
??RTC_SetDate_15:
        LDR.W    R0,??DataTable80  ;; 0xffff3f
        ANDS     R0,R0,R6
        LDR.W    R1,??DataTable69_1  ;; 0x40002804
        STR      R0,[R1, #+0]
        BL       RTC_ExitInitMode
        BL       RTC_WaitForSynchro
        CMP      R0,#+0
        BNE.N    ??RTC_SetDate_17
        MOVS     R0,#+0
        MOVS     R7,R0
        B.N      ??RTC_SetDate_16
??RTC_SetDate_17:
        MOVS     R0,#+1
        MOVS     R7,R0
??RTC_SetDate_16:
        LDR.W    R0,??DataTable71  ;; 0x40002824
        MOVS     R1,#+255
        STR      R1,[R0, #+0]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_DateStructInit:
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        MOVS     R1,#+1
        STRB     R1,[R0, #+1]
        MOVS     R1,#+0
        STRB     R1,[R0, #+3]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_GetDate:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        CMP      R4,#+0
        BEQ.N    ??RTC_GetDate_0
        CMP      R4,#+1
        BEQ.N    ??RTC_GetDate_0
        MOV      R2,#+960
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable75
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_GetDate_0:
        LDR.W    R0,??DataTable69_1  ;; 0x40002804
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable80  ;; 0xffff3f
        ANDS     R0,R1,R0
        MOVS     R6,R0
        LSRS     R0,R6,#+16
        STRB     R0,[R5, #+3]
        LSRS     R0,R6,#+8
        ANDS     R0,R0,#0x1F
        STRB     R0,[R5, #+1]
        ANDS     R0,R6,#0x3F
        STRB     R0,[R5, #+2]
        LSRS     R0,R6,#+13
        ANDS     R0,R0,#0x7
        STRB     R0,[R5, #+0]
        CMP      R4,#+0
        BNE.N    ??RTC_GetDate_1
        LDRB     R0,[R5, #+3]
        BL       RTC_Bcd2ToByte
        STRB     R0,[R5, #+3]
        LDRB     R0,[R5, #+1]
        BL       RTC_Bcd2ToByte
        STRB     R0,[R5, #+1]
        LDRB     R0,[R5, #+2]
        BL       RTC_Bcd2ToByte
        STRB     R0,[R5, #+2]
        LDRB     R0,[R5, #+0]
        STRB     R0,[R5, #+0]
??RTC_GetDate_1:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_SetAlarm:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,#+0
        CMP      R4,#+0
        BEQ.N    ??RTC_SetAlarm_0
        CMP      R4,#+1
        BEQ.N    ??RTC_SetAlarm_0
        MOVW     R2,#+1021
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_RTC_FORMAT(RTC_For...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_SetAlarm_0:
        MOV      R0,#+256
        CMP      R5,R0
        BEQ.N    ??RTC_SetAlarm_1
        MOV      R0,#+512
        CMP      R5,R0
        BEQ.N    ??RTC_SetAlarm_1
        MOVW     R2,#+1022
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable81
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_SetAlarm_1:
        LDR      R0,[R6, #+4]
        TST      R0,#0x7F7F7F7F
        BEQ.N    ??RTC_SetAlarm_2
        MOVW     R2,#+1023
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable82
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_SetAlarm_2:
        LDR      R0,[R6, #+8]
        CMP      R0,#+0
        BEQ.N    ??RTC_SetAlarm_3
        LDR      R0,[R6, #+8]
        CMP      R0,#+1073741824
        BEQ.N    ??RTC_SetAlarm_3
        MOV      R2,#+1024
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable82_1
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_SetAlarm_3:
        CMP      R4,#+0
        BNE.W    ??RTC_SetAlarm_4
        LDR.N    R0,??DataTable69_2  ;; 0x40002808
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??RTC_SetAlarm_5
        LDRB     R0,[R6, #+0]
        CMP      R0,#+1
        BCC.N    ??RTC_SetAlarm_6
        LDRB     R0,[R6, #+0]
        CMP      R0,#+13
        BCC.N    ??RTC_SetAlarm_7
??RTC_SetAlarm_6:
        MOVW     R2,#+1030
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable82_2
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_SetAlarm_7:
        LDRB     R0,[R6, #+3]
        CMP      R0,#+0
        BEQ.N    ??RTC_SetAlarm_8
        LDRB     R0,[R6, #+3]
        CMP      R0,#+64
        BEQ.N    ??RTC_SetAlarm_8
        MOVW     R2,#+1031
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable82_3
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
        B.N      ??RTC_SetAlarm_8
??RTC_SetAlarm_5:
        MOVS     R0,#+0
        STRB     R0,[R6, #+3]
        LDRB     R0,[R6, #+0]
        CMP      R0,#+24
        BCC.N    ??RTC_SetAlarm_8
        MOVW     R2,#+1036
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable82_4
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_SetAlarm_8:
        LDRB     R0,[R6, #+1]
        CMP      R0,#+60
        BCC.N    ??RTC_SetAlarm_9
        MOVW     R2,#+1038
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable82_5
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_SetAlarm_9:
        LDRB     R0,[R6, #+2]
        CMP      R0,#+60
        BCC.N    ??RTC_SetAlarm_10
        MOVW     R2,#+1039
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable82_6
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_SetAlarm_10:
        LDR      R0,[R6, #+8]
        CMP      R0,#+0
        BNE.N    ??RTC_SetAlarm_11
        LDRB     R0,[R6, #+12]
        CMP      R0,#+1
        BCC.N    ??RTC_SetAlarm_12
        LDRB     R0,[R6, #+12]
        CMP      R0,#+32
        BCC.W    ??RTC_SetAlarm_13
??RTC_SetAlarm_12:
        MOVW     R2,#+1043
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable82_7
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
        B.N      ??RTC_SetAlarm_13
??RTC_SetAlarm_11:
        LDRB     R0,[R6, #+12]
        CMP      R0,#+1
        BEQ.W    ??RTC_SetAlarm_13
        LDRB     R0,[R6, #+12]
        CMP      R0,#+2
        BEQ.W    ??RTC_SetAlarm_13
        LDRB     R0,[R6, #+12]
        CMP      R0,#+3
        BEQ.W    ??RTC_SetAlarm_13
        LDRB     R0,[R6, #+12]
        CMP      R0,#+4
        BEQ.W    ??RTC_SetAlarm_13
        LDRB     R0,[R6, #+12]
        CMP      R0,#+5
        BEQ.W    ??RTC_SetAlarm_13
        LDRB     R0,[R6, #+12]
        CMP      R0,#+6
        BEQ.W    ??RTC_SetAlarm_13
        LDRB     R0,[R6, #+12]
        CMP      R0,#+7
        BEQ.W    ??RTC_SetAlarm_13
        MOVW     R2,#+1047
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable82_8
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
        B.N      ??RTC_SetAlarm_13
??RTC_SetAlarm_4:
        LDR.N    R0,??DataTable69_2  ;; 0x40002808
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??RTC_SetAlarm_14
        LDRB     R0,[R6, #+0]
        BL       RTC_Bcd2ToByte
        MOVS     R7,R0
        CMP      R7,#+0
        BEQ.N    ??RTC_SetAlarm_15
        CMP      R7,#+13
        BCC.N    ??RTC_SetAlarm_16
??RTC_SetAlarm_15:
        MOVW     R2,#+1055
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_RTC_HOUR12(tmpreg)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_SetAlarm_16:
        LDRB     R0,[R6, #+3]
        CMP      R0,#+0
        BEQ.N    ??RTC_SetAlarm_17
        LDRB     R0,[R6, #+3]
        CMP      R0,#+64
        BEQ.N    ??RTC_SetAlarm_17
        MOV      R2,#+1056
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable82_3
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
        B.N      ??RTC_SetAlarm_17
??RTC_SetAlarm_14:
        MOVS     R0,#+0
        STRB     R0,[R6, #+3]
        LDRB     R0,[R6, #+0]
        BL       RTC_Bcd2ToByte
        CMP      R0,#+24
        BCC.N    ??RTC_SetAlarm_17
        MOVW     R2,#+1061
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable83
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_SetAlarm_17:
        LDRB     R0,[R6, #+1]
        BL       RTC_Bcd2ToByte
        CMP      R0,#+60
        BCC.N    ??RTC_SetAlarm_18
        MOV      R2,#+1064
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable83_1
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_SetAlarm_18:
        LDRB     R0,[R6, #+2]
        BL       RTC_Bcd2ToByte
        CMP      R0,#+60
        BCC.N    ??RTC_SetAlarm_19
        MOVW     R2,#+1065
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable83_2
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_SetAlarm_19:
        LDR      R0,[R6, #+8]
        CMP      R0,#+0
        BNE.N    ??RTC_SetAlarm_20
        LDRB     R0,[R6, #+12]
        BL       RTC_Bcd2ToByte
        MOVS     R7,R0
        CMP      R7,#+0
        BEQ.N    ??RTC_SetAlarm_21
        CMP      R7,#+32
        BCC.N    ??RTC_SetAlarm_13
??RTC_SetAlarm_21:
        MOVW     R2,#+1070
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable83_3
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
        B.N      ??RTC_SetAlarm_13
??RTC_SetAlarm_20:
        LDRB     R0,[R6, #+12]
        BL       RTC_Bcd2ToByte
        MOVS     R7,R0
        CMP      R7,#+1
        BEQ.N    ??RTC_SetAlarm_13
        CMP      R7,#+2
        BEQ.N    ??RTC_SetAlarm_13
        CMP      R7,#+3
        BEQ.N    ??RTC_SetAlarm_13
        CMP      R7,#+4
        BEQ.N    ??RTC_SetAlarm_13
        CMP      R7,#+5
        BEQ.N    ??RTC_SetAlarm_13
        CMP      R7,#+6
        BEQ.N    ??RTC_SetAlarm_13
        CMP      R7,#+7
        BEQ.N    ??RTC_SetAlarm_13
        MOVW     R2,#+1075
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable83_4
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_SetAlarm_13:
        CMP      R4,#+0
        BEQ.N    ??RTC_SetAlarm_22
        LDRB     R0,[R6, #+0]
        LDRB     R1,[R6, #+1]
        LSLS     R1,R1,#+8
        ORRS     R0,R1,R0, LSL #+16
        LDRB     R1,[R6, #+2]
        ORRS     R0,R1,R0
        LDRB     R1,[R6, #+3]
        ORRS     R0,R0,R1, LSL #+16
        LDRB     R1,[R6, #+12]
        ORRS     R0,R0,R1, LSL #+24
        LDR      R1,[R6, #+8]
        ORRS     R0,R1,R0
        LDR      R1,[R6, #+4]
        ORRS     R0,R1,R0
        MOVS     R7,R0
        B.N      ??RTC_SetAlarm_23
??RTC_SetAlarm_22:
        LDRB     R0,[R6, #+0]
        BL       RTC_ByteToBcd2
        MOV      R8,R0
        LDRB     R0,[R6, #+1]
        BL       RTC_ByteToBcd2
        MOV      R9,R0
        LDRB     R0,[R6, #+2]
        BL       RTC_ByteToBcd2
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LSLS     R1,R9,#+8
        ORRS     R1,R1,R8, LSL #+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ORRS     R0,R0,R1
        LDRB     R1,[R6, #+3]
        ORRS     R8,R0,R1, LSL #+16
        LDRB     R0,[R6, #+12]
        BL       RTC_ByteToBcd2
        ORRS     R0,R8,R0, LSL #+24
        LDR      R1,[R6, #+8]
        ORRS     R0,R1,R0
        LDR      R1,[R6, #+4]
        ORRS     R0,R1,R0
        MOVS     R7,R0
??RTC_SetAlarm_23:
        LDR.N    R0,??DataTable71  ;; 0x40002824
        MOVS     R1,#+202
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable71  ;; 0x40002824
        MOVS     R1,#+83
        STR      R1,[R0, #+0]
        MOV      R0,#+256
        CMP      R5,R0
        BNE.N    ??RTC_SetAlarm_24
        LDR.N    R0,??DataTable69_7  ;; 0x4000281c
        STR      R7,[R0, #+0]
        B.N      ??RTC_SetAlarm_25
??RTC_SetAlarm_24:
        LDR.N    R0,??DataTable69_8  ;; 0x40002820
        STR      R7,[R0, #+0]
??RTC_SetAlarm_25:
        LDR.N    R0,??DataTable71  ;; 0x40002824
        MOVS     R1,#+255
        STR      R1,[R0, #+0]
        POP      {R0,R4-R9,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable69:
        DC32     0x40002800

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable69_1:
        DC32     0x40002804

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable69_2:
        DC32     0x40002808

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable69_3:
        DC32     0x40002814

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable69_4:
        DC32     0x40002810

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable69_5:
        DC32     0x7f00ff

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable69_6:
        DC32     0x40002818

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable69_7:
        DC32     0x4000281c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable69_8:
        DC32     0x40002820

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_AlarmStructInit:
        MOVS     R1,#+0
        STRB     R1,[R0, #+3]
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
        MOVS     R1,#+0
        STRB     R1,[R0, #+2]
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        MOVS     R1,#+1
        STRB     R1,[R0, #+12]
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_GetAlarm:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,#+0
        CMP      R4,#+0
        BEQ.N    ??RTC_GetAlarm_0
        CMP      R4,#+1
        BEQ.N    ??RTC_GetAlarm_0
        MOVW     R2,#+1162
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_RTC_FORMAT(RTC_For...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_GetAlarm_0:
        MOV      R0,#+256
        CMP      R5,R0
        BEQ.N    ??RTC_GetAlarm_1
        MOV      R0,#+512
        CMP      R5,R0
        BEQ.N    ??RTC_GetAlarm_1
        MOVW     R2,#+1163
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable81
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_GetAlarm_1:
        MOV      R0,#+256
        CMP      R5,R0
        BNE.N    ??RTC_GetAlarm_2
        LDR.W    R0,??DataTable84  ;; 0x4000281c
        LDR      R0,[R0, #+0]
        MOVS     R7,R0
        B.N      ??RTC_GetAlarm_3
??RTC_GetAlarm_2:
        LDR.W    R0,??DataTable84_1  ;; 0x40002820
        LDR      R0,[R0, #+0]
        MOVS     R7,R0
??RTC_GetAlarm_3:
        LSRS     R0,R7,#+16
        ANDS     R0,R0,#0x3F
        STRB     R0,[R6, #+0]
        LSRS     R0,R7,#+8
        ANDS     R0,R0,#0x7F
        STRB     R0,[R6, #+1]
        ANDS     R0,R7,#0x7F
        STRB     R0,[R6, #+2]
        LSRS     R0,R7,#+16
        ANDS     R0,R0,#0x40
        STRB     R0,[R6, #+3]
        LSRS     R0,R7,#+24
        ANDS     R0,R0,#0x3F
        STRB     R0,[R6, #+12]
        ANDS     R0,R7,#0x40000000
        STR      R0,[R6, #+8]
        BICS     R0,R7,#0x7F7F7F7F
        STR      R0,[R6, #+4]
        CMP      R4,#+0
        BNE.N    ??RTC_GetAlarm_4
        LDRB     R0,[R6, #+0]
        BL       RTC_Bcd2ToByte
        STRB     R0,[R6, #+0]
        LDRB     R0,[R6, #+1]
        BL       RTC_Bcd2ToByte
        STRB     R0,[R6, #+1]
        LDRB     R0,[R6, #+2]
        BL       RTC_Bcd2ToByte
        STRB     R0,[R6, #+2]
        LDRB     R0,[R6, #+12]
        BL       RTC_Bcd2ToByte
        STRB     R0,[R6, #+12]
??RTC_GetAlarm_4:
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable70:
        DC32     0x40002840

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable70_1:
        DC32     `?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable70_2:
        DC32     `?<Constant "IS_RTC_HOUR_FORMAT(RT...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable70_3:
        DC32     `?<Constant "IS_RTC_ASYNCH_PREDIV(...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable70_4:
        DC32     `?<Constant "IS_RTC_SYNCH_PREDIV(R...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_AlarmCmd:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R6,#+0
        MOVS     R7,#+0
        MOV      R0,#+768
        TST      R4,R0
        BNE.N    ??RTC_AlarmCmd_0
        MOVW     R2,#+1218
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable84_2
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_AlarmCmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RTC_AlarmCmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??RTC_AlarmCmd_1
        MOVW     R2,#+1219
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_AlarmCmd_1:
        LDR.N    R0,??DataTable71  ;; 0x40002824
        MOVS     R1,#+202
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable71  ;; 0x40002824
        MOVS     R1,#+83
        STR      R1,[R0, #+0]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RTC_AlarmCmd_2
        LDR.W    R0,??DataTable84_3  ;; 0x40002808
        LDR      R0,[R0, #+0]
        ORRS     R0,R4,R0
        LDR.W    R1,??DataTable84_3  ;; 0x40002808
        STR      R0,[R1, #+0]
        MOVS     R0,#+1
        MOVS     R7,R0
        B.N      ??RTC_AlarmCmd_3
??RTC_AlarmCmd_2:
        LDR.W    R0,??DataTable84_3  ;; 0x40002808
        LDR      R0,[R0, #+0]
        BICS     R0,R0,R4
        LDR.W    R1,??DataTable84_3  ;; 0x40002808
        STR      R0,[R1, #+0]
??RTC_AlarmCmd_4:
        LDR.N    R0,??DataTable72  ;; 0x4000280c
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,R4, LSR #+8
        MOVS     R6,R0
        LDR      R0,[SP, #+0]
        ADDS     R0,R0,#+1
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        CMP      R0,#+65536
        BEQ.N    ??RTC_AlarmCmd_5
        CMP      R6,#+0
        BEQ.N    ??RTC_AlarmCmd_4
??RTC_AlarmCmd_5:
        LDR.N    R0,??DataTable72  ;; 0x4000280c
        LDR      R0,[R0, #+0]
        TST      R0,R4, LSR #+8
        BNE.N    ??RTC_AlarmCmd_6
        MOVS     R0,#+0
        MOVS     R7,R0
        B.N      ??RTC_AlarmCmd_3
??RTC_AlarmCmd_6:
        MOVS     R0,#+1
        MOVS     R7,R0
??RTC_AlarmCmd_3:
        LDR.N    R0,??DataTable71  ;; 0x40002824
        MOVS     R1,#+255
        STR      R1,[R0, #+0]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable71:
        DC32     0x40002824

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable71_1:
        DC32     `?<Constant "IS_FUNCTIONAL_STATE(N...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_WakeUpClockConfig:
        PUSH     {R4,LR}
        MOVS     R4,R0
        CMP      R4,#+0
        BEQ.N    ??RTC_WakeUpClockConfig_0
        CMP      R4,#+1
        BEQ.N    ??RTC_WakeUpClockConfig_0
        CMP      R4,#+2
        BEQ.N    ??RTC_WakeUpClockConfig_0
        CMP      R4,#+3
        BEQ.N    ??RTC_WakeUpClockConfig_0
        CMP      R4,#+4
        BEQ.N    ??RTC_WakeUpClockConfig_0
        CMP      R4,#+6
        BEQ.N    ??RTC_WakeUpClockConfig_0
        MOVW     R2,#+1295
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable84_4
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_WakeUpClockConfig_0:
        LDR.W    R0,??DataTable86  ;; 0x40002824
        MOVS     R1,#+202
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable86  ;; 0x40002824
        MOVS     R1,#+83
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable84_3  ;; 0x40002808
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+3
        LSLS     R0,R0,#+3
        LDR.W    R1,??DataTable84_3  ;; 0x40002808
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable84_3  ;; 0x40002808
        LDR      R0,[R0, #+0]
        ORRS     R0,R4,R0
        LDR.W    R1,??DataTable84_3  ;; 0x40002808
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable86  ;; 0x40002824
        MOVS     R1,#+255
        STR      R1,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable72:
        DC32     0x4000280c

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_SetWakeUpCounter:
        PUSH     {R4,LR}
        MOVS     R4,R0
        CMP      R4,#+65536
        BCC.N    ??RTC_SetWakeUpCounter_0
        MOVW     R2,#+1322
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable85
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_SetWakeUpCounter_0:
        LDR.W    R0,??DataTable86  ;; 0x40002824
        MOVS     R1,#+202
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable86  ;; 0x40002824
        MOVS     R1,#+83
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable85_1  ;; 0x40002814
        STR      R4,[R0, #+0]
        LDR.W    R0,??DataTable86  ;; 0x40002824
        MOVS     R1,#+255
        STR      R1,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_GetWakeUpCounter:
        LDR.W    R0,??DataTable85_1  ;; 0x40002814
        LDR      R0,[R0, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable74:
        DC32     0x4000280c

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_WakeUpCmd:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R5,#+0
        MOVS     R6,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??RTC_WakeUpCmd_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??RTC_WakeUpCmd_0
        MOVW     R2,#+1359
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_WakeUpCmd_0:
        LDR.W    R0,??DataTable86  ;; 0x40002824
        MOVS     R1,#+202
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable86  ;; 0x40002824
        MOVS     R1,#+83
        STR      R1,[R0, #+0]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??RTC_WakeUpCmd_1
        LDR.W    R0,??DataTable84_3  ;; 0x40002808
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR.W    R1,??DataTable84_3  ;; 0x40002808
        STR      R0,[R1, #+0]
        MOVS     R0,#+1
        MOVS     R6,R0
        B.N      ??RTC_WakeUpCmd_2
??RTC_WakeUpCmd_1:
        LDR.W    R0,??DataTable84_3  ;; 0x40002808
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x400
        LDR.W    R1,??DataTable84_3  ;; 0x40002808
        STR      R0,[R1, #+0]
??RTC_WakeUpCmd_3:
        LDR.W    R0,??DataTable86_1  ;; 0x4000280c
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x4
        MOVS     R5,R0
        LDR      R0,[SP, #+0]
        ADDS     R0,R0,#+1
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        CMP      R0,#+65536
        BEQ.N    ??RTC_WakeUpCmd_4
        CMP      R5,#+0
        BEQ.N    ??RTC_WakeUpCmd_3
??RTC_WakeUpCmd_4:
        LDR.W    R0,??DataTable86_1  ;; 0x4000280c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+29
        BMI.N    ??RTC_WakeUpCmd_5
        MOVS     R0,#+0
        MOVS     R6,R0
        B.N      ??RTC_WakeUpCmd_2
??RTC_WakeUpCmd_5:
        MOVS     R0,#+1
        MOVS     R6,R0
??RTC_WakeUpCmd_2:
        LDR.W    R0,??DataTable86  ;; 0x40002824
        MOVS     R1,#+255
        STR      R1,[R0, #+0]
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4-R6,PC}  ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75:
        DC32     `?<Constant "IS_RTC_FORMAT(RTC_For...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable75_1:
        DC32     `?<Constant "IS_RTC_HOUR12(RTC_Tim...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_FUNCTIONAL_STATE(N...">`:
        ; Initializer data, 32 bytes
        DC8 73, 83, 95, 70, 85, 78, 67, 84, 73, 79
        DC8 78, 65, 76, 95, 83, 84, 65, 84, 69, 40
        DC8 78, 101, 119, 83, 116, 97, 116, 101, 41, 0
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_DayLightSavingConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        CMP      R4,#+131072
        BEQ.N    ??RTC_DayLightSavingConfig_0
        CMP      R4,#+65536
        BEQ.N    ??RTC_DayLightSavingConfig_0
        MOV      R2,#+1432
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable88
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_DayLightSavingConfig_0:
        CMP      R5,#+0
        BEQ.N    ??RTC_DayLightSavingConfig_1
        CMP      R5,#+262144
        BEQ.N    ??RTC_DayLightSavingConfig_1
        MOVW     R2,#+1433
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable88_1
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_DayLightSavingConfig_1:
        LDR.W    R0,??DataTable86  ;; 0x40002824
        MOVS     R1,#+202
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable86  ;; 0x40002824
        MOVS     R1,#+83
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable84_3  ;; 0x40002808
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x40000
        LDR.W    R1,??DataTable84_3  ;; 0x40002808
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable84_3  ;; 0x40002808
        LDR      R0,[R0, #+0]
        ORRS     R1,R5,R4
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable84_3  ;; 0x40002808
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable86  ;; 0x40002824
        MOVS     R1,#+255
        STR      R1,[R0, #+0]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable76:
        DC32     `?<Constant "IS_RTC_H12(RTC_TimeSt...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable76_1:
        DC32     `?<Constant "IS_RTC_HOUR24(RTC_Tim...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable76_2:
        DC32     `?<Constant "IS_RTC_MINUTES(RTC_Ti...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable76_3:
        DC32     `?<Constant "IS_RTC_SECONDS(RTC_Ti...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable76_4:
        DC32     `?<Constant "IS_RTC_HOUR12(tmpreg)">`

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
        DC8 116, 109, 51, 50, 102, 50, 120, 120, 95, 114
        DC8 116, 99, 46, 99, 0, 0

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_GetStoreOperation:
        LDR.W    R0,??DataTable84_3  ;; 0x40002808
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x40000
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable77:
        DC32     `?<Constant "IS_RTC_HOUR24(RTC_Bcd...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable77_1:
        DC32     `?<Constant "IS_RTC_MINUTES(RTC_Bc...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable77_2:
        DC32     `?<Constant "IS_RTC_SECONDS(RTC_Bc...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_OutputConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        CMP      R4,#+0
        BEQ.N    ??RTC_OutputConfig_0
        CMP      R4,#+2097152
        BEQ.N    ??RTC_OutputConfig_0
        CMP      R4,#+4194304
        BEQ.N    ??RTC_OutputConfig_0
        CMP      R4,#+6291456
        BEQ.N    ??RTC_OutputConfig_0
        MOVW     R2,#+1498
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable90
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_OutputConfig_0:
        CMP      R5,#+0
        BEQ.N    ??RTC_OutputConfig_1
        CMP      R5,#+1048576
        BEQ.N    ??RTC_OutputConfig_1
        MOVW     R2,#+1499
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable91
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_OutputConfig_1:
        LDR.W    R0,??DataTable86  ;; 0x40002824
        MOVS     R1,#+202
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable86  ;; 0x40002824
        MOVS     R1,#+83
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable84_3  ;; 0x40002808
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700000
        LDR.W    R1,??DataTable84_3  ;; 0x40002808
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable84_3  ;; 0x40002808
        LDR      R0,[R0, #+0]
        ORRS     R1,R5,R4
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable84_3  ;; 0x40002808
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable86  ;; 0x40002824
        MOVS     R1,#+255
        STR      R1,[R0, #+0]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable78:
        DC32     0x7f7f7f

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_CoarseCalibConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        CMP      R4,#+0
        BEQ.N    ??RTC_CoarseCalibConfig_0
        CMP      R4,#+128
        BEQ.N    ??RTC_CoarseCalibConfig_0
        MOVW     R2,#+1554
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable91_1
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_CoarseCalibConfig_0:
        CMP      R5,#+32
        BCC.N    ??RTC_CoarseCalibConfig_1
        MOVW     R2,#+1555
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable91_2
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_CoarseCalibConfig_1:
        LDR.W    R0,??DataTable86  ;; 0x40002824
        MOVS     R1,#+202
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable86  ;; 0x40002824
        MOVS     R1,#+83
        STR      R1,[R0, #+0]
        BL       RTC_EnterInitMode
        CMP      R0,#+0
        BNE.N    ??RTC_CoarseCalibConfig_2
        MOVS     R0,#+0
        MOVS     R6,R0
        B.N      ??RTC_CoarseCalibConfig_3
??RTC_CoarseCalibConfig_2:
        ORRS     R0,R5,R4
        LDR.W    R1,??DataTable92  ;; 0x40002818
        STR      R0,[R1, #+0]
        BL       RTC_ExitInitMode
        MOVS     R0,#+1
        MOVS     R6,R0
??RTC_CoarseCalibConfig_3:
        LDR.W    R0,??DataTable86  ;; 0x40002824
        MOVS     R1,#+255
        STR      R1,[R0, #+0]
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79:
        DC32     `?<Constant "IS_RTC_YEAR(RTC_DateS...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_1:
        DC32     `?<Constant "IS_RTC_MONTH(RTC_Date...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_2:
        DC32     `?<Constant "IS_RTC_DATE(RTC_DateS...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_3:
        DC32     `?<Constant "IS_RTC_YEAR(RTC_Bcd2T...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_4:
        DC32     `?<Constant "IS_RTC_MONTH(tmpreg)">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_5:
        DC32     `?<Constant "IS_RTC_DATE(tmpreg)">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable79_6:
        DC32     `?<Constant "IS_RTC_WEEKDAY(RTC_Da...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_RTC_FORMAT(RTC_For...">`:
        ; Initializer data, 28 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 70, 79, 82
        DC8 77, 65, 84, 40, 82, 84, 67, 95, 70, 111
        DC8 114, 109, 97, 116, 41, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_RTC_HOUR12(tmpreg)">`:
        ; Initializer data, 24 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 72, 79, 85
        DC8 82, 49, 50, 40, 116, 109, 112, 114, 101, 103
        DC8 41, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_CoarseCalibCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??RTC_CoarseCalibCmd_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??RTC_CoarseCalibCmd_0
        MOVW     R2,#+1595
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_CoarseCalibCmd_0:
        LDR.W    R0,??DataTable86  ;; 0x40002824
        MOVS     R1,#+202
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable86  ;; 0x40002824
        MOVS     R1,#+83
        STR      R1,[R0, #+0]
        BL       RTC_EnterInitMode
        CMP      R0,#+0
        BNE.N    ??RTC_CoarseCalibCmd_1
        MOVS     R0,#+0
        MOVS     R5,R0
        B.N      ??RTC_CoarseCalibCmd_2
??RTC_CoarseCalibCmd_1:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??RTC_CoarseCalibCmd_3
        LDR.W    R0,??DataTable84_3  ;; 0x40002808
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.W    R1,??DataTable84_3  ;; 0x40002808
        STR      R0,[R1, #+0]
        B.N      ??RTC_CoarseCalibCmd_4
??RTC_CoarseCalibCmd_3:
        LDR.W    R0,??DataTable84_3  ;; 0x40002808
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x80
        LDR.W    R1,??DataTable84_3  ;; 0x40002808
        STR      R0,[R1, #+0]
??RTC_CoarseCalibCmd_4:
        BL       RTC_ExitInitMode
        MOVS     R0,#+1
        MOVS     R5,R0
??RTC_CoarseCalibCmd_2:
        LDR.W    R0,??DataTable86  ;; 0x40002824
        MOVS     R1,#+255
        STR      R1,[R0, #+0]
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable80:
        DC32     0xffff3f

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_CalibOutputCmd:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??RTC_CalibOutputCmd_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??RTC_CalibOutputCmd_0
        MOVW     R2,#+1639
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_CalibOutputCmd_0:
        LDR.W    R0,??DataTable86  ;; 0x40002824
        MOVS     R1,#+202
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable86  ;; 0x40002824
        MOVS     R1,#+83
        STR      R1,[R0, #+0]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??RTC_CalibOutputCmd_1
        LDR.W    R0,??DataTable84_3  ;; 0x40002808
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x800000
        LDR.W    R1,??DataTable84_3  ;; 0x40002808
        STR      R0,[R1, #+0]
        B.N      ??RTC_CalibOutputCmd_2
??RTC_CalibOutputCmd_1:
        LDR.W    R0,??DataTable84_3  ;; 0x40002808
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x800000
        LDR.W    R1,??DataTable84_3  ;; 0x40002808
        STR      R0,[R1, #+0]
??RTC_CalibOutputCmd_2:
        LDR.W    R0,??DataTable86  ;; 0x40002824
        MOVS     R1,#+255
        STR      R1,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable81:
        DC32     `?<Constant "IS_RTC_ALARM(RTC_Alarm)">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_TimeStampCmd:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        CMP      R4,#+0
        BEQ.N    ??RTC_TimeStampCmd_0
        CMP      R4,#+8
        BEQ.N    ??RTC_TimeStampCmd_0
        MOV      R2,#+1696
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        LDR.W    R0,??DataTable95
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_TimeStampCmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RTC_TimeStampCmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??RTC_TimeStampCmd_1
        MOVW     R2,#+1697
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_FUNCTIONAL_STATE(N...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_TimeStampCmd_1:
        LDR.W    R0,??DataTable84_3  ;; 0x40002808
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable95_1  ;; 0xfffff7f7
        ANDS     R0,R1,R0
        MOVS     R6,R0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RTC_TimeStampCmd_2
        ORRS     R0,R4,#0x800
        ORRS     R6,R0,R6
        B.N      ??RTC_TimeStampCmd_3
??RTC_TimeStampCmd_2:
        ORRS     R6,R4,R6
??RTC_TimeStampCmd_3:
        LDR.W    R0,??DataTable86  ;; 0x40002824
        MOVS     R1,#+202
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable86  ;; 0x40002824
        MOVS     R1,#+83
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable84_3  ;; 0x40002808
        STR      R6,[R0, #+0]
        LDR.W    R0,??DataTable86  ;; 0x40002824
        MOVS     R1,#+255
        STR      R1,[R0, #+0]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable82:
        DC32     `?<Constant "IS_ALARM_MASK(RTC_Ala...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable82_1:
        DC32     `?<Constant "IS_RTC_ALARM_DATE_WEE...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable82_2:
        DC32     `?<Constant "IS_RTC_HOUR12(RTC_Ala...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable82_3:
        DC32     `?<Constant "IS_RTC_H12(RTC_AlarmS...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable82_4:
        DC32     `?<Constant "IS_RTC_HOUR24(RTC_Ala...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable82_5:
        DC32     `?<Constant "IS_RTC_MINUTES(RTC_Al...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable82_6:
        DC32     `?<Constant "IS_RTC_SECONDS(RTC_Al...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable82_7:
        DC32     `?<Constant "IS_RTC_ALARM_DATE_WEE...">_1`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable82_8:
        DC32     `?<Constant "IS_RTC_ALARM_DATE_WEE...">_2`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_GetTimeStamp:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,#+0
        MOVS     R8,#+0
        CMP      R4,#+0
        BEQ.N    ??RTC_GetTimeStamp_0
        CMP      R4,#+1
        BEQ.N    ??RTC_GetTimeStamp_0
        MOVW     R2,#+1741
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_RTC_FORMAT(RTC_For...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_GetTimeStamp_0:
        LDR.W    R0,??DataTable95_2  ;; 0x40002830
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable95_3  ;; 0x7f7f7f
        ANDS     R0,R1,R0
        MOVS     R7,R0
        LDR.W    R0,??DataTable95_4  ;; 0x40002834
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable95_5  ;; 0xffff3f
        ANDS     R0,R1,R0
        MOV      R8,R0
        LSRS     R0,R7,#+16
        ANDS     R0,R0,#0x3F
        STRB     R0,[R5, #+0]
        LSRS     R0,R7,#+8
        ANDS     R0,R0,#0x7F
        STRB     R0,[R5, #+1]
        ANDS     R0,R7,#0x7F
        STRB     R0,[R5, #+2]
        LSRS     R0,R7,#+16
        ANDS     R0,R0,#0x40
        STRB     R0,[R5, #+3]
        MOVS     R0,#+0
        STRB     R0,[R6, #+3]
        LSRS     R0,R8,#+8
        ANDS     R0,R0,#0x1F
        STRB     R0,[R6, #+1]
        ANDS     R0,R8,#0x3F
        STRB     R0,[R6, #+2]
        LSRS     R0,R8,#+13
        ANDS     R0,R0,#0x7
        STRB     R0,[R6, #+0]
        CMP      R4,#+0
        BNE.N    ??RTC_GetTimeStamp_1
        LDRB     R0,[R5, #+0]
        BL       RTC_Bcd2ToByte
        STRB     R0,[R5, #+0]
        LDRB     R0,[R5, #+1]
        BL       RTC_Bcd2ToByte
        STRB     R0,[R5, #+1]
        LDRB     R0,[R5, #+2]
        BL       RTC_Bcd2ToByte
        STRB     R0,[R5, #+2]
        LDRB     R0,[R6, #+1]
        BL       RTC_Bcd2ToByte
        STRB     R0,[R6, #+1]
        LDRB     R0,[R6, #+2]
        BL       RTC_Bcd2ToByte
        STRB     R0,[R6, #+2]
        LDRB     R0,[R6, #+0]
        BL       RTC_Bcd2ToByte
        STRB     R0,[R6, #+0]
??RTC_GetTimeStamp_1:
        POP      {R4-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable83:
        DC32     `?<Constant "IS_RTC_HOUR24(RTC_Bcd...">_1`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable83_1:
        DC32     `?<Constant "IS_RTC_MINUTES(RTC_Bc...">_1`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable83_2:
        DC32     `?<Constant "IS_RTC_SECONDS(RTC_Bc...">_1`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable83_3:
        DC32     `?<Constant "IS_RTC_ALARM_DATE_WEE...">_3`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable83_4:
        DC32     `?<Constant "IS_RTC_ALARM_DATE_WEE...">_4`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_TamperTriggerConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        CMP      R4,#+1
        BEQ.N    ??RTC_TamperTriggerConfig_0
        MOVW     R2,#+1804
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_RTC_TAMPER(RTC_Tam...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_TamperTriggerConfig_0:
        CMP      R5,#+0
        BEQ.N    ??RTC_TamperTriggerConfig_1
        CMP      R5,#+1
        BEQ.N    ??RTC_TamperTriggerConfig_1
        MOVW     R2,#+1805
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_RTC_TAMPER_TRIGGER...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_TamperTriggerConfig_1:
        CMP      R5,#+0
        BNE.N    ??RTC_TamperTriggerConfig_2
        LDR.W    R0,??DataTable95_6  ;; 0x40002840
        LDR      R0,[R0, #+0]
        BICS     R0,R0,R4, LSL #+1
        LDR.W    R1,??DataTable95_6  ;; 0x40002840
        STR      R0,[R1, #+0]
        B.N      ??RTC_TamperTriggerConfig_3
??RTC_TamperTriggerConfig_2:
        LDR.W    R0,??DataTable95_6  ;; 0x40002840
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,R4, LSL #+1
        LDR.W    R1,??DataTable95_6  ;; 0x40002840
        STR      R0,[R1, #+0]
??RTC_TamperTriggerConfig_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable84:
        DC32     0x4000281c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable84_1:
        DC32     0x40002820

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable84_2:
        DC32     `?<Constant "IS_RTC_CMD_ALARM(RTC_...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable84_3:
        DC32     0x40002808

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable84_4:
        DC32     `?<Constant "IS_RTC_WAKEUP_CLOCK(R...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_TamperCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        CMP      R4,#+1
        BEQ.N    ??RTC_TamperCmd_0
        MOVW     R2,#+1830
        ADR.W    R1,`?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`
        ADR.W    R0,`?<Constant "IS_RTC_TAMPER(RTC_Tam...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_TamperCmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RTC_TamperCmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??RTC_TamperCmd_1
        MOVW     R2,#+1831
        LDR.W    R1,??DataTable95_7
        LDR.W    R0,??DataTable95_8
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_TamperCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RTC_TamperCmd_2
        LDR.W    R0,??DataTable95_6  ;; 0x40002840
        LDR      R0,[R0, #+0]
        ORRS     R0,R4,R0
        LDR.W    R1,??DataTable95_6  ;; 0x40002840
        STR      R0,[R1, #+0]
        B.N      ??RTC_TamperCmd_3
??RTC_TamperCmd_2:
        LDR.W    R0,??DataTable95_6  ;; 0x40002840
        LDR      R0,[R0, #+0]
        BICS     R0,R0,R4
        LDR.W    R1,??DataTable95_6  ;; 0x40002840
        STR      R0,[R1, #+0]
??RTC_TamperCmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable85:
        DC32     `?<Constant "IS_RTC_WAKEUP_COUNTER...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable85_1:
        DC32     0x40002814

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_WriteBackupRegister:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        CMP      R4,#+0
        BEQ.N    ??RTC_WriteBackupRegister_0
        CMP      R4,#+1
        BEQ.N    ??RTC_WriteBackupRegister_0
        CMP      R4,#+2
        BEQ.N    ??RTC_WriteBackupRegister_0
        CMP      R4,#+3
        BEQ.N    ??RTC_WriteBackupRegister_0
        CMP      R4,#+4
        BEQ.N    ??RTC_WriteBackupRegister_0
        CMP      R4,#+5
        BEQ.N    ??RTC_WriteBackupRegister_0
        CMP      R4,#+6
        BEQ.N    ??RTC_WriteBackupRegister_0
        CMP      R4,#+7
        BEQ.N    ??RTC_WriteBackupRegister_0
        CMP      R4,#+8
        BEQ.N    ??RTC_WriteBackupRegister_0
        CMP      R4,#+9
        BEQ.N    ??RTC_WriteBackupRegister_0
        CMP      R4,#+10
        BEQ.N    ??RTC_WriteBackupRegister_0
        CMP      R4,#+11
        BEQ.N    ??RTC_WriteBackupRegister_0
        CMP      R4,#+12
        BEQ.N    ??RTC_WriteBackupRegister_0
        CMP      R4,#+13
        BEQ.N    ??RTC_WriteBackupRegister_0
        CMP      R4,#+14
        BEQ.N    ??RTC_WriteBackupRegister_0
        CMP      R4,#+15
        BEQ.N    ??RTC_WriteBackupRegister_0
        CMP      R4,#+16
        BEQ.N    ??RTC_WriteBackupRegister_0
        CMP      R4,#+17
        BEQ.N    ??RTC_WriteBackupRegister_0
        CMP      R4,#+18
        BEQ.N    ??RTC_WriteBackupRegister_0
        CMP      R4,#+19
        BEQ.N    ??RTC_WriteBackupRegister_0
        MOVW     R2,#+1874
        LDR.W    R1,??DataTable95_7
        ADR.W    R0,`?<Constant "IS_RTC_BKP(RTC_BKP_DR)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_WriteBackupRegister_0:
        LDR.W    R0,??DataTable95_9  ;; 0x40002850
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        ADDS     R0,R0,R4, LSL #+2
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        STR      R5,[R0, #+0]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable86:
        DC32     0x40002824

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable86_1:
        DC32     0x4000280c

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_ReadBackupRegister:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        CMP      R4,#+0
        BEQ.N    ??RTC_ReadBackupRegister_0
        CMP      R4,#+1
        BEQ.N    ??RTC_ReadBackupRegister_0
        CMP      R4,#+2
        BEQ.N    ??RTC_ReadBackupRegister_0
        CMP      R4,#+3
        BEQ.N    ??RTC_ReadBackupRegister_0
        CMP      R4,#+4
        BEQ.N    ??RTC_ReadBackupRegister_0
        CMP      R4,#+5
        BEQ.N    ??RTC_ReadBackupRegister_0
        CMP      R4,#+6
        BEQ.N    ??RTC_ReadBackupRegister_0
        CMP      R4,#+7
        BEQ.N    ??RTC_ReadBackupRegister_0
        CMP      R4,#+8
        BEQ.N    ??RTC_ReadBackupRegister_0
        CMP      R4,#+9
        BEQ.N    ??RTC_ReadBackupRegister_0
        CMP      R4,#+10
        BEQ.N    ??RTC_ReadBackupRegister_0
        CMP      R4,#+11
        BEQ.N    ??RTC_ReadBackupRegister_0
        CMP      R4,#+12
        BEQ.N    ??RTC_ReadBackupRegister_0
        CMP      R4,#+13
        BEQ.N    ??RTC_ReadBackupRegister_0
        CMP      R4,#+14
        BEQ.N    ??RTC_ReadBackupRegister_0
        CMP      R4,#+15
        BEQ.N    ??RTC_ReadBackupRegister_0
        CMP      R4,#+16
        BEQ.N    ??RTC_ReadBackupRegister_0
        CMP      R4,#+17
        BEQ.N    ??RTC_ReadBackupRegister_0
        CMP      R4,#+18
        BEQ.N    ??RTC_ReadBackupRegister_0
        CMP      R4,#+19
        BEQ.N    ??RTC_ReadBackupRegister_0
        MOVW     R2,#+1895
        LDR.W    R1,??DataTable95_7
        ADR.W    R0,`?<Constant "IS_RTC_BKP(RTC_BKP_DR)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_ReadBackupRegister_0:
        LDR.W    R0,??DataTable95_9  ;; 0x40002850
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        ADDS     R0,R0,R4, LSL #+2
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        LDR      R0,[R0, #+0]
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_TamperPinSelection:
        PUSH     {R4,LR}
        MOVS     R4,R0
        CMP      R4,#+0
        BEQ.N    ??RTC_TamperPinSelection_0
        CMP      R4,#+65536
        BEQ.N    ??RTC_TamperPinSelection_0
        MOVW     R2,#+1933
        LDR.W    R1,??DataTable95_7
        ADR.W    R0,`?<Constant "IS_RTC_TAMPER_PIN(RTC...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_TamperPinSelection_0:
        LDR.W    R0,??DataTable95_6  ;; 0x40002840
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x10000
        LDR.W    R1,??DataTable95_6  ;; 0x40002840
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable95_6  ;; 0x40002840
        LDR      R0,[R0, #+0]
        ORRS     R0,R4,R0
        LDR.W    R1,??DataTable95_6  ;; 0x40002840
        STR      R0,[R1, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable88:
        DC32     `?<Constant "IS_RTC_DAYLIGHT_SAVIN...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable88_1:
        DC32     `?<Constant "IS_RTC_STORE_OPERATIO...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_TimeStampPinSelection:
        PUSH     {R4,LR}
        MOVS     R4,R0
        CMP      R4,#+0
        BEQ.N    ??RTC_TimeStampPinSelection_0
        CMP      R4,#+131072
        BEQ.N    ??RTC_TimeStampPinSelection_0
        MOVW     R2,#+1950
        LDR.N    R1,??DataTable95_7
        ADR.W    R0,`?<Constant "IS_RTC_TIMESTAMP_PIN(...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_TimeStampPinSelection_0:
        LDR.N    R0,??DataTable95_6  ;; 0x40002840
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x20000
        LDR.N    R1,??DataTable95_6  ;; 0x40002840
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable95_6  ;; 0x40002840
        LDR      R0,[R0, #+0]
        ORRS     R0,R4,R0
        LDR.N    R1,??DataTable95_6  ;; 0x40002840
        STR      R0,[R1, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_OutputTypeConfig:
        PUSH     {R4,LR}
        MOVS     R4,R0
        CMP      R4,#+0
        BEQ.N    ??RTC_OutputTypeConfig_0
        CMP      R4,#+262144
        BEQ.N    ??RTC_OutputTypeConfig_0
        MOVW     R2,#+1969
        LDR.N    R1,??DataTable95_7
        ADR.W    R0,`?<Constant "IS_RTC_OUTPUT_TYPE(RT...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_OutputTypeConfig_0:
        LDR.N    R0,??DataTable95_6  ;; 0x40002840
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x40000
        LDR.N    R1,??DataTable95_6  ;; 0x40002840
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable95_6  ;; 0x40002840
        LDR      R0,[R0, #+0]
        ORRS     R0,R4,R0
        LDR.N    R1,??DataTable95_6  ;; 0x40002840
        STR      R0,[R1, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable90:
        DC32     `?<Constant "IS_RTC_OUTPUT(RTC_Out...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_ITConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        CMP      R4,#+0
        BEQ.N    ??RTC_ITConfig_0
        LDR.N    R0,??DataTable95_10  ;; 0xffff0ffb
        TST      R4,R0
        BEQ.N    ??RTC_ITConfig_1
??RTC_ITConfig_0:
        MOV      R2,#+2040
        LDR.N    R1,??DataTable95_7
        ADR.W    R0,`?<Constant "IS_RTC_CONFIG_IT(RTC_IT)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_ITConfig_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RTC_ITConfig_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??RTC_ITConfig_2
        MOVW     R2,#+2041
        LDR.N    R1,??DataTable95_7
        LDR.N    R0,??DataTable95_8
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_ITConfig_2:
        LDR.N    R0,??DataTable95_11  ;; 0x40002824
        MOVS     R1,#+202
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable95_11  ;; 0x40002824
        MOVS     R1,#+83
        STR      R1,[R0, #+0]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RTC_ITConfig_3
        LDR.N    R0,??DataTable95_12  ;; 0x40002808
        LDR      R0,[R0, #+0]
        BICS     R1,R4,#0x4
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable95_12  ;; 0x40002808
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable95_6  ;; 0x40002840
        LDR      R0,[R0, #+0]
        ANDS     R1,R4,#0x4
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable95_6  ;; 0x40002840
        STR      R0,[R1, #+0]
        B.N      ??RTC_ITConfig_4
??RTC_ITConfig_3:
        LDR.N    R0,??DataTable95_12  ;; 0x40002808
        LDR      R0,[R0, #+0]
        BICS     R1,R4,#0x4
        BICS     R0,R0,R1
        LDR.N    R1,??DataTable95_12  ;; 0x40002808
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable95_6  ;; 0x40002840
        LDR      R0,[R0, #+0]
        ANDS     R1,R4,#0x4
        BICS     R0,R0,R1
        LDR.N    R1,??DataTable95_6  ;; 0x40002840
        STR      R0,[R1, #+0]
??RTC_ITConfig_4:
        LDR.N    R0,??DataTable95_11  ;; 0x40002824
        MOVS     R1,#+255
        STR      R1,[R0, #+0]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable91:
        DC32     `?<Constant "IS_RTC_OUTPUT_POL(RTC...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable91_1:
        DC32     `?<Constant "IS_RTC_CALIB_SIGN(RTC...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable91_2:
        DC32     `?<Constant "IS_RTC_CALIB_VALUE(Va...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_GetFlagStatus:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        MOVS     R6,#+0
        CMP      R4,#+4096
        BEQ.N    ??RTC_GetFlagStatus_0
        CMP      R4,#+2048
        BEQ.N    ??RTC_GetFlagStatus_0
        CMP      R4,#+1024
        BEQ.N    ??RTC_GetFlagStatus_0
        MOV      R0,#+512
        CMP      R4,R0
        BEQ.N    ??RTC_GetFlagStatus_0
        MOV      R0,#+256
        CMP      R4,R0
        BEQ.N    ??RTC_GetFlagStatus_0
        CMP      R4,#+64
        BEQ.N    ??RTC_GetFlagStatus_0
        CMP      R4,#+32
        BEQ.N    ??RTC_GetFlagStatus_0
        CMP      R4,#+4
        BEQ.N    ??RTC_GetFlagStatus_0
        CMP      R4,#+2
        BEQ.N    ??RTC_GetFlagStatus_0
        CMP      R4,#+1
        BEQ.N    ??RTC_GetFlagStatus_0
        CMP      R4,#+8192
        BEQ.N    ??RTC_GetFlagStatus_0
        MOVW     R2,#+2089
        LDR.N    R1,??DataTable95_7
        ADR.W    R0,`?<Constant "IS_RTC_GET_FLAG(RTC_F...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_GetFlagStatus_0:
        LDR.N    R0,??DataTable95_13  ;; 0x4000280c
        LDR      R0,[R0, #+0]
        MOVW     R1,#+16247
        ANDS     R0,R1,R0
        MOVS     R6,R0
        TST      R6,R4
        BEQ.N    ??RTC_GetFlagStatus_1
        MOVS     R0,#+1
        MOVS     R5,R0
        B.N      ??RTC_GetFlagStatus_2
??RTC_GetFlagStatus_1:
        MOVS     R0,#+0
        MOVS     R5,R0
??RTC_GetFlagStatus_2:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable92:
        DC32     0x40002818

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_ClearFlag:
        PUSH     {R4,LR}
        MOVS     R4,R0
        CMP      R4,#+0
        BEQ.N    ??RTC_ClearFlag_0
        LDR.N    R0,??DataTable95_14  ;; 0xffffc0df
        TST      R4,R0
        BEQ.N    ??RTC_ClearFlag_1
??RTC_ClearFlag_0:
        MOVW     R2,#+2122
        LDR.N    R1,??DataTable95_7
        ADR.W    R0,`?<Constant "IS_RTC_CLEAR_FLAG(RTC...">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_ClearFlag_1:
        UXTH     R0,R4            ;; ZeroExt  R0,R4,#+16,#+16
        ORRS     R0,R0,#0x80
        LDR.N    R1,??DataTable95_13  ;; 0x4000280c
        LDR      R1,[R1, #+0]
        ANDS     R1,R1,#0x80
        ORNS     R0,R1,R0
        LDR.N    R1,??DataTable95_13  ;; 0x4000280c
        STR      R0,[R1, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_GetITStatus:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        MOVS     R6,#+0
        MOVS     R7,#+0
        CMP      R4,#+32768
        BEQ.N    ??RTC_GetITStatus_0
        CMP      R4,#+16384
        BEQ.N    ??RTC_GetITStatus_0
        CMP      R4,#+8192
        BEQ.N    ??RTC_GetITStatus_0
        CMP      R4,#+4096
        BEQ.N    ??RTC_GetITStatus_0
        CMP      R4,#+131072
        BEQ.N    ??RTC_GetITStatus_0
        MOVW     R2,#+2145
        LDR.N    R1,??DataTable95_7
        ADR.W    R0,`?<Constant "IS_RTC_GET_IT(RTC_IT)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_GetITStatus_0:
        LDR.N    R0,??DataTable95_6  ;; 0x40002840
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x4
        MOVS     R6,R0
        LDR.N    R0,??DataTable95_12  ;; 0x40002808
        LDR      R0,[R0, #+0]
        ANDS     R0,R4,R0
        ANDS     R1,R6,R4, LSR #+15
        ORRS     R0,R1,R0
        MOVS     R7,R0
        LDR.N    R0,??DataTable95_13  ;; 0x4000280c
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,R4, LSR #+4
        MOVS     R6,R0
        CMP      R7,#+0
        BEQ.N    ??RTC_GetITStatus_1
        LSLS     R0,R6,#+16
        BEQ.N    ??RTC_GetITStatus_1
        MOVS     R0,#+1
        MOVS     R5,R0
        B.N      ??RTC_GetITStatus_2
??RTC_GetITStatus_1:
        MOVS     R0,#+0
        MOVS     R5,R0
??RTC_GetITStatus_2:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_ClearITPendingBit:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        CMP      R4,#+0
        BEQ.N    ??RTC_ClearITPendingBit_0
        BICS     R0,R4,#0x2F000
        CMP      R0,#+0
        BEQ.N    ??RTC_ClearITPendingBit_1
??RTC_ClearITPendingBit_0:
        MOVW     R2,#+2184
        LDR.N    R1,??DataTable95_7
        ADR.W    R0,`?<Constant "IS_RTC_CLEAR_IT(RTC_IT)">`
        BL       __aeabi_assert
        BL       __iar_EmptyStepPoint
??RTC_ClearITPendingBit_1:
        LSRS     R0,R4,#+4
        MOVS     R5,R0
        UXTH     R0,R5            ;; ZeroExt  R0,R5,#+16,#+16
        ORRS     R0,R0,#0x80
        LDR.N    R1,??DataTable95_13  ;; 0x4000280c
        LDR      R1,[R1, #+0]
        ANDS     R1,R1,#0x80
        ORNS     R0,R1,R0
        LDR.N    R1,??DataTable95_13  ;; 0x4000280c
        STR      R0,[R1, #+0]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable95:
        DC32     `?<Constant "IS_RTC_TIMESTAMP_EDGE...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable95_1:
        DC32     0xfffff7f7

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable95_2:
        DC32     0x40002830

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable95_3:
        DC32     0x7f7f7f

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable95_4:
        DC32     0x40002834

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable95_5:
        DC32     0xffff3f

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable95_6:
        DC32     0x40002840

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable95_7:
        DC32     `?<Constant "D:\\\\work\\\\\\320\\320\\261\\352\\262\\372`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable95_8:
        DC32     `?<Constant "IS_FUNCTIONAL_STATE(N...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable95_9:
        DC32     0x40002850

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable95_10:
        DC32     0xffff0ffb

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable95_11:
        DC32     0x40002824

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable95_12:
        DC32     0x40002808

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable95_13:
        DC32     0x4000280c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable95_14:
        DC32     0xffffc0df

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_ByteToBcd2:
        MOVS     R1,#+0
??RTC_ByteToBcd2_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+10
        BCC.N    ??RTC_ByteToBcd2_1
        ADDS     R1,R1,#+1
        SUBS     R0,R0,#+10
        B.N      ??RTC_ByteToBcd2_0
??RTC_ByteToBcd2_1:
        ORRS     R0,R0,R1, LSL #+4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_Bcd2ToByte:
        MOVS     R1,#+0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R2,R0,#+4
        MOVS     R3,#+10
        MULS     R2,R3,R2
        MOVS     R1,R2
        ANDS     R0,R0,#0xF
        ADDS     R0,R0,R1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_RTC_TAMPER(RTC_Tam...">`:
        ; Initializer data, 28 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 84, 65, 77
        DC8 80, 69, 82, 40, 82, 84, 67, 95, 84, 97
        DC8 109, 112, 101, 114, 41, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_RTC_TAMPER_TRIGGER...">`:
        ; Initializer data, 44 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 84, 65, 77
        DC8 80, 69, 82, 95, 84, 82, 73, 71, 71, 69
        DC8 82, 40, 82, 84, 67, 95, 84, 97, 109, 112
        DC8 101, 114, 84, 114, 105, 103, 103, 101, 114, 41
        DC8 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_RTC_BKP(RTC_BKP_DR)">`:
        ; Initializer data, 24 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 66, 75, 80
        DC8 40, 82, 84, 67, 95, 66, 75, 80, 95, 68
        DC8 82, 41, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_RTC_TAMPER_PIN(RTC...">`:
        ; Initializer data, 36 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 84, 65, 77
        DC8 80, 69, 82, 95, 80, 73, 78, 40, 82, 84
        DC8 67, 95, 84, 97, 109, 112, 101, 114, 80, 105
        DC8 110, 41, 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_RTC_TIMESTAMP_PIN(...">`:
        ; Initializer data, 40 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 84, 73, 77
        DC8 69, 83, 84, 65, 77, 80, 95, 80, 73, 78
        DC8 40, 82, 84, 67, 95, 84, 105, 109, 101, 83
        DC8 116, 97, 109, 112, 80, 105, 110, 41, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_RTC_OUTPUT_TYPE(RT...">`:
        ; Initializer data, 36 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 79, 85, 84
        DC8 80, 85, 84, 95, 84, 89, 80, 69, 40, 82
        DC8 84, 67, 95, 79, 117, 116, 112, 117, 116, 84
        DC8 121, 112, 101, 41, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_RTC_CONFIG_IT(RTC_IT)">`:
        ; Initializer data, 28 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 67, 79, 78
        DC8 70, 73, 71, 95, 73, 84, 40, 82, 84, 67
        DC8 95, 73, 84, 41, 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_RTC_GET_FLAG(RTC_F...">`:
        ; Initializer data, 28 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 71, 69, 84
        DC8 95, 70, 76, 65, 71, 40, 82, 84, 67, 95
        DC8 70, 76, 65, 71, 41, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_RTC_CLEAR_FLAG(RTC...">`:
        ; Initializer data, 28 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 67, 76, 69
        DC8 65, 82, 95, 70, 76, 65, 71, 40, 82, 84
        DC8 67, 95, 70, 76, 65, 71, 41, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_RTC_GET_IT(RTC_IT)">`:
        ; Initializer data, 24 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 71, 69, 84
        DC8 95, 73, 84, 40, 82, 84, 67, 95, 73, 84
        DC8 41, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        DATA
`?<Constant "IS_RTC_CLEAR_IT(RTC_IT)">`:
        ; Initializer data, 24 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 67, 76, 69
        DC8 65, 82, 95, 73, 84, 40, 82, 84, 67, 95
        DC8 73, 84, 41, 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RTC_HOUR_FORMAT(RT...">`:
        ; Initializer data, 52 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 72, 79, 85
        DC8 82, 95, 70, 79, 82, 77, 65, 84, 40, 82
        DC8 84, 67, 95, 73, 110, 105, 116, 83, 116, 114
        DC8 117, 99, 116, 45, 62, 82, 84, 67, 95, 72
        DC8 111, 117, 114, 70, 111, 114, 109, 97, 116, 41
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RTC_ASYNCH_PREDIV(...">`:
        ; Initializer data, 56 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 65, 83, 89
        DC8 78, 67, 72, 95, 80, 82, 69, 68, 73, 86
        DC8 40, 82, 84, 67, 95, 73, 110, 105, 116, 83
        DC8 116, 114, 117, 99, 116, 45, 62, 82, 84, 67
        DC8 95, 65, 115, 121, 110, 99, 104, 80, 114, 101
        DC8 100, 105, 118, 41, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RTC_SYNCH_PREDIV(R...">`:
        ; Initializer data, 56 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 83, 89, 78
        DC8 67, 72, 95, 80, 82, 69, 68, 73, 86, 40
        DC8 82, 84, 67, 95, 73, 110, 105, 116, 83, 116
        DC8 114, 117, 99, 116, 45, 62, 82, 84, 67, 95
        DC8 83, 121, 110, 99, 104, 80, 114, 101, 100, 105
        DC8 118, 41, 0, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RTC_HOUR12(RTC_Tim...">`:
        ; Initializer data, 44 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 72, 79, 85
        DC8 82, 49, 50, 40, 82, 84, 67, 95, 84, 105
        DC8 109, 101, 83, 116, 114, 117, 99, 116, 45, 62
        DC8 82, 84, 67, 95, 72, 111, 117, 114, 115, 41
        DC8 0, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RTC_H12(RTC_TimeSt...">`:
        ; Initializer data, 36 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 72, 49, 50
        DC8 40, 82, 84, 67, 95, 84, 105, 109, 101, 83
        DC8 116, 114, 117, 99, 116, 45, 62, 82, 84, 67
        DC8 95, 72, 49, 50, 41, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RTC_HOUR24(RTC_Tim...">`:
        ; Initializer data, 44 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 72, 79, 85
        DC8 82, 50, 52, 40, 82, 84, 67, 95, 84, 105
        DC8 109, 101, 83, 116, 114, 117, 99, 116, 45, 62
        DC8 82, 84, 67, 95, 72, 111, 117, 114, 115, 41
        DC8 0, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RTC_MINUTES(RTC_Ti...">`:
        ; Initializer data, 44 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 77, 73, 78
        DC8 85, 84, 69, 83, 40, 82, 84, 67, 95, 84
        DC8 105, 109, 101, 83, 116, 114, 117, 99, 116, 45
        DC8 62, 82, 84, 67, 95, 77, 105, 110, 117, 116
        DC8 101, 115, 41, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RTC_SECONDS(RTC_Ti...">`:
        ; Initializer data, 44 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 83, 69, 67
        DC8 79, 78, 68, 83, 40, 82, 84, 67, 95, 84
        DC8 105, 109, 101, 83, 116, 114, 117, 99, 116, 45
        DC8 62, 82, 84, 67, 95, 83, 101, 99, 111, 110
        DC8 100, 115, 41, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RTC_HOUR24(RTC_Bcd...">`:
        ; Initializer data, 60 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 72, 79, 85
        DC8 82, 50, 52, 40, 82, 84, 67, 95, 66, 99
        DC8 100, 50, 84, 111, 66, 121, 116, 101, 40, 82
        DC8 84, 67, 95, 84, 105, 109, 101, 83, 116, 114
        DC8 117, 99, 116, 45, 62, 82, 84, 67, 95, 72
        DC8 111, 117, 114, 115, 41, 41, 0, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RTC_MINUTES(RTC_Bc...">`:
        ; Initializer data, 60 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 77, 73, 78
        DC8 85, 84, 69, 83, 40, 82, 84, 67, 95, 66
        DC8 99, 100, 50, 84, 111, 66, 121, 116, 101, 40
        DC8 82, 84, 67, 95, 84, 105, 109, 101, 83, 116
        DC8 114, 117, 99, 116, 45, 62, 82, 84, 67, 95
        DC8 77, 105, 110, 117, 116, 101, 115, 41, 41, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RTC_SECONDS(RTC_Bc...">`:
        ; Initializer data, 60 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 83, 69, 67
        DC8 79, 78, 68, 83, 40, 82, 84, 67, 95, 66
        DC8 99, 100, 50, 84, 111, 66, 121, 116, 101, 40
        DC8 82, 84, 67, 95, 84, 105, 109, 101, 83, 116
        DC8 114, 117, 99, 116, 45, 62, 82, 84, 67, 95
        DC8 83, 101, 99, 111, 110, 100, 115, 41, 41, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RTC_YEAR(RTC_DateS...">`:
        ; Initializer data, 40 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 89, 69, 65
        DC8 82, 40, 82, 84, 67, 95, 68, 97, 116, 101
        DC8 83, 116, 114, 117, 99, 116, 45, 62, 82, 84
        DC8 67, 95, 89, 101, 97, 114, 41, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RTC_MONTH(RTC_Date...">`:
        ; Initializer data, 40 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 77, 79, 78
        DC8 84, 72, 40, 82, 84, 67, 95, 68, 97, 116
        DC8 101, 83, 116, 114, 117, 99, 116, 45, 62, 82
        DC8 84, 67, 95, 77, 111, 110, 116, 104, 41, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RTC_DATE(RTC_DateS...">`:
        ; Initializer data, 40 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 68, 65, 84
        DC8 69, 40, 82, 84, 67, 95, 68, 97, 116, 101
        DC8 83, 116, 114, 117, 99, 116, 45, 62, 82, 84
        DC8 67, 95, 68, 97, 116, 101, 41, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RTC_YEAR(RTC_Bcd2T...">`:
        ; Initializer data, 56 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 89, 69, 65
        DC8 82, 40, 82, 84, 67, 95, 66, 99, 100, 50
        DC8 84, 111, 66, 121, 116, 101, 40, 82, 84, 67
        DC8 95, 68, 97, 116, 101, 83, 116, 114, 117, 99
        DC8 116, 45, 62, 82, 84, 67, 95, 89, 101, 97
        DC8 114, 41, 41, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RTC_MONTH(tmpreg)">`:
        ; Initializer data, 24 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 77, 79, 78
        DC8 84, 72, 40, 116, 109, 112, 114, 101, 103, 41
        DC8 0, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RTC_DATE(tmpreg)">`:
        ; Initializer data, 20 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 68, 65, 84
        DC8 69, 40, 116, 109, 112, 114, 101, 103, 41, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RTC_WEEKDAY(RTC_Da...">`:
        ; Initializer data, 44 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 87, 69, 69
        DC8 75, 68, 65, 89, 40, 82, 84, 67, 95, 68
        DC8 97, 116, 101, 83, 116, 114, 117, 99, 116, 45
        DC8 62, 82, 84, 67, 95, 87, 101, 101, 107, 68
        DC8 97, 121, 41, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RTC_ALARM(RTC_Alarm)">`:
        ; Initializer data, 24 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 65, 76, 65
        DC8 82, 77, 40, 82, 84, 67, 95, 65, 108, 97
        DC8 114, 109, 41, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_ALARM_MASK(RTC_Ala...">`:
        ; Initializer data, 48 bytes
        DC8 73, 83, 95, 65, 76, 65, 82, 77, 95, 77
        DC8 65, 83, 75, 40, 82, 84, 67, 95, 65, 108
        DC8 97, 114, 109, 83, 116, 114, 117, 99, 116, 45
        DC8 62, 82, 84, 67, 95, 65, 108, 97, 114, 109
        DC8 77, 97, 115, 107, 41, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RTC_ALARM_DATE_WEE...">`:
        ; Initializer data, 72 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 65, 76, 65
        DC8 82, 77, 95, 68, 65, 84, 69, 95, 87, 69
        DC8 69, 75, 68, 65, 89, 95, 83, 69, 76, 40
        DC8 82, 84, 67, 95, 65, 108, 97, 114, 109, 83
        DC8 116, 114, 117, 99, 116, 45, 62, 82, 84, 67
        DC8 95, 65, 108, 97, 114, 109, 68, 97, 116, 101
        DC8 87, 101, 101, 107, 68, 97, 121, 83, 101, 108
        DC8 41, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RTC_HOUR12(RTC_Ala...">`:
        ; Initializer data, 56 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 72, 79, 85
        DC8 82, 49, 50, 40, 82, 84, 67, 95, 65, 108
        DC8 97, 114, 109, 83, 116, 114, 117, 99, 116, 45
        DC8 62, 82, 84, 67, 95, 65, 108, 97, 114, 109
        DC8 84, 105, 109, 101, 46, 82, 84, 67, 95, 72
        DC8 111, 117, 114, 115, 41, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RTC_H12(RTC_AlarmS...">`:
        ; Initializer data, 52 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 72, 49, 50
        DC8 40, 82, 84, 67, 95, 65, 108, 97, 114, 109
        DC8 83, 116, 114, 117, 99, 116, 45, 62, 82, 84
        DC8 67, 95, 65, 108, 97, 114, 109, 84, 105, 109
        DC8 101, 46, 82, 84, 67, 95, 72, 49, 50, 41
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RTC_HOUR24(RTC_Ala...">`:
        ; Initializer data, 56 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 72, 79, 85
        DC8 82, 50, 52, 40, 82, 84, 67, 95, 65, 108
        DC8 97, 114, 109, 83, 116, 114, 117, 99, 116, 45
        DC8 62, 82, 84, 67, 95, 65, 108, 97, 114, 109
        DC8 84, 105, 109, 101, 46, 82, 84, 67, 95, 72
        DC8 111, 117, 114, 115, 41, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RTC_MINUTES(RTC_Al...">`:
        ; Initializer data, 60 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 77, 73, 78
        DC8 85, 84, 69, 83, 40, 82, 84, 67, 95, 65
        DC8 108, 97, 114, 109, 83, 116, 114, 117, 99, 116
        DC8 45, 62, 82, 84, 67, 95, 65, 108, 97, 114
        DC8 109, 84, 105, 109, 101, 46, 82, 84, 67, 95
        DC8 77, 105, 110, 117, 116, 101, 115, 41, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RTC_SECONDS(RTC_Al...">`:
        ; Initializer data, 60 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 83, 69, 67
        DC8 79, 78, 68, 83, 40, 82, 84, 67, 95, 65
        DC8 108, 97, 114, 109, 83, 116, 114, 117, 99, 116
        DC8 45, 62, 82, 84, 67, 95, 65, 108, 97, 114
        DC8 109, 84, 105, 109, 101, 46, 82, 84, 67, 95
        DC8 83, 101, 99, 111, 110, 100, 115, 41, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RTC_ALARM_DATE_WEE...">_1`:
        ; Initializer data, 72 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 65, 76, 65
        DC8 82, 77, 95, 68, 65, 84, 69, 95, 87, 69
        DC8 69, 75, 68, 65, 89, 95, 68, 65, 84, 69
        DC8 40, 82, 84, 67, 95, 65, 108, 97, 114, 109
        DC8 83, 116, 114, 117, 99, 116, 45, 62, 82, 84
        DC8 67, 95, 65, 108, 97, 114, 109, 68, 97, 116
        DC8 101, 87, 101, 101, 107, 68, 97, 121, 41, 0
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RTC_ALARM_DATE_WEE...">_2`:
        ; Initializer data, 76 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 65, 76, 65
        DC8 82, 77, 95, 68, 65, 84, 69, 95, 87, 69
        DC8 69, 75, 68, 65, 89, 95, 87, 69, 69, 75
        DC8 68, 65, 89, 40, 82, 84, 67, 95, 65, 108
        DC8 97, 114, 109, 83, 116, 114, 117, 99, 116, 45
        DC8 62, 82, 84, 67, 95, 65, 108, 97, 114, 109
        DC8 68, 97, 116, 101, 87, 101, 101, 107, 68, 97
        DC8 121, 41, 0, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RTC_HOUR24(RTC_Bcd...">_1`:
        ; Initializer data, 72 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 72, 79, 85
        DC8 82, 50, 52, 40, 82, 84, 67, 95, 66, 99
        DC8 100, 50, 84, 111, 66, 121, 116, 101, 40, 82
        DC8 84, 67, 95, 65, 108, 97, 114, 109, 83, 116
        DC8 114, 117, 99, 116, 45, 62, 82, 84, 67, 95
        DC8 65, 108, 97, 114, 109, 84, 105, 109, 101, 46
        DC8 82, 84, 67, 95, 72, 111, 117, 114, 115, 41
        DC8 41, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RTC_MINUTES(RTC_Bc...">_1`:
        ; Initializer data, 76 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 77, 73, 78
        DC8 85, 84, 69, 83, 40, 82, 84, 67, 95, 66
        DC8 99, 100, 50, 84, 111, 66, 121, 116, 101, 40
        DC8 82, 84, 67, 95, 65, 108, 97, 114, 109, 83
        DC8 116, 114, 117, 99, 116, 45, 62, 82, 84, 67
        DC8 95, 65, 108, 97, 114, 109, 84, 105, 109, 101
        DC8 46, 82, 84, 67, 95, 77, 105, 110, 117, 116
        DC8 101, 115, 41, 41, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RTC_SECONDS(RTC_Bc...">_1`:
        ; Initializer data, 76 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 83, 69, 67
        DC8 79, 78, 68, 83, 40, 82, 84, 67, 95, 66
        DC8 99, 100, 50, 84, 111, 66, 121, 116, 101, 40
        DC8 82, 84, 67, 95, 65, 108, 97, 114, 109, 83
        DC8 116, 114, 117, 99, 116, 45, 62, 82, 84, 67
        DC8 95, 65, 108, 97, 114, 109, 84, 105, 109, 101
        DC8 46, 82, 84, 67, 95, 83, 101, 99, 111, 110
        DC8 100, 115, 41, 41, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RTC_ALARM_DATE_WEE...">_3`:
        ; Initializer data, 40 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 65, 76, 65
        DC8 82, 77, 95, 68, 65, 84, 69, 95, 87, 69
        DC8 69, 75, 68, 65, 89, 95, 68, 65, 84, 69
        DC8 40, 116, 109, 112, 114, 101, 103, 41, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RTC_ALARM_DATE_WEE...">_4`:
        ; Initializer data, 44 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 65, 76, 65
        DC8 82, 77, 95, 68, 65, 84, 69, 95, 87, 69
        DC8 69, 75, 68, 65, 89, 95, 87, 69, 69, 75
        DC8 68, 65, 89, 40, 116, 109, 112, 114, 101, 103
        DC8 41, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RTC_CMD_ALARM(RTC_...">`:
        ; Initializer data, 28 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 67, 77, 68
        DC8 95, 65, 76, 65, 82, 77, 40, 82, 84, 67
        DC8 95, 65, 108, 97, 114, 109, 41, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RTC_WAKEUP_CLOCK(R...">`:
        ; Initializer data, 40 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 87, 65, 75
        DC8 69, 85, 80, 95, 67, 76, 79, 67, 75, 40
        DC8 82, 84, 67, 95, 87, 97, 107, 101, 85, 112
        DC8 67, 108, 111, 99, 107, 41, 0, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RTC_WAKEUP_COUNTER...">`:
        ; Initializer data, 44 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 87, 65, 75
        DC8 69, 85, 80, 95, 67, 79, 85, 78, 84, 69
        DC8 82, 40, 82, 84, 67, 95, 87, 97, 107, 101
        DC8 85, 112, 67, 111, 117, 110, 116, 101, 114, 41
        DC8 0, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RTC_DAYLIGHT_SAVIN...">`:
        ; Initializer data, 44 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 68, 65, 89
        DC8 76, 73, 71, 72, 84, 95, 83, 65, 86, 73
        DC8 78, 71, 40, 82, 84, 67, 95, 68, 97, 121
        DC8 76, 105, 103, 104, 116, 83, 97, 118, 105, 110
        DC8 103, 41, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RTC_STORE_OPERATIO...">`:
        ; Initializer data, 44 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 83, 84, 79
        DC8 82, 69, 95, 79, 80, 69, 82, 65, 84, 73
        DC8 79, 78, 40, 82, 84, 67, 95, 83, 116, 111
        DC8 114, 101, 79, 112, 101, 114, 97, 116, 105, 111
        DC8 110, 41, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RTC_OUTPUT(RTC_Out...">`:
        ; Initializer data, 28 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 79, 85, 84
        DC8 80, 85, 84, 40, 82, 84, 67, 95, 79, 117
        DC8 116, 112, 117, 116, 41, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RTC_OUTPUT_POL(RTC...">`:
        ; Initializer data, 40 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 79, 85, 84
        DC8 80, 85, 84, 95, 80, 79, 76, 40, 82, 84
        DC8 67, 95, 79, 117, 116, 112, 117, 116, 80, 111
        DC8 108, 97, 114, 105, 116, 121, 41, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RTC_CALIB_SIGN(RTC...">`:
        ; Initializer data, 36 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 67, 65, 76
        DC8 73, 66, 95, 83, 73, 71, 78, 40, 82, 84
        DC8 67, 95, 67, 97, 108, 105, 98, 83, 105, 103
        DC8 110, 41, 0, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RTC_CALIB_VALUE(Va...">`:
        ; Initializer data, 28 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 67, 65, 76
        DC8 73, 66, 95, 86, 65, 76, 85, 69, 40, 86
        DC8 97, 108, 117, 101, 41, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "IS_RTC_TIMESTAMP_EDGE...">`:
        ; Initializer data, 44 bytes
        DC8 73, 83, 95, 82, 84, 67, 95, 84, 73, 77
        DC8 69, 83, 84, 65, 77, 80, 95, 69, 68, 71
        DC8 69, 40, 82, 84, 67, 95, 84, 105, 109, 101
        DC8 83, 116, 97, 109, 112, 69, 100, 103, 101, 41
        DC8 0, 0, 0, 0

        END
// 
// 2 080 bytes in section .rodata
// 6 772 bytes in section .text
// 
// 6 772 bytes of CODE  memory
// 2 080 bytes of CONST memory
//
//Errors: none
//Warnings: none
