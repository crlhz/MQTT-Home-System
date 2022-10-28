EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
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
$Sheet
S 6100 2900 1400 1300
U 61A7B6E2
F0 "ESP Core" 50
F1 "esp_core.sch" 50
$EndSheet
$Comp
L power:GND #PWR01
U 1 1 61AAE9A4
P 5050 4000
F 0 "#PWR01" H 5050 3750 50  0001 C CNN
F 1 "GND" H 5055 3827 50  0000 C CNN
F 2 "" H 5050 4000 50  0001 C CNN
F 3 "" H 5050 4000 50  0001 C CNN
	1    5050 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 3950 5050 3950
Wire Wire Line
	5050 3950 5050 4000
$Sheet
S 3550 2950 1400 1150
U 61A7B59A
F0 "Power Managment" 50
F1 "power_managment.sch" 50
F2 "P-" I R 4950 3950 50 
F3 "B+" I L 3550 3100 50 
F4 "B-" I L 3550 3950 50 
F5 "P+" I R 4950 3100 50 
F6 "3.3v" O R 4950 3500 50 
$EndSheet
Text GLabel 9550 1100 0    50   Input ~ 0
gpio16
Text GLabel 9550 1200 0    50   Input ~ 0
rest
Wire Wire Line
	9550 1100 9850 1100
$Comp
L Switch:SW_Push SW?
U 1 1 61AE5E7D
P 9600 1700
AR Path="/61A7B6E2/61AE5E7D" Ref="SW?"  Part="1" 
AR Path="/61AE5E7D" Ref="SW1"  Part="1" 
F 0 "SW1" V 9646 1652 50  0000 R CNN
F 1 "SW_Push" V 9555 1652 50  0000 R CNN
F 2 "Button_Switch_SMD:TP-1163s" H 9600 1900 50  0001 C CNN
F 3 "~" H 9600 1900 50  0001 C CNN
	1    9600 1700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9550 1200 9600 1200
Wire Wire Line
	9600 1200 9600 1500
Connection ~ 9600 1200
Wire Wire Line
	9600 1200 9850 1200
$Comp
L power:GND #PWR?
U 1 1 61AE5E87
P 9600 1900
AR Path="/61A7B6E2/61AE5E87" Ref="#PWR?"  Part="1" 
AR Path="/61AE5E87" Ref="#PWR02"  Part="1" 
F 0 "#PWR02" H 9600 1650 50  0001 C CNN
F 1 "GND" H 9605 1727 50  0000 C CNN
F 2 "" H 9600 1900 50  0001 C CNN
F 3 "" H 9600 1900 50  0001 C CNN
	1    9600 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61AEF60C
P 9600 3650
AR Path="/61A7B6E2/61AEF60C" Ref="R?"  Part="1" 
AR Path="/61AEF60C" Ref="R2"  Part="1" 
F 0 "R2" H 9670 3696 50  0000 L CNN
F 1 "220" H 9670 3605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9530 3650 50  0001 C CNN
F 3 "~" H 9600 3650 50  0001 C CNN
	1    9600 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61AEF612
P 9600 3800
AR Path="/61A7B6E2/61AEF612" Ref="#PWR?"  Part="1" 
AR Path="/61AEF612" Ref="#PWR03"  Part="1" 
F 0 "#PWR03" H 9600 3550 50  0001 C CNN
F 1 "GND" H 9605 3627 50  0000 C CNN
F 2 "" H 9600 3800 50  0001 C CNN
F 3 "" H 9600 3800 50  0001 C CNN
	1    9600 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 3300 9950 3300
Wire Wire Line
	9600 3200 9950 3200
$Comp
L Device:R R?
U 1 1 61AEF61C
P 9600 2850
AR Path="/61A7B6E2/61AEF61C" Ref="R?"  Part="1" 
AR Path="/61AEF61C" Ref="R1"  Part="1" 
F 0 "R1" H 9670 2896 50  0000 L CNN
F 1 "10k" H 9670 2805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9530 2850 50  0001 C CNN
F 3 "~" H 9600 2850 50  0001 C CNN
	1    9600 2850
	1    0    0    -1  
$EndComp
Text GLabel 9600 2700 1    50   Input ~ 0
3.3v
Text GLabel 9600 3200 0    50   Input ~ 0
gpio0
Wire Wire Line
	9600 3000 9600 3200
Wire Wire Line
	9600 3300 9600 3500
$Comp
L Connector:Conn_01x03_Male J?
U 1 1 61AF3874
P 9950 4850
AR Path="/61A7B6E2/61AF3874" Ref="J?"  Part="1" 
AR Path="/61AF3874" Ref="J2"  Part="1" 
F 0 "J2" H 9850 4750 50  0000 C CNN
F 1 "Conn_01x03_Male" H 9600 4850 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9950 4850 50  0001 C CNN
F 3 "~" H 9950 4850 50  0001 C CNN
	1    9950 4850
	-1   0    0    -1  
$EndComp
Text GLabel 9550 4750 0    50   Input ~ 0
TX
Text GLabel 9550 4850 0    50   Input ~ 0
RX
Wire Wire Line
	9550 4750 9750 4750
Wire Wire Line
	9550 4850 9750 4850
