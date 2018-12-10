///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.10.2.52244/W32 for ARM    04/Dec/2013  10:58:05 /
// Copyright 1999-2010 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\CMSIS\CM3\CoreSupport\core_cm3.c      /
//    Command line =  D:\work\ÐÐ±ê²úÆ·\¸Ä½ø°æÒ»Ìå»ú\Ô´³ÌÐò\¸Ä½øÐÍEGS701-1\¸Ä½ /
//                    øÐÍEGS701-1\STM32F2xx_Boot_V1.62\STM32F2xx_Boot_130815_ /
//                    IAR6.1\STM32_Boot\CMSIS\CM3\CoreSupport\core_cm3.c -D   /
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
//                    IAR6.1\STM32_Boot\EWARM\Debug\List\core_cm3.s           /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME core_cm3

        PUBLIC __LDREXB
        PUBLIC __LDREXH
        PUBLIC __LDREXW
        PUBLIC __RBIT
        PUBLIC __REV16
        PUBLIC __STREXB
        PUBLIC __STREXH
        PUBLIC __STREXW
        PUBLIC __get_MSP
        PUBLIC __get_PSP
        PUBLIC __set_MSP
        PUBLIC __set_PSP


        SECTION `.text`:CODE:NOROOT(2)
        THUMB
__get_PSP:
        mrs r0, psp      
        bx lr            
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
__set_PSP:
        msr psp, r0      
        bx lr            
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
__get_MSP:
        mrs r0, msp      
        bx lr            
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
__set_MSP:
        msr msp, r0      
        bx lr            
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
__REV16:
        rev16 r0, r0     
        bx lr            
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
__RBIT:
        rbit r0, r0      
        bx lr            
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
__LDREXB:
        ldrexb r0, [r0]  
        bx lr            
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
__LDREXH:
        ldrexh r0, [r0]  
        bx lr            
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
__LDREXW:
        ldrex r0, [r0]   
        bx lr            
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
__STREXB:
        strexb r0, r0, [r1] 
        bx lr            
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
__STREXH:
        strexh r0, r0, [r1] 
        bx lr            
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
__STREXW:
        strex r0, r0, [r1] 
        bx lr            
        BX       LR               ;; return

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)

        END
// 
// 94 bytes in section .text
// 
// 94 bytes of CODE memory
//
//Errors: none
//Warnings: none
