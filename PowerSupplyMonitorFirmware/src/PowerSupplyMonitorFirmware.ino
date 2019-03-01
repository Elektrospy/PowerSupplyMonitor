#include <Wire.h> // i2c stuff
#include <TwoWireMux.h>
#include <TI_TCA9548A.h>
#include "i2cNode.h"

// Arduino 328p, SDA: A4, SCL: A5
// ESP8266, SDA: D1, SCL: D2
#define PIN_SDA D1
#define PIN_SCL D2

const uint8_t numberOfNodes=5;
int cycleCount = 0;

TI_TCA9548A nodeMuxer(&Wire);
i2cNode i2cNodeList[numberOfNodes];

void initNodes() {
	for(uint8_t currentNode=0; currentNode < numberOfNodes; currentNode++) {
		i2cNodeList[currentNode] = i2cNode(&nodeMuxer, currentNode);
	}
}

void setup() {
    Serial.begin(115200);

    Wire.begin(PIN_SDA, PIN_SCL); // Wire must be started first
    Wire.setClock(400000); // Supported baud rates are 100kHz, 400kHz, and 1000kHz

    nodeMuxer.setBaseChannelMask(0x1F); // 0001 1111 Enable Channel 0-4
    nodeMuxer.selectChannel(0);

    // init nodes
    initNodes();
}

void loop() {
    cycleCount++;
    for(uint8_t currentNode=0; currentNode < numberOfNodes; currentNode++) {
        Serial.print("Node #");
        Serial.print(currentNode);
        Serial.print(" A:");
        Serial.print(i2cNodeList[currentNode].getRawInput(0));
        Serial.print(" B:");
        Serial.print(i2cNodeList[currentNode].getRawInput(1));
        Serial.print(" C:");
        Serial.print(i2cNodeList[currentNode].getRawInput(2));
        Serial.print(" D:");
        Serial.println(i2cNodeList[currentNode].getRawInput(3));
    }
    Serial.print("===============:");
    Serial.println(cycleCount);
    delay(500);
}