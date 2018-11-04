EESchema Schematic File Version 4
LIBS:PowerSupplyMonitorHub-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "I²C RJ45 Expander"
Date "2018-07-26"
Rev "1"
Comp "KMMR Chaospott"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:RJ45_LED_Shielded J6
U 1 1 5B579838
P 9000 1650
F 0 "J6" V 8954 2179 50  0000 L CNN
F 1 "RJ45 PWR 4" V 9000 1500 50  0000 L CNN
F 2 "Connector_RJ:RJ45_Amphenol_RJHSE538X" V 9000 1675 50  0001 C CNN
F 3 "~" V 9000 1675 50  0001 C CNN
	1    9000 1650
	0    1    1    0   
$EndComp
$Comp
L Connector:RJ45_LED_Shielded J5
U 1 1 5B5798AE
P 7800 1650
F 0 "J5" V 7754 2179 50  0000 L CNN
F 1 "RJ45 PWR 3" V 7800 1500 50  0000 L CNN
F 2 "Connector_RJ:RJ45_Amphenol_RJHSE538X" V 7800 1675 50  0001 C CNN
F 3 "~" V 7800 1675 50  0001 C CNN
	1    7800 1650
	0    1    1    0   
$EndComp
$Comp
L Connector:RJ45_LED_Shielded J4
U 1 1 5B5798F6
P 6600 1650
F 0 "J4" V 6554 2179 50  0000 L CNN
F 1 "RJ45 PWR 2" V 6600 1500 50  0000 L CNN
F 2 "Connector_RJ:RJ45_Amphenol_RJHSE538X" V 6600 1675 50  0001 C CNN
F 3 "~" V 6600 1675 50  0001 C CNN
	1    6600 1650
	0    1    1    0   
$EndComp
$Comp
L Connector:RJ45_LED_Shielded J3
U 1 1 5B579958
P 5400 1650
F 0 "J3" V 5354 2179 50  0000 L CNN
F 1 "RJ45 PWR 1" V 5400 1500 50  0000 L CNN
F 2 "Connector_RJ:RJ45_Amphenol_RJHSE538X" V 5400 1675 50  0001 C CNN
F 3 "~" V 5400 1675 50  0001 C CNN
	1    5400 1650
	0    1    1    0   
$EndComp
$Comp
L Connector:RJ45_LED_Shielded J2
U 1 1 5B5799A6
P 4200 1650
F 0 "J2" V 4154 2179 50  0000 L CNN
F 1 "RJ45 PWR 0" V 4200 1500 50  0000 L CNN
F 2 "Connector_RJ:RJ45_Amphenol_RJHSE538X" V 4200 1675 50  0001 C CNN
F 3 "~" V 4200 1675 50  0001 C CNN
	1    4200 1650
	0    1    1    0   
$EndComp
$Comp
L Interface_Expansion:TCA9548APWR U12
U 1 1 5B57A2D9
P 6850 4950
F 0 "U12" V 7000 4000 50  0000 R CNN
F 1 "TCA9548APWR" V 7100 4000 50  0000 R CNN
F 2 "Package_SO:TSSOP-24_4.4x7.8mm_P0.65mm" H 6850 3950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tca9548a.pdf" H 6900 5200 50  0001 C CNN
	1    6850 4950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 5B57D9FA
P 5100 1000
F 0 "R3" H 5170 1046 50  0000 L CNN
F 1 "220" H 5170 955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5030 1000 50  0001 C CNN
F 3 "~" H 5100 1000 50  0001 C CNN
	1    5100 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5B57DADB
P 5700 1000
F 0 "R4" H 5770 1046 50  0000 L CNN
F 1 "220" H 5770 955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5630 1000 50  0001 C CNN
F 3 "~" H 5700 1000 50  0001 C CNN
	1    5700 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5B57DB1D
P 6300 1000
F 0 "R5" H 6370 1046 50  0000 L CNN
F 1 "220" H 6370 955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6230 1000 50  0001 C CNN
F 3 "~" H 6300 1000 50  0001 C CNN
	1    6300 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5B57DB89
P 6900 1000
F 0 "R6" H 6970 1046 50  0000 L CNN
F 1 "220" H 6970 955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6830 1000 50  0001 C CNN
F 3 "~" H 6900 1000 50  0001 C CNN
	1    6900 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5B57DBCB
P 7500 1000
F 0 "R7" H 7570 1046 50  0000 L CNN
F 1 "220" H 7570 955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7430 1000 50  0001 C CNN
F 3 "~" H 7500 1000 50  0001 C CNN
	1    7500 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5B57DC23
P 8100 1000
F 0 "R8" H 8170 1046 50  0000 L CNN
F 1 "220" H 8170 955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8030 1000 50  0001 C CNN
F 3 "~" H 8100 1000 50  0001 C CNN
	1    8100 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5B57DC73
P 8700 1000
F 0 "R9" H 8770 1046 50  0000 L CNN
F 1 "220" H 8770 955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8630 1000 50  0001 C CNN
F 3 "~" H 8700 1000 50  0001 C CNN
	1    8700 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5B57DCC7
P 9300 1000
F 0 "R10" H 9370 1046 50  0000 L CNN
F 1 "220" H 9370 955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9230 1000 50  0001 C CNN
F 3 "~" H 9300 1000 50  0001 C CNN
	1    9300 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5B58CD50
P 3900 1000
F 0 "R1" H 3970 1046 50  0000 L CNN
F 1 "220" H 3970 955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3830 1000 50  0001 C CNN
F 3 "~" H 3900 1000 50  0001 C CNN
	1    3900 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5B58CDDE
P 4500 1000
F 0 "R2" H 4570 1046 50  0000 L CNN
F 1 "220" H 4570 955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4430 1000 50  0001 C CNN
F 3 "~" H 4500 1000 50  0001 C CNN
	1    4500 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5B5A0E4D
P 3700 1850
F 0 "#PWR013" H 3700 1600 50  0001 C CNN
F 1 "GND" H 3705 1677 50  0000 C CNN
F 2 "" H 3700 1850 50  0001 C CNN
F 3 "" H 3700 1850 50  0001 C CNN
	1    3700 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5B5A27A7
P 4900 1850
F 0 "#PWR014" H 4900 1600 50  0001 C CNN
F 1 "GND" H 4905 1677 50  0000 C CNN
F 2 "" H 4900 1850 50  0001 C CNN
F 3 "" H 4900 1850 50  0001 C CNN
	1    4900 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 1650 3700 1850
$Comp
L power:GND #PWR015
U 1 1 5B5A6041
P 6100 1850
F 0 "#PWR015" H 6100 1600 50  0001 C CNN
F 1 "GND" H 6105 1677 50  0000 C CNN
F 2 "" H 6100 1850 50  0001 C CNN
F 3 "" H 6100 1850 50  0001 C CNN
	1    6100 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5B5A60BF
P 7300 1850
F 0 "#PWR016" H 7300 1600 50  0001 C CNN
F 1 "GND" H 7305 1677 50  0000 C CNN
F 2 "" H 7300 1850 50  0001 C CNN
F 3 "" H 7300 1850 50  0001 C CNN
	1    7300 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5B5A60F4
P 8500 1850
F 0 "#PWR017" H 8500 1600 50  0001 C CNN
F 1 "GND" H 8505 1677 50  0000 C CNN
F 2 "" H 8500 1850 50  0001 C CNN
F 3 "" H 8500 1850 50  0001 C CNN
	1    8500 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 1850 4900 1650
Wire Wire Line
	6100 1850 6100 1650
Wire Wire Line
	7300 1850 7300 1650
Wire Wire Line
	8500 1850 8500 1650
$Comp
L Isolator:PC817 U2
U 1 1 5B5964E7
P 3950 3100
F 0 "U2" V 4000 3200 50  0000 R CNN
F 1 "PC817" V 3900 3200 50  0000 R CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 3750 2900 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 3950 3100 50  0001 L CNN
	1    3950 3100
	0    -1   -1   0   
$EndComp
$Comp
L Isolator:PC817 U3
U 1 1 5B59667E
P 4350 3100
F 0 "U3" V 4300 3000 50  0000 L CNN
F 1 "PC817" V 4400 3000 50  0000 L CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 4150 2900 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 4350 3100 50  0001 L CNN
	1    4350 3100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR019
U 1 1 5B599024
P 4300 2050
F 0 "#PWR019" H 4300 1800 50  0001 C CNN
F 1 "GND" H 4305 1877 50  0000 C CNN
F 2 "" H 4300 2050 50  0001 C CNN
F 3 "" H 4300 2050 50  0001 C CNN
	1    4300 2050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR020
U 1 1 5B59915A
P 4600 2050
F 0 "#PWR020" H 4600 1900 50  0001 C CNN
F 1 "+5V" H 4615 2223 50  0000 C CNN
F 2 "" H 4600 2050 50  0001 C CNN
F 3 "" H 4600 2050 50  0001 C CNN
	1    4600 2050
	-1   0    0    1   
$EndComp
Entry Wire Line
	3800 650  3900 750 
Entry Wire Line
	4400 650  4500 750 
Entry Wire Line
	5000 650  5100 750 
Entry Wire Line
	5600 650  5700 750 
Entry Wire Line
	6200 650  6300 750 
Entry Wire Line
	6800 650  6900 750 
Entry Wire Line
	7400 650  7500 750 
Entry Wire Line
	8000 650  8100 750 
Entry Wire Line
	8600 650  8700 750 
Entry Wire Line
	9200 650  9300 750 
Entry Wire Line
	1250 650  1350 750 
Entry Wire Line
	1350 650  1450 750 
Entry Wire Line
	1450 650  1550 750 
Entry Wire Line
	1650 650  1750 750 
Entry Wire Line
	1550 650  1650 750 
Entry Wire Line
	1750 650  1850 750 
Entry Wire Line
	1850 650  1950 750 
Entry Wire Line
	2050 650  2150 750 
Entry Wire Line
	1950 650  2050 750 
Entry Wire Line
	2150 650  2250 750 
Wire Wire Line
	1350 1350 1350 750 
Wire Wire Line
	1450 750  1450 1350
Wire Wire Line
	1550 1350 1550 750 
Wire Wire Line
	1650 1350 1650 750 
Wire Wire Line
	1750 1350 1750 750 
Wire Wire Line
	1850 1350 1850 750 
Wire Wire Line
	1950 1350 1950 750 
Wire Wire Line
	2050 1350 2050 750 
Wire Wire Line
	2150 1350 2150 750 
Wire Wire Line
	2250 1350 2250 750 
Wire Wire Line
	3850 2800 3900 2800
Wire Wire Line
	3900 2800 3900 2050
Wire Wire Line
	4050 2800 4000 2800
Wire Wire Line
	4000 2800 4000 2050
