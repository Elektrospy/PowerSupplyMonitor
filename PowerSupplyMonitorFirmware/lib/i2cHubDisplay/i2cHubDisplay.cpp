#include "i2cHubDisplay.h"

SSD1306Wire  display(0x3c, D1, D2);
OLEDDisplayUi ui ( &display );
FrameCallback _frames[1];

i2cHubDisplay::i2cHubDisplay(i2cHub *nodeHub): _frameCount(1) {
    _frames[0] = this->_frameHello;
    ui.setTargetFPS(60);
    ui.setFrames(_frames, this->_frameCount);
    ui.init();
    display.flipScreenVertically();
}

i2cHubDisplay::~i2cHubDisplay() {
    ;
}

void i2cHubDisplay::run() {
    ui.update();
}

// private 
void i2cHubDisplay::_frameHello(OLEDDisplay *display, OLEDDisplayUiState* state, int16_t x, int16_t y) {
    display->setTextAlignment(TEXT_ALIGN_LEFT);
    display->setFont(ArialMT_Plain_16);
    display->drawString(0, 0, "Hello World!");
}