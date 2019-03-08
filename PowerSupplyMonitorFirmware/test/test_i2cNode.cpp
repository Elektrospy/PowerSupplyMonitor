#ifdef UNIT_TEST
#include <Arduino.h>
#include <unity.h>
#include <i2cNode.h>

// void setUp(void) {
// // set stuff up here
// }

// void tearDown(void) {
// // clean stuff up here
// }

void test_getTcaPort(void) {
    i2cNode testNode;
    TEST_ASSERT_EQUAL(0, testNode.getTcaPort());
}

void test_getAdcCount(void) {
    i2cNode testNode;
    TEST_ASSERT_EQUAL(4, testNode.getAdcCount());
}

void setup() {
    // NOTE!!! Wait for >2 secs
    // if board doesn't support software reset via Serial.DTR/RTS
    delay(2000);

    UNITY_BEGIN();    // IMPORTANT LINE!
    RUN_TEST(test_getTcaPort);
    RUN_TEST(test_getAdcCount);
}

void loop() {
    UNITY_END(); // stop unit testing
}
#endif
