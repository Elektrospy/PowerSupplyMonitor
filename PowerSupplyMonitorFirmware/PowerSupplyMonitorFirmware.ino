#include <Wire.h> // i2c stuff
#include <TwoWireMux.h>
#include <TI_TCA9548A.h>
#include "i2cNode.h"

#define DEBUG true

// Arduino 328p, SDA: A4, SCL: A5
// ESP8266, SDA: D1, SCL: D2
#define PIN_SDA D1
#define PIN_SCL D2

const uint8_t numberOfNodes=5;

TI_TCA9548A nodeMuxer(&Wire);
Adafruit_ADS1015 ads;
i2cNode i2cNodeList[numberOfNodes];

void initNodes() {
	for(uint8_t currentNode=0; currentNode < numberOfNodes; currentNode++) {
		i2cNodeList[currentNode] = i2cNode(&nodeMuxer, currentNode);
	}
}

void setup() {
#if DEBUG
    Serial.begin(115200);
#endif

    Wire.begin(PIN_SDA, PIN_SCL); // Wire must be started first
    Wire.setClock(400000); // Supported baud rates are 100kHz, 400kHz, and 1000kHz

    nodeMuxer.setBaseChannelMask(31); // 0001 1111 Enable Channel 0-4
    nodeMuxer.selectChannel(0);
    ads.begin();
}

void loop() {
	Serial.print("Node #");
	Serial.print(0);
	Serial.print(" A:");
	Serial.println(ads.readADC_SingleEnded(0));
	delay(1000);

	/*
#if DEBUG
    for(uint8_t currentNode=0; currentNode < numberOfNodes; currentNode++) {
		Serial.print("Node #");
		Serial.print(currentNode);
		Serial.print(" A:");
		Serial.println(i2cNodeList[currentNode].getAmpereForOutput(0));
    }
    Serial.println("===============");
    delay(500);
#endif
*/
}