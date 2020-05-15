EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 4400 4200 0    50   Input ~ 0
LO_EN
Text HLabel 4400 2900 0    50   Input ~ 0
HI_EN
Text HLabel 4400 5200 0    50   Output ~ 0
OUT_STATE
Text HLabel 6400 1850 1    50   UnSpc ~ 0
+HV
Text HLabel 7400 3750 0    50   UnSpc ~ 0
GND
Text HLabel 5450 4750 1    50   UnSpc ~ 0
+5V
$Comp
L Transistor_BJT:MMBT5551L Q5
U 1 1 5ECABDC0
P 6300 4200
F 0 "Q5" H 6100 4450 50  0000 L CNN
F 1 "MMBT5551L" H 5950 4350 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6500 4125 50  0001 L CIN
F 3 "www.onsemi.com/pub/Collateral/MMBT5550LT1-D.PDF" H 6300 4200 50  0001 L CNN
	1    6300 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_PNP_BEC Q4
U 1 1 5ECAE8E7
P 6300 2600
F 0 "Q4" H 6150 2850 50  0000 L CNN
F 1 "MMBT5401" H 5900 2750 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6500 2700 50  0001 C CNN
F 3 "~" H 6300 2600 50  0001 C CNN
	1    6300 2600
	1    0    0    1   
$EndComp
$Comp
L Device:R_US R14
U 1 1 5ECB00F6
P 6000 2350
F 0 "R14" H 6068 2396 50  0000 L CNN
F 1 "10k" H 6068 2305 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6040 2340 50  0001 C CNN
F 3 "~" H 6000 2350 50  0001 C CNN
	1    6000 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R15
U 1 1 5ECB05DC
P 6000 4450
F 0 "R15" H 6068 4496 50  0000 L CNN
F 1 "10k" H 6068 4405 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6040 4440 50  0001 C CNN
F 3 "~" H 6000 4450 50  0001 C CNN
	1    6000 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 2500 6000 2600
Wire Wire Line
	6000 2600 6100 2600
Wire Wire Line
	6000 2200 6000 2100
Wire Wire Line
	6000 2100 6400 2100
Wire Wire Line
	6400 2100 6400 2300
Wire Wire Line
	6400 1850 6400 2100
Connection ~ 6400 2100
Wire Wire Line
	6000 4300 6000 4200
Wire Wire Line
	6000 4200 6100 4200
$Comp
L power:GND #PWR0121
U 1 1 5ECB4511
P 6400 4650
F 0 "#PWR0121" H 6400 4400 50  0001 C CNN
F 1 "GND" H 6405 4477 50  0000 C CNN
F 2 "" H 6400 4650 50  0001 C CNN
F 3 "" H 6400 4650 50  0001 C CNN
	1    6400 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 5ECB4C96
P 7450 3800
F 0 "#PWR0122" H 7450 3550 50  0001 C CNN
F 1 "GND" H 7455 3627 50  0000 C CNN
F 2 "" H 7450 3800 50  0001 C CNN
F 3 "" H 7450 3800 50  0001 C CNN
	1    7450 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 3750 7450 3750
Wire Wire Line
	7450 3750 7450 3800
$Comp
L Transistor_BJT:2N3904 Q?
U 1 1 5ECB8D69
P 5400 2900
AR Path="/5EBD7EE9/5ECB8D69" Ref="Q?"  Part="1" 
AR Path="/5EBD7EE9/5EC7FF1D/5ECB8D69" Ref="Q3"  Part="1" 
F 0 "Q3" H 5590 2946 50  0000 L CNN
F 1 "2N3904" H 5590 2855 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5600 2825 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 5400 2900 50  0001 L CNN
	1    5400 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R11
U 1 1 5ECBD7F2
P 5750 2600
F 0 "R11" V 5545 2600 50  0000 C CNN
F 1 "500" V 5636 2600 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5790 2590 50  0001 C CNN
F 3 "~" H 5750 2600 50  0001 C CNN
	1    5750 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	5900 2600 6000 2600
Connection ~ 6000 2600
Wire Wire Line
	5600 2600 5500 2600
Wire Wire Line
	5500 2600 5500 2700
$Comp
L power:GND #PWR0123
U 1 1 5ECBE5AD
P 5500 3150
F 0 "#PWR0123" H 5500 2900 50  0001 C CNN
F 1 "GND" H 5505 2977 50  0000 C CNN
F 2 "" H 5500 3150 50  0001 C CNN
F 3 "" H 5500 3150 50  0001 C CNN
	1    5500 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R8
