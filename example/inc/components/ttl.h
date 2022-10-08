#ifndef __MODULE_TTL__H
#define __MODULE_TTL__H

#include <stdint.h>
#include <stdio.h>
#include <ttl.c>

// 初始化串口
void SerialBegin(uint16_t b);
// 结束串口
void SerialEnd();
// 等待串行数据的最大时间，单位毫秒
void SerialSetTimeout(uint16_t t);
// 等待串口数据发送完成
void SerialWait();
// 串口发送单个字符
void SerialWrite(uint8_t c);
// 串口发送字符串
void SerialPrint(char* s);
// 串口发送带换行符字符串
void SerialPrintln(char* s);
// 串口读取单个字符
char SerialRead();
// 判断串口是否有数据
uint8_t SerialAvailable();
// 重写 putchar 以实现 printf
uint8_t putchar(uint8_t c);

// 透过 struct 模拟实现 class
typedef struct {
    void (*begin)(uint16_t b);
    void (*setTimeout)(uint16_t t);
    void (*flush)(void);
    void (*end)(void);
    void (*print)(char* s);
    void (*println)(char* s);
    int (*printf)(char*, ...);
    void (*write)(char c);
    char (*read)(void);
    uint8_t (*available)(void);
} serial_t;

// serial_t 实例化
serial_t Serial = {
    .begin = SerialBegin,
    .setTimeout = SerialSetTimeout,
    .flush = SerialFlush,
    .end = SerialEnd,
    .print = SerialPrint,
    .println = SerialPrintln,
    .printf = printf,
    .write = SerialWrite,
    .read = SerialRead,
    .available = SerialAvailable,
};

#endif