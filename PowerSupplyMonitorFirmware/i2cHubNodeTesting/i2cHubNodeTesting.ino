<<<<<<< HEAD
#include <Wire.h> // i2c stuff
#include <PCA9685.h> // pwm driver
#include <pcf8574_esp.h> // i/o gpioExpander

// Arduino 328p, SDA: A4, SCL: A5
// ESP8266, SDA: D1, SCL: D2
#define PIN_SDA 5
#define PIN_SCL 4


PCA9685 pwmController; // Library using default testWire and default linear phase balancing scheme
const uint16_t ledsPwmMin = 0;
const uint16_t ledsPwmMax = 4096;
const uint8_t ledsNumber = 10;
uint8_t ledsPwm[ledsNumber] = {0};

void pwmControllerInit() {
    pwmController.resetDevices();       // Software resets all PCA9685 devices on testWire line

    pwmController.init(B000001);        // Address pins A5-A0 set to B000000
    pwmController.setPWMFrequency(1526); // Default is 200Hz, supports 24Hz to 1526Hz

    for(uint8_t currentLed=0; currentLed < ledsNumber; ++currentLed) {
        ledsPwm[currentLed] = currentLed * 250;
        pwmController.setChannelPWM(currentLed, ledsPwm[currentLed]);
    }
}

boolean forward = true;
void pwmControllerTest() {
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
}


//PCF8575 gpioExpander; /** PCF8575 instance */
TwoWire testWire;
PCF857x gpioExpander(0x20, &testWire, true);
=======
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
>>>>>>> aaa4b558a462849001a463aad82ee2ac1328f41a
const uint8_t inputsNumber = 5;
const uint8_t inputs[inputsNumber] = {1,3,5,7,9};
const uint8_t outputsNumber = 5;
const uint8_t outputs[outputsNumber] = {0,2,4,6,8};

<<<<<<< HEAD
void gpioExpanderInit() {
    /* Start I2C bus and PCF8575 instance */
    gpioExpander.begin();
    gpioExpander.resetInterruptPin();

    for(uint8_t currentPortInput=0; currentPortInput < inputsNumber; ++currentPortInput) {
        //gpioExpander.pinMode(inputs[currentPortInput], INPUT_PULLUP);
        gpioExpander.write(inputs[currentPortInput], HIGH);
    }

    for(uint8_t currentPortOutput=0; currentPortOutput < outputsNumber; ++currentPortOutput) {
        //gpioExpander.pinMode(outputs[currentPortOutput], OUTPUT);
        gpioExpander.write(outputs[currentPortOutput], LOW);
    }
}

void gpioExpanderInputPrint() {
    Serial.print("IN: ");
    for(uint8_t currentPortInput=0; currentPortInput < inputsNumber; ++currentPortInput) {
        Serial.print(!gpioExpander.read(inputs[currentPortInput]));
        Serial.print(",");
    }
    Serial.println();
}

void gpioExpanderTest() {
    for(uint8_t currentOutput=0; currentOutput < outputsNumber; ++currentOutput) {
        gpioExpander.write(outputs[currentOutput], HIGH);
        gpioExpanderInputPrint();
        delay(1000);
        gpioExpander.write(outputs[currentOutput], LOW);
    }    
}


void i2cScanner() {
    byte error, address;
    int nDevices;

    Serial.println("Scanning...");

    nDevices = 0;
    for(address = 1; address < 127; address++ ) {
        // The i2c_scanner uses the return value of
        // the Write.endTransmisstion to see if
        // a device did acknowledge to the address.
        testWire.beginTransmission(address);
        error = testWire.endTransmission();

        if (error == 0) {
            Serial.print("I2C device found at address 0x");
            if (address<16) {
                Serial.print("0");
            }
            Serial.print(address,HEX);
            Serial.println("  !");

             nDevices++;
        } else if (error==4) {
            Serial.print("Unknown error at address 0x");
            if (address<16) {
                Serial.print("0");
            }
            Serial.println(address,HEX);
        }    
    }
    if (nDevices == 0) {
        Serial.println("No I2C devices found\n");
    } else {
        Serial.println("done\n");
    }

    //delay(5000); // wait 5 seconds for next scan
}

=======
>>>>>>> aaa4b558a462849001a463aad82ee2ac1328f41a

#define TCAADDR 0x70

void i2cMultiSelect(uint8_t i) {
    if (i > 7) {
        return;
    }
 
<<<<<<< HEAD
    testWire.beginTransmission(TCAADDR);
    testWire.write(1 << i);
    testWire.endTransmission();  
=======
    Wire.beginTransmission(TCAADDR);
    Wire.write(1 << i);
    Wire.endTransmission();  
>>>>>>> aaa4b558a462849001a463aad82ee2ac1328f41a
}

void i2cMultiScan() {
    Serial.println("TCA9548A Scan: start...");
    for (uint8_t t=0; t<8; t++) {
<<<<<<< HEAD
        i2cMultiSelect(t);
        Serial.print("TCA Port #"); 
        Serial.println(t);
     
        i2cScanner();
=======
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
>>>>>>> aaa4b558a462849001a463aad82ee2ac1328f41a
    }
    Serial.println("\nTCA9548A Scan: ...done");
}

<<<<<<< HEAD
void setup() {
    //WiFi.persistent(false);
    //WiFi.mode(WIFI_OFF);
    //WiFi.forceSleepBegin();
    //delay(1);

    Serial.begin(115200);

    testWire.begin(PIN_SDA, PIN_SCL);
    //Specsheets say PCF8574 is officially rated only for 100KHz I2C-bus
    //PCF8575 is rated for 400KHz
    testWire.setClock(400000L);

    i2cScanner();

    pwmControllerInit();

    gpioExpanderInit();
    gpioExpanderTest();

    i2cMultiScan();
}

void loop() {
    pwmControllerTest();
    gpioExpanderTest();
=======

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
>>>>>>> aaa4b558a462849001a463aad82ee2ac1328f41a
}
