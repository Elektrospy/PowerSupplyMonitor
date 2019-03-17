#include "i2cHubDisplay.h"

i2cHubDisplay::i2cHubDisplay(i2cHub *nodeHub) : 
    _oledDisplay(U8G2_R0, U8X8_PIN_NONE) {
    this->_nodeHub = nodeHub;
    this->_dashboardMax = 3;
    this->_dashboardCurrentIndex = 0;
    this->_btnMillisPeriod = 500;
}

i2cHubDisplay::~i2cHubDisplay() {
    ;
}

void i2cHubDisplay::init() {
    this->_oledDisplay.begin();
    this->_oledDisplay.setFontDirection(0);
    this->_oledDisplay.setDisplayRotation(U8G2_R2);
}

void i2cHubDisplay::run() {
    this->_checkDisplayButton();
    this->_frameDraw();
}


// private methods
void i2cHubDisplay::_checkDisplayButton() {
    this->_btnMillisLast = millis();
    if(this->_btnMillisLast - this->_btnMillisStart >= this->_btnMillisPeriod) {
        if(this->_nodeHub->getDisplayButtonState()) {
            this->_nextDashboard();
        }
        this->_btnMillisStart = this->_btnMillisLast;
    }
}

void i2cHubDisplay::_nextDashboard() {
    if(this->_dashboardCurrentIndex < this->_dashboardMax - 1) {
        this->_dashboardCurrentIndex++;
    } else {
        this->_dashboardCurrentIndex = 0;
    }
}

void i2cHubDisplay::_framePrepare() {
    this->_oledDisplay.setFont(u8g2_font_t0_11_mf);
    this->_oledDisplay.setFontRefHeightExtendedText();
    this->_oledDisplay.setDrawColor(1);
    this->_oledDisplay.setFontPosTop();
}

void i2cHubDisplay::_frameMenu() {
    const uint8_t radius = 3;
    const uint8_t spacer = 3;
    uint8_t startX = radius;
    const uint8_t startY = this->_oledDisplay.getDisplayHeight() - (radius * 2);
    //const uint8_t startY = this->_oledDisplay.getDisplayHeight() - 6;
    //const uint8_t displayMiddle = this->_oledDisplay.getDisplayWidth() / 2;
    //uint8_t startX = displayMiddle - (this->_dashboardMax * radius);
    
    for(uint8_t currentIndex = 0; currentIndex < this->_dashboardMax; currentIndex++) {
        if(currentIndex == this->_dashboardCurrentIndex) {
            this->_oledDisplay.drawDisc(startX, startY, radius);
        } else {
            this->_oledDisplay.drawCircle(startX, startY, radius);
        }
        startX = startX + ((radius * 2) + spacer);
    }
}

void i2cHubDisplay::_frameDraw() {
    this->_framePrepare();
    this->_oledDisplay.clearBuffer();
    // draw current selected dashboard
    switch(this->_dashboardCurrentIndex) {
        case 0: this->_frameBigAmpere(); break;
        case 1: this->_frameDashboard(); break;
        case 2: this->_frameEthernet(); break;
    }
    // draw circle menu on bottom
    this->_frameMenu();
    this->_oledDisplay.sendBuffer();
}

void i2cHubDisplay::_frameDashboard() {
    const int txtSpace = 10;
    const uint8_t nodeCount = this->_nodeHub->getNodeCount();
    for(uint8_t currentNode=0; currentNode < nodeCount; currentNode++) {
        char buffer[128];
        sniprintf(buffer, sizeof(buffer), "%d: % 5.2fA | % 5.2fA",
            currentNode,
            this->_nodeHub->getAmpereForNode(currentNode, 3), 
            this->_nodeHub->getAmpereForNode(currentNode, 2));
        this->_oledDisplay.drawStr(0, txtSpace * currentNode, buffer);
    }
}

void i2cHubDisplay::_frameBigAmpere() {
    float bigAmpere = 0.0;
    const uint8_t nodeCount = this->_nodeHub->getNodeCount();

    for(uint8_t currentNode=0; currentNode < nodeCount; currentNode++) {
        bigAmpere += this->_nodeHub->getAmpereForNode(currentNode, 3);
        bigAmpere += this->_nodeHub->getAmpereForNode(currentNode, 2);
    }
    // print sum for all nodes ampere
    this->_oledDisplay.setFont(u8g2_font_inb24_mr);
    char buffer[128];
    sniprintf(buffer, sizeof(buffer), "% 5.1fA", bigAmpere);
    this->_oledDisplay.drawStr(0, 0, buffer);

    // progress bar config
    uint8_t startX = 0;
    const uint8_t barFrameStartY = 32;
    const uint8_t barFrameWidth = this->_oledDisplay.getDisplayWidth();
    const uint8_t barFrameHeight = 11;
    const uint8_t barFrameCorner = 3;
    const float ampereMax = 180.0f;
    // progess bar frame
    this->_oledDisplay.drawFrame(startX, barFrameStartY, barFrameWidth, barFrameHeight);
    // progress bar itself
    uint8_t progressWidth = 0;
    if(bigAmpere >= 0.0f) {
        // positive progress bar
        progressWidth = constrain(map(bigAmpere, 0.0f, ampereMax, 0, barFrameWidth), 0, barFrameWidth);
    } else {
        // negative progress bar
        progressWidth = constrain(map(bigAmpere, 0.0f, -ampereMax, 0, barFrameWidth), 0, barFrameWidth);
        startX = this->_oledDisplay.getDisplayWidth() - progressWidth;
    }
    this->_oledDisplay.drawBox(startX, barFrameStartY, progressWidth, barFrameHeight);

    // debugging print
    sniprintf(buffer, sizeof(buffer), "%d", progressWidth);
    this->_oledDisplay.setFont(u8g2_font_t0_11_mf);
    this->_oledDisplay.drawStr(0, barFrameStartY + barFrameHeight, buffer);
}

void i2cHubDisplay::_frameEthernet() {
    this->_oledDisplay.drawStr(0, 0, "IP: 255.255.255.255");
}
