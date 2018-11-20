#include "i2cNode.h"

i2cNode::i2cNode():_numberOfAdcs(2) {
	this->_init();
    this->_numberOfProbes = 1000;
}

i2cNode::~i2cNode() {
    if(this->_ads != nullptr) {
        delete this->_ads;
    }
}

float i2cNode::getMilliAmpereForOutput(uint8_t currentOutputIndex) {
    float milliAmpereValue = 0;
    milliAmpereValue = this->_adcAvgList[currentOutputIndex];
    return milliAmpereValue;
}

// Private methods
void i2cNode::_init() {
    // initiallize the milliampere averages
    for(int i = 0; i < this->_numberOfProbes; i++) {
        this->_getValuesRaw(); // get new raw adc values
        for(uint8_t currentAdc=0; currentAdc < this->_numberOfAdcs; ++currentAdc) {
            this->_adcAvgList[currentAdc] = this->_calculateMilliAmpereAverage(currentAdc);
        }
    }
}

void i2cNode::_getValuesRaw() {
    for(uint8_t currentAdc=0; currentAdc < this->_numberOfAdcs; ++currentAdc) {
        this->_adcList[currentAdc] = _ads->readADC_SingleEnded(currentAdc);
    }
}

void i2cNode::_getValueAmpere(uint8_t currentAdc) {
    if(currentAdc < this->_numberOfAdcs && currentAdc > 0) {
        ;
    }
}

float i2cNode::_calculateMilliAmpereAverage(uint16_t currentAdcValue) {
    float average = 0;

    average = average + (.044 * currentAdcValue -3.78);
    // 05A: (.0264 * currentAdc -13.51) 
    // 20A: (.19 * currentAdc -25) 
    // 30A. (.044 * currentAdc -3.78)
    
    return average;
}