EESchema Schematic File Version 4
LIBS:GPIODriverVer1-cache
EELAYER 29 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 3
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
L GPIODriverVer1-rescue:74HC165-74HC165 U6
U 1 1 5CBA67BA
P 11250 7750
F 0 "U6" H 11000 8500 50  0000 C CNN
F 1 "74HC165" H 11000 8400 50  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 11250 7750 50  0001 C CNN
F 3 "" H 10950 7350 50  0000 L BNN
	1    11250 7750
	1    0    0    -1  
$EndComp
$Sheet
S 12450 2800 900  3600
U 5CBF3A4E
F0 "OutputDrive" 50
F1 "OutputDrive.sch" 50
F2 "VSrc" U L 12450 3000 50 
F3 "D0_Source" I L 12450 3250 50 
F4 "D0_Sink" I L 12450 6000 50 
F5 "D0_Out" O R 13350 3350 50 
F6 "D1_Source" I L 12450 3350 50 
F7 "D1_Sink" I L 12450 5500 50 
F8 "D1_Out" O R 13350 3750 50 
F9 "D2_Source" I L 12450 3450 50 
F10 "D2_Sink" I L 12450 5600 50 
F11 "D2_Out" O R 13350 4150 50 
F12 "D3_Source" I L 12450 3550 50 
F13 "D3_Sink" I L 12450 5700 50 
F14 "D3_Out" O R 13350 4550 50 
F15 "D4_Source" I L 12450 3650 50 
F16 "D4_Sink" I L 12450 5800 50 
F17 "D4_Out" O R 13350 4950 50 
F18 "D5_Source" I L 12450 3750 50 
F19 "D5_Sink" I L 12450 5900 50 
F20 "D5_Out" O R 13350 5350 50 
F21 "D6_Source" I L 12450 3850 50 
F22 "D6_Sink" I L 12450 6100 50 
F23 "D6_Out" O R 13350 5750 50 
F24 "D7_Source" I L 12450 3950 50 
F25 "D7_Sink" I L 12450 6200 50 
F26 "D7_Out" O R 13350 6150 50 
$EndSheet
$Sheet
S 12450 7000 900  1500
U 5CD1E7F0
F0 "DriveSense" 50
F1 "DriveSense.sch" 50
F2 "D0_In" I R 13350 7300 50 
F3 "D1_In" I R 13350 7450 50 
F4 "D2_In" I R 13350 7600 50 
F5 "D3_In" I R 13350 7750 50 
F6 "D4_In" I R 13350 7900 50 
F7 "D5_In" I R 13350 8050 50 
F8 "D6_In" I R 13350 8200 50 
F9 "D7_In" I R 13350 8350 50 
F10 "D0_Out" O L 12450 7300 50 
F11 "D1_Out" O L 12450 7450 50 
F12 "D2_Out" O L 12450 7600 50 
F13 "D3_Out" O L 12450 7750 50 
F14 "D4_Out" O L 12450 7900 50 
F15 "D5_Out" O L 12450 8050 50 
F16 "D6_Out" O L 12450 8200 50 
F17 "D7_Out" O L 12450 8350 50 
F18 "VLogic" U L 12450 7100 50 
$EndSheet
Wire Wire Line
	13350 7300 13600 7300
Wire Wire Line
	13600 7300 13600 4250
Wire Wire Line
	13600 3350 13350 3350
Wire Wire Line
	13350 3750 13650 3750
Wire Wire Line
	13650 7450 13350 7450
Wire Wire Line
	13350 7600 13700 7600
Wire Wire Line
	13700 7600 13700 4450
Wire Wire Line
	13700 4150 13350 4150
Wire Wire Line
	13350 4550 13750 4550
Wire Wire Line
	13750 4550 13750 7750
Wire Wire Line
	13750 7750 13350 7750
Wire Wire Line
	13350 7900 13800 7900
Wire Wire Line
	13800 7900 13800 4950
Wire Wire Line
	13800 4950 13350 4950
Wire Wire Line
	13350 5350 13850 5350
Wire Wire Line
	13850 5350 13850 8050
Wire Wire Line
	13850 8050 13350 8050
Wire Wire Line
	13350 8200 13900 8200
Wire Wire Line
	13900 8200 13900 5750
Wire Wire Line
	13900 5750 13350 5750
Wire Wire Line
	13350 6150 13950 6150
