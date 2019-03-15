#include "i2cHubDisplay.h"

i2cHubDisplay::i2cHubDisplay(i2cHub *nodeHub) : 
    _oledDisplay(U8G2_R0, U8X8_PIN_NONE) {
    this->_nodeHub = nodeHub;
    this->_dashboardCurrentIndex = 0;
}

i2cHubDisplay::~i2cHubDisplay() {
    ;
}

void i2cHubDisplay::init() {
    _oledDisplay.begin();
}

void i2cHubDisplay::run() {
    _oledDisplay.clearBuffer();
    this->_frameDraw();
    _oledDisplay.sendBuffer();
}

// private methods
void i2cHubDisplay::_framePrepare() {
    _oledDisplay.setFont(u8g2_font_t0_11_mf);
    _oledDisplay.setFontRefHeightExtendedText();
    _oledDisplay.setDrawColor(1);
    _oledDisplay.setFontPosTop();
    _oledDisplay.setFontDirection(0);
    _oledDisplay.setDisplayRotation(U8G2_R2);
}

void i2cHubDisplay::_frameDraw() {
    this->_framePrepare();
    switch(this->_dashboardCurrentIndex) {
        case 0: this->_frameDashboard(); break;
    }
}

void i2cHubDisplay::_frameDashboard() {
    this->_framePrepare();
    const int txtSpace = 10;
    const uint8_t nodeCount = this->_nodeHub->getNodeCount();
    for(uint8_t currentNode=0; currentNode < nodeCount; currentNode++) {
        char buffer[128];
        sniprintf(buffer, sizeof(buffer), "%d: %d:%d % 5.2fA % 5.2fA",
            currentNode, 
            this->_nodeHub->getInputState(currentNode),
            this->_nodeHub->getOutputState(currentNode),
            this->_nodeHub->getAmpereForNode(currentNode, 2), 
            this->_nodeHub->getAmpereForNode(currentNode, 3));
        this->_oledDisplay.drawStr(0, txtSpace * currentNode, buffer);
    }
}