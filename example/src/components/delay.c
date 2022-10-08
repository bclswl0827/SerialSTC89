#include <delay.h>

// 延时函数，单位 ms
void delay(uint16_t t) {
    uint16_t i, j;
    for (i = t; i > 0; i--) {
        for (j = 112; j > 0; j--) {
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
