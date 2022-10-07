#include <51duino.h>

void setup() {
    Serial.begin(19200);
}

void loop() {
    Serial.print("print\r\n");
    Serial.printf("printf: %d\r\n", 123);
    Serial.println("println");
    delay(1000);
}