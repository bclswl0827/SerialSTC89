#include <delay.h>

// 延时函数，单位 ms
void delay(uint16_t t) {
    for (uint16_t i = t; i > 0; i--) {
        for (uint16_t j = 110; j > 0; j--) {
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
