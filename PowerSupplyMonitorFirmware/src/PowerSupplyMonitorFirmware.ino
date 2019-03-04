#include <Wire.h> // i2c stuff
#include "i2cNode.h"

// Arduino 328p, SDA: A4, SCL: A5
// ESP8266, SDA: D1, SCL: D2
#define PIN_SDA D1
#define PIN_SCL D2
// tca default address
#define TCAADDR 0x70
// number of max i2c adc used channels
const uint8_t adsChannels = 4;
// number of max connected i2c nodes
const uint8_t numberOfNodes = 5;
// debug cycle counter
int cycleCount = 0;

i2cNode i2cNodeList[numberOfNodes];

void initNodes() {
	for(uint8_t currentNode=0; currentNode < numberOfNodes; currentNode++) {
		i2cNodeList[currentNode] = i2cNode(currentNode);
	}
}

void tcaselect(uint8_t i) {
    if (i > 7) {
        return;
    }
    Wire.beginTransmission(TCAADDR);
    Wire.write(1 << i);
    Wire.endTransmission();
}


void setup() {
    Serial.begin(115200);
    // init i2c wire bus
    Wire.begin(PIN_SDA, PIN_SCL);
     // Supported baud rates are 100kHz, 400kHz, and 1000kHz
    Wire.setClock(400000);
    // set tca to start input
    tcaselect(0);
    // init nodes
    initNodes();
}

void debugNodePrint() {
    cycleCount++;
    for(uint8_t currentNode=0; currentNode < numberOfNodes; currentNode++) {
        tcaselect(currentNode);
        Serial.print("Node #");
        Serial.print(currentNode);
        for(uint8_t currentChannel=0; currentChannel < adsChannels; currentChannel++) {
            Serial.print(" Ch");
            Serial.print(currentChannel);
            Serial.print(":");
            Serial.print(i2cNodeList[currentNode].getRawInput(currentChannel));
        }
        Serial.println("");
    }
    Serial.print("===============:");
    Serial.println(cycleCount);
    delay(500);
}

void loop() {
    debugNodePrint();
}    
