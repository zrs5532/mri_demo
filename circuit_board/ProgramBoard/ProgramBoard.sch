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
Text Notes 6950 4650 0    50   ~ 0
PICkit 3 connector
$Comp
L SensorDemo_connector:HEADER_6 P2
U 1 1 603DF1C0
P 7250 4800
F 0 "P2" H 7588 4692 50  0000 L CNN
F 1 "HEADER_6" H 7250 4250 50  0001 C CNN
F 2 "SensorDemo_pcb:HEADER_6" H 10550 2600 60  0001 C CNN
F 3 "" H 10550 2600 60  0000 C CNN
	1    7250 4800
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
Text Notes 4650 5350 0    50   ~ 0
IDC-10 connector
$EndSCHEMATC
