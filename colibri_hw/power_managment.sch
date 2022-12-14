EESchema Schematic File Version 4
EELAYER 30 0
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
$Comp
L AP9101CAK6-ANTRG1:AP9101CAK6-ANTRG1 U3
U 1 1 61A7B999
P 4600 3300
F 0 "U3" H 4600 3767 50  0000 C CNN
F 1 "AP9101CAK6-ANTRG1" H 4600 3676 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 4600 3300 50  0001 L BNN
F 3 "" H 4600 3300 50  0001 L BNN
F 4 "Diodes Incorporated" H 4600 3300 50  0001 L BNN "MANUFACTURER"
	1    4600 3300
	-1   0    0    -1  
$EndComp
$Comp
L Transistor_FET:AO4402 U4
U 1 1 61A8492C
P 4850 4450
F 0 "U4" V 5123 4400 50  0000 C CNN
F 1 "AO4402" V 5214 4400 50  0000 C CNN
F 2 "Package_SO:SOIC127P490X600X175-8N" H 5850 4350 50  0001 C CNN
F 3 "" H 4850 4650 50  0001 C CNN
	1    4850 4450
	0    1    1    0   
$EndComp
$Comp
L Transistor_FET:AO4402 U5
U 1 1 61A8519E
P 5750 4450
F 0 "U5" V 6023 4400 50  0000 C CNN
F 1 "AO4402" V 6114 4400 50  0000 C CNN
F 2 "Package_SO:SOIC127P490X600X175-8N" H 6750 4350 50  0001 C CNN
F 3 "" H 5750 4650 50  0001 C CNN
	1    5750 4450
	0    -1   1    0   
$EndComp
Wire Wire Line
	5100 4300 5500 4300
$Comp
L Device:C C3
U 1 1 61A8B2C2
P 3900 3300
F 0 "C3" H 4150 3250 50  0000 R CNN
F 1 "100n" H 4200 3350 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 3938 3150 50  0001 C CNN
F 3 "~" H 3900 3300 50  0001 C CNN
	1    3900 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	3900 3100 3900 3150
Wire Wire Line
	3900 3450 3900 3500
$Comp
L Device:R R11
U 1 1 61A905BD
P 6100 3850
F 0 "R11" H 6170 3896 50  0000 L CNN
F 1 "2.7k" H 6170 3805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6030 3850 50  0001 C CNN
F 3 "~" H 6100 3850 50  0001 C CNN
	1    6100 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 4000 6100 4350
Connection ~ 6100 4350
Text GLabel 2900 3100 0    50   Input ~ 0
B+
Text HLabel 2950 3100 1    50   Input ~ 0
B+
Text GLabel 2900 4350 0    50   Input ~ 0
B-
Text HLabel 2950 4350 1    50   Input ~ 0
B-
$Comp
L Device:R R10
U 1 1 61A91FD0
P 3300 3100
F 0 "R10" V 3093 3100 50  0000 C CNN
F 1 "330" V 3184 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3230 3100 50  0001 C CNN
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
Wire Wire Line
	3100 3100 3100 2700
Connection ~ 3100 3100
Wire Wire Line
	3100 3100 3150 3100
Text HLabel 9300 2700 1    50   Output ~ 0
3.3v
Text HLabel 6750 4350 1    50   Output ~ 0
P-
Text HLabel 6750 2700 3    50   Output ~ 0
P+
Text GLabel 9350 2700 2    50   Output ~ 0
3.3v
$Comp
L Device:C C?
U 1 1 61AA500F
P 9000 3500
AR Path="/61A7B743/61AA500F" Ref="C?"  Part="1" 
AR Path="/61A7B59A/61AA500F" Ref="C4"  Part="1" 
F 0 "C4" H 9115 3546 50  0000 L CNN
F 1 "1u" H 9115 3455 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 9038 3350 50  0001 C CNN
F 3 "~" H 9000 3500 50  0001 C CNN
	1    9000 3500
	1    0    0    -1  
$EndComp
Text GLabel 6750 4350 3    50   Input ~ 0
P-
Text GLabel 6750 2700 1    50   Input ~ 0
P+
Wire Wire Line
	6100 4350 7100 4350
$Comp
L Diode:MMBZ5V6AL-7-F D1
U 1 1 61B04D35
P 7150 3450
F 0 "D1" V 7104 3488 50  0000 L CNN
F 1 "MMBZ5V6AL-7-F" V 7195 3488 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7150 3500 50  0001 C CNN
F 3 "" H 7150 3500 50  0001 C CNN
	1    7150 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	3100 2700 7100 2700
