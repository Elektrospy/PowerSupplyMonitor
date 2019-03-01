// PCA9685-Arduino Simple Example
#include <Wire.h> // i2c stuff
#include <PCA9685.h> // pwm driver
#include <PCF857X.h> // i/o gpioExpander

// Arduino 328p, SDA: A4, SCL: A5
// ESP8266, SDA: D1, SCL: D2
#define PIN_SDA D1
#define PIN_SCL D2


PCA9685 pwmController; // Library using default Wire and default linear phase balancing scheme
const uint16_t ledsPwmMin = 0;
const uint16_t ledsPwmMax = 4096;
const uint8_t ledsNumber = 10;
uint8_t ledsPwm[ledsNumber] = {0};

void pwmControllerInit() {
    pwmController.resetDevices();       // Software resets all PCA9685 devices on Wire line

    pwmController.init(B000001);        // Address pins A5-A0 set to B000000
    pwmController.setPWMFrequency(200); // Default is 200Hz, supports 24Hz to 1526Hz

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


PCF857X gpioExpander;
const uint8_t inputsNumber = 5;
const uint8_t inputs[inputsNumber] = {1,3,5,7,9};
const uint8_t outputsNumber = 5;
const uint8_t outputs[outputsNumber] = {0,2,4,6,8};

void gpioExpanderInit() {
    /* Start I2C bus and PCF8575 instance */
    gpioExpander.begin(0x20);

    for(uint8_t currentPortInput=0; currentPortInput < inputsNumber; ++currentPortInput) {
        gpioExpander.pinMode(inputs[currentPortInput], INPUT_PULLUP);
    }

    for(uint8_t currentPortOutput=0; currentPortOutput < outputsNumber; ++currentPortOutput) {
        gpioExpander.pinMode(outputs[currentPortOutput], OUTPUT);
    }
}

void gpioExpanderTest() {
    for(uint8_t currentOutput=0; currentOutput < outputsNumber; ++currentOutput) {
        gpioExpander.blink(outputs[currentOutput], 5, 500);
    }

    for(uint8_t currentOutput=0; currentOutput < outputsNumber; ++currentOutput) {
        gpioExpander.digitalWrite(outputs[currentOutput], HIGH);
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
        Wire.beginTransmission(address);
        error = Wire.endTransmission();

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
     
        i2cScanner();
    }
    Serial.println("\nTCA9548A Scan: ...done");
}


void setup() {
    Serial.begin(115200);

    Wire.begin(PIN_SDA, PIN_SCL); // Wire must be started first
    Wire.setClock(400000); // Supported baud rates are 100kHz, 400kHz, and 1000kHz

    i2cScanner();

    pwmControllerInit();

    gpioExpanderInit();
    gpioExpanderTest();

    i2cMultiScan();
}

void loop() {
    pwmControllerTest();
}
