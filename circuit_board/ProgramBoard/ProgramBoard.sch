EESchema Schematic File Version 4
EELAYER 30 0
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
L SensorDemo_connector:TC2030_IDC P2
U 1 1 6049E1C8
P 2900 1700
F 0 "P2" H 2900 1973 50  0000 C CNN
F 1 "TC2030_IDC" H 2900 1250 50  0001 C CNN
F 2 "SensorDemo_pcb:HEADER_3X2" H 6200 -450 60  0001 C CNN
F 3 "" H 6200 -450 60  0000 C CNN
	1    2900 1700
	1    0    0    -1  
$EndComp
$Comp
L SensorDemo_connector:TC2030_IDC P3
U 1 1 6049EA08
P 2950 2800
F 0 "P3" H 2950 3073 50  0000 C CNN
F 1 "TC2030_IDC" H 2950 2350 50  0001 C CNN
F 2 "SensorDemo_pcb:HEADER_3X2" H 6250 650 60  0001 C CNN
F 3 "" H 6250 650 60  0000 C CNN
	1    2950 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 1350 1900 1500
Wire Wire Line
	1900 1500 1800 1500
$Comp
L SensorDemo_power_supply:+5V #PS01
U 1 1 604A19ED
P 1900 1350
F 0 "#PS01" H 1900 1300 50  0001 C CNN
F 1 "+5V" H 1968 1378 50  0000 L CNN
F 2 "" H 1905 1045 50  0001 C CNN
F 3 "" H 1905 1045 50  0001 C CNN
	1    1900 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 1800 2500 1800
Wire Wire Line
	2500 2000 3300 2000
Wire Wire Line
	3300 2000 3300 1800
Wire Wire Line
	3300 1800 3250 1800
Wire Wire Line
	2500 1800 2500 2000
Wire Wire Line
	2500 2050 2500 2000
Connection ~ 2500 2000
$Comp
L SensorDemo_power_supply:+5V #PS03
U 1 1 604A80D9
P 2500 2050
F 0 "#PS03" H 2500 2000 50  0001 C CNN
F 1 "+5V" H 2432 2077 50  0000 R CNN
F 2 "" H 2505 1745 50  0001 C CNN
F 3 "" H 2505 1745 50  0001 C CNN
	1    2500 2050
	-1   0    0    1   
$EndComp
Wire Wire Line
	3250 1700 3300 1700
Wire Wire Line
	3300 1700 3300 1600
Wire Wire Line
	3300 1600 3250 1600
Wire Wire Line
	3300 1400 3300 1600
Connection ~ 3300 1600
$Comp
L SensorDemo_power_supply:GND #PS04
U 1 1 604A954E
P 3300 1350
F 0 "#PS04" H 3300 1225 50  0001 C CNN
F 1 "GND" H 3300 1275 50  0001 C CNN
F 2 "" H 3300 1350 50  0001 C CNN
F 3 "" H 3300 1350 50  0001 C CNN
	1    3300 1350
	-1   0    0    1   
$EndComp
Wire Wire Line
	3550 2700 3300 2700
Wire Wire Line
	3550 2800 3300 2800
Wire Wire Line
	3550 2900 3300 2900
Wire Wire Line
	2350 2700 2600 2700
Wire Wire Line
	2350 2800 2600 2800
Wire Wire Line
	2350 2900 2600 2900
Text Label 3550 2700 2    50   ~ 0
~MCLR
Text Label 3550 2800 2    50   ~ 0
VSS
Text Label 3550 2900 2    50   ~ 0
PGC
Text Label 2350 2700 0    50   ~ 0
VDD
Text Label 2350 2800 0    50   ~ 0
PGD
Text Label 2350 2900 0    50   ~ 0
PGM
Text Notes 1250 1100 0    50   ~ 0
From the USB, PIN 6 on top (in pic in ref)
$Comp
L SensorDemo_connector:CONN5X2 P1
U 1 1 604B47DD
P 1450 1700
F 0 "P1" H 1450 2187 60  0000 C CNN
F 1 "CONN5X2" H 1450 2081 60  0000 C CNN
F 2 "SensorDemo_pcb:FT231X_breakout" H 4750 -450 60  0000 C CNN
F 3 "" H 4750 -450 60  0000 C CNN
	1    1450 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  1900 1100 1900
Text Label 900  1900 0    50   ~ 0
RX
Wire Wire Line
	2000 1900 1800 1900
Text Label 2000 1900 2    50   ~ 0
TX
Wire Wire Line
	1050 2050 1050 1500
Wire Wire Line
	1050 1500 1100 1500
$Comp
L SensorDemo_power_supply:GND #PS0101
U 1 1 604BC56C
P 1050 2100
F 0 "#PS0101" H 1050 1975 50  0001 C CNN
F 1 "GND" H 1050 2025 50  0001 C CNN
F 2 "" H 1050 2100 50  0001 C CNN
F 3 "" H 1050 2100 50  0001 C CNN
	1    1050 2100
	1    0    0    -1  
$EndComp
NoConn ~ 1100 1600
NoConn ~ 1100 1700
NoConn ~ 1100 1800
NoConn ~ 1800 1800
NoConn ~ 1800 1700
NoConn ~ 1800 1600
$EndSCHEMATC