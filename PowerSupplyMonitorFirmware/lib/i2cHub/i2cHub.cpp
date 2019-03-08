#include "i2cHub.h"

// list of i2cnode objects
i2cNode i2cNodeList[5];

// public domain
i2cHub::i2cHub() : TCAADDR(0x70), adsChannels(4), numberOfNodes(5) {
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

void i2cHub::tcaselect(uint8_t port) {
    if (port > 7) {
        return;
    }
    Wire.beginTransmission(TCAADDR);
    Wire.write(1 << port);
    Wire.endTransmission();
}
