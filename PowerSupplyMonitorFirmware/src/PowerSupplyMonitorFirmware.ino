#include <Wire.h> // i2c stuff
#include "i2cHub.h"
#include "i2cHubDebug.h"
#include "i2cHubDisplay.h"
#define DEBUG false

// Arduino 328p, SDA: A4, SCL: A5
// ESP8266, SDA: D1, SCL: D2
#define PIN_SDA D1
#define PIN_SCL D2
const unsigned long serialBautrate = 115200;
const uint32_t i2cClockSpeed = 400000;
i2cHub nodeHub = i2cHub();
i2cHubDisplay nodeHubDisplay = i2cHubDisplay(&nodeHub);
#if DEBUG
i2cHubDebug nodeHubDebug = i2cHubDebug(&nodeHub);
#endif

void setup() {
    Serial.begin(serialBautrate);
    // init i2c wire bus
    Wire.begin(PIN_SDA, PIN_SCL);
    // Supported baud rates are 100kHz, 400kHz, and 1000kHz
    Wire.setClock(i2cClockSpeed);
    // init nodeHub for i2c usage
    nodeHub.init();
    // i2c oled settings
    nodeHubDisplay.init();
}

void loop() {
    nodeHub.run();
    nodeHubDisplay.run();
    #if DEBUG
    nodeHubDebug.debugNodePrint();
    nodeHubDebug.debugNodePowerSupplys();
    #endif
}    
