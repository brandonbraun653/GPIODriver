EESchema Schematic File Version 4
LIBS:GPIODriverVer2-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 12
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 3500 1400 0    50   Input ~ 0
SPI_SCK
Text HLabel 3500 1200 0    50   Input ~ 0
SPI_MOSI_IN_THIS
Text HLabel 4650 6000 2    50   Output ~ 0
SPI_MISO_OUT_THIS
Text HLabel 3500 1700 0    50   Input ~ 0
nSPI_W_CS_HI_DRIVE
Text HLabel 3500 3650 0    50   Input ~ 0
nSPI_W_CS_LO_DRIVE
Text HLabel 3500 5700 0    50   Input ~ 0
nSPI_R_CS_IN_DRIVE
Text HLabel 1500 1200 2    50   UnSpc ~ 0
+5V
Text HLabel 1500 1350 2    50   UnSpc ~ 0
+3V3
Text HLabel 1500 1500 2    50   UnSpc ~ 0
GND
$Comp
L GPIODriverVer2-rescue:74HC595_Nexperia-74xx U1
U 1 1 5EC45DB2
P 4150 1600
AR Path="/5EC45DB2" Ref="U1"  Part="1" 
AR Path="/5EBD7EE9/5EC45DB2" Ref="U1"  Part="1" 
F 0 "U1" H 4400 2300 50  0000 C CNN
F 1 "SR_WRITE_HI" H 4450 2200 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 4150 1600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 4150 1600 50  0001 C CNN
	1    4150 1600
	1    0    0    -1  
$EndComp
Text HLabel 5500 2650 2    50   Output ~ 0
SPI_MOSI_OUT_NEXT
Text HLabel 3500 5200 0    50   Input ~ 0
SPI_MISO_IN_NEXT
$Comp
L GPIODriverVer2-rescue:74HC595_Nexperia-74xx U2
U 1 1 5EC481CC
P 4150 3550
AR Path="/5EC481CC" Ref="U2"  Part="1" 
AR Path="/5EBD7EE9/5EC481CC" Ref="U2"  Part="1" 
F 0 "U2" H 4350 4250 50  0000 C CNN
F 1 "SR_WRITE_LO" H 4500 4150 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 4150 3550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 4150 3550 50  0001 C CNN
	1    4150 3550
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 5EC4F70D
P 1400 1200
AR Path="/5EBD7FA0/5EC4F70D" Ref="#PWR?"  Part="1" 
AR Path="/5EBD7EE9/5EC4F70D" Ref="#PWR0105"  Part="1" 
F 0 "#PWR0105" H 1400 1050 50  0001 C CNN
F 1 "VDD" V 1418 1327 50  0000 L CNN
F 2 "" H 1400 1200 50  0001 C CNN
F 3 "" H 1400 1200 50  0001 C CNN
	1    1400 1200
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EC4F71D
P 1400 1500
AR Path="/5EBD7FA0/5EC4F71D" Ref="#PWR?"  Part="1" 
AR Path="/5EBD7EE9/5EC4F71D" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 1400 1250 50  0001 C CNN
F 1 "GND" V 1405 1372 50  0000 R CNN
F 2 "" H 1400 1500 50  0001 C CNN
F 3 "" H 1400 1500 50  0001 C CNN
	1    1400 1500
	0    1    1    0   
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 5EC4F9CD
P 4150 900
AR Path="/5EBD7FA0/5EC4F9CD" Ref="#PWR?"  Part="1" 
AR Path="/5EBD7EE9/5EC4F9CD" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 4150 750 50  0001 C CNN
F 1 "VDD" H 4167 1073 50  0000 C CNN
F 2 "" H 4150 900 50  0001 C CNN
F 3 "" H 4150 900 50  0001 C CNN
	1    4150 900 
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 5EC50117
P 4150 2850
AR Path="/5EBD7FA0/5EC50117" Ref="#PWR?"  Part="1" 
AR Path="/5EBD7EE9/5EC50117" Ref="#PWR0108"  Part="1" 
F 0 "#PWR0108" H 4150 2700 50  0001 C CNN
F 1 "VDD" H 4167 3023 50  0000 C CNN
F 2 "" H 4150 2850 50  0001 C CNN
F 3 "" H 4150 2850 50  0001 C CNN
	1    4150 2850
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 5EC506A4
P 4150 4800
AR Path="/5EBD7FA0/5EC506A4" Ref="#PWR?"  Part="1" 
AR Path="/5EBD7EE9/5EC506A4" Ref="#PWR0109"  Part="1" 
F 0 "#PWR0109" H 4150 4650 50  0001 C CNN
F 1 "VDD" H 4167 4973 50  0000 C CNN
F 2 "" H 4150 4800 50  0001 C CNN
F 3 "" H 4150 4800 50  0001 C CNN
	1    4150 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EC51086
P 4150 2400
AR Path="/5EBD7FA0/5EC51086" Ref="#PWR?"  Part="1" 
AR Path="/5EBD7EE9/5EC51086" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 4150 2150 50  0001 C CNN
F 1 "GND" H 4155 2227 50  0000 C CNN
F 2 "" H 4150 2400 50  0001 C CNN
F 3 "" H 4150 2400 50  0001 C CNN
	1    4150 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EC515F7
P 4150 4350
AR Path="/5EBD7FA0/5EC515F7" Ref="#PWR?"  Part="1" 
AR Path="/5EBD7EE9/5EC515F7" Ref="#PWR0111"  Part="1" 
F 0 "#PWR0111" H 4150 4100 50  0001 C CNN
F 1 "GND" H 4155 4177 50  0000 C CNN
F 2 "" H 4150 4350 50  0001 C CNN
F 3 "" H 4150 4350 50  0001 C CNN
	1    4150 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EC51BA5