$Comp
L Device:R R11
U 1 1 5B5D8603
P 4100 2600
F 0 "R11" H 4170 2646 50  0000 L CNN
F 1 "220" H 4170 2555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4030 2600 50  0001 C CNN
F 3 "~" H 4100 2600 50  0001 C CNN
	1    4100 2600
	1    0    0    -1  
$EndComp
Text Label 3250 650  0    50   ~ 0
STATE_LED_BUS
$Comp
L NXP:PCF8575 U13
U 1 1 5B5E2C88
P 3850 5300
F 0 "U13" V 3896 3670 50  0000 R CNN
F 1 "PCF8575" V 3805 3670 50  0000 R CNN
F 2 "Package_SO:SOIC-24W_7.5x15.4mm_P1.27mm" H 3850 3600 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/PCF8575.pdf" H 3850 3500 50  0001 C CNN
F 4 "NXP" H 3850 3300 50  0001 C CNN "Manuf"
F 5 "PCF8575TS/1,112" H 3850 3200 50  0001 C CNN "MPN"
F 6 "NXP PCF8575TS/1,112" H 3850 3400 50  0001 C CNN "BOM"
	1    3850 5300
	0    -1   -1   0   
$EndComp
Entry Wire Line
	4600 4100 4700 4200
Wire Wire Line
	4500 2050 4500 2350
Wire Wire Line
	4500 2350 4700 2350
Wire Wire Line
	4600 2450 4200 2450
Wire Wire Line
	4200 2450 4200 2050
Wire Wire Line
	4100 2750 4450 2750
Wire Wire Line
	4450 2750 4450 2800
Text Label 4600 2700 1    50   ~ 0
SCL0
Text Label 4700 2700 1    50   ~ 0
SDA0
Text Label 3900 800  0    50   ~ 0
DATA_0
Text Label 4500 800  0    50   ~ 0
LINK_0
Text Label 5100 800  0    50   ~ 0
DATA_1
Text Label 5700 800  0    50   ~ 0
LINK_1
Text Label 6300 800  0    50   ~ 0
DATA_2
Text Label 6900 800  0    50   ~ 0
LINK_2
Text Label 7500 800  0    50   ~ 0
DATA_3
Text Label 8100 800  0    50   ~ 0
LINK_3
Text Label 8700 800  0    50   ~ 0
DATA_4
Text Label 1350 1200 1    50   ~ 0
DATA_0
Text Label 1550 1200 1    50   ~ 0
DATA_1
Text Label 1750 1200 1    50   ~ 0
DATA_2
Text Label 1950 1200 1    50   ~ 0
DATA_3
Text Label 2150 1200 1    50   ~ 0
DATA_4
Text Label 1450 1200 1    50   ~ 0
LINK_0
Text Label 1650 1200 1    50   ~ 0
LINK_1
Text Label 1850 1200 1    50   ~ 0
LINK_2
Text Label 2050 1200 1    50   ~ 0
LINK_3
Text Label 2250 1200 1    50   ~ 0
LINK_4
Text Label 3900 2100 3    50   ~ 0
RC+_0
Text Label 4000 2100 3    50   ~ 0
RC-_0
Text Label 4100 2100 3    50   ~ 0
DC-OK_0
Text Label 4400 2300 3    50   ~ 0
DC-GND_0
Wire Wire Line
	4100 2050 4100 2450
Wire Wire Line
	4250 2800 4400 2800
Wire Wire Line
	4400 2800 4400 2050
$Comp
L power:+5V #PWR054
U 1 1 5B61068D
P 5950 4850
F 0 "#PWR054" H 5950 4700 50  0001 C CNN
F 1 "+5V" H 5965 5023 50  0000 C CNN
F 2 "" H 5950 4850 50  0001 C CNN
F 3 "" H 5950 4850 50  0001 C CNN
	1    5950 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 4950 5950 4850
Entry Wire Line
	4700 4100 4800 4200
Entry Wire Line
	4450 3900 4550 4000
Entry Wire Line
	4050 3900 4150 4000
Wire Wire Line
	4600 2450 4600 4100
Wire Wire Line
	4700 2350 4700 4100
Wire Wire Line
	4050 3400 4050 3900
$Comp
L Isolator:PC817 U4
U 1 1 5B63D8D0
P 5150 3100
F 0 "U4" V 5200 3250 50  0000 R CNN
F 1 "PC817" V 5100 3200 50  0000 R CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 4950 2900 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 5150 3100 50  0001 L CNN
	1    5150 3100
	0    -1   -1   0   
$EndComp
$Comp
L Isolator:PC817 U5
U 1 1 5B63D8D6
P 5550 3100
F 0 "U5" V 5500 2950 50  0000 L CNN
F 1 "PC817" V 5600 3000 50  0000 L CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 5350 2900 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 5550 3100 50  0001 L CNN
	1    5550 3100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR021
U 1 1 5B63D8DC
P 5500 2050
F 0 "#PWR021" H 5500 1800 50  0001 C CNN
F 1 "GND" H 5505 1877 50  0000 C CNN
F 2 "" H 5500 2050 50  0001 C CNN
F 3 "" H 5500 2050 50  0001 C CNN
	1    5500 2050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR022
U 1 1 5B63D8E2
P 5800 2050
F 0 "#PWR022" H 5800 1900 50  0001 C CNN
F 1 "+5V" H 5815 2223 50  0000 C CNN
F 2 "" H 5800 2050 50  0001 C CNN
F 3 "" H 5800 2050 50  0001 C CNN
	1    5800 2050
	-1   0    0    1   
$EndComp
Wire Wire Line
	5050 2800 5100 2800
Wire Wire Line
	5100 2800 5100 2050
Wire Wire Line
	5250 2800 5200 2800
Wire Wire Line
	5200 2800 5200 2050
$Comp
L Device:R R12
U 1 1 5B63D8EC
P 5300 2600
F 0 "R12" H 5370 2646 50  0000 L CNN
F 1 "220" H 5370 2555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5230 2600 50  0001 C CNN
F 3 "~" H 5300 2600 50  0001 C CNN
	1    5300 2600
	1    0    0    -1  
$EndComp
Entry Wire Line
	5800 4100 5900 4200
Wire Wire Line
	5700 2050 5700 2350
Wire Wire Line
	5700 2350 5900 2350
Wire Wire Line
	5800 2450 5400 2450
Wire Wire Line
	5400 2450 5400 2050
Wire Wire Line
	5300 2750 5650 2750
Wire Wire Line
	5650 2750 5650 2800
Text Label 5800 2700 1    50   ~ 0
SCL1
Text Label 5900 2700 1    50   ~ 0
SDA1
Text Label 5100 2100 3    50   ~ 0
RC+_1
Text Label 5200 2100 3    50   ~ 0
RC-_1
Text Label 5300 2100 3    50   ~ 0
DC-OK_1
Text Label 5600 2300 3    50   ~ 0
DC-GND_1
Wire Wire Line
	5300 2050 5300 2450
Wire Wire Line
	5450 2800 5600 2800
Wire Wire Line
	5600 2800 5600 2050
$Comp
L Device:R R23
U 1 1 5B63D902
P 5050 3550
F 0 "R23" V 5150 3450 50  0000 L CNN
F 1 "220" V 5050 3450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4980 3550 50  0001 C CNN
F 3 "~" H 5050 3550 50  0001 C CNN
	1    5050 3550
	1    0    0    -1  
$EndComp
Entry Wire Line
	5900 4100 6000 4200
Entry Wire Line
	5650 3900 5750 4000
Entry Wire Line
	5250 3900 5350 4000
Wire Wire Line
	5800 2450 5800 4100
Wire Wire Line
	5900 2350 5900 4100
Wire Wire Line
	5250 3400 5250 3900
$Comp
L Isolator:PC817 U6
U 1 1 5B641712
P 6350 3100
F 0 "U6" H 6250 2900 50  0000 R CNN
F 1 "PC817" H 6600 2900 50  0000 R CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 6150 2900 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 6350 3100 50  0001 L CNN
	1    6350 3100
	0    -1   -1   0   
$EndComp
$Comp
L Isolator:PC817 U7
U 1 1 5B641719
P 6750 3100
F 0 "U7" H 6850 3300 50  0000 L CNN
F 1 "PC817" H 6500 3300 50  0000 L CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 6550 2900 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 6750 3100 50  0001 L CNN
	1    6750 3100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR023
U 1 1 5B641720
P 6700 2050
F 0 "#PWR023" H 6700 1800 50  0001 C CNN
F 1 "GND" H 6705 1877 50  0000 C CNN
F 2 "" H 6700 2050 50  0001 C CNN
F 3 "" H 6700 2050 50  0001 C CNN
	1    6700 2050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR024
U 1 1 5B641726
P 7000 2050
F 0 "#PWR024" H 7000 1900 50  0001 C CNN
F 1 "+5V" H 7015 2223 50  0000 C CNN
F 2 "" H 7000 2050 50  0001 C CNN
F 3 "" H 7000 2050 50  0001 C CNN
	1    7000 2050
	-1   0    0    1   
$EndComp
Wire Wire Line
	6250 2800 6300 2800
Wire Wire Line
	6300 2800 6300 2050
Wire Wire Line
	6450 2800 6400 2800
Wire Wire Line
	6400 2800 6400 2050
$Comp
L Device:R R13
U 1 1 5B641730
P 6500 2600
F 0 "R13" H 6570 2646 50  0000 L CNN
F 1 "220" H 6570 2555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6430 2600 50  0001 C CNN
F 3 "~" H 6500 2600 50  0001 C CNN
	1    6500 2600
	1    0    0    -1  
$EndComp
Entry Wire Line
	7000 4100 7100 4200
Wire Wire Line
	6900 2050 6900 2350
Wire Wire Line
	6900 2350 7100 2350
Wire Wire Line
	7000 2450 6600 2450
Wire Wire Line
	6600 2450 6600 2050
Wire Wire Line
	6500 2750 6850 2750
Wire Wire Line
	6850 2750 6850 2800
Text Label 7000 2700 1    50   ~ 0
SCL2
Text Label 7100 2700 1    50   ~ 0
SDA2
Text Label 6300 2100 3    50   ~ 0
RC+_2
Text Label 6400 2100 3    50   ~ 0
RC-_2
Text Label 6500 2100 3    50   ~ 0
DC-OK_2
Text Label 6800 2300 3    50   ~ 0
DC-GND_2
Wire Wire Line
	6500 2050 6500 2450
Wire Wire Line
	6650 2800 6800 2800
Wire Wire Line
	6800 2800 6800 2050
