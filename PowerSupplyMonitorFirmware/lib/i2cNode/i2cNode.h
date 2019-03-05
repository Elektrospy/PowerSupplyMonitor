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
	uint16_t getRawInput(uint8_t adcIndex);
	float getAmpereForInput(uint8_t adcIndex);
	uint16_t getMilliAmpereForInput(uint8_t adcIndex);

private:
	uint16_t _numberOfProbes;
	uint8_t _numberOfAdcs;
	uint8_t _tcaPort;
	Adafruit_ADS1015 _ads;

	void _init();
	uint16_t _getRaw(uint8_t adcIndex);
	float _calculateAmpereFromRaw(uint16_t adcValue);
	float _calculateMilliAmpereFromRaw(uint16_t adcValue);
};

#endif
