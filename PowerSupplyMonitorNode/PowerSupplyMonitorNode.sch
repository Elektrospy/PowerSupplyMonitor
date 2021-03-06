EESchema Schematic File Version 4
LIBS:PowerSupplyMonitorNode-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:8P8C_LED_Shielded J1
U 1 1 5B5D9470
P 5050 2200
F 0 "J1" V 5004 2729 50  0000 L CNN
F 1 "RJ45 PWR" V 5050 2050 50  0000 L CNN
F 2 "Connector_RJ:RJ45_Amphenol_RJHSE538X" V 5050 2225 50  0001 C CNN
F 3 "~" V 5050 2225 50  0001 C CNN
	1    5050 2200
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5B5F8520
P 4750 1650
F 0 "R1" H 4820 1696 50  0000 L CNN
F 1 "220" H 4820 1605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4680 1650 50  0001 C CNN
F 3 "~" H 4750 1650 50  0001 C CNN
	1    4750 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5B5F867C
P 5350 1650
F 0 "R2" H 5420 1696 50  0000 L CNN
F 1 "220" H 5420 1605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5280 1650 50  0001 C CNN
F 3 "~" H 5350 1650 50  0001 C CNN
	1    5350 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5B5F8852
P 5450 1800
F 0 "#PWR03" H 5450 1550 50  0001 C CNN
F 1 "GND" V 5455 1672 50  0000 R CNN
F 2 "" H 5450 1800 50  0001 C CNN
F 3 "" H 5450 1800 50  0001 C CNN
	1    5450 1800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5B5F8873
P 4850 1800
F 0 "#PWR02" H 4850 1550 50  0001 C CNN
F 1 "GND" V 4855 1672 50  0000 R CNN
F 2 "" H 4850 1800 50  0001 C CNN
F 3 "" H 4850 1800 50  0001 C CNN
	1    4850 1800
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR06
U 1 1 5B5F890E
P 5450 2600
F 0 "#PWR06" H 5450 2450 50  0001 C CNN
F 1 "+5V" H 5465 2773 50  0000 C CNN
F 2 "" H 5450 2600 50  0001 C CNN
F 3 "" H 5450 2600 50  0001 C CNN
	1    5450 2600
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5B5F8932
P 5150 2600
F 0 "#PWR05" H 5150 2350 50  0001 C CNN
F 1 "GND" V 5150 2400 50  0000 C CNN
F 2 "" H 5150 2600 50  0001 C CNN
F 3 "" H 5150 2600 50  0001 C CNN
	1    5150 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5B5F8952
P 4550 2200
F 0 "#PWR04" H 4550 1950 50  0001 C CNN
F 1 "GND" H 4555 2027 50  0000 C CNN
F 2 "" H 4550 2200 50  0001 C CNN
F 3 "" H 4550 2200 50  0001 C CNN
	1    4550 2200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 5B5F8AD1
P 5350 1500
F 0 "#PWR01" H 5350 1350 50  0001 C CNN
F 1 "+5V" H 5365 1673 50  0000 C CNN
F 2 "" H 5350 1500 50  0001 C CNN
F 3 "" H 5350 1500 50  0001 C CNN
	1    5350 1500
	1    0    0    -1  
$EndComp
Text Label 4750 2800 1    50   ~ 0
RC+
Text Label 4850 2800 1    50   ~ 0
RC-
Text Label 4950 2900 1    50   ~ 0
DC_OK
Text Label 5250 2900 1    50   ~ 0
DC_GND
Text Label 5050 2800 1    50   ~ 0
SCL
Text Label 5350 2800 1    50   ~ 0
SDA
Wire Wire Line
	4750 1500 4400 1500
Wire Wire Line
	4400 1500 4400 2600
Wire Wire Line
	4400 2600 4750 2600
Connection ~ 4750 2600
Wire Wire Line
	5350 2600 5350 2900
$Comp
L Connector:Conn_01x10_Male J2
U 1 1 5B5F9109
P 6450 2350
F 0 "J2" V 6285 2276 50  0000 C CNN
F 1 "ADS1015" V 6376 2276 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 6450 2350 50  0001 C CNN
F 3 "~" H 6450 2350 50  0001 C CNN
	1    6450 2350
	0    1    1    0   
