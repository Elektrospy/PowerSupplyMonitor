#include "i2cHub.h"

// list of i2cnode objects
i2cNode i2cNodeList[5];
PCF857X expander;

// public domain
i2cHub::i2cHub() : TCAADDR(0x70), adsChannels(4), numberOfNodes(5) {
    this->btnMillisPeriod = 500;
    initNodes();
    // set tca to start input
    tcaselect(0);
}

i2cHub::~i2cHub() {
    ;
}

void i2cHub::init() {
    // init nodes
    for(uint8_t currentNode=0; currentNode < this->numberOfNodes; currentNode++) {
        i2cNodeList[currentNode].init();
    }
    initExpander();
}

void i2cHub::run() {
    this->runButtons();
}

const uint8_t i2cHub::getNodeCount() {
    return this->numberOfNodes;
}

const uint8_t i2cHub::getNodeChannelCount(uint8_t nodeIndex) {
    uint8_t channelCount = 0;
    if(nodeIndex >= 0 && nodeIndex < this->numberOfNodes) {
        channelCount = i2cNodeList[nodeIndex].getAdcCount();
    }
    return channelCount;
}

const float i2cHub::getMilliAmpereForNode(uint8_t currentNode, uint8_t currentChannel) {
    float milliAmpere = 0.0;
    // switch tca to current i2cNode port
    tcaselect(i2cNodeList[currentNode].getTcaPort());
    if(currentChannel >= 0 && currentChannel < i2cNodeList[currentNode].getAdcCount()) {
        // get milliampere values from current i2cNode adc channel
        milliAmpere = i2cNodeList[currentNode].getMilliAmpereForInput(currentChannel);
    }
    return milliAmpere;
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
    expander.pinMode(0, OUTPUT);
    expander.pinMode(1, INPUT_PULLUP);
    expander.pinMode(2, OUTPUT);
    expander.pinMode(3, INPUT_PULLUP);
    expander.pinMode(4, OUTPUT);
    expander.pinMode(5, INPUT_PULLUP);
    expander.pinMode(6, OUTPUT);
    expander.pinMode(7, INPUT_PULLUP);
    expander.pinMode(8, OUTPUT);
    expander.pinMode(9, INPUT_PULLUP);
    // ports 10-15, node toggles & display trigger buttons
    expander.pinMode(10, INPUT_PULLUP);
    expander.pinMode(11, INPUT_PULLUP);
    expander.pinMode(12, INPUT_PULLUP);
    expander.pinMode(13, INPUT_PULLUP);
    expander.pinMode(14, INPUT_PULLUP);
    expander.pinMode(15, INPUT_PULLUP);
    // set intial states
    expander.digitalWrite(0, LOW);
    expander.digitalWrite(2, LOW);
    expander.digitalWrite(4, LOW);
    expander.digitalWrite(6, LOW);
    expander.digitalWrite(8, LOW);
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
        if(expander.digitalRead(11)) {
            expander.toggle(0);
        }
        if(expander.digitalRead(12)) {
            expander.toggle(2);
        }
        if(expander.digitalRead(13)) {
            expander.toggle(4);
        }
        if(expander.digitalRead(14)) {
            expander.toggle(6);
        }
        if(expander.digitalRead(15)) {
            expander.toggle(8);
        }
        this->btnMillisStart = this->btnMillisLast;
    }
}
