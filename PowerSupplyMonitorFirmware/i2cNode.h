// i2cnode.h
#ifndef I2CNODE_H
#define I2CNODE_H
#include <Wire.h>
#include <Adafruit_ADS1015.h>

class i2cNode {
	
public:
	i2cNode();
	~i2cNode();
	float getMilliAmpereForOutput(uint8_t);

private:
	Adafruit_ADS1015 *_ads;
	uint16_t _numberOfProbes;
	uint16_t _adcList[4];
	uint16_t _adcAvgList[4];
	const uint8_t _numberOfAdcs;

	void _init();

	void _getValuesRaw();
	void _getValueAmpere(uint8_t);
	float _calculateMilliAmpereAverage(uint16_t);
};

#endif