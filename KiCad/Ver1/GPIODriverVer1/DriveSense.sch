EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 3700 1300 0    50   Output ~ 0
D0_Out
Text HLabel 2100 1300 0    50   Input ~ 0
D1_In
Text HLabel 2450 1100 0    50   Input ~ 0
D2_In
Text HLabel 2050 1500 0    50   Input ~ 0
D3_In
Text HLabel 2850 1400 0    50   Input ~ 0
D4_In
Text HLabel 2250 1600 0    50   Input ~ 0
D5_In
Text HLabel 3050 1200 0    50   Input ~ 0
D6_In
Text HLabel 3100 1300 0    50   Input ~ 0
D7_In
Text HLabel 5650 2300 2    50   Output ~ 0
D1_Out
Text HLabel 5600 2900 2    50   Output ~ 0
D2_Out
Text HLabel 5600 3450 2    50   Output ~ 0
D3_Out
Text HLabel 5550 4000 2    50   Output ~ 0
D4_Out
Text HLabel 5600 4600 2    50   Output ~ 0
D5_Out
Text HLabel 5650 5150 2    50   Output ~ 0
D6_Out
Text HLabel 5600 5750 2    50   Output ~ 0
D7_Out
Text HLabel 3700 800  0    50   UnSpc ~ 0
VLogic
$Comp
L Device:R_US R?
U 1 1 5CD50C2A
P 3950 1300
F 0 "R?" V 3745 1300 50  0000 C CNN
F 1 "100" V 3836 1300 50  0000 C CNN
F 2 "" V 3990 1290 50  0001 C CNN
F 3 "~" H 3950 1300 50  0001 C CNN
	1    3950 1300
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5CD51F29
P 4200 1050
F 0 "R?" H 4268 1096 50  0000 L CNN
F 1 "1k" H 4268 1005 50  0000 L CNN
F 2 "" V 4240 1040 50  0001 C CNN
F 3 "~" H 4200 1050 50  0001 C CNN
	1    4200 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 800  4200 800 
Wire Wire Line
	4200 800  4200 900 
Wire Wire Line
	4100 1300 4200 1300
Wire Wire Line
	4200 1200 4200 1300
Wire Wire Line
	3800 1300 3700 1300
$Comp
L power:GND #PWR?
U 1 1 5CD55563
P 4200 2350
F 0 "#PWR?" H 4200 2100 50  0001 C CNN
F 1 "GND" H 4205 2177 50  0000 C CNN
F 2 "" H 4200 2350 50  0001 C CNN
F 3 "" H 4200 2350 50  0001 C CNN
	1    4200 2350
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:2N7002 Q?
U 1 1 5CD76E02
P 4300 1600
AR Path="/5CD76E02" Ref="Q?"  Part="1" 
AR Path="/5CBF3A4E/5CD76E02" Ref="Q?"  Part="1" 
AR Path="/5CD1E7F0/5CD76E02" Ref="Q?"  Part="1" 
F 0 "Q?" H 4506 1646 50  0000 L CNN
F 1 "2N7002" H 4506 1555 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4500 1525 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7002.pdf" H 4300 1600 50  0001 L CNN
	1    4300 1600
	-1   0    0    -1  
$EndComp
$Comp
L Device:D_Zener_ALT D?
U 1 1 5CD98637
P 4850 1900
AR Path="/5CD98637" Ref="D?"  Part="1" 
AR Path="/5CBF3A4E/5CD98637" Ref="D?"  Part="1" 
AR Path="/5CD1E7F0/5CD98637" Ref="D?"  Part="1" 
F 0 "D?" H 4800 1700 50  0000 L CNN
F 1 "BZX84C12" H 4600 1800 50  0000 L CNN
F 2 "" H 4850 1900 50  0001 C CNN
F 3 "~" H 4850 1900 50  0001 C CNN
	1    4850 1900
	0    -1   1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5CD98674
P 4600 1900
F 0 "R?" H 4450 1950 50  0000 L CNN
F 1 "10k" H 4400 1850 50  0000 L CNN
F 2 "" V 4640 1890 50  0001 C CNN
F 3 "~" H 4600 1900 50  0001 C CNN
	1    4600 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5CD9A138
P 5250 1600
F 0 "R?" V 5045 1600 50  0000 C CNN
F 1 "1k" V 5136 1600 50  0000 C CNN
F 2 "" V 5290 1590 50  0001 C CNN
F 3 "~" H 5250 1600 50  0001 C CNN
	1    5250 1600
	0    1    1    0   
$EndComp
Text HLabel 5500 1600 2    50   Input ~ 0
D0_In
Wire Wire Line
	4200 1800 4200 2200
Wire Wire Line
	4600 2050 4600 2200
Wire Wire Line
	4600 2200 4200 2200
Connection ~ 4200 2200
Wire Wire Line
	4200 2200 4200 2350
Wire Wire Line
	4600 2200 4850 2200
Wire Wire Line
	4850 2200 4850 2050
Connection ~ 4600 2200
Wire Wire Line
	4500 1600 4600 1600
Wire Wire Line
	4850 1750 4850 1600
Connection ~ 4850 1600
Wire Wire Line
	4850 1600 5100 1600
Wire Wire Line
	4600 1750 4600 1600
Connection ~ 4600 1600
Wire Wire Line
	4600 1600 4850 1600
Wire Wire Line
	5500 1600 5400 1600
Wire Wire Line
	4200 1300 4200 1400
Connection ~ 4200 1300
$EndSCHEMATC
