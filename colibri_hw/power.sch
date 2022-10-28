EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 5100 3650 0    50   Input ~ 0
P+
Text GLabel 5100 4150 0    50   Input ~ 0
P-
$Comp
L Regulator_Linear:TC1264-33 U?
U 1 1 61AA06D5
P 5900 3500
F 0 "U?" H 5900 3592 50  0000 C CNN
F 1 "TC1264-33" H 5900 3501 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT230P700X180-4N" H 5800 3700 50  0001 C CNN
F 3 "" H 5900 3500 50  0001 C CNN
	1    5900 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 3650 5600 3650
Wire Wire Line
	5100 4150 5900 4150
Wire Wire Line
	5900 4150 5900 3950
$Comp
L Device:C C?
U 1 1 61AA0FC9
P 6350 3900
F 0 "C?" H 6465 3946 50  0000 L CNN
F 1 "C" H 6465 3855 50  0000 L CNN
F 2 "" H 6388 3750 50  0001 C CNN
F 3 "~" H 6350 3900 50  0001 C CNN
	1    6350 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 3650 6350 3650
Wire Wire Line
	5900 4150 6350 4150
Connection ~ 5900 4150
Wire Wire Line
	6350 3650 6350 3750
Wire Wire Line
	6350 4050 6350 4150
Text GLabel 6850 3650 2    50   Output ~ 0
3.3v
Wire Wire Line
	6350 3650 6850 3650
Connection ~ 6350 3650
Text HLabel 5150 3650 1    50   Output ~ 0
P+
Text HLabel 5150 4150 1    50   Output ~ 0
P-
Text HLabel 6800 3650 1    50   Output ~ 0
3.3v
$EndSCHEMATC
