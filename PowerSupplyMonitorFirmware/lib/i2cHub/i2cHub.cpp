#include "i2cHub.h"

const uint8_t numberOfNodes = 5;
i2cNode i2cNodeList[numberOfNodes];
// hall sensor drift correction values
const int16_t i2cNodeAdcDrift[numberOfNodes][2] = {{-3,-4},{-2, -1},{-2,-1},{18,18},{3,3}};
// pcf i2c expander configuration
const uint8_t pcfPwrInput[numberOfNodes] = {1, 3, 5, 7, 9};
const uint8_t pcfPwrOutput[numberOfNodes] = {0, 2, 4, 6, 8};
const uint8_t pcfPwrButton[numberOfNodes] = {11, 12, 13, 14, 15};
const uint8_t pcfDisplayBtn = 10;
boolean pcfPwrOutputState[numberOfNodes] = {false, false, false, false, false};
PCF857X expander;

// public domain
i2cHub::i2cHub() : TCAADDR(0x70), adsChannels(4), _numberOfNodes(numberOfNodes) {
    this->btnMillisPeriod = 500;
    initNodes();
    // set tca to start input
    tcaselect(0);
}

i2cHub::~i2cHub() {
    ;
}

void i2cHub::init() {
    uint8_t nodeLeft = 3;
    uint8_t nodeRight = 2;
    // init nodes
    for(uint8_t currentNode=0; currentNode < this->_numberOfNodes; currentNode++) {
        i2cNodeList[currentNode].init();
        i2cNodeList[currentNode].setAdcDrift(i2cNodeAdcDrift[currentNode][0], nodeLeft);
        i2cNodeList[currentNode].setAdcDrift(i2cNodeAdcDrift[currentNode][1], nodeRight);
    }
    initExpander();
}

void i2cHub::run() {
    this->runButtons();
}

const uint8_t i2cHub::getNodeCount() {
    return this->_numberOfNodes;
}

const uint8_t i2cHub::getNodeChannelCount(uint8_t nodeIndex) {
    uint8_t channelCount = 0;
    if(nodeIndex >= 0 && nodeIndex < this->_numberOfNodes) {
        channelCount = i2cNodeList[nodeIndex].getAdcCount();
    }
    return channelCount;
}

const bool i2cHub::getInputState(uint8_t currentNode=0) {
    bool inputState = true;
    if(expander.digitalRead(pcfPwrInput[currentNode])) {
        inputState = false;
    }
    return inputState;
}

const bool i2cHub::getOutputState(uint8_t currentNode=0) {
    bool outputState = false;
    if(expander.digitalRead(pcfPwrOutput[currentNode])) {
        outputState = true;
    }
    return outputState;
}

const float i2cHub::getRawForNode(uint8_t currentNode, uint8_t currentChannel) {
    float ampere = 0.0;
    // switch tca to current i2cNode port
    tcaselect(i2cNodeList[currentNode].getTcaPort());
    if(currentChannel >= 0 && currentChannel < i2cNodeList[currentNode].getAdcCount()) {
        // get milliampere values from current i2cNode adc channel
        ampere = i2cNodeList[currentNode].getRawInput(currentChannel);
    }
    return ampere;
}

const float i2cHub::getAmpereForNode(uint8_t currentNode, uint8_t currentChannel) {
    float ampere = 0.0;
    // switch tca to current i2cNode port
    tcaselect(i2cNodeList[currentNode].getTcaPort());
    if(currentChannel >= 0 && currentChannel < i2cNodeList[currentNode].getAdcCount()) {
        // get milliampere values from current i2cNode adc channel
        ampere = i2cNodeList[currentNode].getAmpereForInput(currentChannel);
    }
    return ampere;
}

const float i2cHub::getMilliAmpereForNode(uint8_t currentNode, uint8_t currentChannel) {
    float milliAmpere = 0.0;
    // switch tca to current i2cNode port
    tcaselect(i2cNodeList[currentNode].getTcaPort());
    if(currentChannel >= 0 && currentChannel < i2cNodeList[currentNode].getAdcCount()) {
        // get milliampere values from current i2cNode adc channel
        milliAmpere = i2cNodeList[currentNode].getAmpereForInput(currentChannel);
    }
    return milliAmpere;
}

const void i2cHub::activatePowerSupply(uint8_t nodeIndex) {
    expander.digitalWrite(pcfPwrOutput[nodeIndex], 1);
}

const void i2cHub::deactivatePowerSupply(uint8_t nodeIndex) {
    expander.digitalWrite(pcfPwrOutput[nodeIndex], 0);
}

const bool i2cHub::getDisplayButtonState() {
    return expander.digitalRead(pcfDisplayBtn);
}

// private methods
void i2cHub::initNodes() {
	for(uint8_t currentNode=0; currentNode < numberOfNodes; currentNode++) {
		i2cNodeList[currentNode] = i2cNode(currentNode);
    }
}

void i2cHub::initExpander() {
    expander.begin(0x20);
    // ports 0-9, node signals
    for(uint8_t index=0; index < this->_numberOfNodes; index++) {
        expander.pinMode(pcfPwrOutput[index], OUTPUT);
        expander.pinMode(pcfPwrInput[index], INPUT_PULLUP);
        expander.pinMode(pcfPwrButton[index], INPUT_PULLUP);
    }
    // display trigger button
    expander.pinMode(pcfDisplayBtn, INPUT_PULLUP);
    // set intial states for power supplies (OFF)
    for(uint8_t index=0; index < this->_numberOfNodes; index++) {
        expander.digitalWrite(pcfPwrOutput[index], LOW);
    }
}

void i2cHub::tcaselect(uint8_t port) {
    if (port > 7) {
        return;
    }
    Wire.beginTransmission(TCAADDR);
    Wire.write(1 << port);
    Wire.endTransmission();
}

void i2cHub::runButtons() {
    this->btnMillisLast = millis();
    if(this->btnMillisLast - this->btnMillisStart >= this->btnMillisPeriod) {
        for(uint8_t index=0; index < this->_numberOfNodes; index++) {
            if(expander.digitalRead(pcfPwrButton[index])) {
                expander.toggle(pcfPwrOutput[index]);
            }
        }
        this->btnMillisStart = this->btnMillisLast;
    }
}
