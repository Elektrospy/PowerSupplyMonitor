#include "i2cNode.h"
#include <cstddef>

i2cNode::i2cNode() {
    this->_numberOfAdcs = 2;
    this->_tcaPort = 0;
}

i2cNode::i2cNode(TI_TCA9548A *tca, uint8_t tcaPort) {
    this->_numberOfAdcs = 2;
    this->_tcaPort = tcaPort;
    this->_tca = tca;
    this->_init();
}

i2cNode::~i2cNode() {
    ;
}

float i2cNode::getAmpereForOutput(uint8_t currentOutputIndex=0) {
    this->_tca->selectChannel(currentOutputIndex);
    float milliAmpereValue = 0;
    milliAmpereValue = this->_adcAvgList[currentOutputIndex];
    return milliAmpereValue;
}

// Private methods
void i2cNode::_init() {
    this->_ads.begin();
    this->_numberOfProbes = 20;
    // initiallize the milliampere averages
    for(int currentProbe = 0; currentProbe < this->_numberOfProbes; currentProbe++) {
        this->_getValuesRaw(); // get new raw adc values
        for(uint8_t currentAdc=0; currentAdc < this->_numberOfAdcs; currentAdc++) {
            this->_adcAvgList[currentAdc] = this->_calculateAmpereAverage(currentAdc);
        }
    }
}

void i2cNode::_getValuesRaw() {
    for(uint8_t currentAdc=0; currentAdc < this->_numberOfAdcs; currentAdc++) {
        this->_adcList[currentAdc] = _ads.readADC_SingleEnded(currentAdc);
    }
}

float i2cNode::_calculateAmpereAverage(uint16_t currentAdcValue) {
    float average = 0;
    average = ((.044 * currentAdcValue -3.78) * 0.001);
    // 05A: (.0264 * currentAdcValue -13.51) 
    // 20A: (.19 * currentAdcValue -25) 
    // 30A. (.044 * currentAdcValue -3.78)
    return average;
}