$Comp
L power:GND #PWR?
U 1 1 61AF387E
P 9750 4950
AR Path="/61A7B6E2/61AF387E" Ref="#PWR?"  Part="1" 
AR Path="/61AF387E" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 9750 4700 50  0001 C CNN
F 1 "GND" H 9755 4777 50  0000 C CNN
F 2 "" H 9750 4950 50  0001 C CNN
F 3 "" H 9750 4950 50  0001 C CNN
	1    9750 4950
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J3
U 1 1 61F73D0C
P 9950 5700
F 0 "J3" H 9922 5724 50  0000 R CNN
F 1 "Conn_01x03_Male" H 9922 5633 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9950 5700 50  0001 C CNN
F 3 "~" H 9950 5700 50  0001 C CNN
	1    9950 5700
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J?
U 1 1 61AEF606
P 10150 3300
AR Path="/61A7B6E2/61AEF606" Ref="J?"  Part="1" 
AR Path="/61AEF606" Ref="J5"  Part="1" 
F 0 "J5" H 10122 3232 50  0000 R CNN
F 1 "Conn_01x03_Male" H 10122 3323 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 10150 3300 50  0001 C CNN
F 3 "~" H 10150 3300 50  0001 C CNN
	1    10150 3300
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J?
U 1 1 61AE5E74
P 10050 1200
AR Path="/61A7B6E2/61AE5E74" Ref="J?"  Part="1" 
AR Path="/61AE5E74" Ref="J4"  Part="1" 
F 0 "J4" H 10022 1132 50  0000 R CNN
F 1 "Conn_01x03_Male" H 10022 1223 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 10050 1200 50  0001 C CNN
F 3 "~" H 10050 1200 50  0001 C CNN
	1    10050 1200
	-1   0    0    -1  
$EndComp
Text GLabel 9600 5600 1    50   Input ~ 0
3.3v
Wire Wire Line
	9750 5600 9600 5600
$Comp
L power:GND #PWR05
U 1 1 61F79E05
P 9750 5800
F 0 "#PWR05" H 9750 5550 50  0001 C CNN
F 1 "GND" H 9755 5627 50  0000 C CNN
F 2 "" H 9750 5800 50  0001 C CNN
F 3 "" H 9750 5800 50  0001 C CNN
	1    9750 5800
	1    0    0    -1  
$EndComp
Text GLabel 9750 5700 0    50   Input ~ 0
onewire
Text GLabel 2150 2600 1    50   Input ~ 0
B+
Text GLabel 2150 3300 3    50   Input ~ 0
B-
$Comp
L Connector:XT30UPB-M J1
U 1 1 61FA3E84
P 2150 4300
F 0 "J1" H 2022 4254 50  0000 R CNN
F 1 "XT30UPB-M" H 2022 4345 50  0000 R CNN
F 2 "XT_con:AMASS_XT30UPB-M_1x02_P5.0mm_Vertical" H 1800 4300 50  0001 C CNN
F 3 "" H 1800 4300 50  0001 C CNN
	1    2150 4300
	-1   0    0    1   
$EndComp
Text GLabel 2150 4050 1    50   Input ~ 0
P+
Text GLabel 2150 4550 3    50   Input ~ 0
P-
NoConn ~ 9850 1300
NoConn ~ 9950 3400
$Comp
L Connector:Conn_01x05_Male J6
U 1 1 61FC78C6
P 4950 1050
F 0 "J6" V 5012 1294 50  0000 L CNN
F 1 "Conn_01x05_Male" V 5103 1294 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 4950 1050 50  0001 C CNN
F 3 "~" H 4950 1050 50  0001 C CNN
	1    4950 1050
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x05_Male J7
U 1 1 61FC8735
P 6200 1050
F 0 "J7" V 6262 1294 50  0000 L CNN
F 1 "Conn_01x05_Male" V 6353 1294 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 6200 1050 50  0001 C CNN
F 3 "~" H 6200 1050 50  0001 C CNN
	1    6200 1050
	0    1    1    0   
$EndComp
Text GLabel 4750 1250 3    50   Input ~ 0
gpio2
Text GLabel 4850 1250 3    50   Input ~ 0
gpio5
Text GLabel 4950 1250 3    50   Input ~ 0
gpio12
Text GLabel 5050 1250 3    50   Input ~ 0
gpio13
Text GLabel 5150 1250 3    50   Input ~ 0
gpio14
Wire Wire Line
	6000 1250 6100 1250
Wire Wire Line
	6200 1250 6100 1250
Connection ~ 6100 1250
Wire Wire Line
	6300 1250 6200 1250
Connection ~ 6200 1250
Wire Wire Line
	6400 1250 6300 1250
Connection ~ 6300 1250
$Comp
L power:GND #PWR0101
U 1 1 61FCCB67
P 6200 1250
F 0 "#PWR0101" H 6200 1000 50  0001 C CNN
F 1 "GND" H 6205 1077 50  0000 C CNN
F 2 "" H 6200 1250 50  0001 C CNN
F 3 "" H 6200 1250 50  0001 C CNN
	1    6200 1250
	1    0    0    -1  
$EndComp
Text Notes 7330 7490 0    50   ~ 0
Colibri v1.0
Text Notes 8120 7640 0    50   ~ 0
31.01.2022
$Comp
L Connector:Battery_con_BHC_18650 C1
U 1 1 61F90F57
P 2150 2950
F 0 "C1" V 2050 2600 50  0000 L CNN
F 1 "Battery_con_BHC_18650" V 2200 1850 50  0000 L CNN
F 2 "Connector:Battery_con_BHC_18650" H 2150 3250 50  0001 C CNN
F 3 "" H 2150 3250 50  0001 C CNN
	1    2150 2950
	0    1    1    0   
$EndComp
$EndSCHEMATC
