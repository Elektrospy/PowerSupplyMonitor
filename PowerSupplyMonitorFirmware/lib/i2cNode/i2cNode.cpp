#include "i2cNode.h"
#include <cstddef>

i2cNode::i2cNode() {
    this->_numberOfAdcs = 4;
    this->_tcaPort = 0;
}

i2cNode::i2cNode(uint8_t tcaPort) {
    this->_numberOfAdcs = 4;
    this->_tcaPort = tcaPort;
    this->_init();
}

i2cNode::~i2cNode() {
    ;
}

uint8_t i2cNode::getTcaPort() {
    return this->_tcaPort;
}

uint16_t i2cNode::getRawInput(uint8_t adcIndex=0) {
    return this->_getRaw(adcIndex);
}

float i2cNode::getAmpereForInput(uint8_t adcIndex=0) {
    return this->_calculateAmpereFromRaw(this->_getRaw(adcIndex));
}

uint16_t i2cNode::getMilliAmpereForInput(uint8_t adcIndex=0) {
    return this->_calculateMilliAmpereFromRaw(this->_getRaw(adcIndex));
}


// Private methods
void i2cNode::_init() {
    this->_ads.begin();
}

uint16_t i2cNode::_getRaw(uint8_t adcIndex) {
    return this->_ads.readADC_SingleEnded(adcIndex);
}

float i2cNode::_calculateAmpereFromRaw(uint16_t adcValue=0) {
    float ampere = 0;
    const float ampereScaler = 0.001;
    ampere = this->_calculateMilliAmpereFromRaw(adcValue) * ampereScaler;
    return ampere;
}

float i2cNode::_calculateMilliAmpereFromRaw(uint16_t adcValue=0) {
    float milliampere = 0;
    // 05A: (.0264 * adcValue -13.51) 
    // 20A: (.19 * adcValue -25) 
    // 30A. (.044 * adcValue -3.78)
    if(adcValue != 0) {
        milliampere = (.044 * adcValue -3.78);
    }
    return milliampere;
}
