#ifndef I2CHUBDEBUG_H
#define I2CHUBDEBUG_H
#include "i2cHub.h"

class i2cHubDebug {
	
public:
	i2cHubDebug(i2cHub* nodeHub);
	~i2cHubDebug();
	void debugNodePrint();
	void debugNodePowerSupplys();

private:
    i2cHub* _nodeHub;
    uint8_t _numberOfNodes;
    int _cycleCount;
    uint8_t _currentNodeSwitch;
    // debug print adc values timing
    unsigned long _debugMillisPeriod;
    unsigned long _debugMillisStart;
    unsigned long _debugMillisLast;
    // debug print switch power supplies timing
    unsigned long _debugMillisSwitchPeriod;
    unsigned long _debugMillisSwitchStart;
    unsigned long _debugMillisSwitchLast;
};

#endif