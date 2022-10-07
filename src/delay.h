#ifndef __MODULE_DELAY__H
#define __MODULE_DELAY__H

#include <reg52.h>
#include <stdint.h>

// 延时函数，单位 ms
void delay(uint64_t t);

// 延时函数，单位 us
void delayMicroseconds(uint64_t t);

#endif