Wire Wire Line
	13950 6150 13950 8350
Wire Wire Line
	13950 8350 13350 8350
$Comp
L Connector:Conn_01x08_Female J2
U 1 1 5CD2D020
P 14700 4550
F 0 "J2" H 14728 4526 50  0000 L CNN
F 1 "GPIODriveOutputs" H 14728 4435 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Horizontal" H 14700 4550 50  0001 C CNN
F 3 "~" H 14700 4550 50  0001 C CNN
	1    14700 4550
	1    0    0    -1  
$EndComp
Connection ~ 13850 5350
Connection ~ 13900 5750
Wire Wire Line
	14500 4550 13750 4550
Connection ~ 13750 4550
Wire Wire Line
	14500 4650 13800 4650
Wire Wire Line
	13800 4650 13800 4950
Connection ~ 13800 4950
Wire Wire Line
	14500 4750 13850 4750
Wire Wire Line
	13850 4750 13850 5350
Wire Wire Line
	14500 4850 13900 4850
Wire Wire Line
	13900 4850 13900 5750
Wire Wire Line
	14500 4950 13950 4950
Wire Wire Line
	13950 4950 13950 6150
Connection ~ 13950 6150
Wire Wire Line
	13650 3750 13650 4350
Wire Wire Line
	14500 4450 13700 4450
Connection ~ 13700 4450
Wire Wire Line
	13700 4450 13700 4150
Wire Wire Line
	14500 4350 13650 4350
Connection ~ 13650 4350
Wire Wire Line
	13650 4350 13650 7450
Wire Wire Line
	14500 4250 13600 4250
Connection ~ 13600 4250
Wire Wire Line
	13600 4250 13600 3350
Text GLabel 12300 3000 0    50   Input ~ 0
VDrive
Text GLabel 12250 7100 0    50   Input ~ 0
VCC
Wire Wire Line
	12300 3000 12450 3000
Wire Wire Line
	12250 7100 12450 7100
Wire Wire Line
	11650 7300 12450 7300
Wire Wire Line
	11650 7400 12300 7400
Wire Wire Line
	12300 7400 12300 7450
Wire Wire Line
	12300 7450 12450 7450
Wire Wire Line
	11650 7500 12250 7500
Wire Wire Line
	12250 7500 12250 7600
Wire Wire Line
	12250 7600 12450 7600
Wire Wire Line
	11650 7600 12200 7600
Wire Wire Line
	12200 7600 12200 7750
Wire Wire Line
	12200 7750 12450 7750
Wire Wire Line
	11650 7700 12150 7700
Wire Wire Line
	12150 7700 12150 7900
Wire Wire Line
	12150 7900 12450 7900
Wire Wire Line
	11650 7800 12100 7800
Wire Wire Line
	12100 7800 12100 8050
Wire Wire Line
	12100 8050 12450 8050
Wire Wire Line
	11650 7900 12050 7900
Wire Wire Line
	12050 7900 12050 8200
Wire Wire Line
	12050 8200 12450 8200
Wire Wire Line
	11650 8000 12000 8000
Wire Wire Line
	12000 8000 12000 8350
Wire Wire Line
	12000 8350 12450 8350
$Comp
L power:GND #PWR0101
U 1 1 5CC648E4
P 11250 8600
F 0 "#PWR0101" H 11250 8350 50  0001 C CNN
F 1 "GND" H 11255 8427 50  0000 C CNN
F 2 "" H 11250 8600 50  0001 C CNN
F 3 "" H 11250 8600 50  0001 C CNN
	1    11250 8600
	1    0    0    -1  
$EndComp
Text GLabel 11250 6950 1    50   Input ~ 0
VCC
Wire Wire Line
	11250 6950 11250 7100
Wire Wire Line
	11250 8500 11250 8600
Text GLabel 11850 8750 2    50   Input ~ 0
SenseDriver_DataOut
Wire Wire Line
	11650 8200 11750 8200
Wire Wire Line
	11750 8200 11750 8750
Wire Wire Line
	11750 8750 11850 8750
Text GLabel 10700 7400 0    50   Input ~ 0
SenseDriver_DataIn
Wire Wire Line
	10700 7400 10850 7400
Text GLabel 10700 7900 0    50   Input ~ 0
SenseDriver_Load
Wire Wire Line
	10700 7900 10850 7900
