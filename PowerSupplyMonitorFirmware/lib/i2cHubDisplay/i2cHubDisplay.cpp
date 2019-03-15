#include "i2cHubDisplay.h"

i2cHubDisplay::i2cHubDisplay(i2cHub *nodeHub) {
    ;
}

i2cHubDisplay::~i2cHubDisplay() {
    ;
}

void i2cHubDisplay::run() {
    ;
}

// private 
void i2cHubDisplay::_frameHello(OLEDDisplay *display, OLEDDisplayUiState* state, int16_t x, int16_t y) {
    display->setTextAlignment(TEXT_ALIGN_LEFT);
    display->setFont(ArialMT_Plain_16);
    display->drawString(0, 0, "Hello World!");
}