Wire Wire Line
	7100 3300 7100 2700
Connection ~ 7100 2700
Wire Wire Line
	7100 2700 7750 2700
Wire Wire Line
	7100 3600 7100 4350
Connection ~ 7100 4350
$Comp
L eec:KF33BD-TR U6
U 1 1 61B2188F
P 7650 2700
F 0 "U6" H 8200 2965 50  0000 C CNN
F 1 "KF33BD-TR" H 8200 2874 50  0000 C CNN
F 2 "eec:STMicroelectronics-KF33BD-TR-Level_A" H 7650 3100 50  0001 L CNN
F 3 "http://www.st.com/internet/com/TECHNICAL_RESOURCES/TECHNICAL_LITERATURE/DATASHEET/CD00000970.pdf" H 7650 3200 50  0001 L CNN
F 4 "SOIC127P600-8" H 7650 3300 50  0001 L CNN "Code  IPC"
F 5 "MS-012-AA" H 7650 3400 50  0001 L CNN "Code  JEDEC"
F 6 "Manufacturer URL" H 7650 3500 50  0001 L CNN "Component Link 1 Description"
F 7 "http://www.st.com" H 7650 3600 50  0001 L CNN "Component Link 1 URL"
F 8 "Package Specification" H 7650 3700 50  0001 L CNN "Component Link 3 Description"
F 9 "http://www.st.com/internet/com/TECHNICAL_RESOURCES/TECHNICAL_LITERATURE/PACKAGE_INFORMATION/CD00004680.pdf" H 7650 3800 50  0001 L CNN "Component Link 3 URL"
F 10 "21/02/2008" H 7650 3900 50  0001 L CNN "Datasheet Version"
F 11 "8-Pin Small Outline Integrated Circuit 1.27 mm Pitch" H 7650 4000 50  0001 L CNN "Package Description"
F 12 "1/12/2002" H 7650 4100 50  0001 L CNN "Package Version"
F 13 "IC" H 7650 4200 50  0001 L CNN "category"
F 14 "1170341" H 7650 4300 50  0001 L CNN "ciiva ids"
F 15 "f629ab8e14c0b7e8" H 7650 4400 50  0001 L CNN "library id"
F 16 "STMicroelectronics" H 7650 4500 50  0001 L CNN "manufacturer"
F 17 "SO8" H 7650 4600 50  0001 L CNN "package"
F 18 "1329864045" H 7650 4700 50  0001 L CNN "release date"
F 19 "E425FF13-0E54-4946-834D-39FA38DD1016" H 7650 4800 50  0001 L CNN "vault revision"
F 20 "yes" H 7650 4900 50  0001 L CNN "imported"
	1    7650 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 2700 9000 2700
Wire Wire Line
	9000 3350 9000 2700
Connection ~ 9000 2700
Wire Wire Line
	9000 2700 9350 2700
Wire Wire Line
	9000 3650 9000 4350
Wire Wire Line
	7100 4350 8650 4350
Wire Wire Line
	8650 2900 8650 3000
Wire Wire Line
	8650 3000 8650 3100
Connection ~ 8650 3000
Wire Wire Line
	8650 3100 8650 3200
Connection ~ 8650 3100
Wire Wire Line
	8650 3200 8650 4350
Connection ~ 8650 3200
Connection ~ 8650 4350
Wire Wire Line
	8650 4350 9000 4350
Wire Wire Line
	4500 4350 4500 4450
Connection ~ 4500 4350
Wire Wire Line
	4500 4450 4500 4550
Connection ~ 4500 4450
Wire Wire Line
	5100 4300 5100 4400
Connection ~ 5100 4300
Wire Wire Line
	5100 4400 5100 4500
Connection ~ 5100 4400
Wire Wire Line
	5100 4600 5100 4500
Connection ~ 5100 4500
Wire Wire Line
	5500 4300 5500 4400
Connection ~ 5500 4300
Wire Wire Line
	5500 4400 5500 4500
Connection ~ 5500 4400
Wire Wire Line
	5500 4500 5500 4600
Connection ~ 5500 4500
Wire Wire Line
	6100 4350 6100 4450
Wire Wire Line
	6100 4550 6100 4450
Connection ~ 6100 4450
NoConn ~ 7750 2900
NoConn ~ 7750 3200
$EndSCHEMATC
