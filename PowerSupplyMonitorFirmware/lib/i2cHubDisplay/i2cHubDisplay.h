#ifndef I2CHUBDISPLAY_H
#define I2CHUBDISPLAY_H

#include "i2cHub.h"
#include <Arduino.h>
#include <U8g2lib.h>
#ifdef U8X8_HAVE_HW_I2C
#include <Wire.h>
#endif

class i2cHubDisplay {
	
public:
	i2cHubDisplay(i2cHub*);
	~i2cHubDisplay();
	void init();
	void run();
    

private:
	i2cHub* _nodeHub;
	U8G2_SSD1306_128X64_NONAME_F_HW_I2C _oledDisplay;
	uint8_t _dashboardCurrentIndex;

	void _framePrepare();
	void _frameDraw();
	void _frameHello();
	void _frameDashboard();
};

#endif