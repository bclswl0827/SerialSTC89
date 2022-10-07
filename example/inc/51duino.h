#include <reg52.h>
#include <stdint.h>

#include <delay.h>
#include <ttl.h>

// 初始化程序
void setup(void);

// 循环程序
void loop(void);

// 主程序
void main() {
    // 设置所有管脚低电平
    P0 = P1 = P2 = P3 = 0;
    // RX、TX 除外
    P30 = P31 = 1;
    // 开始初始化
    setup();
    // 循环执行
    for (;;) {
        loop();
    }
}