Text GLabel 10700 7700 0    50   Input ~ 0
SenseDriver_CS
Text GLabel 10700 7600 0    50   Input ~ 0
SR_CLK
Wire Wire Line
	10700 7600 10850 7600
Wire Wire Line
	10700 7700 10850 7700
Text GLabel 10300 4950 1    50   Input ~ 0
VCC
Text GLabel 10300 2750 1    50   Input ~ 0
VCC
$Comp
L power:GND #PWR0102
U 1 1 5CC77CCD
P 10300 6700
F 0 "#PWR0102" H 10300 6450 50  0001 C CNN
F 1 "GND" H 10305 6527 50  0000 C CNN
F 2 "" H 10300 6700 50  0001 C CNN
F 3 "" H 10300 6700 50  0001 C CNN
	1    10300 6700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5CC78146
P 10300 4450
F 0 "#PWR0103" H 10300 4200 50  0001 C CNN
F 1 "GND" H 10305 4277 50  0000 C CNN
F 2 "" H 10300 4450 50  0001 C CNN
F 3 "" H 10300 4450 50  0001 C CNN
	1    10300 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 4350 10300 4450
$Comp
L GPIODriverVer1-rescue:74HC595_Nexperia-74xx U4
U 1 1 5CCB77CE
P 10300 3650
F 0 "U4" H 9900 4350 50  0000 C CNN
F 1 "74HC595_Nexperia" H 9850 4250 50  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 10300 3650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 10300 3650 50  0001 C CNN
	1    10300 3650
	1    0    0    -1  
$EndComp
Text GLabel 10850 4150 2    50   Input ~ 0
SrcDriver_DataOut
Wire Wire Line
	10850 4150 10700 4150
Wire Wire Line
	9800 3250 9900 3250
Text GLabel 9800 3450 0    50   Input ~ 0
SR_CLK
Wire Wire Line
	9800 3450 9900 3450
Text GLabel 9800 3850 0    50   Input ~ 0
SrcDriver_OE
Wire Wire Line
	9800 3850 9900 3850
Text GLabel 9800 3750 0    50   Input ~ 0
SrcDriver_LAT
Wire Wire Line
	9800 3750 9900 3750
$Comp
L Device:R_US R15
U 1 1 5CCD0C1A
P 8900 3200
F 0 "R15" H 9100 3150 50  0000 R CNN
F 1 "10k" H 9150 3250 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8940 3190 50  0001 C CNN
F 3 "~" H 8900 3200 50  0001 C CNN
	1    8900 3200
	-1   0    0    1   
$EndComp
Wire Wire Line
	10300 2750 10300 2900
Wire Wire Line
	10300 2900 8900 2900
Connection ~ 10300 2900
Wire Wire Line
	10300 2900 10300 3050
Wire Wire Line
	8900 3550 9900 3550
Wire Wire Line
	8900 3350 8900 3550
Wire Wire Line
	8900 3050 8900 2900
$Comp
L GPIODriverVer1-rescue:74HC595_Nexperia-74xx U5
U 1 1 5CCEB24E
P 10300 5900
F 0 "U5" H 9900 6600 50  0000 C CNN
F 1 "74HC595_Nexperia" H 9850 6500 50  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 10300 5900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 10300 5900 50  0001 C CNN
	1    10300 5900
	1    0    0    -1  
$EndComp
Text GLabel 10850 6400 2    50   Input ~ 0
SinkDriver_DataOut
Wire Wire Line
	10850 6400 10700 6400
Wire Wire Line
	10300 6600 10300 6700
Wire Wire Line
	10300 4950 10300 5050
$Comp
L Device:R_US R16
U 1 1 5CCFEF83
P 8900 5550
F 0 "R16" H 9100 5500 50  0000 R CNN
F 1 "10k" H 9150 5600 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8940 5540 50  0001 C CNN
F 3 "~" H 8900 5550 50  0001 C CNN
	1    8900 5550
	-1   0    0    1   
$EndComp
Wire Wire Line
	8900 5400 8900 5050
Wire Wire Line
	8900 5050 10300 5050
Connection ~ 10300 5050
Wire Wire Line
	10300 5050 10300 5300
Wire Wire Line
	8900 5700 8900 5800
Wire Wire Line
	8900 5800 9900 5800
Wire Wire Line
	10700 5500 12450 5500