P 4150 6400
AR Path="/5EBD7FA0/5EC51BA5" Ref="#PWR?"  Part="1" 
AR Path="/5EBD7EE9/5EC51BA5" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 4150 6150 50  0001 C CNN
F 1 "GND" H 4155 6227 50  0000 C CNN
F 2 "" H 4150 6400 50  0001 C CNN
F 3 "" H 4150 6400 50  0001 C CNN
	1    4150 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 4800 4150 4900
Wire Wire Line
	4150 6300 4150 6400
Wire Wire Line
	4150 4250 4150 4350
Wire Wire Line
	4150 2300 4150 2400
Wire Wire Line
	4150 2850 4150 2950
Wire Wire Line
	4150 900  4150 1000
Text HLabel 3500 1800 0    50   Input ~ 0
nOUTPUT_DRIVE_EN
Wire Wire Line
	3500 1400 3700 1400
Wire Wire Line
	3700 1400 3700 3350
Wire Wire Line
	3700 3350 3750 3350
Connection ~ 3700 1400
Wire Wire Line
	3700 1400 3750 1400
$Comp
L 74HC165:74HC165 U3
U 1 1 5EC56991
P 4150 5550
F 0 "U3" H 4450 6250 50  0000 C CNN
F 1 "SR_READ_STATE" H 4500 6150 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 4150 5400 50  0001 C CNN
F 3 "VFQFN-16 STMicroelectronics" H 4150 6289 50  0001 C CNN
	1    4150 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 1200 3650 1200
Wire Wire Line
	3650 1200 3650 3150
Wire Wire Line
	3650 3150 3750 3150
Connection ~ 3650 1200
Wire Wire Line
	3650 1200 3750 1200
Wire Wire Line
	3500 1800 3600 1800
Wire Wire Line
	3500 1700 3750 1700
Wire Wire Line
	3600 1800 3600 3750
Wire Wire Line
	3600 3750 3750 3750
Connection ~ 3600 1800
Wire Wire Line
	3600 1800 3750 1800
Wire Wire Line
	3500 3650 3750 3650
Wire Wire Line
	4550 6000 4650 6000
Text HLabel 3500 5500 0    50   Input ~ 0
nOUTPUT_READ_EN
Wire Wire Line
	3700 3350 3700 5400
Wire Wire Line
	3700 5400 3750 5400
Connection ~ 3700 3350
Wire Wire Line
	3500 5200 3750 5200
Wire Wire Line
	3500 5500 3750 5500
Wire Wire Line
	3500 5700 3750 5700
$Comp
L 74xGxx:74LVC1G3157 U?
U 1 1 5EC6A468
P 5200 2650
AR Path="/5EBD7FA0/5EC6A468" Ref="U?"  Part="1" 
AR Path="/5EBD7EE9/5EC6A468" Ref="U4"  Part="1" 
F 0 "U4" H 4950 2250 50  0000 C CNN
F 1 "74LVC1G3157" H 4800 2350 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 5200 2650 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 5200 2650 50  0001 C CNN
	1    5200 2650
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EC6F9F2
P 5200 2450
AR Path="/5EBD7FA0/5EC6F9F2" Ref="#PWR?"  Part="1" 
AR Path="/5EBD7EE9/5EC6F9F2" Ref="#PWR0113"  Part="1" 
F 0 "#PWR0113" H 5200 2200 50  0001 C CNN
F 1 "GND" H 5205 2277 50  0000 C CNN
F 2 "" H 5200 2450 50  0001 C CNN
F 3 "" H 5200 2450 50  0001 C CNN
	1    5200 2450
	-1   0    0    1   
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 5EC70089
P 5200 2850
AR Path="/5EBD7FA0/5EC70089" Ref="#PWR?"  Part="1" 
AR Path="/5EBD7EE9/5EC70089" Ref="#PWR0114"  Part="1" 
F 0 "#PWR0114" H 5200 2700 50  0001 C CNN
F 1 "VDD" H 5218 3023 50  0000 C CNN
F 2 "" H 5200 2850 50  0001 C CNN
F 3 "" H 5200 2850 50  0001 C CNN
	1    5200 2850
	-1   0    0    1   
$EndComp
Wire Wire Line
	5000 2550 4900 2550
Wire Wire Line
	4900 2550 4900 2100
Wire Wire Line
	4550 2100 4900 2100
Wire Wire Line
	5000 2750 4900 2750
Wire Wire Line
	4900 2750 4900 4050
Wire Wire Line
	4550 4050 4900 4050
Text HLabel 5500 2450 2    50   Input ~ 0
nSPI_W_CS_HI_DRIVE
Wire Wire Line
	5500 2450 5400 2450
Wire Wire Line
	5500 2650 5400 2650
Text Notes 5350 2950 0    50   ~ 0
Truth Table:\nLO: 3\nHI: 1
$Comp
L Device:R_US R4
U 1 1 5EC75561
P 3500 3100
F 0 "R4" H 3432 3054 50  0000 R CNN
F 1 "10k" H 3432 3145 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3540 3090 50  0001 C CNN
F 3 "~" H 3500 3100 50  0001 C CNN
	1    3500 3100
	1    0    0    1   
