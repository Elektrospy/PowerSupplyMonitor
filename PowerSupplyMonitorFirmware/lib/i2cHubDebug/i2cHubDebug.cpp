#include "i2cHubDebug.h"

i2cHubDebug::i2cHubDebug(i2cHub *nodeHub) {
    this->_nodeHub = nodeHub;
    this->_numberOfNodes = this->_nodeHub->getNodeCount();
    this->_cycleCount = 0;
    this->_currentNodeSwitch = 0;
    // debug print adc values timing
    this->_debugMillisPeriod = 1000;
    this->_debugMillisStart = 0;
    this->_debugMillisLast = 0;
    // debug print switch power supplies timing
    this->_debugMillisSwitchPeriod = 1000;
    this->_debugMillisSwitchStart = 0;
    this->_debugMillisSwitchLast = 0;
}

i2cHubDebug::~i2cHubDebug() {
    ;
}


void i2cHubDebug::debugNodePrint() {
    this->_debugMillisLast = millis();
    if(this->_debugMillisLast - this->_debugMillisStart >= this->_debugMillisPeriod) {
        this->_cycleCount++;
        for(uint8_t currentNode=0; currentNode < this->_numberOfNodes; currentNode++) {
            Serial.printf("Node #%d", currentNode);
            const int adsChannels = this->_nodeHub->getNodeChannelCount(currentNode);
            for(uint8_t currentChannel=0; currentChannel < adsChannels; currentChannel++) {
                Serial.printf(" Ch%d:%.2f", currentChannel, this->_nodeHub->getAmpereForNode(currentNode, currentChannel));
            }
            Serial.println("");
        }
        Serial.printf("===============:%d\n", this->_cycleCount);
        this->_debugMillisStart = this->_debugMillisLast;
    }
}

void i2cHubDebug::debugNodePowerSupplys() {
    this->_debugMillisSwitchLast = millis();
    if(this->_debugMillisSwitchLast - this->_debugMillisSwitchStart >= this->_debugMillisSwitchPeriod) {
        // reset power supplies to off
        for(uint8_t currentNode=0; currentNode < this->_numberOfNodes; currentNode++) {
            this->_nodeHub->deactivatePowerSupply(currentNode);
        }
        // activate new current powersupply
        this->_nodeHub->activatePowerSupply(this->_currentNodeSwitch);
        // count to next powersupply
        if(this->_currentNodeSwitch < this->_numberOfNodes - 1) {
            this->_currentNodeSwitch++;
        } else {
            this->_currentNodeSwitch = 0;
        }
        this->_debugMillisSwitchStart = this->_debugMillisSwitchLast;
    }
}