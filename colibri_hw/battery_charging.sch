EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
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
L AP9101CAK6-ANTRG1:AP9101CAK6-ANTRG1 U?
U 1 1 61A7B999
P 4600 3300
F 0 "U?" H 4600 3767 50  0000 C CNN
F 1 "AP9101CAK6-ANTRG1" H 4600 3676 50  0000 C CNN
F 2 "SOT95P280X140-6N" H 4600 3300 50  0001 L BNN
F 3 "" H 4600 3300 50  0001 L BNN
F 4 "Diodes Incorporated" H 4600 3300 50  0001 L BNN "MANUFACTURER"
	1    4600 3300
	-1   0    0    -1  
$EndComp
$Comp
L Transistor_FET:AO4402 U?
U 1 1 61A8492C
P 4850 4450
F 0 "U?" V 5123 4400 50  0000 C CNN
F 1 "AO4402" V 5214 4400 50  0000 C CNN
F 2 "Package_SO:SOIC127P490X600X175-8N" H 5850 4350 50  0001 C CNN
F 3 "" H 4850 4650 50  0001 C CNN
	1    4850 4450
	0    1    1    0   
$EndComp
$Comp
L Transistor_FET:AO4402 U?
U 1 1 61A8519E
P 5750 4450
F 0 "U?" V 6023 4400 50  0000 C CNN
F 1 "AO4402" V 6114 4400 50  0000 C CNN
F 2 "Package_SO:SOIC127P490X600X175-8N" H 6750 4350 50  0001 C CNN
F 3 "" H 5750 4650 50  0001 C CNN
	1    5750 4450
	0    -1   1    0   
$EndComp
Wire Wire Line
	5100 4300 5500 4300
$Comp
L Device:C C?
U 1 1 61A8B2C2
P 3900 3300
F 0 "C?" H 4150 3250 50  0000 R CNN
F 1 "100n" H 4200 3350 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3938 3150 50  0001 C CNN
F 3 "~" H 3900 3300 50  0001 C CNN
	1    3900 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	3900 3100 3900 3150
Wire Wire Line
	3900 3450 3900 3500
$Comp
L Device:R R?
U 1 1 61A905BD
P 6100 3850
F 0 "R?" H 6170 3896 50  0000 L CNN
F 1 "2.7k" H 6170 3805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6030 3850 50  0001 C CNN
F 3 "~" H 6100 3850 50  0001 C CNN
	1    6100 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 4000 6100 4350
Text GLabel 6400 4350 2    50   Input ~ 0
P-
Text HLabel 6350 4350 1    50   Input ~ 0
P-
Connection ~ 6100 4350
Wire Wire Line
	6100 4350 6400 4350
Text GLabel 2900 3100 0    50   Input ~ 0
B+
Text HLabel 2950 3100 1    50   Input ~ 0
B+
Text GLabel 2900 4350 0    50   Input ~ 0
B-
Text HLabel 2950 4350 1    50   Input ~ 0
B-
$Comp
L Device:R R?
U 1 1 61A91FD0
P 3300 3100
F 0 "R?" V 3093 3100 50  0000 C CNN
F 1 "330" V 3184 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3230 3100 50  0001 C CNN
F 3 "~" H 3300 3100 50  0001 C CNN
	1    3300 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	2900 3100 3100 3100
Wire Wire Line
	3900 3500 3900 4350
Wire Wire Line
	3900 4350 4500 4350
Connection ~ 3900 3500
Wire Wire Line
	3450 3100 3900 3100
Connection ~ 3900 3100
Connection ~ 3900 4350
Wire Wire Line
	2900 4350 3900 4350
Wire Wire Line
	5300 3200 6100 3200
Wire Wire Line
	6100 3200 6100 3700
Wire Wire Line
	5300 3400 5800 3400
Wire Wire Line
	5800 3400 5800 4150
Wire Wire Line
	5300 3300 5450 3300
Wire Wire Line
	5450 3300 5450 4150
Wire Wire Line
	5450 4150 4800 4150
Text HLabel 6350 2700 1    50   Input ~ 0
P+
Text GLabel 6400 2700 2    50   Input ~ 0
P+
Wire Wire Line
	3100 3100 3100 2700
Wire Wire Line
	3100 2700 6400 2700
Connection ~ 3100 3100
Wire Wire Line
	3100 3100 3150 3100
$EndSCHEMATC