U 1 1 5ECBF06E
P 5100 3150
F 0 "R8" H 5168 3196 50  0000 L CNN
F 1 "10k" H 5168 3105 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5140 3140 50  0001 C CNN
F 3 "~" H 5100 3150 50  0001 C CNN
	1    5100 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 5ECBFA3C
P 5100 3350
F 0 "#PWR0124" H 5100 3100 50  0001 C CNN
F 1 "GND" H 5105 3177 50  0000 C CNN
F 2 "" H 5100 3350 50  0001 C CNN
F 3 "" H 5100 3350 50  0001 C CNN
	1    5100 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 5ECC04DF
P 6000 4650
F 0 "#PWR0125" H 6000 4400 50  0001 C CNN
F 1 "GND" H 6005 4477 50  0000 C CNN
F 2 "" H 6000 4650 50  0001 C CNN
F 3 "" H 6000 4650 50  0001 C CNN
	1    6000 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 4600 6000 4650
Wire Wire Line
	5500 3100 5500 3150
Wire Wire Line
	5100 3000 5100 2900
Wire Wire Line
	5100 2900 5200 2900
Wire Wire Line
	5100 3300 5100 3350
$Comp
L Device:R_US R13
U 1 1 5ECC3A06
P 5750 4200
F 0 "R13" V 5545 4200 50  0000 C CNN
F 1 "100" V 5636 4200 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5790 4190 50  0001 C CNN
F 3 "~" H 5750 4200 50  0001 C CNN
	1    5750 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	5900 4200 6000 4200
Connection ~ 6000 4200
$Comp
L Device:R_US R7
U 1 1 5ECC44D7
P 4850 2900
F 0 "R7" V 4645 2900 50  0000 C CNN
F 1 "100" V 4736 2900 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4890 2890 50  0001 C CNN
F 3 "~" H 4850 2900 50  0001 C CNN
	1    4850 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	5000 2900 5100 2900
Connection ~ 5100 2900
Wire Wire Line
	6400 2800 6400 2900
Wire Wire Line
	4400 4200 5600 4200
Wire Wire Line
	4400 2900 4700 2900
$Comp
L Device:LED D2
U 1 1 5ECC6580
P 6100 3850
F 0 "D2" H 6093 3595 50  0000 C CNN
F 1 "LED_LO_DRIVE_EN" H 6000 3700 50  0000 C CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 6100 3850 50  0001 C CNN
F 3 "~" H 6100 3850 50  0001 C CNN
	1    6100 3850
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R12
U 1 1 5ECC731D
P 5750 3850
F 0 "R12" V 5955 3850 50  0000 C CNN
F 1 "1.8k" V 5864 3850 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5790 3840 50  0001 C CNN
F 3 "~" H 5750 3850 50  0001 C CNN
	1    5750 3850
	0    -1   -1   0   
$EndComp
$Comp
L Isolator:LTV-357T U5
U 1 1 5ECCB261
P 6150 5300
F 0 "U5" H 6150 5625 50  0000 C CNN
F 1 "LTV-357T" H 6150 5534 50  0000 C CNN
F 2 "Package_SO:SO-4_4.4x3.6mm_P2.54mm" H 5950 5100 50  0001 L CIN
F 3 "https://www.buerklin.com/medias/sys_master/download/download/h91/ha0/8892020588574.pdf" H 6150 5300 50  0001 L CNN
	1    6150 5300
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 5ECCC6B2
P 5800 5450
F 0 "#PWR0126" H 5800 5200 50  0001 C CNN
F 1 "GND" H 5805 5277 50  0000 C CNN
F 2 "" H 5800 5450 50  0001 C CNN
F 3 "" H 5800 5450 50  0001 C CNN
	1    5800 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0127
U 1 1 5ECCCAD9
P 6500 5450
F 0 "#PWR0127" H 6500 5200 50  0001 C CNN
F 1 "GND" H 6505 5277 50  0000 C CNN
F 2 "" H 6500 5450 50  0001 C CNN
F 3 "" H 6500 5450 50  0001 C CNN
	1    6500 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 5450 5800 5400
Wire Wire Line
	5800 5400 5850 5400
Wire Wire Line
	6500 5450 6500 5400
Wire Wire Line
	6500 5400 6450 5400