Wire Wire Line
	10700 6200 12450 6200
Wire Wire Line
	12450 6100 10700 6100
Wire Wire Line
	10700 6000 12450 6000
Wire Wire Line
	12450 5900 10700 5900
Wire Wire Line
	10700 5800 12450 5800
Wire Wire Line
	12450 5700 10700 5700
Wire Wire Line
	10700 5600 12450 5600
Wire Wire Line
	10700 3950 12450 3950
Wire Wire Line
	12450 3250 10700 3250
Wire Wire Line
	10700 3350 12450 3350
Wire Wire Line
	12450 3450 10700 3450
Wire Wire Line
	10700 3550 12450 3550
Wire Wire Line
	10700 3650 12450 3650
Wire Wire Line
	12450 3750 10700 3750
Wire Wire Line
	10700 3850 12450 3850
Text GLabel 9750 6000 0    50   Input ~ 0
SinkDriver_LAT
Text GLabel 9750 6100 0    50   Input ~ 0
SinkDriver_OE
Text GLabel 9800 5700 0    50   Input ~ 0
SR_CLK
Text GLabel 9800 3250 0    50   Input ~ 0
SrcDriver_DataIn
Wire Wire Line
	9800 5500 9900 5500
Wire Wire Line
	9800 5700 9900 5700
Wire Wire Line
	9750 6000 9900 6000
Wire Wire Line
	9750 6100 9900 6100
Text GLabel 9800 5500 0    50   Input ~ 0
SinkDriver_DataIn
Text GLabel 7500 4000 2    50   Input ~ 0
SinkDriver_LAT
Text GLabel 7500 4100 2    50   Input ~ 0
SinkDriver_OE
Text GLabel 7500 5850 2    50   Input ~ 0
SenseDriver_CS
Text GLabel 7500 5950 2    50   Input ~ 0
SenseDriver_Load
Text GLabel 7500 6050 2    50   Input ~ 0
SenseDriver_DataIn
Text GLabel 7500 4200 2    50   Input ~ 0
SinkDriver_DataIn
Text GLabel 7500 3600 2    50   Input ~ 0
SrcDriver_LAT
Text GLabel 7500 3700 2    50   Input ~ 0
SrcDriver_OE
Text GLabel 7500 3800 2    50   Input ~ 0
SrcDriver_DataIn
Text GLabel 7500 3500 2    50   Input ~ 0
SR_CLK
Text GLabel 6150 3900 0    50   Input ~ 0
SrcDriver_DataOut
Text GLabel 6150 5750 0    50   Input ~ 0
SinkDriver_DataOut
Text GLabel 6150 6150 0    50   Input ~ 0
SenseDriver_DataOut
Text GLabel 2550 1250 2    50   Input ~ 0
VCC
$Comp
L power:GND #PWR0104
U 1 1 5CDA09B8
P 1100 2050
F 0 "#PWR0104" H 1100 1800 50  0001 C CNN
F 1 "GND" V 1105 1922 50  0000 R CNN
F 2 "" H 1100 2050 50  0001 C CNN
F 3 "" H 1100 2050 50  0001 C CNN
	1    1100 2050
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5CDA1486
P 1100 2250
F 0 "#PWR0105" H 1100 2000 50  0001 C CNN
F 1 "GND" V 1105 2122 50  0000 R CNN
F 2 "" H 1100 2250 50  0001 C CNN
F 3 "" H 1100 2250 50  0001 C CNN
	1    1100 2250
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5CDA1982
P 1100 1850
F 0 "#PWR0106" H 1100 1600 50  0001 C CNN
F 1 "GND" V 1105 1722 50  0000 R CNN
F 2 "" H 1100 1850 50  0001 C CNN
F 3 "" H 1100 1850 50  0001 C CNN
	1    1100 1850
	0    -1   -1   0   
$EndComp
$Comp
L 74xx:74HC244 U1
U 1 1 5CDB263D
P 6850 4000
F 0 "U1" H 6550 4800 50  0000 C CNN
F 1 "74HC244" H 6550 4700 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 6850 4000 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT244.pdf" H 6850 4000 50  0001 C CNN
	1    6850 4000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC244 U2
U 1 1 5CDB3B1D
P 6850 6250
F 0 "U2" H 6500 7100 50  0000 C CNN
F 1 "74HC244" H 6550 6950 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 6850 6250 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT244.pdf" H 6850 6250 50  0001 C CNN
	1    6850 6250
	1    0    0    -1  
