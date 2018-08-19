// PCA9685-Arduino Simple Example

#include <Wire.h>
#include <PCA9685.h> // pwm driver
#include <PCF8575.h> // i/o expander
#include <TCA9548A.h> // i2c multiplexer

// Arduino 328p, SDA: A4, SCL: A5
// ESP8266, SDA: D1, SCL: D2
#define PIN_SDA A4
#define PIN_SCL A5


PCA9685 pwmController; // Library using default Wire and default linear phase balancing scheme
const uint8_t ledsPwmMin = 0;
const uint8_t ledsPwmMax = 4096;
const uint8_t ledsNumber = 10;
uint8_t ledsPwm[ledsNumber] = {0};


PCF8575 expander; /** PCF8575 instance */
const uint8_t inputsNumber = 5;
const uint8_t inputs[inputsNumber] = {1,3,5,7,9};
const uint8_t outputsNumber = 5;
const uint8_t outputs[outputsNumber] = {0,2,4,6,8};


#define TCAADDR 0x70

void i2cMultiSelect(uint8_t i) {
    if (i > 7) {
        return;
    }
 
    Wire.beginTransmission(TCAADDR);
    Wire.write(1 << i);
    Wire.endTransmission();  
}

void i2cMultiScan() {
    Serial.println("TCA9548A Scan: start...");
    for (uint8_t t=0; t<8; t++) {
          i2cMultiSelect(t);
          Serial.print("TCA Port #"); 
          Serial.println(t);
     
          for (uint8_t addr = 0; addr<=127; addr++) {
                if (addr == TCAADDR) {
                    continue;
                }
              
                uint8_t data;
                if (! twi_writeTo(addr, &data, 0, 1, 1)) {
                    Serial.print("Found I2C 0x");  
                    Serial.println(addr,HEX);
                }
          }
    }
    Serial.println("\nTCA9548A Scan: ...done");
}


void initExpander() {
    /* Start I2C bus and PCF8575 instance */
    expander.begin(0x20);

    for(uint8_t currentPortInput=0; currentPortInput < inputsNumber; ++currentPortInput) {
        expander.pinMode(inputs[currentPortInput], INPUT);
    }

    for(uint8_t currentPortOutput=0; currentPortOutput < outputsNumber; ++currentPortOutput) {
        expander.pinMode(outputs[currentPortOutput], OUTPUT);
    }
}


void setup() {
    Serial.begin(115200);

    Wire.begin();                       // Wire must be started first
    Wire.setClock(400000);              // Supported baud rates are 100kHz, 400kHz, and 1000kHz

    pwmController.resetDevices();       // Software resets all PCA9685 devices on Wire line

    pwmController.init(B000001);        // Address pins A5-A0 set to B000000
    pwmController.setPWMFrequency(200); // Default is 200Hz, supports 24Hz to 1526Hz

    for(uint8_t currentLed=0; currentLed < ledsNumber; ++currentLed) {
		ledsPwm[currentLed] = currentLed * 250;
		pwmController.setChannelPWM(currentLed, ledsPwm[currentLed]);
	}

    initExpander();
}

boolean forward = true;

void loop() {
    /*
	for(uint8_t currentLed=0; currentLed < ledsNumber; ++currentLed) {
		if(ledsPwm[currentLed] == ledsPwmMax) {
			forward = false;
		}
		else if(ledsPwm[currentLed] == ledsPwmMin) {
			forward = true;
		}

		if(forward) {
			ledsPwm[currentLed]++;
		} else {
			ledsPwm[currentLed]--;
		}

		pwmController.setChannelPWM(currentLed, ledsPwm[currentLed]);
	}
	delay(25);
    */

    for(uint8_t)
    expander.toggle(0);
    expander.toggle(2);
    expander.toggle(4);
    expander.toggle(6);
    expander.toggle(8);
    delay(1000);
}