$Comp
L Device:R R25
U 1 1 5B641747
P 6250 3550
F 0 "R25" V 6350 3450 50  0000 L CNN
F 1 "220" V 6250 3450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6180 3550 50  0001 C CNN
F 3 "~" H 6250 3550 50  0001 C CNN
	1    6250 3550
	1    0    0    -1  
$EndComp
Entry Wire Line
	7100 4100 7200 4200
Entry Wire Line
	6850 3900 6950 4000
Entry Wire Line
	6450 3900 6550 4000
Wire Wire Line
	7000 2450 7000 4100
Wire Wire Line
	7100 2350 7100 4100
Wire Wire Line
	6450 3400 6450 3900
$Comp
L Isolator:PC817 U8
U 1 1 5B64CA9D
P 7550 3100
F 0 "U8" H 7450 2900 50  0000 R CNN
F 1 "PC817" H 7800 2900 50  0000 R CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 7350 2900 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 7550 3100 50  0001 L CNN
	1    7550 3100
	0    -1   -1   0   
$EndComp
$Comp
L Isolator:PC817 U9
U 1 1 5B64CAA4
P 7950 3100
F 0 "U9" H 8050 3300 50  0000 L CNN
F 1 "PC817" H 7700 3300 50  0000 L CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 7750 2900 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 7950 3100 50  0001 L CNN
	1    7950 3100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR025
U 1 1 5B64CAAB
P 7900 2050
F 0 "#PWR025" H 7900 1800 50  0001 C CNN
F 1 "GND" H 7905 1877 50  0000 C CNN
F 2 "" H 7900 2050 50  0001 C CNN
F 3 "" H 7900 2050 50  0001 C CNN
	1    7900 2050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR026
U 1 1 5B64CAB1
P 8200 2050
F 0 "#PWR026" H 8200 1900 50  0001 C CNN
F 1 "+5V" H 8215 2223 50  0000 C CNN
F 2 "" H 8200 2050 50  0001 C CNN
F 3 "" H 8200 2050 50  0001 C CNN
	1    8200 2050
	-1   0    0    1   
$EndComp
Wire Wire Line
	7450 2800 7500 2800
Wire Wire Line
	7500 2800 7500 2050
Wire Wire Line
	7650 2800 7600 2800
Wire Wire Line
	7600 2800 7600 2050
$Comp
L Device:R R14
U 1 1 5B64CABB
P 7700 2600
F 0 "R14" H 7770 2646 50  0000 L CNN
F 1 "220" H 7770 2555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7630 2600 50  0001 C CNN
F 3 "~" H 7700 2600 50  0001 C CNN
	1    7700 2600
	1    0    0    -1  
$EndComp
Entry Wire Line
	8200 4100 8300 4200
Wire Wire Line
	8100 2350 8300 2350
Wire Wire Line
	8200 2450 7800 2450
Wire Wire Line
	7800 2450 7800 2050
Wire Wire Line
	7700 2750 8050 2750
Wire Wire Line
	8050 2750 8050 2800
Text Label 8200 2700 1    50   ~ 0
SCL3
Text Label 8300 2700 1    50   ~ 0
SDA3
Text Label 7500 2100 3    50   ~ 0
RC+_3
Text Label 7600 2100 3    50   ~ 0
RC-_3
Text Label 7700 2100 3    50   ~ 0
DC-OK_3
Text Label 8000 2300 3    50   ~ 0
DC-GND_3
Wire Wire Line
	7700 2050 7700 2450
Wire Wire Line
	7850 2800 8000 2800
Wire Wire Line
	8000 2800 8000 2050
$Comp
L Device:R R27
U 1 1 5B64CAD2
P 7450 3550
F 0 "R27" V 7550 3450 50  0000 L CNN
F 1 "220" V 7450 3450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7380 3550 50  0001 C CNN
F 3 "~" H 7450 3550 50  0001 C CNN
	1    7450 3550
	1    0    0    -1  
$EndComp
Entry Wire Line
	8300 4100 8400 4200
$Comp
L power:GND #PWR044
U 1 1 5B64CAE0
P 7850 3400
F 0 "#PWR044" H 7850 3150 50  0001 C CNN
F 1 "GND" H 7855 3227 50  0000 C CNN
F 2 "" H 7850 3400 50  0001 C CNN
F 3 "" H 7850 3400 50  0001 C CNN
	1    7850 3400
	1    0    0    -1  
$EndComp
Entry Wire Line
	8050 3900 8150 4000
Entry Wire Line
	7650 3900 7750 4000
Wire Wire Line
	8200 2450 8200 4100
Wire Wire Line
	8300 2350 8300 4100
Wire Wire Line
	7650 3400 7650 3900
$Comp
L Isolator:PC817 U10
U 1 1 5B652E1F
P 8750 3100
F 0 "U10" H 8700 2900 50  0000 R CNN
F 1 "PC817" H 9000 2900 50  0000 R CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 8550 2900 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 8750 3100 50  0001 L CNN
	1    8750 3100
	0    -1   -1   0   
$EndComp
$Comp
L Isolator:PC817 U11
U 1 1 5B652E26
P 9150 3100
F 0 "U11" H 9200 3300 50  0000 L CNN
F 1 "PC817" H 8900 3300 50  0000 L CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 8950 2900 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 9150 3100 50  0001 L CNN
	1    9150 3100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR027
U 1 1 5B652E2D
P 9100 2050
F 0 "#PWR027" H 9100 1800 50  0001 C CNN
F 1 "GND" H 9105 1877 50  0000 C CNN
F 2 "" H 9100 2050 50  0001 C CNN
F 3 "" H 9100 2050 50  0001 C CNN
	1    9100 2050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR028
U 1 1 5B652E33
P 9400 2050
F 0 "#PWR028" H 9400 1900 50  0001 C CNN
F 1 "+5V" H 9415 2223 50  0000 C CNN
F 2 "" H 9400 2050 50  0001 C CNN
F 3 "" H 9400 2050 50  0001 C CNN
	1    9400 2050
	-1   0    0    1   
$EndComp
Wire Wire Line
	8650 2800 8700 2800
Wire Wire Line
	8700 2800 8700 2050
Wire Wire Line
	8850 2800 8800 2800
Wire Wire Line
	8800 2800 8800 2050
$Comp
L Device:R R15
U 1 1 5B652E3D
P 8900 2600
F 0 "R15" H 8970 2646 50  0000 L CNN
F 1 "220" H 8970 2555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8830 2600 50  0001 C CNN
F 3 "~" H 8900 2600 50  0001 C CNN
	1    8900 2600
	1    0    0    -1  
$EndComp
Entry Wire Line
	9400 4100 9500 4200
Wire Wire Line
	9300 2350 9500 2350
Wire Wire Line
	9400 2450 9000 2450
Wire Wire Line
	9000 2450 9000 2050
Wire Wire Line
	8900 2750 9250 2750
Wire Wire Line
	9250 2750 9250 2800
Text Label 9400 2700 1    50   ~ 0
SCL4
Text Label 9500 2700 1    50   ~ 0
SDA4
Text Label 8700 2100 3    50   ~ 0
RC+_4
Text Label 8800 2100 3    50   ~ 0
RC-_4
Text Label 8900 2100 3    50   ~ 0
DC-OK_4
Text Label 9200 2300 3    50   ~ 0
DC-GND_4
Wire Wire Line
	8900 2050 8900 2450
Wire Wire Line
	9050 2800 9200 2800
Wire Wire Line
	9200 2800 9200 2050
$Comp
L Device:R R29
U 1 1 5B652E54
P 8650 3550
F 0 "R29" V 8750 3450 50  0000 L CNN
F 1 "220" V 8650 3450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8580 3550 50  0001 C CNN
F 3 "~" H 8650 3550 50  0001 C CNN
	1    8650 3550
	1    0    0    -1  
$EndComp
Entry Wire Line
	9500 4100 9600 4200
$Comp
L power:GND #PWR046
U 1 1 5B652E62
P 9050 3400
F 0 "#PWR046" H 9050 3150 50  0001 C CNN
F 1 "GND" H 9055 3227 50  0000 C CNN
F 2 "" H 9050 3400 50  0001 C CNN
F 3 "" H 9050 3400 50  0001 C CNN
	1    9050 3400
	1    0    0    -1  
$EndComp
Entry Wire Line
	9250 3900 9350 4000
Entry Wire Line
	8850 3900 8950 4000
Wire Wire Line
	9400 2450 9400 4100
Wire Wire Line
	9500 2350 9500 4100
Wire Wire Line
	8850 3400 8850 3900
Entry Wire Line
	4650 4350 4750 4450
Entry Wire Line
	4550 4350 4650 4450
Entry Wire Line
	4450 4350 4550 4450
Entry Wire Line
	4350 4350 4450 4450
Entry Wire Line
	4250 4350 4350 4450
Entry Wire Line
	4150 4350 4250 4450
Entry Wire Line
	4050 4350 4150 4450
Entry Wire Line
	3950 4350 4050 4450
Entry Wire Line
	3850 4350 3950 4450
Entry Wire Line
	3750 4350 3850 4450
Text Label 4050 3650 3    50   ~ 0
RC_0
Text Label 4450 3650 3    50   ~ 0
DC_0
Text Label 5250 3650 3    50   ~ 0
RC_1
Text Label 5650 3650 3    50   ~ 0
DC_1
Text Label 6450 3650 3    50   ~ 0
RC_2
Text Label 6850 3650 3    50   ~ 0
DC_2
Text Label 8050 3650 3    50   ~ 0
DC_3
Text Label 7650 3650 3    50   ~ 0
RC_3
Text Label 8850 3650 3    50   ~ 0
RC_4
Text Label 9250 3650 3    50   ~ 0
DC_4
Text Label 3950 4600 3    50   ~ 0
DC_0
Wire Wire Line
	3950 4800 3950 4450
Wire Wire Line
	3850 4450 3850 4800
Wire Wire Line
	4050 4800 4050 4450
Wire Wire Line
	4150 4800 4150 4450
Wire Wire Line
	4250 4800 4250 4450
Wire Wire Line
	4350 4800 4350 4450
Wire Wire Line
	4450 4800 4450 4450
Wire Wire Line
	4550 4800 4550 4450
Wire Wire Line
	4650 4800 4650 4450
Wire Wire Line
	4750 4800 4750 4450
Text Label 3850 4600 3    50   ~ 0
RC_0
Text Label 4050 4600 3    50   ~ 0
RC_1
Text Label 4150 4600 3    50   ~ 0
DC_1
Text Label 4250 4600 3    50   ~ 0
RC_2
Text Label 4350 4600 3    50   ~ 0
DC_2
Text Label 4450 4600 3    50   ~ 0
RC_3
Text Label 4550 4600 3    50   ~ 0
DC_3
Text Label 4650 4600 3    50   ~ 0
RC_4
Text Label 4750 4600 3    50   ~ 0
DC_4
Entry Wire Line
	6050 4200 6150 4300
