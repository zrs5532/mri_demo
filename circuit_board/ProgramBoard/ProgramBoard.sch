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
L SensorDemo_discrete:SparkFun_FT231X_Breakout U1
U 1 1 603DD946
P 6800 3500
F 0 "U1" H 6800 4187 60  0000 C CNN
F 1 "SparkFun_FT231X_Breakout" H 6800 4081 60  0000 C CNN
F 2 "SensorDemo_pcb:SparkFun_FT231X_Breakout" H 6800 3650 60  0001 C CNN
F 3 "https://www.tag-connect.com/product/tc2050-idc-nl-10-pin-no-legs-cable-with-ribbon-connector" H 6800 3650 60  0001 C CNN
	1    6800 3500
	1    0    0    -1  
$EndComp
Text Notes 3700 3650 0    50   ~ 0
PICkit 3 connector
$Comp
L SensorDemo_connector:HEADER_6 P2
U 1 1 603DF1C0
P 4000 3550
F 0 "P2" H 4338 3442 50  0000 L CNN
F 1 "HEADER_6" H 4000 3000 50  0001 C CNN
F 2 "SensorDemo_pcb:HEADER_6" H 7300 1350 60  0001 C CNN
F 3 "" H 7300 1350 60  0000 C CNN
	1    4000 3550
	1    0    0    -1  
$EndComp
$Comp
L SensorDemo_connector:CONN5X2 P1
U 1 1 603DFAE2
P 5000 4850
F 0 "P1" H 5000 5337 60  0000 C CNN
F 1 "IDC-10" H 5000 5231 60  0000 C CNN
F 2 "SensorDemo_pcb:IDC_10" H 8300 2700 60  0001 C CNN
F 3 "" H 8300 2700 60  0000 C CNN
	1    5000 4850
	1    0    0    -1  
$EndComp
Text Notes 4700 5350 0    50   ~ 0
IDC-10 connector
$Comp
L SensorDemo_power_supply:GND #PS03
U 1 1 603D34E0
P 5450 5200
F 0 "#PS03" H 5450 5075 50  0001 C CNN
F 1 "GND" H 5450 5125 50  0001 C CNN
F 2 "" H 5450 5200 50  0001 C CNN
F 3 "" H 5450 5200 50  0001 C CNN
	1    5450 5200
	1    0    0    -1  
$EndComp
$Comp
L SensorDemo_power_supply:+5V #PS01
U 1 1 603D79A0
P 7600 3000
F 0 "#PS01" H 7600 2950 50  0001 C CNN
F 1 "+5V" H 7550 3100 50  0000 L CNN
F 2 "" H 7605 2695 50  0001 C CNN
F 3 "" H 7605 2695 50  0001 C CNN
	1    7600 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 3000 7600 3100
Wire Wire Line
	7600 3100 7500 3100
Wire Wire Line
	5350 4650 5450 4650
Wire Wire Line
	5450 4650 5450 5150
Wire Wire Line
	5350 4750 5500 4750
Wire Wire Line
	5500 4750 5500 4100
Wire Wire Line
	4500 4750 4500 4100
Wire Wire Line
	4500 4750 4650 4750
Wire Wire Line
	4650 4650 4400 4650
Wire Wire Line
	4400 4650 4400 5100
$Comp
L SensorDemo_power_supply:GND #PS04
U 1 1 603DAB05
P 4400 5400
F 0 "#PS04" H 4400 5275 50  0001 C CNN
F 1 "GND" H 4400 5325 50  0001 C CNN
F 2 "" H 4400 5400 50  0001 C CNN
F 3 "" H 4400 5400 50  0001 C CNN
	1    4400 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 3850 3850 4450
Wire Wire Line
	3750 3850 3750 4300
Wire Wire Line
	3750 4300 5750 4300
Wire Wire Line
	5750 4300 5750 4850
Wire Wire Line
	5750 4850 5350 4850
Wire Wire Line
	3950 3850 3950 5100
Wire Wire Line
	3950 5100 4400 5100
Connection ~ 4400 5100
Wire Wire Line
	4400 5100 4400 5350
Wire Wire Line
	4050 3850 4050 4200
Wire Wire Line
	4050 4200 5850 4200
Wire Wire Line
	5850 4200 5850 4950
Wire Wire Line
	5850 4950 5350 4950
Wire Wire Line
	4150 3850 4150 4950
Wire Wire Line
	4150 4950 4650 4950
NoConn ~ 4250 3850
Wire Wire Line
	4650 5050 4550 5050
Wire Wire Line
	4550 5050 4550 5450
Wire Wire Line
	4550 5450 6850 5450
Wire Wire Line
	6850 5450 6850 4150
Wire Wire Line
	6950 4150 6950 5050
Wire Wire Line
	6950 5050 5350 5050
Wire Wire Line
	5500 4100 4800 4100
$Comp
L SensorDemo_connector:HEADER_3 P4
U 1 1 603E9635
P 4800 3550
F 0 "P4" H 4988 3442 50  0000 L CNN
F 1 "HEADER_3" H 4800 3000 50  0001 C CNN
F 2 "SensorDemo_pcb:HEADER_3" H 8100 1350 60  0001 C CNN
F 3 "" H 8100 1350 60  0000 C CNN
	1    4800 3550
	1    0    0    -1  
$EndComp
$Comp
L SensorDemo_power_supply:+5V #PS02
U 1 1 603EB14F
P 5200 3500
F 0 "#PS02" H 5200 3450 50  0001 C CNN
F 1 "+5V" H 5150 3600 50  0000 L CNN
F 2 "" H 5205 3195 50  0001 C CNN
F 3 "" H 5205 3195 50  0001 C CNN
	1    5200 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 3500 5200 3950
Wire Wire Line
	4900 3850 4900 3950
Wire Wire Line
	4900 3950 5200 3950
NoConn ~ 4700 3850
Wire Wire Line
	4800 3850 4800 4100
Connection ~ 4800 4100
Wire Wire Line
	4800 4100 4500 4100
$Comp
L SensorDemo_connector:HEADER_3 P3
U 1 1 603EEBCF
P 3350 3550
F 0 "P3" H 3538 3442 50  0000 L CNN
F 1 "HEADER_3" H 3350 3000 50  0001 C CNN
F 2 "SensorDemo_pcb:HEADER_3" H 6650 1350 60  0001 C CNN
F 3 "" H 6650 1350 60  0000 C CNN
	1    3350 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 3850 3450 4450
NoConn ~ 3250 3850
Wire Wire Line
	3350 3850 3350 4850
Wire Wire Line
	3850 4450 3450 4450
Wire Wire Line
	4650 4850 3350 4850
$EndSCHEMATC
