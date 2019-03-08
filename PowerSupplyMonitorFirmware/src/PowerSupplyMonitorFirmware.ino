#include <Wire.h> // i2c stuff
#include "i2cHub.h"

// Arduino 328p, SDA: A4, SCL: A5
// ESP8266, SDA: D1, SCL: D2
#define PIN_SDA D1
#define PIN_SCL D2
const unsigned long serialBautrate = 115200;
const uint32_t i2cClockSpeed = 400000;
int cycleCount = 0;
i2cHub nodeHub = i2cHub();

// prototype methods
void debugNodePrint();

void setup() {
    Serial.begin(serialBautrate);
    // init i2c wire bus
    Wire.begin(PIN_SDA, PIN_SCL);
    // Supported baud rates are 100kHz, 400kHz, and 1000kHz
    Wire.setClock(i2cClockSpeed);
    // init nodeHub for i2c usage
    nodeHub.init();
}

void loop() {
    debugNodePrint();
}    


void debugNodePrint() {
    const int numberOfNodes = nodeHub.getNodeCount();
    cycleCount++;
    for(uint8_t currentNode=0; currentNode < numberOfNodes; currentNode++) {
        Serial.printf("Node #%d", currentNode);
        const int adsChannels = nodeHub.getNodeChannelCount(currentNode);
        for(uint8_t currentChannel=0; currentChannel < adsChannels; currentChannel++) {
            Serial.printf(" Ch%d:%f", currentChannel, nodeHub.getMilliAmpereForNode(currentNode, currentChannel));
        }
        Serial.println("");
    }
    Serial.printf("===============:%d\n", cycleCount);
    delay(500);
}