Entry Wire Line
	6150 4200 6250 4300
Entry Wire Line
	6250 4200 6350 4300
Entry Wire Line
	6350 4200 6450 4300
Entry Wire Line
	6450 4200 6550 4300
Entry Wire Line
	6550 4200 6650 4300
Entry Wire Line
	6650 4200 6750 4300
Entry Wire Line
	6750 4200 6850 4300
Entry Wire Line
	6850 4200 6950 4300
Entry Wire Line
	6950 4200 7050 4300
Text Label 6150 4500 1    50   ~ 0
SCL0
Text Label 6250 4500 1    50   ~ 0
SDA0
Text Label 6350 4500 1    50   ~ 0
SCL1
Text Label 6450 4500 1    50   ~ 0
SDA1
Text Label 6550 4500 1    50   ~ 0
SCL2
Text Label 6650 4500 1    50   ~ 0
SDA2
Text Label 6750 4500 1    50   ~ 0
SCL3
Text Label 6850 4500 1    50   ~ 0
SDA3
Text Label 6950 4500 1    50   ~ 0
SCL4
Text Label 7050 4500 1    50   ~ 0
SDA4
$Comp
L power:GND #PWR029
U 1 1 5B783F71
P 3150 2200
F 0 "#PWR029" H 3150 1950 50  0001 C CNN
F 1 "GND" H 3155 2027 50  0000 C CNN
F 2 "" H 3150 2200 50  0001 C CNN
F 3 "" H 3150 2200 50  0001 C CNN
	1    3150 2200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR018
U 1 1 5B783FDA
P 1050 1900
F 0 "#PWR018" H 1050 1750 50  0001 C CNN
F 1 "+5V" H 1065 2073 50  0000 C CNN
F 2 "" H 1050 1900 50  0001 C CNN
F 3 "" H 1050 1900 50  0001 C CNN
	1    1050 1900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR059
U 1 1 5B784652
P 3600 5800
F 0 "#PWR059" H 3600 5650 50  0001 C CNN
F 1 "+5V" H 3615 5973 50  0000 C CNN
F 2 "" H 3600 5800 50  0001 C CNN
F 3 "" H 3600 5800 50  0001 C CNN
	1    3600 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR060
U 1 1 5B78494D
P 5350 5800
F 0 "#PWR060" H 5350 5550 50  0001 C CNN
F 1 "GND" H 5355 5627 50  0000 C CNN
F 2 "" H 5350 5800 50  0001 C CNN
F 3 "" H 5350 5800 50  0001 C CNN
	1    5350 5800
	1    0    0    -1  
$EndComp
Text Label 9300 800  0    50   ~ 0
LINK_4
$Comp
L Driver_LED:PCA9685PW U1
U 1 1 5B5F9DEE
P 2050 2050
F 0 "U1" V 2300 1100 50  0000 R CNN
F 1 "PCA9685PW" V 2200 1100 50  0000 R CNN
F 2 "Package_SO:TSSOP-28_4.4x9.7mm_P0.65mm" H 2075 1075 50  0001 L CNN
F 3 "http://www.nxp.com/documents/data_sheet/PCA9685.pdf" H 1650 2750 50  0001 C CNN
	1    2050 2050
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR037
U 1 1 5B5FB4A0
P 3850 3700
F 0 "#PWR037" H 3850 3550 50  0001 C CNN
F 1 "+5V" H 3865 3873 50  0000 C CNN
F 2 "" H 3850 3700 50  0001 C CNN
F 3 "" H 3850 3700 50  0001 C CNN
	1    3850 3700
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR039
U 1 1 5B5FB56A
P 5050 3700
F 0 "#PWR039" H 5050 3550 50  0001 C CNN
F 1 "+5V" H 5065 3873 50  0000 C CNN
F 2 "" H 5050 3700 50  0001 C CNN
F 3 "" H 5050 3700 50  0001 C CNN
	1    5050 3700
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR041
U 1 1 5B5FB690
P 6250 3700
F 0 "#PWR041" H 6250 3550 50  0001 C CNN
F 1 "+5V" H 6265 3873 50  0000 C CNN
F 2 "" H 6250 3700 50  0001 C CNN
F 3 "" H 6250 3700 50  0001 C CNN
	1    6250 3700
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR043
U 1 1 5B5FB7B6
P 7450 3700
F 0 "#PWR043" H 7450 3550 50  0001 C CNN
F 1 "+5V" H 7465 3873 50  0000 C CNN
F 2 "" H 7450 3700 50  0001 C CNN
F 3 "" H 7450 3700 50  0001 C CNN
	1    7450 3700
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR045
U 1 1 5B5FBB52
P 8650 3700
F 0 "#PWR045" H 8650 3550 50  0001 C CNN
F 1 "+5V" H 8665 3873 50  0000 C CNN
F 2 "" H 8650 3700 50  0001 C CNN
F 3 "" H 8650 3700 50  0001 C CNN
	1    8650 3700
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5B6213DA
P 4000 1250
F 0 "#PWR01" H 4000 1000 50  0001 C CNN
F 1 "GND" H 3900 1150 50  0000 C CNN
F 2 "" H 4000 1250 50  0001 C CNN
F 3 "" H 4000 1250 50  0001 C CNN
	1    4000 1250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5B62F2E2
P 4600 1250
F 0 "#PWR02" H 4600 1000 50  0001 C CNN
F 1 "GND" H 4500 1150 50  0000 C CNN
F 2 "" H 4600 1250 50  0001 C CNN
F 3 "" H 4600 1250 50  0001 C CNN
	1    4600 1250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5B66824C
P 5200 1250
F 0 "#PWR03" H 5200 1000 50  0001 C CNN
F 1 "GND" H 5100 1150 50  0000 C CNN
F 2 "" H 5200 1250 50  0001 C CNN
F 3 "" H 5200 1250 50  0001 C CNN
	1    5200 1250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5B6682AF
P 5800 1250
F 0 "#PWR04" H 5800 1000 50  0001 C CNN
F 1 "GND" H 5700 1150 50  0000 C CNN
F 2 "" H 5800 1250 50  0001 C CNN
F 3 "" H 5800 1250 50  0001 C CNN
	1    5800 1250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5B669276
P 6400 1250
F 0 "#PWR05" H 6400 1000 50  0001 C CNN
F 1 "GND" H 6300 1150 50  0000 C CNN
F 2 "" H 6400 1250 50  0001 C CNN
F 3 "" H 6400 1250 50  0001 C CNN
	1    6400 1250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5B6692D9
P 7000 1250
F 0 "#PWR06" H 7000 1000 50  0001 C CNN
F 1 "GND" H 6900 1150 50  0000 C CNN
F 2 "" H 7000 1250 50  0001 C CNN
F 3 "" H 7000 1250 50  0001 C CNN
	1    7000 1250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5B66933C
P 8800 1250
F 0 "#PWR09" H 8800 1000 50  0001 C CNN
F 1 "GND" H 8700 1150 50  0000 C CNN
F 2 "" H 8800 1250 50  0001 C CNN
F 3 "" H 8800 1250 50  0001 C CNN
	1    8800 1250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5B66939F
P 8200 1250
F 0 "#PWR08" H 8200 1000 50  0001 C CNN
F 1 "GND" H 8100 1150 50  0000 C CNN
F 2 "" H 8200 1250 50  0001 C CNN
F 3 "" H 8200 1250 50  0001 C CNN
	1    8200 1250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5B66FC1B
P 7600 1250
F 0 "#PWR07" H 7600 1000 50  0001 C CNN
F 1 "GND" H 7500 1150 50  0000 C CNN
F 2 "" H 7600 1250 50  0001 C CNN
F 3 "" H 7600 1250 50  0001 C CNN
	1    7600 1250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5B66FD0C
P 9400 1250
F 0 "#PWR010" H 9400 1000 50  0001 C CNN
F 1 "GND" H 9300 1150 50  0000 C CNN
F 2 "" H 9400 1250 50  0001 C CNN
F 3 "" H 9400 1250 50  0001 C CNN
	1    9400 1250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR047
U 1 1 5B6CF343
P 3200 3750
F 0 "#PWR047" H 3200 3500 50  0001 C CNN
F 1 "GND" H 3205 3577 50  0000 C CNN
F 2 "" H 3200 3750 50  0001 C CNN
F 3 "" H 3200 3750 50  0001 C CNN
	1    3200 3750
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR031
U 1 1 5B6E0803
P 1600 2850
F 0 "#PWR031" H 1600 2600 50  0001 C CNN
F 1 "GND" H 1605 2677 50  0000 C CNN
F 2 "" H 1600 2850 50  0001 C CNN
F 3 "" H 1600 2850 50  0001 C CNN
	1    1600 2850
	1    0    0    -1  
$EndComp
Entry Wire Line
	4450 6150 4550 6250
Entry Wire Line
	4550 6150 4650 6250
Entry Wire Line
	6150 6150 6250 6250
Entry Wire Line
	6250 6150 6350 6250
Entry Wire Line
	1350 3250 1450 3350
Entry Wire Line
	1550 3350 1450 3250
Wire Wire Line
	4450 5800 4450 6150
Wire Wire Line
	4550 6150 4550 5800
Wire Wire Line
	1450 3250 1450 2750
Wire Wire Line
	1350 2750 1350 3250
Text Label 1350 2800 3    50   ~ 0
SCL
Text Label 1450 2800 3    50   ~ 0
SDA
Text Label 4550 5850 3    50   ~ 0
SDA
Text Label 4450 5850 3    50   ~ 0
SCL
Text Label 6150 5850 3    50   ~ 0
SCL
Text Label 6250 5850 3    50   ~ 0
SDA
$Comp
L power:GND #PWR072
U 1 1 5B73046A
P 3650 6350
F 0 "#PWR072" H 3650 6100 50  0001 C CNN
F 1 "GND" H 3655 6177 50  0000 C CNN
F 2 "" H 3650 6350 50  0001 C CNN
F 3 "" H 3650 6350 50  0001 C CNN
	1    3650 6350
	1    0    0    -1  
$EndComp
Entry Wire Line
	1850 5050 1950 5150
Entry Wire Line
	1850 5150 1950 5250
Text Label 1800 5050 2    50   ~ 0
SCL
Text Label 1800 5150 2    50   ~ 0
SDA
$Comp
L Connector:Conn_01x04_Male J7
U 1 1 5B7AC848
P 1150 4000
F 0 "J7" H 1200 4150 50  0000 R CNN
F 1 "OLED I2C" H 1500 3700 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 1150 4000 50  0001 C CNN
F 3 "~" H 1150 4000 50  0001 C CNN
	1    1150 4000
	1    0    0    -1  
