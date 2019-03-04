// i2cnode.h
#ifndef I2CNODE_H
#define I2CNODE_H
#include <Adafruit_ADS1015.h>

class i2cNode {
	
public:
	i2cNode();
	i2cNode(uint8_t tcaPort);
	~i2cNode();
	uint8_t getTcaPort();
	uint16_t getRawInput(uint8_t);
	float getAmpereForOutput(uint8_t);
	uint16_t getMilliAmpereForOutput(uint8_t);

private:
	uint16_t _numberOfProbes;
	uint8_t _numberOfAdcs;
	uint8_t _tcaPort;
	Adafruit_ADS1015 _ads;

	void _init();
	uint16_t _getRaw(uint8_t);
	float _calculateAmpereFromRaw(uint16_t);
	uint16_t _calculateMilliAmpereFromRaw(uint16_t);
};

#endif