$EndComp
$Comp
L Device:R_US R5
U 1 1 5EC75C78
P 3550 950
F 0 "R5" H 3482 904 50  0000 R CNN
F 1 "10k" H 3482 995 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3590 940 50  0001 C CNN
F 3 "~" H 3550 950 50  0001 C CNN
	1    3550 950 
	1    0    0    1   
$EndComp
Wire Wire Line
	3550 1500 3750 1500
$Comp
L power:VDD #PWR?
U 1 1 5EC79607
P 3550 750
AR Path="/5EBD7FA0/5EC79607" Ref="#PWR?"  Part="1" 
AR Path="/5EBD7EE9/5EC79607" Ref="#PWR0115"  Part="1" 
F 0 "#PWR0115" H 3550 600 50  0001 C CNN
F 1 "VDD" H 3567 923 50  0000 C CNN
F 2 "" H 3550 750 50  0001 C CNN
F 3 "" H 3550 750 50  0001 C CNN
	1    3550 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 750  3550 800 
Wire Wire Line
	3550 1100 3550 1500
Wire Wire Line
	3500 3250 3500 3450
Wire Wire Line
	3500 3450 3750 3450
$Comp
L power:VDD #PWR?
U 1 1 5EC7E226
P 3500 2900
AR Path="/5EBD7FA0/5EC7E226" Ref="#PWR?"  Part="1" 
AR Path="/5EBD7EE9/5EC7E226" Ref="#PWR0116"  Part="1" 
F 0 "#PWR0116" H 3500 2750 50  0001 C CNN
F 1 "VDD" H 3517 3073 50  0000 C CNN
F 2 "" H 3500 2900 50  0001 C CNN
F 3 "" H 3500 2900 50  0001 C CNN
	1    3500 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 2900 3500 2950
NoConn ~ 4550 6100
$Sheet
S 7500 2500 650  750 
U 5EC7FF1D
F0 "DriveChannel1" 50
F1 "DriveChannel1.sch" 50
F2 "LO_EN" I L 7500 3050 50 
F3 "HI_EN" I L 7500 2950 50 
F4 "OUT_STATE" O L 7500 3150 50 
F5 "+HV" U L 7500 2550 50 
F6 "GND" U L 7500 2750 50 
F7 "+5V" U L 7500 2650 50 
F8 "DriveOutput" O R 8150 2850 50 
$EndSheet
Text GLabel 7450 2950 0    50   Input ~ 0
CH1_HI_EN
Text GLabel 7450 3050 0    50   Input ~ 0
CH1_LO_EN
Text GLabel 7450 3150 0    50   Input ~ 0
CH1_STATE
Text GLabel 5250 1300 2    50   Output ~ 0
CH1_HI_EN
Text GLabel 5250 3250 2    50   Output ~ 0
CH1_LO_EN
Text GLabel 5250 5200 2    50   Input ~ 0
CH1_STATE
Wire Wire Line
	5250 3250 4550 3250
Wire Wire Line
	5250 1300 4550 1300
Wire Wire Line
	4550 5200 5250 5200
Wire Wire Line
	7450 2950 7500 2950
Wire Wire Line
	7450 3050 7500 3050
Wire Wire Line
	7450 3150 7500 3150
$Comp
L power:VDD #PWR?
U 1 1 5EC87625
P 7400 2650
AR Path="/5EBD7FA0/5EC87625" Ref="#PWR?"  Part="1" 
AR Path="/5EBD7EE9/5EC87625" Ref="#PWR0117"  Part="1" 
F 0 "#PWR0117" H 7400 2500 50  0001 C CNN
F 1 "VDD" V 7418 2777 50  0000 L CNN
F 2 "" H 7400 2650 50  0001 C CNN
F 3 "" H 7400 2650 50  0001 C CNN
	1    7400 2650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7400 2650 7500 2650
$Comp
L power:GND #PWR?
U 1 1 5EC88D79
P 7400 2750
AR Path="/5EBD7FA0/5EC88D79" Ref="#PWR?"  Part="1" 
AR Path="/5EBD7EE9/5EC88D79" Ref="#PWR0118"  Part="1" 
F 0 "#PWR0118" H 7400 2500 50  0001 C CNN
F 1 "GND" V 7405 2622 50  0000 R CNN
F 2 "" H 7400 2750 50  0001 C CNN
F 3 "" H 7400 2750 50  0001 C CNN
	1    7400 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	7400 2750 7500 2750
$Comp
L power:VBUS #PWR0119
U 1 1 5ECA7DD9
P 7400 2550
F 0 "#PWR0119" H 7400 2400 50  0001 C CNN
F 1 "VBUS" V 7415 2677 50  0000 L CNN
F 2 "" H 7400 2550 50  0001 C CNN
F 3 "" H 7400 2550 50  0001 C CNN
	1    7400 2550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7400 2550 7500 2550
Text HLabel 1500 1100 2    50   UnSpc ~ 0
+HV
$Comp
L power:VBUS #PWR0120
U 1 1 5ED2A626
P 1400 1100
F 0 "#PWR0120" H 1400 950 50  0001 C CNN
F 1 "VBUS" V 1415 1227 50  0000 L CNN
F 2 "" H 1400 1100 50  0001 C CNN
F 3 "" H 1400 1100 50  0001 C CNN
	1    1400 1100
	0    -1   -1   0   
$EndComp
NoConn ~ 1500 1350
Wire Wire Line
	1400 1100 1500 1100
Wire Wire Line
	1400 1200 1500 1200
Wire Wire Line
	1400 1500 1500 1500
