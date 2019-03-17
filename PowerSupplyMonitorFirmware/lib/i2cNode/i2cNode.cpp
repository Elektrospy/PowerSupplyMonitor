#include "i2cNode.h"
#include <cstddef>

i2cNode::i2cNode() {
    this->_numberOfAdcs = 4;
    this->_tcaPort = 0;
}

i2cNode::i2cNode(uint8_t tcaPort) {
    this->_numberOfAdcs = 4;
    this->_tcaPort = tcaPort;
}

i2cNode::~i2cNode() {
    ;
}

void i2cNode::init() {
    // set gain for an input range of +/- 6.144V, default: +/-4.096V
    this->_ads.begin();
}

uint8_t i2cNode::getTcaPort() {
    return this->_tcaPort;
}

uint8_t i2cNode::getAdcCount() {
    return this->_numberOfAdcs;
}

uint16_t i2cNode::getRawInput(uint8_t adcIndex=0) {
    return this->_getRaw(adcIndex);
}

float i2cNode::getAmpereForInput(uint8_t adcIndex=0) {
    return this->_calculateAmpereFromRaw(this->_getRaw(adcIndex));
}

void i2cNode::setAdcDrift(int16_t driftValue=0, uint8_t adcIndex=0) {
    if(adcIndex > this->_numberOfAdcs) {
        adcIndex = 3;
    }
    const int16_t maxDriftValue = 4096;
    if(driftValue < maxDriftValue) {
        this->_driftValue[adcIndex] = driftValue;
    }
}

// Private methods
uint16_t i2cNode::_getRaw(uint8_t adcIndex) {
    uint16_t adcRaw = this->_ads.readADC_SingleEnded(adcIndex);
    return adcRaw + this->_driftValue[adcIndex];
}

float i2cNode::_calculateAmpereFromRaw(uint16_t adcValue=0) {
    float ampere = 0;
    // arduino 10-bit scaling
    // 05A: (.0264 * adcValue - 13.51) 
    // 20A: (.19 * adcValue - 25) 
    // 30A. (.044 * adcValue - 3.78)
    if(adcValue != 0) {
        ampere = (2.5f - adcValue * 0.003) / 0.066f;
    }
    return -ampere;
}
