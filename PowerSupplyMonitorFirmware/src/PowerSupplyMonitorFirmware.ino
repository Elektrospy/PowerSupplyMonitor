#include <Wire.h> // i2c stuff
#include "i2cHub.h"
#include "i2cHubDebug.h"
#include "i2cHubDisplay.h"

#include "SSD1306Wire.h" //Display Bibliothek
#include "OLEDDisplayUi.h" //Display Bibliothek

// Arduino 328p, SDA: A4, SCL: A5
// ESP8266, SDA: D1, SCL: D2
#define PIN_SDA D1
#define PIN_SCL D2
const unsigned long serialBautrate = 115200;
const uint32_t i2cClockSpeed = 400000;
i2cHub nodeHub = i2cHub();
i2cHubDebug nodeHubDebug = i2cHubDebug(&nodeHub);
//i2cHubDisplay nodeHubDisplay = i2cHubDisplay(&nodeHub);


SSD1306Wire  display(0x3c, PIN_SDA, PIN_SCL);
OLEDDisplayUi ui ( &display );

void frameDashboard(OLEDDisplay *display, OLEDDisplayUiState* state, int16_t x, int16_t y) {
    display->setTextAlignment(TEXT_ALIGN_LEFT);
    display->setFont(ArialMT_Plain_10);
    const int txtSpace = 10;

    for(uint8_t currentNode=0; currentNode < nodeHub.getNodeCount(); currentNode++) {
        char buffer[128];
        sniprintf(buffer, sizeof(buffer), "%d: %05.0fmA %05.0fmA",
            currentNode, 
            nodeHub.getMilliAmpereForNode(currentNode, 2), 
            nodeHub.getMilliAmpereForNode(currentNode, 3));
        display->drawString(0, txtSpace * currentNode, buffer);
    }
}

FrameCallback frames[] = { frameDashboard };
const uint8_t frameCount = 1;

// prototype methods
void debugNodePrint();
void debugNodePowerSupplys();

void setup() {
    Serial.begin(serialBautrate);
    // init i2c wire bus
    Wire.begin(PIN_SDA, PIN_SCL);
    // Supported baud rates are 100kHz, 400kHz, and 1000kHz
    Wire.setClock(i2cClockSpeed);
    // init nodeHub for i2c usage
    nodeHub.init();
    // i2c oled settings
    ui.setTargetFPS(30);
    ui.setFrames(frames, frameCount);
    ui.init();
}

void loop() {
    nodeHub.run();
    nodeHubDebug.debugNodePrint();
    //nodeHubDebug.debugNodePowerSupplys();
    ui.update();
}    