$EndComp
Entry Wire Line
	1850 4100 1950 4200
Entry Wire Line
	1850 4200 1950 4300
$Comp
L power:GND #PWR048
U 1 1 5B7DB174
P 1400 3900
F 0 "#PWR048" H 1400 3650 50  0001 C CNN
F 1 "GND" V 1400 3700 50  0000 C CNN
F 2 "" H 1400 3900 50  0001 C CNN
F 3 "" H 1400 3900 50  0001 C CNN
	1    1400 3900
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR049
U 1 1 5B7DB2EE
P 1400 4000
F 0 "#PWR049" H 1400 3850 50  0001 C CNN
F 1 "+5V" V 1400 4200 50  0000 C CNN
F 2 "" H 1400 4000 50  0001 C CNN
F 3 "" H 1400 4000 50  0001 C CNN
	1    1400 4000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR053
U 1 1 5B893718
P 1400 4850
F 0 "#PWR053" H 1400 4600 50  0001 C CNN
F 1 "GND" V 1400 4650 50  0000 C CNN
F 2 "" H 1400 4850 50  0001 C CNN
F 3 "" H 1400 4850 50  0001 C CNN
	1    1400 4850
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR055
U 1 1 5B893836
P 1400 4950
F 0 "#PWR055" H 1400 4800 50  0001 C CNN
F 1 "+5V" V 1400 5150 50  0000 C CNN
F 2 "" H 1400 4950 50  0001 C CNN
F 3 "" H 1400 4950 50  0001 C CNN
	1    1400 4950
	0    1    1    0   
$EndComp
Text Label 1800 4200 2    50   ~ 0
SDA
Text Label 1800 4100 2    50   ~ 0
SCL
Wire Wire Line
	3900 750  3900 850 
Wire Wire Line
	4500 750  4500 850 
Wire Wire Line
	5100 750  5100 850 
Wire Wire Line
	5700 750  5700 850 
Wire Wire Line
	6300 750  6300 850 
Wire Wire Line
	6900 750  6900 850 
Wire Wire Line
	7500 750  7500 850 
Wire Wire Line
	8100 750  8100 850 
Wire Wire Line
	8700 750  8700 850 
Wire Wire Line
	9300 750  9300 850 
Wire Wire Line
	3900 1250 3900 1150
Wire Wire Line
	4500 1150 4500 1250
Wire Wire Line
	5100 1150 5100 1250
Wire Wire Line
	5700 1150 5700 1250
Wire Wire Line
	6300 1150 6300 1250
Wire Wire Line
	6900 1150 6900 1250
Wire Wire Line
	7500 1150 7500 1250
Wire Wire Line
	8100 1150 8100 1250
Wire Wire Line
	8700 1150 8700 1250
Wire Wire Line
	9300 1150 9300 1250
Wire Wire Line
	8100 2050 8100 2350
Wire Wire Line
	9300 2050 9300 2350
$Comp
L Device:R R21
U 1 1 5B60AE5A
P 3850 3550
F 0 "R21" V 3950 3450 50  0000 L CNN
F 1 "220" V 3850 3450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3780 3550 50  0001 C CNN
F 3 "~" H 3850 3550 50  0001 C CNN
	1    3850 3550
	1    0    0    -1  
$EndComp
$Comp
L _semi:LED DS7
U 1 1 5B5BBA6F
P 9750 5550
F 0 "DS7" V 9800 5300 50  0000 L CNN
F 1 "RC3" V 9700 5300 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9750 5550 60  0001 C CNN
F 3 "" H 9750 5550 60  0000 C CNN
	1    9750 5550
	-1   0    0    1   
$EndComp
$Comp
L Device:R R44
U 1 1 5B5BBBC3
P 9750 5800
F 0 "R44" V 9850 5700 50  0000 L CNN
F 1 "220" V 9750 5700 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9680 5800 50  0001 C CNN
F 3 "~" H 9750 5800 50  0001 C CNN
	1    9750 5800
	-1   0    0    1   
$EndComp
Text Label 9750 5300 1    50   ~ 0
RC_3
Entry Wire Line
	9750 5050 9650 4950
Wire Wire Line
	9750 5050 9750 5450
$Comp
L power:+5V #PWR067
U 1 1 5B5B0455
P 9750 5950
F 0 "#PWR067" H 9750 5800 50  0001 C CNN
F 1 "+5V" H 9765 6123 50  0000 C CNN
F 2 "" H 9750 5950 50  0001 C CNN
F 3 "" H 9750 5950 50  0001 C CNN
	1    9750 5950
	-1   0    0    1   
$EndComp
$Comp
L _semi:LED DS8
U 1 1 5B5E42A0
P 9950 5550
F 0 "DS8" V 10000 5300 50  0000 L CNN
F 1 "DC3" V 9900 5300 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9950 5550 60  0001 C CNN
F 3 "" H 9950 5550 60  0000 C CNN
	1    9950 5550
	-1   0    0    1   
$EndComp
$Comp
L Device:R R45
U 1 1 5B5E42A6
P 9950 5800
F 0 "R45" V 10050 5700 50  0000 L CNN
F 1 "220" V 9950 5700 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9880 5800 50  0001 C CNN
F 3 "~" H 9950 5800 50  0001 C CNN
	1    9950 5800
	-1   0    0    1   
$EndComp
Text Label 9950 5300 1    50   ~ 0
DC_3
Entry Wire Line
	9950 5050 9850 4950
Wire Wire Line
	9950 5050 9950 5450
$Comp
L power:+5V #PWR068
U 1 1 5B5E42AF
P 9950 5950
F 0 "#PWR068" H 9950 5800 50  0001 C CNN
F 1 "+5V" H 9965 6123 50  0000 C CNN
F 2 "" H 9950 5950 50  0001 C CNN
F 3 "" H 9950 5950 50  0001 C CNN
	1    9950 5950
	-1   0    0    1   
$EndComp
Wire Wire Line
	6150 4300 6150 4550
Wire Wire Line
	6250 4300 6250 4550
Wire Wire Line
	6350 4300 6350 4550
Wire Wire Line
	6450 4300 6450 4550
Wire Wire Line
	6550 4300 6550 4550
Wire Wire Line
	6650 4300 6650 4550
Wire Wire Line
	6750 4300 6750 4550
Wire Wire Line
	6850 4550 6850 4300
Wire Wire Line
	6950 4300 6950 4550
Wire Wire Line
	7050 4300 7050 4550
$Comp
L _semi:LED DS5
U 1 1 5B794371
P 9250 5550
F 0 "DS5" V 9300 5300 50  0000 L CNN
F 1 "RC2" V 9200 5300 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9250 5550 60  0001 C CNN
F 3 "" H 9250 5550 60  0000 C CNN
	1    9250 5550
	-1   0    0    1   
$EndComp
$Comp
L Device:R R42
U 1 1 5B794377
P 9250 5800
F 0 "R42" V 9350 5700 50  0000 L CNN
F 1 "220" V 9250 5700 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9180 5800 50  0001 C CNN
F 3 "~" H 9250 5800 50  0001 C CNN
	1    9250 5800
	-1   0    0    1   
$EndComp
Text Label 9250 5300 1    50   ~ 0
RC_2
Entry Wire Line
	9250 5050 9150 4950
Wire Wire Line
	9250 5050 9250 5450
$Comp
L power:+5V #PWR065
U 1 1 5B794380
P 9250 5950
F 0 "#PWR065" H 9250 5800 50  0001 C CNN
F 1 "+5V" H 9265 6123 50  0000 C CNN
F 2 "" H 9250 5950 50  0001 C CNN
F 3 "" H 9250 5950 50  0001 C CNN
	1    9250 5950
	-1   0    0    1   
$EndComp
$Comp
L _semi:LED DS6
U 1 1 5B794386
P 9450 5550
F 0 "DS6" V 9500 5300 50  0000 L CNN
F 1 "DC2" V 9400 5300 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9450 5550 60  0001 C CNN
F 3 "" H 9450 5550 60  0000 C CNN
	1    9450 5550
	-1   0    0    1   
$EndComp
$Comp
L Device:R R43
U 1 1 5B79438C
P 9450 5800
F 0 "R43" V 9550 5700 50  0000 L CNN
F 1 "220" V 9450 5700 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9380 5800 50  0001 C CNN
F 3 "~" H 9450 5800 50  0001 C CNN
	1    9450 5800
	-1   0    0    1   
$EndComp
Text Label 9450 5300 1    50   ~ 0
DC_2
Entry Wire Line
	9450 5050 9350 4950
Wire Wire Line
	9450 5050 9450 5450
$Comp
L power:+5V #PWR066
U 1 1 5B794395
P 9450 5950
F 0 "#PWR066" H 9450 5800 50  0001 C CNN
F 1 "+5V" H 9465 6123 50  0000 C CNN
F 2 "" H 9450 5950 50  0001 C CNN
F 3 "" H 9450 5950 50  0001 C CNN
	1    9450 5950
	-1   0    0    1   
$EndComp
$Comp
L _semi:LED DS3
U 1 1 5B7A1794
P 8750 5550
F 0 "DS3" V 8800 5300 50  0000 L CNN
F 1 "RC1" V 8700 5300 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8750 5550 60  0001 C CNN
F 3 "" H 8750 5550 60  0000 C CNN
	1    8750 5550
	-1   0    0    1   
$EndComp
$Comp
L Device:R R40
U 1 1 5B7A179B
P 8750 5800
F 0 "R40" V 8850 5700 50  0000 L CNN
F 1 "220" V 8750 5700 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8680 5800 50  0001 C CNN
F 3 "~" H 8750 5800 50  0001 C CNN
	1    8750 5800
	-1   0    0    1   
$EndComp
Text Label 8750 5300 1    50   ~ 0
RC_1
Entry Wire Line
	8750 5050 8650 4950
Wire Wire Line
	8750 5050 8750 5450
$Comp
L power:+5V #PWR063
U 1 1 5B7A17A5
P 8750 5950
F 0 "#PWR063" H 8750 5800 50  0001 C CNN
F 1 "+5V" H 8765 6123 50  0000 C CNN
F 2 "" H 8750 5950 50  0001 C CNN
F 3 "" H 8750 5950 50  0001 C CNN
	1    8750 5950
	-1   0    0    1   
$EndComp
$Comp
L _semi:LED DS4
U 1 1 5B7A17AB
P 8950 5550
F 0 "DS4" V 9000 5300 50  0000 L CNN
F 1 "DC1" V 8900 5300 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8950 5550 60  0001 C CNN
F 3 "" H 8950 5550 60  0000 C CNN
	1    8950 5550
	-1   0    0    1   
