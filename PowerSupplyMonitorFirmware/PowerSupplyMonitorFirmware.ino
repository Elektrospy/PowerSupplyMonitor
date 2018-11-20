#include <Wire.h> // i2c stuff
#include "i2cNode.h"

#define DEBUG true

// Arduino 328p, SDA: A4, SCL: A5
// ESP8266, SDA: D1, SCL: D2
#define PIN_SDA D1
#define PIN_SCL D2

i2cNode i2cNodeList[5];

void setup() {
#if DEBUG
    Serial.begin(115200);
#endif

    Wire.begin(PIN_SDA, PIN_SCL); // Wire must be started first
    Wire.setClock(400000); // Supported baud rates are 100kHz, 400kHz, and 1000kHz
}

void loop() {
    ;
}