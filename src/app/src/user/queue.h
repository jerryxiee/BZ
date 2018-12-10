/*
*********************************************************************************************************
*                                     MICIRUM BOARD SUPPORT PACKAGE
*
*                             (c) Copyright 2012; Micrium, Inc.; Weston, FL
*
*               All rights reserved.  Protected by international copyright laws.
*               Knowledge of the source code may NOT be used to develop a similar product.
*               Please help us continue to provide the Embedded community with the finest
*               software available.  Your honesty is greatly appreciated.
*********************************************************************************************************
*/

/*
*********************************************************************************************************
*                                                 MODULE
*
* Note(s) : (1) This header file is protected from multiple pre-processor inclusion through use of the
*               BSP present pre-processor macro definition.
*
*           (2) This file and its dependencies requires IAR v6.20 or later to be compiled.
*
*********************************************************************************************************
*/
#ifndef __QUEUE_H
#define __QUEUE_H


/*
*********************************************************************************************************
*                                             INCLUDE FILES
*********************************************************************************************************
*/
#include "stm32f2xx.h"

/*
*********************************************************************************************************
*                                               DATA TYPES
*********************************************************************************************************
*/
typedef u8 ElementType;
struct QueueRecord
        {
            int Capacity;
            int Front;
            int Rear;
            int Size;
            ElementType *Array;
        };
typedef struct QueueRecord *    Queue;



/*
*********************************************************************************************************
*                                             define
*********************************************************************************************************
*/
#define MIN_QUEUE_SIZE  ( 10 )
#define MAX_QUEUE_SIZE  ( 2000 )

/*
*********************************************************************************************************
*                                           FUNCTION PROTOTYPES
*********************************************************************************************************
*/
/*
*********************************************************************************************************
*                                          ALGQueueIsEmpty()
*
* Description : 判断一个队列是否为空
*
* Argument(s) : none.
*
* Return(s)   : none.
*
* Caller(s)   : none.
*
* Note(s)     : none.
*********************************************************************************************************
*/
int QueueIsEmpty( Queue Q );
/*
*********************************************************************************************************
*                                          ALGQueueIsFull()
*
* Description : 判断一个队列是否为满
*
* Argument(s) : none.
*
* Return(s)   : none.
*
* Caller(s)   : none.
*
* Note(s)     : none.
*********************************************************************************************************
*/
int QueueIsFull( Queue Q );
/*
*********************************************************************************************************
*                                          QueueCreate1
*
* Description : 创建连接1接收队列
*
* Argument(s) : none.
*
* Return(s)   : none.
*
* Caller(s)   : none.
*
* Note(s)     : 仅用于创建连接1接收队列，不能用于创建其它的队列
*********************************************************************************************************
*/
Queue QueueCreate1(int MaxElements);
/*
*********************************************************************************************************
*                                          QueueCreate2
*
* Description : 创建连接2接收队列
*
* Argument(s) : none.
*
* Return(s)   : none.
*
* Caller(s)   : none.
*
* Note(s)     : 仅用于创建连接2接收队列，不能用于创建其它的队列
*********************************************************************************************************
*/
Queue QueueCreate2(int MaxElements);
/*
*********************************************************************************************************
*                                          QueueCreate3
*
* Description : 创建短信接收队列
*
* Argument(s) : none.
*
* Return(s)   : none.
*
* Caller(s)   : none.
*
* Note(s)     : 仅用于创建短信接收队列，不能用于创建其它的队列
*********************************************************************************************************
*/
Queue QueueCreate3(int MaxElements);
/*
*********************************************************************************************************
*                                          ALGQueueCreate()
*
* Description : 创建一个循环队列
*
* Argument(s) : none.
*
* Return(s)   : none.
*
* Caller(s)   : none.
*
* Note(s)     : 注意目前仅用于协议接收缓冲,其它地方不能调用该函数,其它模块要调用需编写类似的一个函数
*********************************************************************************************************
*/
Queue QueueCreate(int MaxElements);
/*
*********************************************************************************************************
*                                          ALGQueueMakeEmpty()
*
* Description : 使队列为空
*
* Argument(s) : none.
*
* Return(s)   : none.
*
* Caller(s)   : none.
*
* Note(s)     : none.
*********************************************************************************************************
*/
void QueueMakeEmpty(Queue Q);
/*
*********************************************************************************************************
*                                          ALGQueueDispose()
*
* Description : 释放一个队列
*
* Argument(s) : none.
*
* Return(s)   : none.
*
* Caller(s)   : none.
*
* Note(s)     : 一般嵌入式应用中不要经常创建、释放，即不使用释放函数
*********************************************************************************************************
*/
void QueueDispose(Queue Q);
/*
*********************************************************************************************************
*                                          ALGQueueSucc()
*
* Description : value值加1
*
* Argument(s) : none.
*
* Return(s)   : none.
*
* Caller(s)   : none.
*
* Note(s)     : none.
*********************************************************************************************************
*/
int QueueSucc(int Value, Queue Q);
/*
*********************************************************************************************************
*                                          ALGQueueIn()
*
* Description : 向队列添加一个元素，即入队列
*
* Argument(s) : none.
*
* Return(s)   : none.
*
* Caller(s)   : none.
*
* Note(s)     : none.
*********************************************************************************************************
*/
void QueueIn(ElementType X, Queue Q);
/*
*********************************************************************************************************
*                                          ALGQueueInBuffer()
*
* Description : 向队列一次添加多个元素
*
* Argument(s) : none.
*
* Return(s)   : none.
*
* Caller(s)   : none.
*
* Note(s)     : none.
*********************************************************************************************************
*/
void QueueInBuffer(ElementType *pBuffer, int BufferLen, Queue Q);
/*
*********************************************************************************************************
*                                          ALGQueueFront()
*
* Description : 读队列首元素
*
* Argument(s) : none.
*
* Return(s)   : none.
*
* Caller(s)   : none.
*
* Note(s)     : none.
*********************************************************************************************************
*/
ElementType QueueFront(Queue Q);
/*
*********************************************************************************************************
*                                          ALGQueueOut()
*
* Description : 删除队列中的一个元素，即出队列
*
* Argument(s) : none.
*
* Return(s)   : none.
*
* Caller(s)   : none.
*
* Note(s)     : none.
*********************************************************************************************************
*/
void QueueOut(Queue Q);
/*
*********************************************************************************************************
*                                          ALGQueueFrontAndOut()
*
* Description : 读取队列中的首元素，然后出队列
*
* Argument(s) : none.
*
* Return(s)   : none.
*
* Caller(s)   : none.
*
* Note(s)     : none.
*********************************************************************************************************
*/
ElementType QueueFrontAndOut(Queue Q);
/*
*********************************************************************************************************
*                                          ALGQueueFrontAndOut2()
*
* Description : 读取队列中的首元素，然后出队列，并返回是否帧尾的标志符
*
* Argument(s) : none.
*
* Return(s)   : none.
*
* Caller(s)   : none.
*
* Note(s)     : *pFlag == 1：当前读出字符是帧尾；*pFlag == 0：当前读出字符不是帧尾；
*********************************************************************************************************
*/
ElementType QueueFrontAndOut2(Queue Q, u8 *pFlag);
/*
*********************************************************************************************************
*                                          ALGQueueOutBuffer()
*
* Description : 向队列一次读取多个元素
*
* Argument(s) : none.
*
* Return(s)   : none.
*
* Caller(s)   : none.
*
* Note(s)     : none.
*********************************************************************************************************
*/
int  QueueOutBuffer(ElementType *pBuffer, int BufferLen, Queue Q);

#endif