$EndComp
Text GLabel 7500 5750 2    50   Input ~ 0
GPIO_Sink_DO
Text GLabel 7500 6150 2    50   Input ~ 0
GPIO_Sense_DO
Text GLabel 7500 3900 2    50   Input ~ 0
GPIO_Source_DO
Text GLabel 6150 3600 0    50   Input ~ 0
GPIO_Source_LAT
Text GLabel 6150 3700 0    50   Input ~ 0
GPIO_Source_OE
Text GLabel 6150 3800 0    50   Input ~ 0
GPIO_Source_DI
Text GLabel 6150 4000 0    50   Input ~ 0
GPIO_Sink_LAT
Text GLabel 6150 4100 0    50   Input ~ 0
GPIO_Sink_OE
Text GLabel 6150 4200 0    50   Input ~ 0
GPIO_Sink_DI
Text GLabel 6150 3500 0    50   Input ~ 0
GPIO_CLK
Text GLabel 6150 5850 0    50   Input ~ 0
GPIO_Sense_CS
Text GLabel 6150 5950 0    50   Input ~ 0
GPIO_Sense_Load
Text GLabel 6150 6050 0    50   Input ~ 0
GPIO_Sense_DI
$Comp
L power:GND #PWR0107
U 1 1 5CDDC530
P 6850 4900
F 0 "#PWR0107" H 6850 4650 50  0001 C CNN
F 1 "GND" H 6855 4727 50  0000 C CNN
F 2 "" H 6850 4900 50  0001 C CNN
F 3 "" H 6850 4900 50  0001 C CNN
	1    6850 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5CDDCA0D
P 6850 7150
F 0 "#PWR0108" H 6850 6900 50  0001 C CNN
F 1 "GND" H 6855 6977 50  0000 C CNN
F 2 "" H 6850 7150 50  0001 C CNN
F 3 "" H 6850 7150 50  0001 C CNN
	1    6850 7150
	1    0    0    -1  
$EndComp
Text GLabel 6850 3100 1    50   Input ~ 0
VCC
Text GLabel 6850 5350 1    50   Input ~ 0
VCC
Wire Wire Line
	6850 3200 6850 3100
Wire Wire Line
	7350 3500 7500 3500
Wire Wire Line
	7350 3600 7500 3600
Wire Wire Line
	7350 3700 7500 3700
Wire Wire Line
	7350 3800 7500 3800
Wire Wire Line
	7350 3900 7500 3900
Wire Wire Line
	7350 4000 7500 4000
Wire Wire Line
	7350 4100 7500 4100
Wire Wire Line
	7350 4200 7500 4200
Wire Wire Line
	6150 3500 6350 3500
Wire Wire Line
	6150 3600 6350 3600
Wire Wire Line
	6150 3700 6350 3700
Wire Wire Line
	6150 3800 6350 3800
Wire Wire Line
	6150 3900 6350 3900
Wire Wire Line
	6150 4000 6350 4000
Wire Wire Line
	6150 4100 6350 4100
Wire Wire Line
	6150 4200 6350 4200
Wire Wire Line
	6850 4800 6850 4850
Wire Wire Line
	6850 5450 6850 5350
Wire Wire Line
	7350 5750 7500 5750
Wire Wire Line
	7350 5850 7500 5850
Wire Wire Line
	7350 5950 7500 5950
Wire Wire Line
	7350 6050 7500 6050
Wire Wire Line
	7350 6150 7500 6150
Wire Wire Line
	6350 6150 6150 6150
Wire Wire Line
	6150 6050 6350 6050
Wire Wire Line
	6350 5950 6150 5950
Wire Wire Line
	6150 5850 6350 5850
Wire Wire Line
	6350 5750 6150 5750
Wire Wire Line
	6250 7100 6850 7100
Wire Wire Line
	6850 7100 6850 7050
Wire Wire Line
	6850 7150 6850 7100
Connection ~ 6850 7100
Wire Wire Line
	6350 6350 6250 6350
Wire Wire Line
	6250 6350 6250 6450
Wire Wire Line
	6350 6450 6250 6450
Connection ~ 6250 6450
Wire Wire Line
	6250 6450 6250 6650
Wire Wire Line
	6350 6650 6250 6650