$EndComp
$Comp
L Device:R R41
U 1 1 5B7A17B2
P 8950 5800
F 0 "R41" V 9050 5700 50  0000 L CNN
F 1 "220" V 8950 5700 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8880 5800 50  0001 C CNN
F 3 "~" H 8950 5800 50  0001 C CNN
	1    8950 5800
	-1   0    0    1   
$EndComp
Text Label 8950 5300 1    50   ~ 0
DC_1
Entry Wire Line
	8950 5050 8850 4950
Wire Wire Line
	8950 5050 8950 5450
$Comp
L power:+5V #PWR064
U 1 1 5B7A17BC
P 8950 5950
F 0 "#PWR064" H 8950 5800 50  0001 C CNN
F 1 "+5V" H 8965 6123 50  0000 C CNN
F 2 "" H 8950 5950 50  0001 C CNN
F 3 "" H 8950 5950 50  0001 C CNN
	1    8950 5950
	-1   0    0    1   
$EndComp
$Comp
L _semi:LED DS1
U 1 1 5B7AEA4D
P 8250 5550
F 0 "DS1" V 8300 5300 50  0000 L CNN
F 1 "RC0" V 8200 5300 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8250 5550 60  0001 C CNN
F 3 "" H 8250 5550 60  0000 C CNN
	1    8250 5550
	-1   0    0    1   
$EndComp
$Comp
L Device:R R38
U 1 1 5B7AEA54
P 8250 5800
F 0 "R38" V 8350 5700 50  0000 L CNN
F 1 "220" V 8250 5700 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8180 5800 50  0001 C CNN
F 3 "~" H 8250 5800 50  0001 C CNN
	1    8250 5800
	-1   0    0    1   
$EndComp
Text Label 8250 5300 1    50   ~ 0
RC_0
Entry Wire Line
	8250 5050 8150 4950
Wire Wire Line
	8250 5050 8250 5450
$Comp
L power:+5V #PWR061
U 1 1 5B7AEA5E
P 8250 5950
F 0 "#PWR061" H 8250 5800 50  0001 C CNN
F 1 "+5V" H 8265 6123 50  0000 C CNN
F 2 "" H 8250 5950 50  0001 C CNN
F 3 "" H 8250 5950 50  0001 C CNN
	1    8250 5950
	-1   0    0    1   
$EndComp
$Comp
L _semi:LED DS2
U 1 1 5B7AEA64
P 8450 5550
F 0 "DS2" V 8500 5300 50  0000 L CNN
F 1 "DC0" V 8400 5300 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8450 5550 60  0001 C CNN
F 3 "" H 8450 5550 60  0000 C CNN
	1    8450 5550
	-1   0    0    1   
$EndComp
$Comp
L Device:R R39
U 1 1 5B7AEA6B
P 8450 5800
F 0 "R39" V 8550 5700 50  0000 L CNN
F 1 "220" V 8450 5700 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8380 5800 50  0001 C CNN
F 3 "~" H 8450 5800 50  0001 C CNN
	1    8450 5800
	-1   0    0    1   
$EndComp
Text Label 8450 5300 1    50   ~ 0
DC_0
Entry Wire Line
	8450 5050 8350 4950
Wire Wire Line
	8450 5050 8450 5450
$Comp
L power:+5V #PWR062
U 1 1 5B7AEA75
P 8450 5950
F 0 "#PWR062" H 8450 5800 50  0001 C CNN
F 1 "+5V" H 8465 6123 50  0000 C CNN
F 2 "" H 8450 5950 50  0001 C CNN
F 3 "" H 8450 5950 50  0001 C CNN
	1    8450 5950
	-1   0    0    1   
$EndComp
$Comp
L _semi:LED DS9
U 1 1 5B7BC351
P 10250 5550
F 0 "DS9" V 10300 5300 50  0000 L CNN
F 1 "RC4" V 10200 5300 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10250 5550 60  0001 C CNN
F 3 "" H 10250 5550 60  0000 C CNN
	1    10250 5550
	-1   0    0    1   
$EndComp
$Comp
L Device:R R46
U 1 1 5B7BC358
P 10250 5800
F 0 "R46" V 10350 5700 50  0000 L CNN
F 1 "220" V 10250 5700 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10180 5800 50  0001 C CNN
F 3 "~" H 10250 5800 50  0001 C CNN
	1    10250 5800
	-1   0    0    1   
$EndComp
Text Label 10250 5300 1    50   ~ 0
RC_4
Entry Wire Line
	10250 5050 10150 4950
Wire Wire Line
	10250 5050 10250 5450
$Comp
L power:+5V #PWR069
U 1 1 5B7BC362
P 10250 5950
F 0 "#PWR069" H 10250 5800 50  0001 C CNN
F 1 "+5V" H 10265 6123 50  0000 C CNN
F 2 "" H 10250 5950 50  0001 C CNN
F 3 "" H 10250 5950 50  0001 C CNN
	1    10250 5950
	-1   0    0    1   
$EndComp
$Comp
L _semi:LED DS10
U 1 1 5B7BC368
P 10450 5550
F 0 "DS10" V 10500 5300 50  0000 L CNN
F 1 "DC4" V 10400 5300 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10450 5550 60  0001 C CNN
F 3 "" H 10450 5550 60  0000 C CNN
	1    10450 5550
	-1   0    0    1   
$EndComp
$Comp
L Device:R R47
U 1 1 5B7BC36F
P 10450 5800
F 0 "R47" V 10550 5700 50  0000 L CNN
F 1 "220" V 10450 5700 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10380 5800 50  0001 C CNN
F 3 "~" H 10450 5800 50  0001 C CNN
	1    10450 5800
	-1   0    0    1   
$EndComp
Text Label 10450 5300 1    50   ~ 0
DC_4
Entry Wire Line
	10450 5050 10350 4950
Wire Wire Line
	10450 5050 10450 5450
$Comp
L power:+5V #PWR070
U 1 1 5B7BC379
P 10450 5950
F 0 "#PWR070" H 10450 5800 50  0001 C CNN
F 1 "+5V" H 10465 6123 50  0000 C CNN
F 2 "" H 10450 5950 50  0001 C CNN
F 3 "" H 10450 5950 50  0001 C CNN
	1    10450 5950
	-1   0    0    1   
$EndComp
Wire Bus Line
	3750 4000 3750 4350
Wire Bus Line
	10350 4000 10350 4950
Wire Notes Line
	8050 4850 10550 4850
Wire Notes Line
	10550 4850 10550 6200
Wire Notes Line
	10550 6200 8050 6200
Wire Notes Line
	8050 6200 8050 4850
Text Notes 8900 4800 0    50   ~ 0
Remote State LEDs
$Comp
L Device:R R35
U 1 1 5B8A52F1
P 6650 5500
F 0 "R35" V 6550 5450 50  0000 L CNN
F 1 "10K" V 6650 5400 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6580 5500 50  0001 C CNN
F 3 "~" H 6650 5500 50  0001 C CNN
	1    6650 5500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR057
U 1 1 5B8A55D3
P 6650 5650
F 0 "#PWR057" H 6650 5500 50  0001 C CNN
F 1 "+5V" H 6665 5823 50  0000 C CNN
F 2 "" H 6650 5650 50  0001 C CNN
F 3 "" H 6650 5650 50  0001 C CNN
	1    6650 5650
	-1   0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x04 J10
U 1 1 5B8CC539
P 1150 4950
F 0 "J10" H 1150 5150 50  0000 C CNN
F 1 "Input" H 1100 4650 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-3-4-5.08_1x04_P5.08mm_Horizontal" H 1150 4950 50  0001 C CNN
F 3 "~" H 1150 4950 50  0001 C CNN
	1    1150 4950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1400 4000 1350 4000
Wire Wire Line
	1400 3900 1350 3900
Wire Wire Line
	1350 4950 1400 4950
Wire Wire Line
	1350 4850 1400 4850
$Comp
L power:GND #PWR030
U 1 1 5B99C16B
P 2650 5900
F 0 "#PWR030" H 2650 5650 50  0001 C CNN
F 1 "GND" H 2655 5727 50  0000 C CNN
F 2 "" H 2650 5900 50  0001 C CNN
F 3 "" H 2650 5900 50  0001 C CNN
	1    2650 5900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR012
U 1 1 5B99C206
P 2850 5300
F 0 "#PWR012" H 2850 5150 50  0001 C CNN
F 1 "+5V" H 2865 5473 50  0000 C CNN
F 2 "" H 2850 5300 50  0001 C CNN
F 3 "" H 2850 5300 50  0001 C CNN
	1    2850 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5B99C86D
P 2750 5450
F 0 "C1" V 2700 5300 50  0000 C CNN
F 1 "0.1uF" V 2750 5750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2750 5450 50  0001 C CNN
F 3 "~" H 2750 5450 50  0001 C CNN
	1    2750 5450
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5B99C9ED
P 2750 5600
F 0 "C2" V 2800 5750 50  0000 C CNN
F 1 "0.1uF" V 2750 5300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2750 5600 50  0001 C CNN
F 3 "~" H 2750 5600 50  0001 C CNN
	1    2750 5600
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5B99CCC3
P 2750 5750
F 0 "C3" V 2800 5900 50  0000 C CNN
F 1 "0.1uF" V 2750 5450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2750 5750 50  0001 C CNN
F 3 "~" H 2750 5750 50  0001 C CNN
	1    2750 5750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2850 5300 2850 5450
Connection ~ 2850 5450
Wire Wire Line
	2850 5450 2850 5600
Connection ~ 2850 5600
Wire Wire Line
	2850 5600 2850 5750
Wire Wire Line
	2650 5450 2650 5600
Connection ~ 2650 5600
Wire Wire Line
	2650 5600 2650 5750
Connection ~ 2650 5750
Wire Wire Line
	2650 5750 2650 5900
Wire Wire Line
	1550 2800 1550 2750
Wire Wire Line
	1650 2750 1650 2800
Wire Wire Line
	1650 2800 1600 2800
Wire Wire Line
	1600 2800 1600 2850
Connection ~ 1600 2800
Wire Wire Line
	1600 2800 1550 2800
$Comp
L Switch:SW_DIP_x06 SW1
U 1 1 5BA1BCB9
P 2550 4050
F 0 "SW1" V 2596 3720 50  0000 R CNN
F 1 "DIP_PCA" V 2505 3720 50  0000 R CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx06_Slide_9.78x17.42mm_W7.62mm_P2.54mm" H 2550 4050 50  0001 C CNN
F 3 "" H 2550 4050 50  0001 C CNN
	1    2550 4050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R20
U 1 1 5B6CF259
P 3000 3450
F 0 "R20" V 2950 3550 50  0000 L CNN
F 1 "10K" V 3000 3350 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2930 3450 50  0001 C CNN
F 3 "~" H 3000 3450 50  0001 C CNN
	1    3000 3450
	0    -1   1    0   
