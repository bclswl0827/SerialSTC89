#include <reg52.h>
#include <stdint.h>

// 设定晶振频率
#define CRYSTAL 11059200L

// 初始化串口
void SerialBegin(uint16_t b) {
    // 波特率加倍
    PCON = 0x80;
    // 八位数据模式
    SCON = 0x50;
    // 设定定时器 1 为 8 位自动重装模式
    TMOD = 0x20;
    // 设定自动重装值，波特率
    TH1 = TL1 = -(CRYSTAL / 12 / 32 / (b / 2));
    // 启动定时器 1，打开总中断和接收中断
    TR1 = EA = ES = 1;
}

// 结束串口
void SerialEnd() {
    // 关闭总中断和接收中断
    EA = ES = 0;
}

// 等待串行数据的最大时间，单位毫秒
void SerialSetTimeout(uint16_t t) {
    // 设定定时器 0 为 16 位自动重装模式
    TMOD = 0x01;
    // 设定自动重装值，定时时间
    TH0 = (t >> 8) & 0xff;
    TL0 = t & 0xff;
    // 启动定时器 0，打开总中断和定时器 0 中断
    TR0 = EA = ET0 = 1;
}

// 等待串口数据发送完成
void SerialFlush() {
    // 等待完成
    while (!TI) {
        ;
    }
    // 清除发送完成标志
    TI = 0;
}

// 串口发送单个字符
void SerialWrite(uint8_t c) {
    // 关串口中断
    ES = 0;
    // 发送数据
    SBUF = c;
    // 等待完成
    while (!TI) {
        ;
    }
    // 清除发送成功标志
    TI = 0;
    // 打开串口中断
    ES = !TI;
}

// 串口发送字符串
void SerialPrint(char* s) {
    // 操作 char 指针
    while (*s) {
        SerialWrite(*s++);
    }
}

// 串口发送带换行符字符串
void SerialPrintln(char* s) {
    // 字符串发送结束后发送换行符
    SerialPrint(s);
    SerialPrint("\r\n");
}

// 串口读取单个字符
char SerialRead() {
    // 等待完成
    while (!RI) {
        ;
    }
    // 清除接收成功标志
    RI = 0;
    // 返回接收到的字符
    return SBUF;
}

// 判断串口是否有数据
uint8_t SerialAvailable() {
    // 读取接收中断标志
    return RI;
}

// 重写 putchar 以实现 printf
uint8_t putchar(uint8_t c) {
    // 将内容重定向到串口
    SerialWrite(c);
    return c;
}