$Comp
L Connector_Generic:Conn_01x08 J?
U 1 1 5EC4DC91
P 10650 3300
AR Path="/5EC4DC91" Ref="J?"  Part="1" 
AR Path="/5EBD7EE9/5EC4DC91" Ref="J5"  Part="1" 
F 0 "J5" H 10730 3292 50  0000 L CNN
F 1 "DriveOutput" H 10730 3201 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Horizontal" H 10650 3300 50  0001 C CNN
F 3 "~" H 10650 3300 50  0001 C CNN
	1    10650 3300
	1    0    0    -1  
$EndComp
Text GLabel 5250 1400 2    50   Output ~ 0
CH2_HI_EN
Text GLabel 5250 1500 2    50   Output ~ 0
CH3_HI_EN
Text GLabel 5250 1600 2    50   Output ~ 0
CH4_HI_EN
Text GLabel 5250 1800 2    50   Output ~ 0
CH6_HI_EN
Text GLabel 5250 1900 2    50   Output ~ 0
CH7_HI_EN
Text GLabel 5250 1200 2    50   Output ~ 0
CH0_HI_EN
Text GLabel 5250 3150 2    50   Output ~ 0
CH0_LO_EN
Text GLabel 5250 3350 2    50   Output ~ 0
CH2_LO_EN
Text GLabel 5250 3450 2    50   Output ~ 0
CH3_LO_EN
Text GLabel 5250 3550 2    50   Output ~ 0
CH4_LO_EN
Text GLabel 5250 3650 2    50   Output ~ 0
CH5_LO_EN
Text GLabel 5250 3750 2    50   Output ~ 0
CH6_LO_EN
Text GLabel 5250 3850 2    50   Output ~ 0
CH7_LO_EN
Wire Wire Line
	5250 3150 4550 3150
Wire Wire Line
	4550 3350 5250 3350
Wire Wire Line
	5250 3450 4550 3450
Wire Wire Line
	4550 3550 5250 3550
Wire Wire Line
	5250 3650 4550 3650
Wire Wire Line
	4550 3750 5250 3750
Wire Wire Line
	5250 3850 4550 3850
Wire Wire Line
	5250 1200 4550 1200
Wire Wire Line
	4550 1400 5250 1400
Wire Wire Line
	5250 1500 4550 1500
Wire Wire Line
	4550 1600 5250 1600
Wire Wire Line
	5250 1700 4550 1700
Wire Wire Line
	4550 1800 5250 1800
Wire Wire Line
	5250 1900 4550 1900
$Sheet
S 7500 3450 650  750 
U 5EC239DE
F0 "DriveChannel2" 50
F1 "DriveChannel2.sch" 50
F2 "LO_EN" I L 7500 4000 50 
F3 "HI_EN" I L 7500 3900 50 
F4 "OUT_STATE" O L 7500 4100 50 
F5 "+HV" U L 7500 3500 50 
F6 "GND" U L 7500 3700 50 
F7 "+5V" U L 7500 3600 50 
F8 "DriveOutput" O R 8150 3800 50 
$EndSheet
Wire Wire Line
	7450 3900 7500 3900
Wire Wire Line
	7450 4000 7500 4000
Wire Wire Line
	7450 4100 7500 4100
$Comp
L power:VDD #PWR?
U 1 1 5EC239EA
P 7400 3600
AR Path="/5EBD7FA0/5EC239EA" Ref="#PWR?"  Part="1" 
AR Path="/5EBD7EE9/5EC239EA" Ref="#PWR0160"  Part="1" 
F 0 "#PWR0160" H 7400 3450 50  0001 C CNN
F 1 "VDD" V 7418 3727 50  0000 L CNN
F 2 "" H 7400 3600 50  0001 C CNN
F 3 "" H 7400 3600 50  0001 C CNN
	1    7400 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7400 3600 7500 3600
$Comp
L power:GND #PWR?
U 1 1 5EC239F1
P 7400 3700
AR Path="/5EBD7FA0/5EC239F1" Ref="#PWR?"  Part="1" 
AR Path="/5EBD7EE9/5EC239F1" Ref="#PWR0161"  Part="1" 
F 0 "#PWR0161" H 7400 3450 50  0001 C CNN
F 1 "GND" V 7405 3572 50  0000 R CNN
F 2 "" H 7400 3700 50  0001 C CNN
F 3 "" H 7400 3700 50  0001 C CNN
	1    7400 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	7400 3700 7500 3700
$Comp
L power:VBUS #PWR0162
U 1 1 5EC239F8
P 7400 3500
F 0 "#PWR0162" H 7400 3350 50  0001 C CNN
F 1 "VBUS" V 7415 3627 50  0000 L CNN
F 2 "" H 7400 3500 50  0001 C CNN
F 3 "" H 7400 3500 50  0001 C CNN
	1    7400 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7400 3500 7500 3500
Text GLabel 5250 5100 2    50   Input ~ 0
CH0_STATE
Text GLabel 5250 5300 2    50   Input ~ 0
CH2_STATE
Text GLabel 5250 5400 2    50   Input ~ 0
CH3_STATE
Text GLabel 5250 5500 2    50   Input ~ 0
CH4_STATE
Text GLabel 5250 5600 2    50   Input ~ 0
CH5_STATE
Text GLabel 5250 5700 2    50   Input ~ 0
CH6_STATE
Text GLabel 5250 5800 2    50   Input ~ 0
CH7_STATE
Wire Wire Line
	4550 5100 5250 5100
Wire Wire Line
	4550 5300 5250 5300
Wire Wire Line
	5250 5400 4550 5400