$EndComp
$Comp
L Device:R R31
U 1 1 5B6CF2CF
P 3000 3600
F 0 "R31" V 2950 3700 50  0000 L CNN
F 1 "10K" V 3000 3500 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2930 3600 50  0001 C CNN
F 3 "~" H 3000 3600 50  0001 C CNN
	1    3000 3600
	0    -1   1    0   
$EndComp
$Comp
L Device:R R19
U 1 1 5B6CF1E9
P 3000 3300
F 0 "R19" V 2950 3400 50  0000 L CNN
F 1 "10K" V 3000 3200 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2930 3300 50  0001 C CNN
F 3 "~" H 3000 3300 50  0001 C CNN
	1    3000 3300
	0    -1   1    0   
$EndComp
$Comp
L Device:R R18
U 1 1 5B6CF167
P 3000 3150
F 0 "R18" V 2950 3250 50  0000 L CNN
F 1 "10K" V 3000 3050 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2930 3150 50  0001 C CNN
F 3 "~" H 3000 3150 50  0001 C CNN
	1    3000 3150
	0    -1   1    0   
$EndComp
$Comp
L Device:R R17
U 1 1 5B6CF0FB
P 3000 3000
F 0 "R17" V 2950 3100 50  0000 L CNN
F 1 "10K" V 3000 2900 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2930 3000 50  0001 C CNN
F 3 "~" H 3000 3000 50  0001 C CNN
	1    3000 3000
	0    -1   1    0   
$EndComp
$Comp
L Device:R R16
U 1 1 5B6CEF85
P 3000 2850
F 0 "R16" V 2950 2950 50  0000 L CNN
F 1 "10K" V 3000 2750 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2930 2850 50  0001 C CNN
F 3 "~" H 3000 2850 50  0001 C CNN
	1    3000 2850
	0    -1   1    0   
$EndComp
Wire Wire Line
	2750 2750 2750 2850
Wire Wire Line
	2750 2850 2850 2850
Wire Wire Line
	2850 3000 2650 3000
Wire Wire Line
	2650 3000 2650 2750
Wire Wire Line
	2850 3150 2550 3150
Wire Wire Line
	2550 3150 2550 2750
Wire Wire Line
	2850 3300 2450 3300
Wire Wire Line
	2450 3300 2450 2750
Wire Wire Line
	2850 3450 2350 3450
Wire Wire Line
	2350 3450 2350 2750
Wire Wire Line
	2850 3600 2250 3600
Wire Wire Line
	2250 3600 2250 2750
Wire Wire Line
	2250 3750 2250 3600
Connection ~ 2250 3600
Wire Wire Line
	2350 3750 2350 3450
Connection ~ 2350 3450
Wire Wire Line
	2450 3750 2450 3300
Connection ~ 2450 3300
Wire Wire Line
	2550 3750 2550 3150
Connection ~ 2550 3150
Wire Wire Line
	2650 3750 2650 3000
Connection ~ 2650 3000
Wire Wire Line
	2750 3750 2750 2850
Connection ~ 2750 2850
Wire Wire Line
	3150 2850 3200 2850
Wire Wire Line
	3200 2850 3200 3000
Wire Wire Line
	3200 3600 3150 3600
Wire Wire Line
	3150 3000 3200 3000
Connection ~ 3200 3000
Wire Wire Line
	3200 3000 3200 3150
Wire Wire Line
	3150 3150 3200 3150
Connection ~ 3200 3150
Wire Wire Line
	3150 3300 3200 3300
Connection ~ 3200 3300
Wire Wire Line
	3200 3300 3200 3450
Wire Wire Line
	3150 3450 3200 3450
Connection ~ 3200 3450
Wire Wire Line
	3200 3450 3200 3600
Wire Wire Line
	3200 3150 3200 3300
Wire Wire Line
	3200 3750 3200 3600
Connection ~ 3200 3600
$Comp
L power:+5V #PWR050
U 1 1 5BCC1835
P 2500 4500
F 0 "#PWR050" H 2500 4350 50  0001 C CNN
F 1 "+5V" H 2515 4673 50  0000 C CNN
F 2 "" H 2500 4500 50  0001 C CNN
F 3 "" H 2500 4500 50  0001 C CNN
	1    2500 4500
	-1   0    0    1   
$EndComp
Wire Wire Line
	2250 4350 2250 4450
Wire Wire Line
	2250 4450 2350 4450
Wire Wire Line
	2500 4450 2500 4500
Wire Wire Line
	2750 4350 2750 4450
Wire Wire Line
	2750 4450 2650 4450
Connection ~ 2500 4450
Wire Wire Line
	2350 4350 2350 4450
Connection ~ 2350 4450
Wire Wire Line
	2350 4450 2450 4450
Wire Wire Line
	2450 4350 2450 4450
Connection ~ 2450 4450
Wire Wire Line
	2450 4450 2500 4450
Wire Wire Line
	2550 4350 2550 4450
Connection ~ 2550 4450
Wire Wire Line
	2550 4450 2500 4450
Wire Wire Line
	2650 4350 2650 4450
Connection ~ 2650 4450
Wire Wire Line
	2650 4450 2550 4450
$Comp
L Switch:SW_DIP_x03 SW3
U 1 1 5BD4A9EA
P 4250 6700
F 0 "SW3" V 4296 6570 50  0000 R CNN
F 1 "DIP_PCF" V 4205 6570 50  0000 R CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx03_Slide_9.78x9.8mm_W7.62mm_P2.54mm" H 4250 6700 50  0001 C CNN
F 3 "" H 4250 6700 50  0001 C CNN
	1    4250 6700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R48
U 1 1 5BD4B689
P 3800 5950
F 0 "R48" V 3750 6050 50  0000 L CNN
F 1 "10K" V 3800 5850 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3730 5950 50  0001 C CNN
F 3 "~" H 3800 5950 50  0001 C CNN
	1    3800 5950
	0    1    -1   0   
$EndComp
$Comp
L Device:R R49
U 1 1 5BD4B690
P 3800 6100
F 0 "R49" V 3750 6200 50  0000 L CNN
F 1 "10K" V 3800 6000 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3730 6100 50  0001 C CNN
F 3 "~" H 3800 6100 50  0001 C CNN
	1    3800 6100
	0    1    -1   0   
$EndComp
$Comp
L Device:R R50
U 1 1 5BD4B697
P 3800 6250
F 0 "R50" V 3750 6350 50  0000 L CNN
F 1 "10K" V 3800 6150 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3730 6250 50  0001 C CNN
F 3 "~" H 3800 6250 50  0001 C CNN
	1    3800 6250
	0    1    -1   0   
$EndComp
Wire Wire Line
	3600 5800 3850 5800
Wire Wire Line
	3650 6250 3650 6100
Connection ~ 3650 6100
Wire Wire Line
	3650 6100 3650 5950
Wire Wire Line
	4250 6250 4250 5800
Wire Wire Line
	3950 6250 4250 6250
Wire Wire Line
	4150 6100 4150 5800
Wire Wire Line
	3950 6100 4150 6100
Wire Wire Line
	3950 5950 4050 5950
Wire Wire Line
	4250 6400 4250 6250
Connection ~ 4250 6250
Wire Wire Line
	4150 6400 4150 6100
Connection ~ 4150 6100
Wire Wire Line
	4050 5800 4050 5950
Connection ~ 4050 5950
Wire Wire Line
	4050 5950 4050 6400
$Comp
L power:+5V #PWR073
U 1 1 5BEBC9C6
P 3800 6800
F 0 "#PWR073" H 3800 6650 50  0001 C CNN
F 1 "+5V" H 3815 6973 50  0000 C CNN
F 2 "" H 3800 6800 50  0001 C CNN
F 3 "" H 3800 6800 50  0001 C CNN
	1    3800 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 6350 3650 6250
Connection ~ 3650 6250
Wire Wire Line
	3800 6800 3800 7000
Wire Wire Line
	3800 7000 4050 7000
Connection ~ 4050 7000
Wire Wire Line
	4050 7000 4150 7000
Connection ~ 4150 7000
Wire Wire Line
	4150 7000 4250 7000
$Comp
L power:GND #PWR058
U 1 1 5BEFCB37
P 7850 5750
F 0 "#PWR058" H 7850 5500 50  0001 C CNN
F 1 "GND" H 7855 5577 50  0000 C CNN
F 2 "" H 7850 5750 50  0001 C CNN
F 3 "" H 7850 5750 50  0001 C CNN
	1    7850 5750
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DIP_x03 SW2
U 1 1 5BEFCB3D
P 7350 6050
F 0 "SW2" V 7396 5920 50  0000 R CNN
F 1 "DIP_TCA" V 7305 5920 50  0000 R CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx03_Slide_9.78x9.8mm_W7.62mm_P2.54mm" H 7350 6050 50  0001 C CNN
F 3 "" H 7350 6050 50  0001 C CNN
	1    7350 6050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R34
U 1 1 5BEFCB44
P 7550 5450
F 0 "R34" V 7500 5550 50  0000 L CNN
F 1 "10K" V 7550 5350 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7480 5450 50  0001 C CNN
F 3 "~" H 7550 5450 50  0001 C CNN
	1    7550 5450
	0    1    -1   0   
$EndComp
$Comp
L Device:R R36
U 1 1 5BEFCB4B
P 7550 5550
F 0 "R36" V 7500 5650 50  0000 L CNN
F 1 "10K" V 7550 5450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7480 5550 50  0001 C CNN
F 3 "~" H 7550 5550 50  0001 C CNN
	1    7550 5550
	0    1    -1   0   
$EndComp
$Comp
L Device:R R37
U 1 1 5BEFCB52
P 7550 5650
F 0 "R37" V 7500 5750 50  0000 L CNN
F 1 "10K" V 7550 5550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7480 5650 50  0001 C CNN
F 3 "~" H 7550 5650 50  0001 C CNN
	1    7550 5650
	0    1    -1   0   
$EndComp
$Comp
L power:+5V #PWR071
U 1 1 5BEFCB68
P 6900 6150
F 0 "#PWR071" H 6900 6000 50  0001 C CNN
F 1 "+5V" H 6915 6323 50  0000 C CNN
F 2 "" H 6900 6150 50  0001 C CNN
F 3 "" H 6900 6150 50  0001 C CNN
	1    6900 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 6150 6900 6350
Wire Wire Line
	6900 6350 7150 6350
Connection ~ 7150 6350
Wire Wire Line
	7150 6350 7250 6350
Connection ~ 7250 6350
Wire Wire Line
	7250 6350 7350 6350
Wire Wire Line
	7150 5350 7150 5650
Wire Wire Line
	7250 5350 7250 5550
Wire Wire Line
	7350 5350 7350 5450
Wire Wire Line
	7400 5450 7350 5450
