#include <delay.h>

// 延时函数，单位 ms
void delay(uint64_t t) {
    uint64_t i, j;
    for (i = 0; i < t; i++) {
        for (j = 0; j < 60; j++) {
            ;
        }
    }
}

// 延时函数，单位 us
void delayMicroseconds(uint64_t t) {
    while (t--) {
        ;
    }
}