Connection ~ 6250 6650
Wire Wire Line
	6250 6650 6250 6750
Wire Wire Line
	6350 6750 6250 6750
Connection ~ 6250 6750
Wire Wire Line
	6250 6750 6250 7100
Wire Wire Line
	6850 4850 6250 4850
Wire Wire Line
	6250 4850 6250 4500
Wire Wire Line
	6250 4400 6350 4400
Connection ~ 6850 4850
Wire Wire Line
	6850 4850 6850 4900
Wire Wire Line
	6350 4500 6250 4500
Connection ~ 6250 4500
Wire Wire Line
	6250 4500 6250 4400
Text GLabel 2550 2050 2    50   Input ~ 0
GPIO_Source_LAT
Text GLabel 2550 2350 2    50   Input ~ 0
GPIO_Source_OE
Text GLabel 2550 2650 2    50   Input ~ 0
GPIO_Source_DI
Text GLabel 2550 3350 2    50   Input ~ 0
GPIO_Sink_LAT
Text GLabel 2550 3650 2    50   Input ~ 0
GPIO_Sink_OE
Text GLabel 2550 3950 2    50   Input ~ 0
GPIO_Sink_DI
Text GLabel 2550 1550 2    50   Input ~ 0
GPIO_CLK
Text GLabel 2550 2950 2    50   Input ~ 0
GPIO_Source_DO
Text GLabel 2550 5050 2    50   Input ~ 0
GPIO_Sense_CS
Text GLabel 2550 4750 2    50   Input ~ 0
GPIO_Sense_Load
Text GLabel 2550 5350 2    50   Input ~ 0
GPIO_Sense_DI
Text GLabel 2550 5650 2    50   Input ~ 0
GPIO_Sense_DO
Text GLabel 2550 4250 2    50   Input ~ 0
GPIO_Sink_DO
$Comp
L power:GND #PWR0109
U 1 1 5CF24E98
P 1100 2750
F 0 "#PWR0109" H 1100 2500 50  0001 C CNN
F 1 "GND" V 1105 2622 50  0000 R CNN
F 2 "" H 1100 2750 50  0001 C CNN
F 3 "" H 1100 2750 50  0001 C CNN
	1    1100 2750
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5CF2FA00
P 1100 3250
F 0 "#PWR0110" H 1100 3000 50  0001 C CNN
F 1 "GND" V 1105 3122 50  0000 R CNN
F 2 "" H 1100 3250 50  0001 C CNN
F 3 "" H 1100 3250 50  0001 C CNN
	1    1100 3250
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5CF308C4
P 1100 3750
F 0 "#PWR0111" H 1100 3500 50  0001 C CNN
F 1 "GND" V 1105 3622 50  0000 R CNN
F 2 "" H 1100 3750 50  0001 C CNN
F 3 "" H 1100 3750 50  0001 C CNN
	1    1100 3750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R2
U 1 1 5CF429F4
P 2300 2050
F 0 "R2" V 2095 2050 50  0000 C CNN
F 1 "100" V 2186 2050 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2340 2040 50  0001 C CNN
F 3 "~" H 2300 2050 50  0001 C CNN
	1    2300 2050
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R3
U 1 1 5CF4514F
P 2300 2350
F 0 "R3" V 2095 2350 50  0000 C CNN
F 1 "100" V 2186 2350 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2340 2340 50  0001 C CNN
F 3 "~" H 2300 2350 50  0001 C CNN
	1    2300 2350
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R4
U 1 1 5CF45893
P 2300 2650
F 0 "R4" V 2095 2650 50  0000 C CNN
F 1 "100" V 2186 2650 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2340 2640 50  0001 C CNN
F 3 "~" H 2300 2650 50  0001 C CNN
	1    2300 2650
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R5
U 1 1 5CF45C51
P 2300 2950
F 0 "R5" V 2095 2950 50  0000 C CNN
F 1 "100" V 2186 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2340 2940 50  0001 C CNN
F 3 "~" H 2300 2950 50  0001 C CNN
	1    2300 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	2450 2050 2550 2050
Wire Wire Line
	2450 2350 2550 2350
Wire Wire Line
	2450 2650 2550 2650
Wire Wire Line
	2450 2950 2550 2950