Wire Wire Line
	4550 5500 5250 5500
Wire Wire Line
	5250 5600 4550 5600
Wire Wire Line
	4550 5700 5250 5700
Wire Wire Line
	5250 5800 4550 5800
$Sheet
S 7500 4400 650  750 
U 5EC3B736
F0 "DriveChannel3" 50
F1 "DriveChannel3.sch" 50
F2 "LO_EN" I L 7500 4950 50 
F3 "HI_EN" I L 7500 4850 50 
F4 "OUT_STATE" O L 7500 5050 50 
F5 "+HV" U L 7500 4450 50 
F6 "GND" U L 7500 4650 50 
F7 "+5V" U L 7500 4550 50 
F8 "DriveOutput" O R 8150 4750 50 
$EndSheet
Wire Wire Line
	7450 4850 7500 4850
Wire Wire Line
	7450 4950 7500 4950
Wire Wire Line
	7450 5050 7500 5050
$Comp
L power:VDD #PWR?
U 1 1 5EC3B73F
P 7400 4550
AR Path="/5EBD7FA0/5EC3B73F" Ref="#PWR?"  Part="1" 
AR Path="/5EBD7EE9/5EC3B73F" Ref="#PWR0163"  Part="1" 
F 0 "#PWR0163" H 7400 4400 50  0001 C CNN
F 1 "VDD" V 7418 4677 50  0000 L CNN
F 2 "" H 7400 4550 50  0001 C CNN
F 3 "" H 7400 4550 50  0001 C CNN
	1    7400 4550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7400 4550 7500 4550
$Comp
L power:GND #PWR?
U 1 1 5EC3B74A
P 7400 4650
AR Path="/5EBD7FA0/5EC3B74A" Ref="#PWR?"  Part="1" 
AR Path="/5EBD7EE9/5EC3B74A" Ref="#PWR0164"  Part="1" 
F 0 "#PWR0164" H 7400 4400 50  0001 C CNN
F 1 "GND" V 7405 4522 50  0000 R CNN
F 2 "" H 7400 4650 50  0001 C CNN
F 3 "" H 7400 4650 50  0001 C CNN
	1    7400 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	7400 4650 7500 4650
$Comp
L power:VBUS #PWR0165
U 1 1 5EC3B755
P 7400 4450
F 0 "#PWR0165" H 7400 4300 50  0001 C CNN
F 1 "VBUS" V 7415 4577 50  0000 L CNN
F 2 "" H 7400 4450 50  0001 C CNN
F 3 "" H 7400 4450 50  0001 C CNN
	1    7400 4450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7400 4450 7500 4450
$Sheet
S 9000 1550 650  750 
U 5EC43172
F0 "DriveChannel4" 50
F1 "DriveChannel4.sch" 50
F2 "LO_EN" I L 9000 2100 50 
F3 "HI_EN" I L 9000 2000 50 
F4 "OUT_STATE" O L 9000 2200 50 
F5 "+HV" U L 9000 1600 50 
F6 "GND" U L 9000 1800 50 
F7 "+5V" U L 9000 1700 50 
F8 "DriveOutput" O R 9650 1900 50 
$EndSheet
Wire Wire Line
	8950 2000 9000 2000
Wire Wire Line
	8950 2100 9000 2100
Wire Wire Line
	8950 2200 9000 2200
$Comp
L power:VDD #PWR?
U 1 1 5EC4317B
P 8900 1700
AR Path="/5EBD7FA0/5EC4317B" Ref="#PWR?"  Part="1" 
AR Path="/5EBD7EE9/5EC4317B" Ref="#PWR0166"  Part="1" 
F 0 "#PWR0166" H 8900 1550 50  0001 C CNN
F 1 "VDD" V 8918 1827 50  0000 L CNN
F 2 "" H 8900 1700 50  0001 C CNN
F 3 "" H 8900 1700 50  0001 C CNN
	1    8900 1700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8900 1700 9000 1700
$Comp
L power:GND #PWR?
U 1 1 5EC43182
P 8900 1800
AR Path="/5EBD7FA0/5EC43182" Ref="#PWR?"  Part="1" 
AR Path="/5EBD7EE9/5EC43182" Ref="#PWR0167"  Part="1" 
F 0 "#PWR0167" H 8900 1550 50  0001 C CNN
F 1 "GND" V 8905 1672 50  0000 R CNN
F 2 "" H 8900 1800 50  0001 C CNN
F 3 "" H 8900 1800 50  0001 C CNN
	1    8900 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	8900 1800 9000 1800
$Comp
L power:VBUS #PWR0168
U 1 1 5EC43189
P 8900 1600
F 0 "#PWR0168" H 8900 1450 50  0001 C CNN
F 1 "VBUS" V 8915 1727 50  0000 L CNN
F 2 "" H 8900 1600 50  0001 C CNN
F 3 "" H 8900 1600 50  0001 C CNN
	1    8900 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8900 1600 9000 1600
$Sheet
S 9000 2500 650  750 
U 5EC4CD7A
F0 "DriveChannel5" 50
F1 "DriveChannel5.sch" 50
F2 "LO_EN" I L 9000 3050 50 
F3 "HI_EN" I L 9000 2950 50 
F4 "OUT_STATE" O L 9000 3150 50 
F5 "+HV" U L 9000 2550 50 
F6 "GND" U L 9000 2750 50 
F7 "+5V" U L 9000 2650 50 
F8 "DriveOutput" O R 9650 2850 50 
$EndSheet
Wire Wire Line
	8950 2950 9000 2950
