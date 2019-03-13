#include <Wire.h> // i2c stuff
#include "i2cHub.h"

// Arduino 328p, SDA: A4, SCL: A5
// ESP8266, SDA: D1, SCL: D2
#define PIN_SDA D1
#define PIN_SCL D2
const unsigned long serialBautrate = 115200;
const uint32_t i2cClockSpeed = 400000;
i2cHub nodeHub = i2cHub();
const uint8_t numberOfNodes = nodeHub.getNodeCount();
// debug print timing
const unsigned long debugMillisPeriod = 1000;
unsigned long debugMillisStart = 0;
unsigned long debugMillisLast = 0;
int cycleCount = 0;

// prototype methods
void debugNodePrint();
void debugNodePowerSupplys();

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
    nodeHub.run();
    debugNodePrint();
    debugNodePowerSupplys();
}    


void debugNodePrint() {
    debugMillisLast = millis();
    if(debugMillisLast - debugMillisStart >= debugMillisPeriod) {
        cycleCount++;
        for(uint8_t currentNode=0; currentNode < numberOfNodes; currentNode++) {
            Serial.printf("Node #%d", currentNode);
            const int adsChannels = nodeHub.getNodeChannelCount(currentNode);
            for(uint8_t currentChannel=0; currentChannel < adsChannels; currentChannel++) {
                Serial.printf(" Ch%d:%.2f", currentChannel, nodeHub.getMilliAmpereForNode(currentNode, currentChannel));
            }
            Serial.println("");
        }
        Serial.printf("===============:%d\n", cycleCount);
        debugMillisStart = debugMillisLast;
    }
}

uint8_t currentNodeSwitch = 0;
unsigned long debugMillisSwitchPeriod = 1000;
unsigned long debugMillisSwitchStart = 0;
unsigned long debugMillisSwitchLast = 0;
void debugNodePowerSupplys() {
    debugMillisSwitchLast = millis();
    if(debugMillisSwitchLast - debugMillisSwitchStart >= debugMillisSwitchPeriod) {
        // reset power supplies to off
        for(uint8_t currentNode=0; currentNode < numberOfNodes; currentNode++) {
            nodeHub.deactivatePowerSupply(currentNode);
        }
        // activate new current powersupply
        nodeHub.activatePowerSupply(currentNodeSwitch);
        // count to next powersupply
        if(currentNodeSwitch < numberOfNodes) {
            currentNodeSwitch++;
        } else {
            currentNodeSwitch = 0;
        }
        debugMillisSwitchStart = debugMillisSwitchLast;
    }
}
