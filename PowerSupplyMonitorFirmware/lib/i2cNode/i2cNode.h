#ifndef I2CNODE_H
#define I2CNODE_H
#include <Adafruit_ADS1015.h>

class i2cNode {
	
public:
	i2cNode();
	i2cNode(uint8_t tcaPort);
	~i2cNode();
	void init();
	uint8_t getTcaPort();
	uint8_t getAdcCount();
	uint16_t getRawInput(uint8_t adcIndex);
	float getAmpereForInput(uint8_t adcIndex);
	void setAdcDrift(int16_t driftValue, uint8_t adcIndex);

private:
	uint16_t _numberOfProbes;
	uint8_t _numberOfAdcs;
	uint8_t _tcaPort;
	Adafruit_ADS1015 _ads;
	int16_t _driftValue[4] = {0, 0, 0, 0};

	uint16_t _getRaw(uint8_t adcIndex);
	float _calculateAmpereFromRaw(uint16_t adcValue);
};

#endif