$Comp
L Device:R_US R9
U 1 1 5ECCD85A
P 5200 5200
F 0 "R9" V 4995 5200 50  0000 C CNN
F 1 "100" V 5086 5200 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5240 5190 50  0001 C CNN
F 3 "~" H 5200 5200 50  0001 C CNN
	1    5200 5200
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R10
U 1 1 5ECCE67D
P 5450 5000
F 0 "R10" H 5518 5046 50  0000 L CNN
F 1 "10k" H 5518 4955 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5490 4990 50  0001 C CNN
F 3 "~" H 5450 5000 50  0001 C CNN
	1    5450 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 4750 5450 4850
Wire Wire Line
	5350 5200 5450 5200
Wire Wire Line
	5450 5150 5450 5200
Connection ~ 5450 5200
Wire Wire Line
	5450 5200 5850 5200
Wire Wire Line
	4400 5200 5050 5200
$Comp
L Diode:1N4007 D3
U 1 1 5ECD3F45
P 6600 2600
F 0 "D3" V 6554 2679 50  0000 L CNN
F 1 "1N4007" V 6645 2679 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123F" H 6600 2425 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 6600 2600 50  0001 C CNN
	1    6600 2600
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4007 D4
U 1 1 5ECD4EBA
P 6600 4200
F 0 "D4" V 6554 4279 50  0000 L CNN
F 1 "1N4007" V 6645 4279 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123F" H 6600 4025 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 6600 4200 50  0001 C CNN
	1    6600 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	6400 4400 6400 4500
Wire Wire Line
	6600 4500 6400 4500
Connection ~ 6400 4500
Wire Wire Line
	6400 4500 6400 4650
Wire Wire Line
	6600 4350 6600 4500
Wire Wire Line
	6600 2450 6600 2300
Wire Wire Line
	6600 2300 6400 2300
Connection ~ 6400 2300
Wire Wire Line
	6400 2300 6400 2400
Wire Wire Line
	6600 2750 6600 2900
Wire Wire Line
	6600 2900 6400 2900
Connection ~ 6400 2900
Wire Wire Line
	6400 2900 6400 3150
Connection ~ 6400 3150
Text HLabel 7400 3150 2    50   Output ~ 0
DriveOutput
$Comp
L Device:R_US R6
U 1 1 5ECE463A
P 4850 2600
F 0 "R6" V 4645 2600 50  0000 C CNN
F 1 "1.8k" V 4736 2600 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4890 2590 50  0001 C CNN
F 3 "~" H 4850 2600 50  0001 C CNN
	1    4850 2600
	0    1    1    0   
$EndComp
$Comp
L Device:LED D1
U 1 1 5ECE5223
P 5250 2600
F 0 "D1" H 5243 2345 50  0000 C CNN
F 1 "LED_HI_DRIVE_EN" H 5243 2436 50  0000 C CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 5250 2600 50  0001 C CNN
F 3 "~" H 5250 2600 50  0001 C CNN
	1    5250 2600
	-1   0    0    1   
$EndComp
Wire Wire Line
	5400 2600 5500 2600
Connection ~ 5500 2600
$Comp
L Device:R_US R16
U 1 1 5ECEB351
P 6700 5200
F 0 "R16" V 6905 5200 50  0000 C CNN
F 1 "5.6k" V 6814 5200 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6740 5190 50  0001 C CNN
F 3 "~" H 6700 5200 50  0001 C CNN
	1    6700 5200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6250 3850 6400 3850
Wire Wire Line
	6400 3850 6400 4000
Connection ~ 6400 3850
Wire Wire Line
	6600 4050 6600 3850
Wire Wire Line
	6600 3850 6400 3850
Wire Wire Line
	6400 3150 6400 3850
Wire Wire Line
	5900 3850 5950 3850
Wire Wire Line
	5000 2600 5100 2600
Text HLabel 5500 3850 0    50   UnSpc ~ 0
+5V
Text HLabel 4600 2600 0    50   UnSpc ~ 0
+5V
Wire Wire Line
	4600 2600 4700 2600
Wire Wire Line
	5500 3850 5600 3850
Wire Wire Line
	6400 3150 7000 3150
Wire Wire Line
	6550 5200 6450 5200
Wire Wire Line
	7000 5200 7000 3150
Wire Wire Line
	6850 5200 7000 5200
Connection ~ 7000 3150
Wire Wire Line
	7000 3150 7400 3150
$EndSCHEMATC