$Comp
L Device:R_US R6
U 1 1 5CFA38B2
P 2300 3350
F 0 "R6" V 2095 3350 50  0000 C CNN
F 1 "100" V 2186 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2340 3340 50  0001 C CNN
F 3 "~" H 2300 3350 50  0001 C CNN
	1    2300 3350
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R7
U 1 1 5CFA38B8
P 2300 3650
F 0 "R7" V 2095 3650 50  0000 C CNN
F 1 "100" V 2186 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2340 3640 50  0001 C CNN
F 3 "~" H 2300 3650 50  0001 C CNN
	1    2300 3650
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R8
U 1 1 5CFA38BE
P 2300 3950
F 0 "R8" V 2095 3950 50  0000 C CNN
F 1 "100" V 2186 3950 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2340 3940 50  0001 C CNN
F 3 "~" H 2300 3950 50  0001 C CNN
	1    2300 3950
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R9
U 1 1 5CFA38C4
P 2300 4250
F 0 "R9" V 2095 4250 50  0000 C CNN
F 1 "100" V 2186 4250 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2340 4240 50  0001 C CNN
F 3 "~" H 2300 4250 50  0001 C CNN
	1    2300 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	2450 3350 2550 3350
Wire Wire Line
	2450 3650 2550 3650
Wire Wire Line
	2450 3950 2550 3950
Wire Wire Line
	2450 4250 2550 4250
$Comp
L Device:R_US R10
U 1 1 5CFB12D7
P 2300 4750
F 0 "R10" V 2095 4750 50  0000 C CNN
F 1 "100" V 2186 4750 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2340 4740 50  0001 C CNN
F 3 "~" H 2300 4750 50  0001 C CNN
	1    2300 4750
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R11
U 1 1 5CFB12DD
P 2300 5050
F 0 "R11" V 2095 5050 50  0000 C CNN
F 1 "100" V 2186 5050 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2340 5040 50  0001 C CNN
F 3 "~" H 2300 5050 50  0001 C CNN
	1    2300 5050
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R12
U 1 1 5CFB12E3
P 2300 5350
F 0 "R12" V 2095 5350 50  0000 C CNN
F 1 "100" V 2186 5350 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2340 5340 50  0001 C CNN
F 3 "~" H 2300 5350 50  0001 C CNN
	1    2300 5350
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R13
U 1 1 5CFB12E9
P 2300 5650
F 0 "R13" V 2095 5650 50  0000 C CNN
F 1 "100" V 2186 5650 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2340 5640 50  0001 C CNN
F 3 "~" H 2300 5650 50  0001 C CNN
	1    2300 5650
	0    1    1    0   
$EndComp
Wire Wire Line
	2450 4750 2550 4750
Wire Wire Line
	2450 5050 2550 5050
Wire Wire Line
	2450 5350 2550 5350
Wire Wire Line
	2450 5650 2550 5650
$Comp
L Device:R_US R1
U 1 1 5CFEABB6
P 2300 1550
F 0 "R1" V 2095 1550 50  0000 C CNN
F 1 "100" V 2186 1550 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2340 1540 50  0001 C CNN
F 3 "~" H 2300 1550 50  0001 C CNN
	1    2300 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	1000 3750 1100 3750
Wire Wire Line
	1000 3650 1450 3650
Wire Wire Line
	1450 3650 1450 5650
Wire Wire Line
	1450 5650 2150 5650
Wire Wire Line
	1000 3550 1500 3550
Wire Wire Line
	1500 3550 1500 5350
Wire Wire Line
	1500 5350 2150 5350
Wire Wire Line
	1000 3450 1550 3450
Wire Wire Line
	1550 3450 1550 5050
Wire Wire Line
	1550 5050 2150 5050
Wire Wire Line
	1000 3350 1600 3350
Wire Wire Line
	1600 3350 1600 4750
Wire Wire Line
	1600 4750 2150 4750
Wire Wire Line
	1100 3250 1000 3250
Wire Wire Line
	1000 3150 1650 3150
Wire Wire Line
	1650 3150 1650 4250
Wire Wire Line
	1650 4250 2150 4250
Wire Wire Line
	1000 3050 1700 3050
Wire Wire Line
	1700 3050 1700 3950
Wire Wire Line
	1700 3950 2150 3950
Wire Wire Line
	1000 2950 1750 2950
Wire Wire Line
	1750 2950 1750 3650
Wire Wire Line
	1750 3650 2150 3650
