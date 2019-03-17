#ifndef I2CHUB_H
#define I2CHUB_H

#include "i2cNode.h"
#include <PCF857X.h>

class i2cHub {
	
public:
	i2cHub();
	~i2cHub();
	void init();
	void run();
	const uint8_t getNodeCount();
	const uint8_t getNodeChannelCount(uint8_t nodeIndex);
	const bool getInputState(uint8_t currentNode);
	const bool getOutputState(uint8_t currentNode);
	const float getRawForNode(uint8_t currentNode, uint8_t currentChannel);
	const float getAmpereForNode(uint8_t currentNode, uint8_t currentChannel);
	const float getMilliAmpereForNode(uint8_t currentNode, uint8_t currentChannel);
	const void activatePowerSupply(uint8_t nodeIndex);
	const void deactivatePowerSupply(uint8_t nodeIndex);
	const bool getDisplayButtonState();

private:
	// tca default address
	const uint8_t TCAADDR;
	// number of max i2c adc used channels
	const uint8_t adsChannels;
	// number of max connected i2c nodes
	const uint8_t _numberOfNodes;
	// timing stuff
	unsigned long btnMillisPeriod;
	unsigned long btnMillisStart;
	unsigned long btnMillisLast;

	void initNodes();
	void initExpander();
	void tcaselect(uint8_t port);
	void runButtons();
};

#endif
