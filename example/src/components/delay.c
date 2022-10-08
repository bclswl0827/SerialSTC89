#include <delay.h>

// 延时函数，单位 ms
void delay(uint16_t t) {
    uint16_t i, j;
    for (i = 0; i < t; i++) {
        for (j = 0; j < 60; j++) {
            ;
        }
    }
}

// 延时函数，单位 us
void delayMicroseconds(uint16_t t) {
    while (t--) {
        ;
    }
}