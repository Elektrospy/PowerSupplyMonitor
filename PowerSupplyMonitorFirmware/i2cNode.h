// i2cnode.h
#ifndef I2CNODE_H
#define I2CNODE_H
#include <Wire.h>
#include <Adafruit_ADS1015.h>

class i2cNode {
	
public:
	i2cNode();
	~i2cNode();

	void init();

private:
	Adafruit_ADS1015 *ads;
	uint16_t adc0, adc1, adc2, adc3;

	void getValuesRaw();
	void getValuesAmpere();
};

#endif