$EndComp
Text Label 6850 2600 3    50   ~ 0
VCC
Text Label 6750 2600 3    50   ~ 0
GND
Text Label 6650 2600 3    50   ~ 0
SCL
Text Label 6550 2600 3    50   ~ 0
SDA
Text Label 6450 2600 3    50   ~ 0
ADDR
Text Label 6350 2600 3    50   ~ 0
ALERT
Text Label 6250 2600 3    50   ~ 0
A0
Text Label 6150 2600 3    50   ~ 0
A1
Text Label 6050 2600 3    50   ~ 0
A2
Text Label 5950 2600 3    50   ~ 0
A3
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J4
U 1 1 5B5F9683
P 4150 3650
F 0 "J4" V 4250 3250 50  0000 C CNN
F 1 "HRPG" V 4150 3250 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 4150 3650 50  0001 C CNN
F 3 "~" H 4150 3650 50  0001 C CNN
	1    4150 3650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6750 2550 6750 2850
Wire Wire Line
	6850 2550 6850 2850
$Comp
L power:GND #PWR07
U 1 1 5B5FA3BA
P 6750 2850
F 0 "#PWR07" H 6750 2600 50  0001 C CNN
F 1 "GND" V 6750 2650 50  0000 C CNN
F 2 "" H 6750 2850 50  0001 C CNN
F 3 "" H 6750 2850 50  0001 C CNN
	1    6750 2850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR08
U 1 1 5B5FA3CF
P 6850 2850
F 0 "#PWR08" H 6850 2700 50  0001 C CNN
F 1 "+5V" V 6850 3050 50  0000 C CNN
F 2 "" H 6850 2850 50  0001 C CNN
F 3 "" H 6850 2850 50  0001 C CNN
	1    6850 2850
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_Coded SW1
U 1 1 5B5FAE90
P 7350 3500
F 0 "SW1" H 7550 3100 50  0000 R CNN
F 1 "ADS_ADDR" H 7550 3200 50  0000 R CNN
F 2 "Button_Switch_THT:Nidec_Copal_SH-7010C" H 7325 3525 50  0001 C CNN
F 3 "" H 7325 3525 50  0001 C CNN
	1    7350 3500
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5B5FB810
P 6850 3600
F 0 "#PWR010" H 6850 3350 50  0001 C CNN
F 1 "GND" V 6850 3400 50  0000 C CNN
F 2 "" H 6850 3600 50  0001 C CNN
F 3 "" H 6850 3600 50  0001 C CNN
	1    6850 3600
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR09
U 1 1 5B5FBA0C
P 6850 3500
F 0 "#PWR09" H 6850 3350 50  0001 C CNN
F 1 "+5V" V 6850 3700 50  0000 C CNN
F 2 "" H 6850 3500 50  0001 C CNN
F 3 "" H 6850 3500 50  0001 C CNN
	1    6850 3500
	0    -1   -1   0   
$EndComp
Text Label 4050 3300 1    50   ~ 0
AUXG
Text Label 4050 3900 3    50   ~ 0
AUX
Text Label 4350 4050 0    50   ~ 0
DC_OK
Text Label 4150 3300 1    50   ~ 0
RC-
Text Label 4350 3950 0    50   ~ 0
DC_GND
Text Label 4250 3300 1    50   ~ 0
RC+
Text Label 4400 3850 0    50   ~ 0
+S
Text Label 4400 3350 0    50   ~ 0
-S
Wire Wire Line
	6450 3750 6450 2550
Wire Wire Line
	6450 3750 6850 3750
$Comp
L Device:R R4
U 1 1 5B5FE6BB
P 3900 3700
F 0 "R4" H 4050 3650 50  0000 C CNN
F 1 "220" H 4050 3750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3830 3700 50  0001 C CNN
F 3 "~" H 3900 3700 50  0001 C CNN
	1    3900 3700
	-1   0    0    1   
$EndComp
$Comp
L _semi:LED DS2
U 1 1 5B5FE7DE
P 3900 3450
F 0 "DS2" H 4100 3400 50  0000 C CNN
F 1 "AUX" H 4100 3500 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3900 3450 60  0001 C CNN
F 3 "" H 3900 3450 60  0000 C CNN
	1    3900 3450
	-1   0    0    1   
$EndComp
Wire Wire Line
	4050 3850 4050 3900
Wire Wire Line
	4050 3900 3900 3900
Wire Wire Line
	3900 3900 3900 3850
Wire Wire Line
	4050 3350 4050 3300
Wire Wire Line
	4050 3300 3900 3300
Wire Wire Line
	3900 3300 3900 3350
Wire Wire Line
	4150 3350 4150 3050
Wire Wire Line
	4150 3050 4850 3050
Wire Wire Line
	4850 2600 4850 3050
Wire Wire Line
	4250 3350 4250 2950