Wire Wire Line
	8950 3050 9000 3050
Wire Wire Line
	8950 3150 9000 3150
$Comp
L power:VDD #PWR?
U 1 1 5EC4CD83
P 8900 2650
AR Path="/5EBD7FA0/5EC4CD83" Ref="#PWR?"  Part="1" 
AR Path="/5EBD7EE9/5EC4CD83" Ref="#PWR0169"  Part="1" 
F 0 "#PWR0169" H 8900 2500 50  0001 C CNN
F 1 "VDD" V 8918 2777 50  0000 L CNN
F 2 "" H 8900 2650 50  0001 C CNN
F 3 "" H 8900 2650 50  0001 C CNN
	1    8900 2650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8900 2650 9000 2650
$Comp
L power:GND #PWR?
U 1 1 5EC4CD8A
P 8900 2750
AR Path="/5EBD7FA0/5EC4CD8A" Ref="#PWR?"  Part="1" 
AR Path="/5EBD7EE9/5EC4CD8A" Ref="#PWR0170"  Part="1" 
F 0 "#PWR0170" H 8900 2500 50  0001 C CNN
F 1 "GND" V 8905 2622 50  0000 R CNN
F 2 "" H 8900 2750 50  0001 C CNN
F 3 "" H 8900 2750 50  0001 C CNN
	1    8900 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	8900 2750 9000 2750
$Comp
L power:VBUS #PWR0171
U 1 1 5EC4CD91
P 8900 2550
F 0 "#PWR0171" H 8900 2400 50  0001 C CNN
F 1 "VBUS" V 8915 2677 50  0000 L CNN
F 2 "" H 8900 2550 50  0001 C CNN
F 3 "" H 8900 2550 50  0001 C CNN
	1    8900 2550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8900 2550 9000 2550
$Sheet
S 9000 3450 650  750 
U 5EC51309
F0 "DriveChannel6" 50
F1 "DriveChannel6.sch" 50
F2 "LO_EN" I L 9000 4000 50 
F3 "HI_EN" I L 9000 3900 50 
F4 "OUT_STATE" O L 9000 4100 50 
F5 "+HV" U L 9000 3500 50 
F6 "GND" U L 9000 3700 50 
F7 "+5V" U L 9000 3600 50 
F8 "DriveOutput" O R 9650 3800 50 
$EndSheet
Wire Wire Line
	8950 3900 9000 3900
Wire Wire Line
	8950 4000 9000 4000
Wire Wire Line
	8950 4100 9000 4100
$Comp
L power:VDD #PWR?
U 1 1 5EC51312
P 8900 3600
AR Path="/5EBD7FA0/5EC51312" Ref="#PWR?"  Part="1" 
AR Path="/5EBD7EE9/5EC51312" Ref="#PWR0172"  Part="1" 
F 0 "#PWR0172" H 8900 3450 50  0001 C CNN
F 1 "VDD" V 8918 3727 50  0000 L CNN
F 2 "" H 8900 3600 50  0001 C CNN
F 3 "" H 8900 3600 50  0001 C CNN
	1    8900 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8900 3600 9000 3600
$Comp
L power:GND #PWR?
U 1 1 5EC51319
P 8900 3700
AR Path="/5EBD7FA0/5EC51319" Ref="#PWR?"  Part="1" 
AR Path="/5EBD7EE9/5EC51319" Ref="#PWR0173"  Part="1" 
F 0 "#PWR0173" H 8900 3450 50  0001 C CNN
F 1 "GND" V 8905 3572 50  0000 R CNN
F 2 "" H 8900 3700 50  0001 C CNN
F 3 "" H 8900 3700 50  0001 C CNN
	1    8900 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	8900 3700 9000 3700
$Comp
L power:VBUS #PWR0174
U 1 1 5EC51320
P 8900 3500
F 0 "#PWR0174" H 8900 3350 50  0001 C CNN
F 1 "VBUS" V 8915 3627 50  0000 L CNN
F 2 "" H 8900 3500 50  0001 C CNN
F 3 "" H 8900 3500 50  0001 C CNN
	1    8900 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8900 3500 9000 3500
$Sheet
S 9000 4400 650  750 
U 5EC5572F
F0 "DriveChannel7" 50
F1 "DriveChannel7.sch" 50
F2 "LO_EN" I L 9000 4950 50 
F3 "HI_EN" I L 9000 4850 50 
F4 "OUT_STATE" O L 9000 5050 50 
F5 "+HV" U L 9000 4450 50 
F6 "GND" U L 9000 4650 50 
F7 "+5V" U L 9000 4550 50 
F8 "DriveOutput" O R 9650 4750 50 
$EndSheet
Wire Wire Line
	8950 4850 9000 4850
Wire Wire Line
	8950 4950 9000 4950
Wire Wire Line
	8950 5050 9000 5050
$Comp
L power:VDD #PWR?
U 1 1 5EC55738
P 8900 4550
AR Path="/5EBD7FA0/5EC55738" Ref="#PWR?"  Part="1" 
AR Path="/5EBD7EE9/5EC55738" Ref="#PWR0175"  Part="1" 
F 0 "#PWR0175" H 8900 4400 50  0001 C CNN
F 1 "VDD" V 8918 4677 50  0000 L CNN
F 2 "" H 8900 4550 50  0001 C CNN
F 3 "" H 8900 4550 50  0001 C CNN
	1    8900 4550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8900 4550 9000 4550
