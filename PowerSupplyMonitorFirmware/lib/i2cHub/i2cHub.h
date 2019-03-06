#ifndef I2CHUB_H
#define I2CHUB_H

#include <Wire.h>
#include "i2cNode.h"

class i2cHub {
	
public:
	i2cHub(TwoWire*);
	~i2cHub();
	uint8_t getNodeCount();
	uint8_t getNodeChannelCount(uint8_t nodeIndex);
	float getMilliAmpereForNode(uint8_t currentNode, uint8_t currentChannel);

private:
	TwoWire *_i2cBus;
	// tca default address
	const uint8_t TCAADDR;
	// number of max i2c adc used channels
	const uint8_t adsChannels;
	// number of max connected i2c nodes
	const uint8_t numberOfNodes;

	void initNodes();
	void tcaselect(uint8_t port);
};

#endif
