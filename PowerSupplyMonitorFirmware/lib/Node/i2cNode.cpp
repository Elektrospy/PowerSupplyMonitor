#include "i2cNode.h"
#include <cstddef>

i2cNode::i2cNode() {
    this->_numberOfAdcs = 4;
    this->_tcaPort = 0;
}

i2cNode::i2cNode(TI_TCA9548A *tca, uint8_t tcaPort) {
    this->_numberOfAdcs = 4;
    this->_tcaPort = tcaPort;
    this->_tca = tca;
    this->_init();
}

i2cNode::~i2cNode() {
    ;
}

float i2cNode::getAmpereForOutput(uint8_t adcIndex=0) {
    this->getRawInput(adcIndex);
    this->_calculateAmpereFromRaw(this->_adcListRaw[adcIndex]);
    return this->_adcListAmpere[adcIndex];
}

uint16_t i2cNode::getRawInput(uint8_t adcIndex=0) {
    this->_updateRawValues();
    return this->_adcListRaw[adcIndex];
}


// Private methods
void i2cNode::_init() {
    this->_tca->selectChannel(this->_tcaPort);
    Adafruit_ADS1015 adsNew;
    this->_ads = adsNew;
    this->_ads.begin();
    // initiallize the milliampere values
    this->_updateRawValues();
}

uint16_t i2cNode::_getRaw(uint8_t adcIndex) {
    this->_tca->selectChannel(this->_tcaPort);
    return this->_ads.readADC_SingleEnded(adcIndex);
}

void i2cNode::_updateRawValues() {
    for(uint8_t currentAdc=0; currentAdc < this->_numberOfAdcs; currentAdc++) {
        this->_adcListRaw[currentAdc] = this->_getRaw(currentAdc);
    }
}

float i2cNode::_calculateAmpereFromRaw(uint16_t currentAdcValue) {
    float ampere = 0;
    // 05A: (.0264 * currentAdcValue -13.51) 
    // 20A: (.19 * currentAdcValue -25) 
    // 30A. (.044 * currentAdcValue -3.78)
    ampere = ((.044 * currentAdcValue -3.78) * 0.001);
    return ampere;
}