Wire Wire Line
	4250 2950 4750 2950
Wire Wire Line
	4750 2600 4750 2950
$Comp
L Connector:Screw_Terminal_01x02 J3
U 1 1 5B602030
P 4950 3550
F 0 "J3" H 4900 3650 50  0000 L CNN
F 1 "VCC Sense" H 4800 3350 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-3-2-5.08_1x02_P5.08mm_Horizontal" H 4950 3550 50  0001 C CNN
F 3 "~" H 4950 3550 50  0001 C CNN
	1    4950 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 3350 4750 3350
Wire Wire Line
	4750 3350 4750 3550
Wire Wire Line
	4750 3650 4750 3850
Wire Wire Line
	4750 3850 4350 3850
Wire Wire Line
	4250 3850 4250 3950
Wire Wire Line
	4250 3950 5250 3950
Wire Wire Line
	4150 3850 4150 4050
Wire Wire Line
	4150 4050 5350 4050
Wire Wire Line
	5350 4050 5350 3700
Wire Wire Line
	5350 3300 4950 3300
Wire Wire Line
	5350 2900 6550 2900
Wire Wire Line
	6550 2900 6550 2550
Wire Wire Line
	5050 3000 6650 3000
Wire Wire Line
	5050 2600 5050 3000
Wire Wire Line
	6650 3000 6650 2550
$Comp
L Connector:Conn_01x03_Male J7
U 1 1 5B607B27
P 6000 4850
F 0 "J7" V 6150 4700 50  0000 R CNN
F 1 "A1" V 5950 4900 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6000 4850 50  0001 C CNN
F 3 "~" H 6000 4850 50  0001 C CNN
	1    6000 4850
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x03_Male J8
U 1 1 5B607C0C
P 6400 4850
F 0 "J8" V 6550 4700 50  0000 R CNN
F 1 "A0" V 6350 4900 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6400 4850 50  0001 C CNN
F 3 "~" H 6400 4850 50  0001 C CNN
	1    6400 4850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5B608992
P 6300 4650
F 0 "#PWR017" H 6300 4400 50  0001 C CNN
F 1 "GND" V 6300 4450 50  0000 C CNN
F 2 "" H 6300 4650 50  0001 C CNN
F 3 "" H 6300 4650 50  0001 C CNN
	1    6300 4650
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5B6089C9
P 5900 4650
F 0 "#PWR015" H 5900 4400 50  0001 C CNN
F 1 "GND" V 5900 4450 50  0000 C CNN
F 2 "" H 5900 4650 50  0001 C CNN
F 3 "" H 5900 4650 50  0001 C CNN
	1    5900 4650
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR018
U 1 1 5B6089EA
P 6500 4650
F 0 "#PWR018" H 6500 4500 50  0001 C CNN
F 1 "+5V" V 6500 4850 50  0000 C CNN
F 2 "" H 6500 4650 50  0001 C CNN
F 3 "" H 6500 4650 50  0001 C CNN
	1    6500 4650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR016
U 1 1 5B608A21
P 6100 4650
F 0 "#PWR016" H 6100 4500 50  0001 C CNN
F 1 "+5V" V 6100 4850 50  0000 C CNN
F 2 "" H 6100 4650 50  0001 C CNN
F 3 "" H 6100 4650 50  0001 C CNN
	1    6100 4650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J5
U 1 1 5B60B88E
P 5200 4850
F 0 "J5" V 5350 4700 50  0000 R CNN
F 1 "A3" V 5150 4900 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5200 4850 50  0001 C CNN
F 3 "~" H 5200 4850 50  0001 C CNN
	1    5200 4850
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x03_Male J6
U 1 1 5B60B895
P 5600 4850
F 0 "J6" V 5750 4700 50  0000 R CNN
F 1 "A2" V 5550 4900 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5600 4850 50  0001 C CNN
F 3 "~" H 5600 4850 50  0001 C CNN
	1    5600 4850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5B60B89C
P 5500 4650
F 0 "#PWR013" H 5500 4400 50  0001 C CNN
F 1 "GND" V 5500 4450 50  0000 C CNN
F 2 "" H 5500 4650 50  0001 C CNN
F 3 "" H 5500 4650 50  0001 C CNN
	1    5500 4650
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5B60B8A2
P 5100 4650
F 0 "#PWR011" H 5100 4400 50  0001 C CNN
F 1 "GND" V 5100 4450 50  0000 C CNN
F 2 "" H 5100 4650 50  0001 C CNN
F 3 "" H 5100 4650 50  0001 C CNN
	1    5100 4650
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR014
U 1 1 5B60B8A8
P 5700 4650
F 0 "#PWR014" H 5700 4500 50  0001 C CNN
F 1 "+5V" V 5700 4850 50  0000 C CNN
F 2 "" H 5700 4650 50  0001 C CNN
F 3 "" H 5700 4650 50  0001 C CNN
	1    5700 4650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR012
