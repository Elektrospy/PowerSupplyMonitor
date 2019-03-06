#include "i2cHub.h"

// list of i2cnode objects
i2cNode i2cNodeList[5];

// public domain
i2cHub::i2cHub(TwoWire *i2cBus) : TCAADDR(0x70), adsChannels(4), numberOfNodes(5) {
    _i2cBus = i2cBus;
    // set tca to start input
    tcaselect(0);
    // init nodes
    initNodes();
}

i2cHub::~i2cHub() {
    ;
}

uint8_t i2cHub::getNodeCount() {
    return this->numberOfNodes;
}

uint8_t i2cHub::getNodeChannelCount(uint8_t nodeIndex) {
    uint8_t channelCount = 0;
    if(nodeIndex >= 0 && nodeIndex < this->numberOfNodes) {
        channelCount = i2cNodeList[nodeIndex].getAdcCount();
    }
    return channelCount;
}

float i2cHub::getMilliAmpereForNode(uint8_t currentNode, uint8_t currentChannel) {
    float milliAmpere = 0.0;
    if(currentChannel >= 0 && currentChannel < i2cNodeList[currentNode].getAdcCount()) {
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
    _i2cBus->beginTransmission(TCAADDR);
    _i2cBus->write(1 << port);
    _i2cBus->endTransmission();
}