Connection ~ 7350 5450
Wire Wire Line
	7350 5450 7350 5750
Wire Wire Line
	7400 5550 7250 5550
Connection ~ 7250 5550
Wire Wire Line
	7250 5550 7250 5750
Wire Wire Line
	7400 5650 7150 5650
Connection ~ 7150 5650
Wire Wire Line
	7150 5650 7150 5750
Wire Wire Line
	7850 4950 7850 5450
Wire Wire Line
	7700 5450 7850 5450
Connection ~ 7850 5450
Wire Wire Line
	7850 5450 7850 5550
Wire Wire Line
	7700 5550 7850 5550
Connection ~ 7850 5550
Wire Wire Line
	7850 5550 7850 5650
Wire Wire Line
	7700 5650 7850 5650
Connection ~ 7850 5650
Wire Wire Line
	7850 5650 7850 5750
Wire Bus Line
	1950 7100 6350 7100
Wire Wire Line
	6250 6150 6250 5350
Wire Wire Line
	6150 5350 6150 6150
Wire Bus Line
	6350 7100 6350 6250
$Comp
L Connector:Conn_01x07_Male J1
U 1 1 5C203B2C
P 2650 1000
F 0 "J1" V 2485 976 50  0000 C CNN
F 1 "CON_PCA" V 2576 976 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x07_P2.54mm_Vertical" H 2650 1000 50  0001 C CNN
F 3 "~" H 2650 1000 50  0001 C CNN
	1    2650 1000
	0    1    1    0   
$EndComp
Wire Wire Line
	2350 1200 2350 1350
Wire Wire Line
	2450 1200 2450 1350
Wire Wire Line
	2550 1200 2550 1350
Wire Wire Line
	2650 1200 2650 1350
Wire Wire Line
	2750 1200 2750 1350
Wire Wire Line
	2850 1200 2850 1350
$Comp
L Connector:Conn_01x07_Male J9
U 1 1 5C298BDD
P 5150 4450
F 0 "J9" V 4985 4426 50  0000 C CNN
F 1 "CON_PCF" V 5076 4426 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x07_P2.54mm_Vertical" H 5150 4450 50  0001 C CNN
F 3 "~" H 5150 4450 50  0001 C CNN
	1    5150 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	4850 4650 4850 4800
Wire Wire Line
	4950 4650 4950 4800
Wire Wire Line
	5050 4650 5050 4800
Wire Wire Line
	5150 4650 5150 4800
Wire Wire Line
	5250 4650 5250 4800
Wire Wire Line
	5350 4650 5350 4800
$Comp
L Connector:Conn_01x07_Male J8
U 1 1 5C2B35AD
P 7450 4300
F 0 "J8" V 7285 4276 50  0000 C CNN
F 1 "CON_TCA" V 7376 4276 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x07_P2.54mm_Vertical" H 7450 4300 50  0001 C CNN
F 3 "~" H 7450 4300 50  0001 C CNN
	1    7450 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	7150 4550 7150 4500
Wire Wire Line
	7250 4500 7250 4550
Wire Wire Line
	7350 4500 7350 4550
Wire Wire Line
	7450 4500 7450 4550
Wire Wire Line
	7550 4500 7550 4550
Wire Wire Line
	7650 4500 7650 4550
$Comp
L power:GND #PWR011
U 1 1 5C3906D9
P 2950 1300
F 0 "#PWR011" H 2950 1050 50  0001 C CNN
F 1 "GND" H 2955 1127 50  0000 C CNN
F 2 "" H 2950 1300 50  0001 C CNN
F 3 "" H 2950 1300 50  0001 C CNN
	1    2950 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 1300 2950 1200
Wire Wire Line
	3150 2200 3150 2050
Wire Wire Line
	1050 2050 1050 1900
Wire Wire Line
	5450 4750 5450 4650
Wire Wire Line
	7800 4550 7750 4550
Wire Wire Line
	7750 4550 7750 4500
$Comp
L Device:R R32
U 1 1 5C47C19B
P 1400 5400
F 0 "R32" V 1350 5500 50  0000 L CNN
F 1 "10K" V 1400 5300 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1330 5400 50  0001 C CNN
F 3 "~" H 1400 5400 50  0001 C CNN
	1    1400 5400
	1    0    0    1   
$EndComp
$Comp
L Device:R R33
U 1 1 5C47C2F5
P 1550 5400
F 0 "R33" V 1500 5500 50  0000 L CNN
F 1 "10K" V 1550 5300 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1480 5400 50  0001 C CNN
F 3 "~" H 1550 5400 50  0001 C CNN
	1    1550 5400
	1    0    0    1   
$EndComp
Wire Wire Line
	1350 5050 1400 5050
Wire Wire Line
	1350 5150 1550 5150
Wire Wire Line
	1400 5250 1400 5050
Connection ~ 1400 5050
Wire Wire Line
	1400 5050 1850 5050
Wire Wire Line
	1550 5250 1550 5150
Connection ~ 1550 5150
Wire Wire Line
	1550 5150 1850 5150
$Comp
L power:+5V #PWR056
U 1 1 5C4F0FD6
P 1700 5550
F 0 "#PWR056" H 1700 5400 50  0001 C CNN
F 1 "+5V" V 1700 5750 50  0000 C CNN
F 2 "" H 1700 5550 50  0001 C CNN
F 3 "" H 1700 5550 50  0001 C CNN
	1    1700 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 5550 1400 5650
Wire Wire Line
	1400 5650 1550 5650
Wire Wire Line
	1550 5650 1550 5550
Wire Wire Line
	1550 5650 1700 5650
Wire Wire Line
	1700 5650 1700 5550
Connection ~ 1550 5650
$Comp
L power:+5V #PWR052
U 1 1 5C539D03
P 5450 4750
F 0 "#PWR052" H 5450 4600 50  0001 C CNN
F 1 "+5V" H 5465 4923 50  0000 C CNN
F 2 "" H 5450 4750 50  0001 C CNN
F 3 "" H 5450 4750 50  0001 C CNN
	1    5450 4750
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR051
U 1 1 5C539E93
P 7800 4550
F 0 "#PWR051" H 7800 4400 50  0001 C CNN
F 1 "+5V" V 7700 4650 50  0000 C CNN
F 2 "" H 7800 4550 50  0001 C CNN
F 3 "" H 7800 4550 50  0001 C CNN
	1    7800 4550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR042
U 1 1 5B7A499A
P 6650 3400
F 0 "#PWR042" H 6650 3150 50  0001 C CNN
F 1 "GND" H 6655 3227 50  0000 C CNN
F 2 "" H 6650 3400 50  0001 C CNN
F 3 "" H 6650 3400 50  0001 C CNN
	1    6650 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR040
U 1 1 5B836707
P 5450 3400
F 0 "#PWR040" H 5450 3150 50  0001 C CNN
F 1 "GND" H 5455 3227 50  0000 C CNN
F 2 "" H 5450 3400 50  0001 C CNN
F 3 "" H 5450 3400 50  0001 C CNN
	1    5450 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR038
U 1 1 5B8367C4
P 4250 3400
F 0 "#PWR038" H 4250 3150 50  0001 C CNN
F 1 "GND" H 4255 3227 50  0000 C CNN
F 2 "" H 4250 3400 50  0001 C CNN
F 3 "" H 4250 3400 50  0001 C CNN
	1    4250 3400
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH1
U 1 1 5B8766B5
P 10250 1050
F 0 "MH1" H 10350 1096 50  0000 L CNN
F 1 "MountingHole" H 10350 1005 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mm" H 10250 1050 50  0001 C CNN
F 3 "~" H 10250 1050 50  0001 C CNN
	1    10250 1050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH2
U 1 1 5B8B6F73
P 10250 1250
F 0 "MH2" H 10350 1296 50  0000 L CNN
F 1 "MountingHole" H 10350 1205 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mm" H 10250 1250 50  0001 C CNN
F 3 "~" H 10250 1250 50  0001 C CNN
	1    10250 1250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH3
U 1 1 5B8B7041
P 10250 1450
F 0 "MH3" H 10350 1496 50  0000 L CNN
F 1 "MountingHole" H 10350 1405 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mm" H 10250 1450 50  0001 C CNN
F 3 "~" H 10250 1450 50  0001 C CNN
	1    10250 1450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH4
U 1 1 5B8B7115
P 10250 1650
F 0 "MH4" H 10350 1696 50  0000 L CNN
F 1 "MountingHole" H 10350 1605 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mm" H 10250 1650 50  0001 C CNN
F 3 "~" H 10250 1650 50  0001 C CNN
	1    10250 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 4100 1850 4100
Wire Wire Line
	1350 4200 1850 4200
$Comp
L _semi:LED DS11
U 1 1 5B9792BB
P 1400 6400
F 0 "DS11" H 1550 6450 50  0000 L CNN
F 1 "PWR" H 1550 6350 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1400 6400 60  0001 C CNN
F 3 "" H 1400 6400 60  0000 C CNN
	1    1400 6400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R51
U 1 1 5B9792C2
P 1400 6150
F 0 "R51" H 1450 6200 50  0000 L CNN
F 1 "220" V 1400 6050 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1330 6150 50  0001 C CNN
F 3 "~" H 1400 6150 50  0001 C CNN
	1    1400 6150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0101
U 1 1 5B9792C9
P 1400 6000
F 0 "#PWR0101" H 1400 5850 50  0001 C CNN
F 1 "+5V" H 1415 6173 50  0000 C CNN
F 2 "" H 1400 6000 50  0001 C CNN
F 3 "" H 1400 6000 50  0001 C CNN
	1    1400 6000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5B9F84C2
P 1400 6500
F 0 "#PWR0102" H 1400 6250 50  0001 C CNN
F 1 "GND" H 1405 6327 50  0000 C CNN
F 2 "" H 1400 6500 50  0001 C CNN
F 3 "" H 1400 6500 50  0001 C CNN
	1    1400 6500
	1    0    0    -1  
$EndComp
NoConn ~ 4750 5800
Wire Wire Line
	4450 3900 4450 3400
Wire Wire Line
	9250 3900 9250 3400
Wire Wire Line
	8050 3900 8050 3400
Wire Wire Line
	6850 3900 6850 3400
Wire Wire Line
	5650 3900 5650 3400
Wire Bus Line
	1450 3350 1950 3350
Wire Bus Line
	4550 6250 6350 6250
Wire Bus Line
	1950 3350 1950 7100
Wire Bus Line
	3750 4000 10350 4000
Wire Bus Line
	8150 4950 10350 4950
Wire Bus Line
	3750 4350 4650 4350
Wire Bus Line
	1250 650  9200 650 
Wire Bus Line
	4700 4200 9600 4200
$EndSCHEMATC