U 1 1 5B60B8AE
P 5300 4650
F 0 "#PWR012" H 5300 4500 50  0001 C CNN
F 1 "+5V" V 5300 4850 50  0000 C CNN
F 2 "" H 5300 4650 50  0001 C CNN
F 3 "" H 5300 4650 50  0001 C CNN
	1    5300 4650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J9
U 1 1 5B60C7FF
P 6750 4850
F 0 "J9" V 6900 4800 50  0000 R CNN
F 1 "ALERT" V 6700 4950 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 6750 4850 50  0001 C CNN
F 3 "~" H 6750 4850 50  0001 C CNN
	1    6750 4850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6750 3850 6350 3850
Wire Wire Line
	6350 2550 6350 3850
Wire Wire Line
	6400 3950 6250 3950
Wire Wire Line
	6250 2550 6250 3950
Wire Wire Line
	5200 4150 5950 4150
Wire Wire Line
	5950 2550 5950 4150
Wire Wire Line
	5200 4150 5200 4650
Wire Wire Line
	5600 4250 6050 4250
Wire Wire Line
	6050 4250 6050 2550
Wire Wire Line
	5600 4250 5600 4650
Wire Wire Line
	6000 4650 6000 4350
Wire Wire Line
	6000 4350 6150 4350
Wire Wire Line
	6150 2550 6150 4350
Wire Wire Line
	6400 3950 6400 4650
Wire Wire Line
	6750 3850 6750 4650
$Comp
L Device:R R3
U 1 1 5B618464
P 5650 3550
F 0 "R3" H 5800 3500 50  0000 C CNN
F 1 "220" H 5800 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5580 3550 50  0001 C CNN
F 3 "~" H 5650 3550 50  0001 C CNN
	1    5650 3550
	1    0    0    -1  
$EndComp
$Comp
L _semi:LED DS1
U 1 1 5B6184F5
P 5650 3300
F 0 "DS1" H 5850 3250 50  0000 C CNN
F 1 "DC" H 5850 3350 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5650 3300 60  0001 C CNN
F 3 "" H 5650 3300 60  0000 C CNN
	1    5650 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	5250 2600 5250 3100
Wire Wire Line
	4950 2600 4950 3300
Wire Wire Line
	5650 3200 5650 3100
Wire Wire Line
	5650 3100 5250 3100
Connection ~ 5250 3100
Wire Wire Line
	5250 3100 5250 3950
Wire Wire Line
	5650 3700 5350 3700
Connection ~ 5350 3700
Wire Wire Line
	5350 3700 5350 3300
$Comp
L Mechanical:MountingHole MH1
U 1 1 5B6225B8
P 8000 1600
F 0 "MH1" H 8100 1646 50  0000 L CNN
F 1 "MountingHole" H 8100 1555 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mm" H 8000 1600 50  0001 C CNN
F 3 "~" H 8000 1600 50  0001 C CNN
	1    8000 1600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH2
U 1 1 5B6227C4
P 8000 1800
F 0 "MH2" H 8100 1846 50  0000 L CNN
F 1 "MountingHole" H 8100 1755 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mm" H 8000 1800 50  0001 C CNN
F 3 "~" H 8000 1800 50  0001 C CNN
	1    8000 1800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH3
U 1 1 5B622800
P 8000 2000
F 0 "MH3" H 8100 2046 50  0000 L CNN
F 1 "MountingHole" H 8100 1955 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mm" H 8000 2000 50  0001 C CNN
F 3 "~" H 8000 2000 50  0001 C CNN
	1    8000 2000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH4
U 1 1 5B622842
P 8000 2200
F 0 "MH4" H 8100 2246 50  0000 L CNN
F 1 "MountingHole" H 8100 2155 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mm" H 8000 2200 50  0001 C CNN
F 3 "~" H 8000 2200 50  0001 C CNN
	1    8000 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 3000 6650 3300
Wire Wire Line
	6650 3300 6850 3300
Connection ~ 6650 3000
Wire Wire Line
	6850 3400 6550 3400
Wire Wire Line
	6550 3400 6550 2900
Connection ~ 6550 2900
$EndSCHEMATC