$Comp
L power:GND #PWR?
U 1 1 5EC5573F
P 8900 4650
AR Path="/5EBD7FA0/5EC5573F" Ref="#PWR?"  Part="1" 
AR Path="/5EBD7EE9/5EC5573F" Ref="#PWR0176"  Part="1" 
F 0 "#PWR0176" H 8900 4400 50  0001 C CNN
F 1 "GND" V 8905 4522 50  0000 R CNN
F 2 "" H 8900 4650 50  0001 C CNN
F 3 "" H 8900 4650 50  0001 C CNN
	1    8900 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	8900 4650 9000 4650
$Comp
L power:VBUS #PWR0177
U 1 1 5EC55746
P 8900 4450
F 0 "#PWR0177" H 8900 4300 50  0001 C CNN
F 1 "VBUS" V 8915 4577 50  0000 L CNN
F 2 "" H 8900 4450 50  0001 C CNN
F 3 "" H 8900 4450 50  0001 C CNN
	1    8900 4450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8900 4450 9000 4450
$Sheet
S 7500 1550 650  750 
U 5EC5A568
F0 "DriveChannel0" 50
F1 "DriveChannel0.sch" 50
F2 "LO_EN" I L 7500 2100 50 
F3 "HI_EN" I L 7500 2000 50 
F4 "OUT_STATE" O L 7500 2200 50 
F5 "+HV" U L 7500 1600 50 
F6 "GND" U L 7500 1800 50 
F7 "+5V" U L 7500 1700 50 
F8 "DriveOutput" O R 8150 1900 50 
$EndSheet
Wire Wire Line
	7450 2000 7500 2000
Wire Wire Line
	7450 2100 7500 2100
Wire Wire Line
	7450 2200 7500 2200
$Comp
L power:VDD #PWR?
U 1 1 5EC5A571
P 7400 1700
AR Path="/5EBD7FA0/5EC5A571" Ref="#PWR?"  Part="1" 
AR Path="/5EBD7EE9/5EC5A571" Ref="#PWR0178"  Part="1" 
F 0 "#PWR0178" H 7400 1550 50  0001 C CNN
F 1 "VDD" V 7418 1827 50  0000 L CNN
F 2 "" H 7400 1700 50  0001 C CNN
F 3 "" H 7400 1700 50  0001 C CNN
	1    7400 1700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7400 1700 7500 1700
$Comp
L power:GND #PWR?
U 1 1 5EC5A578
P 7400 1800
AR Path="/5EBD7FA0/5EC5A578" Ref="#PWR?"  Part="1" 
AR Path="/5EBD7EE9/5EC5A578" Ref="#PWR0179"  Part="1" 
F 0 "#PWR0179" H 7400 1550 50  0001 C CNN
F 1 "GND" V 7405 1672 50  0000 R CNN
F 2 "" H 7400 1800 50  0001 C CNN
F 3 "" H 7400 1800 50  0001 C CNN
	1    7400 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	7400 1800 7500 1800
$Comp
L power:VBUS #PWR0180
U 1 1 5EC5A57F
P 7400 1600
F 0 "#PWR0180" H 7400 1450 50  0001 C CNN
F 1 "VBUS" V 7415 1727 50  0000 L CNN
F 2 "" H 7400 1600 50  0001 C CNN
F 3 "" H 7400 1600 50  0001 C CNN
	1    7400 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7400 1600 7500 1600
Text GLabel 7450 2000 0    50   Input ~ 0
CH0_HI_EN
Text GLabel 7450 2100 0    50   Input ~ 0
CH0_LO_EN
Text GLabel 7450 2200 0    50   Input ~ 0
CH0_STATE
Text GLabel 7450 3900 0    50   Input ~ 0
CH2_HI_EN
Text GLabel 7450 4000 0    50   Input ~ 0
CH2_LO_EN
Text GLabel 7450 4100 0    50   Input ~ 0
CH2_STATE
Text GLabel 7450 5050 0    50   Input ~ 0
CH3_STATE
Text GLabel 7450 4950 0    50   Input ~ 0
CH3_LO_EN
Text GLabel 7450 4850 0    50   Input ~ 0
CH3_HI_EN
Text GLabel 8950 2000 0    50   Input ~ 0
CH4_HI_EN
Text GLabel 8950 2100 0    50   Input ~ 0
CH4_LO_EN
Text GLabel 8950 3150 0    50   Input ~ 0
CH5_STATE
Text GLabel 8950 2200 0    50   Input ~ 0
CH4_STATE
Text GLabel 8950 3050 0    50   Input ~ 0
CH5_LO_EN
Text GLabel 5250 1700 2    50   Output ~ 0
CH5_HI_EN
Text GLabel 8950 2950 0    50   Input ~ 0
CH5_HI_EN
Text GLabel 8950 3900 0    50   Input ~ 0
CH6_HI_EN
Text GLabel 8950 4000 0    50   Input ~ 0
CH6_LO_EN
Text GLabel 8950 4100 0    50   Input ~ 0
CH6_STATE
Text GLabel 8950 5050 0    50   Input ~ 0
CH7_STATE
Text GLabel 8950 4950 0    50   Input ~ 0
CH7_LO_EN
Text GLabel 8950 4850 0    50   Input ~ 0
CH7_HI_EN
Wire Wire Line
	9650 4750 10400 4750
Wire Wire Line
	10400 4750 10400 3700
Wire Wire Line
	10400 3700 10450 3700
Wire Wire Line
	9650 3800 10200 3800
Wire Wire Line
	8150 4750 8450 4750
Wire Wire Line
	8450 4750 8450 4300
Wire Wire Line
	8150 3800 8450 3800
