#include "i2cNode.h"

i2cNode::i2cNode() {
	this->init();
}

void i2cNode::init() {

}

void i2cNode::getValuesRaw() {
  adc0 = ads->readADC_SingleEnded(0);
  adc1 = ads->readADC_SingleEnded(1);
  adc2 = ads->readADC_SingleEnded(2);
  adc3 = ads->readADC_SingleEnded(3);
}