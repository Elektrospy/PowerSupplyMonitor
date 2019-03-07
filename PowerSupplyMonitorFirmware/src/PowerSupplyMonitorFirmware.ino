#include <Wire.h> // i2c stuff
#include "i2cHub.h"

// Arduino 328p, SDA: A4, SCL: A5
// ESP8266, SDA: D1, SCL: D2
#define PIN_SDA D1
#define PIN_SCL D2
// debug print cycle counter
int cycleCount = 0;
// create i2cHub object, holding our i2cNodes
i2cHub nodeHub = i2cHub();
// prototype methods
void debugNodePrint();

void setup() {
    Serial.begin(115200);
    // init i2c wire bus
    Wire.begin(PIN_SDA, PIN_SCL);
    // Supported baud rates are 100kHz, 400kHz, and 1000kHz
    Wire.setClock(400000);
    // init nodeHub
    nodeHub.init();
}

void loop() {
    debugNodePrint();
}    


void debugNodePrint() {
    const int numberOfNodes = nodeHub.getNodeCount();
    cycleCount++;
    for(uint8_t currentNode=0; currentNode < numberOfNodes; currentNode++) {
        Serial.print("Node #");
        Serial.print(currentNode);
        const int adsChannels = nodeHub.getNodeChannelCount(currentNode);
        for(uint8_t currentChannel=0; currentChannel < adsChannels; currentChannel++) {
            Serial.print(" Ch");
            Serial.print(currentChannel);
            Serial.print(":");
            //Serial.print(i2cNodeList[currentNode].getRawInput(currentChannel));
            Serial.print(nodeHub.getMilliAmpereForNode(currentNode, currentChannel));
        }
        Serial.println("");
    }
    Serial.print("===============:");
    Serial.println(cycleCount);
    delay(500);
}