Wire Wire Line
	8450 3800 8450 3400
Wire Wire Line
	8450 3300 8450 2850
Wire Wire Line
	8450 2850 8150 2850
Wire Wire Line
	10200 3800 10200 3600
Wire Wire Line
	10200 3600 10450 3600
Wire Wire Line
	9650 2850 10050 2850
Wire Wire Line
	10050 2850 10050 3500
Wire Wire Line
	10050 3500 10450 3500
Wire Wire Line
	9650 1900 10100 1900
Wire Wire Line
	10100 1900 10100 3400
Wire Wire Line
	10100 3400 10450 3400
Wire Wire Line
	8450 4300 10350 4300
Wire Wire Line
	10350 4300 10350 3300
Wire Wire Line
	10350 3300 10450 3300
Wire Wire Line
	8450 3400 9950 3400
Wire Wire Line
	9950 3400 9950 3200
Wire Wire Line
	9950 3200 10450 3200
Wire Wire Line
	8450 3300 9900 3300
Wire Wire Line
	9900 3300 9900 3100
Wire Wire Line
	9900 3100 10450 3100
Wire Wire Line
	8150 1900 8450 1900
Wire Wire Line
	8450 1900 8450 2400
Wire Wire Line
	8450 2400 10350 2400
Wire Wire Line
	10350 2400 10350 3000
Wire Wire Line
	10350 3000 10450 3000
$Comp
L power:VDD #PWR?
U 1 1 5ECD3E32
P 2400 2900
AR Path="/5EBD7FA0/5ECD3E32" Ref="#PWR?"  Part="1" 
AR Path="/5EBD7EE9/5ECD3E32" Ref="#PWR0181"  Part="1" 
F 0 "#PWR0181" H 2400 2750 50  0001 C CNN
F 1 "VDD" H 2417 3073 50  0000 C CNN
F 2 "" H 2400 2900 50  0001 C CNN
F 3 "" H 2400 2900 50  0001 C CNN
	1    2400 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5ECD4100
P 2400 3100
AR Path="/5EBD7FA0/5ECD4100" Ref="#PWR?"  Part="1" 
AR Path="/5EBD7EE9/5ECD4100" Ref="#PWR0182"  Part="1" 
F 0 "#PWR0182" H 2400 2850 50  0001 C CNN
F 1 "GND" H 2405 2927 50  0000 C CNN
F 2 "" H 2400 3100 50  0001 C CNN
F 3 "" H 2400 3100 50  0001 C CNN
	1    2400 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5ECD49AB
P 2400 3000
F 0 "C2" H 2308 2954 50  0000 R CNN
F 1 "100nF" H 2308 3045 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2400 3000 50  0001 C CNN
F 3 "~" H 2400 3000 50  0001 C CNN
	1    2400 3000
	-1   0    0    1   
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 5ECD860A
P 2400 5250
AR Path="/5EBD7FA0/5ECD860A" Ref="#PWR?"  Part="1" 
AR Path="/5EBD7EE9/5ECD860A" Ref="#PWR0183"  Part="1" 
F 0 "#PWR0183" H 2400 5100 50  0001 C CNN
F 1 "VDD" H 2417 5423 50  0000 C CNN
F 2 "" H 2400 5250 50  0001 C CNN
F 3 "" H 2400 5250 50  0001 C CNN
	1    2400 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5ECD8610
P 2400 5450
AR Path="/5EBD7FA0/5ECD8610" Ref="#PWR?"  Part="1" 
AR Path="/5EBD7EE9/5ECD8610" Ref="#PWR0184"  Part="1" 
F 0 "#PWR0184" H 2400 5200 50  0001 C CNN
F 1 "GND" H 2405 5277 50  0000 C CNN
F 2 "" H 2400 5450 50  0001 C CNN
F 3 "" H 2400 5450 50  0001 C CNN
	1    2400 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5ECD8616
P 2400 5350
F 0 "C3" H 2308 5304 50  0000 R CNN
F 1 "100nF" H 2308 5395 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2400 5350 50  0001 C CNN
F 3 "~" H 2400 5350 50  0001 C CNN
	1    2400 5350
	-1   0    0    1   
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 5ECDF77C
P 2400 1300
AR Path="/5EBD7FA0/5ECDF77C" Ref="#PWR?"  Part="1" 
AR Path="/5EBD7EE9/5ECDF77C" Ref="#PWR0185"  Part="1" 
F 0 "#PWR0185" H 2400 1150 50  0001 C CNN
F 1 "VDD" H 2417 1473 50  0000 C CNN
F 2 "" H 2400 1300 50  0001 C CNN
F 3 "" H 2400 1300 50  0001 C CNN
	1    2400 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5ECDF782
P 2400 1500
AR Path="/5EBD7FA0/5ECDF782" Ref="#PWR?"  Part="1" 
AR Path="/5EBD7EE9/5ECDF782" Ref="#PWR0186"  Part="1" 
F 0 "#PWR0186" H 2400 1250 50  0001 C CNN
F 1 "GND" H 2405 1327 50  0000 C CNN
F 2 "" H 2400 1500 50  0001 C CNN
F 3 "" H 2400 1500 50  0001 C CNN
	1    2400 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5ECDF788
P 2400 1400
F 0 "C1" H 2308 1354 50  0000 R CNN
F 1 "100nF" H 2308 1445 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2400 1400 50  0001 C CNN
F 3 "~" H 2400 1400 50  0001 C CNN
	1    2400 1400
	-1   0    0    1   
$EndComp
$EndSCHEMATC
