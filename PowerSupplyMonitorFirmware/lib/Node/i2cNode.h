// i2cnode.h
#ifndef I2CNODE_H
#define I2CNODE_H
#include <Wire.h>
#include <TwoWireMux.h>
#include <TI_TCA9548A.h>
#include <Adafruit_ADS1015.h>

class i2cNode {
	
public:
	i2cNode();
	i2cNode(TI_TCA9548A *tca, uint8_t tcaPort);
	~i2cNode();
	float getAmpereForOutput(uint8_t);
	uint16_t getRawInput(uint8_t);

private:
	uint16_t _numberOfProbes;
	uint16_t _adcListRaw[4];
	uint16_t _adcListAmpere[4];
	uint8_t _numberOfAdcs;
	uint8_t _tcaPort;
	Adafruit_ADS1015 _ads;
	TI_TCA9548A *_tca;

	void _init();

	void _updateRawValues();
	uint16_t _getRaw(uint8_t);
	float _calculateAmpereFromRaw(uint16_t);
};

#endif