Wire Wire Line
	1000 2850 1800 2850
Wire Wire Line
	1800 2850 1800 3350
Wire Wire Line
	1800 3350 2150 3350
Wire Wire Line
	1100 2750 1000 2750
Wire Wire Line
	1000 2650 1850 2650
Wire Wire Line
	1850 2650 1850 2950
Wire Wire Line
	1850 2950 2150 2950
Wire Wire Line
	1000 2550 1900 2550
Wire Wire Line
	1900 2550 1900 2650
Wire Wire Line
	1900 2650 2150 2650
Wire Wire Line
	1000 2450 1900 2450
Wire Wire Line
	1900 2450 1900 2350
Wire Wire Line
	1900 2350 2150 2350
Wire Wire Line
	1000 2350 1850 2350
Wire Wire Line
	1850 2350 1850 2050
Wire Wire Line
	1850 2050 2150 2050
Wire Wire Line
	1000 2250 1100 2250
Wire Wire Line
	1000 2150 1800 2150
Wire Wire Line
	1800 2150 1800 1550
Wire Wire Line
	1800 1550 2150 1550
Wire Wire Line
	1000 2050 1100 2050
Wire Wire Line
	2450 1550 2550 1550
Wire Wire Line
	1000 1850 1100 1850
Wire Wire Line
	1000 1950 1750 1950
Wire Wire Line
	1750 1950 1750 1250
Wire Wire Line
	1750 1250 2550 1250
Wire Wire Line
	1000 1750 1700 1750
Wire Wire Line
	1700 1750 1700 1050
Wire Wire Line
	1700 1050 2550 1050
$Comp
L NCV8452:NCV8452 U3
U 1 1 5CC26F8D
P 8200 1300
F 0 "U3" H 8200 1665 50  0000 C CNN
F 1 "NCV8452" H 8200 1574 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 8200 1300 50  0001 C CNN
F 3 "" H 8200 1300 50  0001 C CNN
	1    8200 1300
	1    0    0    -1  
$EndComp
Text GLabel 8700 1200 2    50   Input ~ 0
VDrive
Text GLabel 7750 1200 0    50   Input ~ 0
V+
Text GLabel 2550 1050 2    50   Input ~ 0
V+
$Comp
L Connector:Conn_01x22_Male J1
U 1 1 5CC3EB59
P 800 2750
F 0 "J1" H 908 3931 50  0000 C CNN
F 1 "Conn_01x22_Male" H 908 3840 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x11_P2.54mm_Vertical" H 800 2750 50  0001 C CNN
F 3 "~" H 800 2750 50  0001 C CNN
	1    800  2750
	1    0    0    -1  
$EndComp
Text GLabel 2550 6100 2    50   Input ~ 0
GPIO_PWR_EN
$Comp
L Device:R_US R14
U 1 1 5CC48212
P 2300 6100
F 0 "R14" V 2095 6100 50  0000 C CNN
F 1 "100" V 2186 6100 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2340 6090 50  0001 C CNN
F 3 "~" H 2300 6100 50  0001 C CNN
	1    2300 6100
	0    1    1    0   
$EndComp
Wire Wire Line
	2450 6100 2550 6100
Wire Wire Line
	1400 6100 1400 3850
Wire Wire Line
	1400 3850 1000 3850
Wire Wire Line
	1400 6100 2150 6100
Text GLabel 6150 6250 0    50   Input ~ 0
GPIO_PWR_EN
Wire Wire Line
	6150 6250 6350 6250
Text GLabel 7500 6250 2    50   Input ~ 0
PowerEnable
Wire Wire Line
	7350 6250 7500 6250
Text GLabel 7750 1400 0    50   Input ~ 0
PowerEnable
$Comp
L power:GND #PWR0112
U 1 1 5CCA0591
P 8650 1450
F 0 "#PWR0112" H 8650 1200 50  0001 C CNN
F 1 "GND" H 8655 1277 50  0000 C CNN
F 2 "" H 8650 1450 50  0001 C CNN
F 3 "" H 8650 1450 50  0001 C CNN
	1    8650 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 1200 7850 1200
Wire Wire Line
	7750 1400 7850 1400
Wire Wire Line
	8550 1400 8650 1400
Wire Wire Line
	8650 1400 8650 1450
Wire Wire Line
	8700 1200 8550 1200
$EndSCHEMATC
