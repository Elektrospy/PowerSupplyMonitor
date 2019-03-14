#ifndef I2CHUBDISPLAY_H
#define I2CHUBDISPLAY_H

#include "i2cHub.h"
#include <Wire.h>
#include "SSD1306Wire.h"
#include "OLEDDisplayUi.h"

class i2cHubDisplay {
	
public:
	i2cHubDisplay(i2cHub*);
	~i2cHubDisplay();
	void init();
	void run();

private:
    const int _frameCount;
    void _frameHello(OLEDDisplay *display, OLEDDisplayUiState* state, int16_t x, int16_t y);
};

#endif