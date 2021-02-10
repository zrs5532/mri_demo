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
Wire Wire Line
	5100 3300 5200 3300
Wire Wire Line
	5200 3300 5200 3400
Wire Wire Line
	5200 3400 5100 3400
Wire Wire Line
	5200 3500 5200 3400
Connection ~ 5200 3400
Wire Wire Line
	1150 3500 1150 3650
Text Label 2800 3750 2    50   ~ 0
~CS
Text Label 2800 3650 2    50   ~ 0
SCK
Text Label 2800 3550 2    50   ~ 0
SDI
Wire Wire Line
	2800 3750 2650 3750
Wire Wire Line
	2800 3650 2650 3650
Wire Wire Line
	2800 3550 2650 3550
$Comp
L SensorDemo_power_supply:GND #PS07
U 1 1 600DBC8F
P 1250 3900
F 0 "#PS07" H 1250 3775 50  0001 C CNN
F 1 "GND" H 1250 3825 50  0001 C CNN
F 2 "" H 1250 3900 50  0001 C CNN
F 3 "" H 1250 3900 50  0001 C CNN
	1    1250 3900
	1    0    0    -1  
$EndComp
Connection ~ 2950 3350
Wire Wire Line
	2950 4000 2950 3350
Wire Wire Line
	2950 3350 2650 3350
Wire Wire Line
	2950 2550 2950 3350
Wire Wire Line
	2650 2550 2950 2550
Wire Wire Line
	1150 3650 1350 3650
Wire Wire Line
	1250 3150 1350 3150
Wire Wire Line
	1250 3850 1250 3150
Wire Wire Line
	4100 3100 4200 3100
Wire Wire Line
	4100 3000 4100 3100
Text Label 4050 3400 0    50   ~ 0
SDI
Text Label 4050 3300 0    50   ~ 0
SCK
Text Label 4050 3200 0    50   ~ 0
~CS
Wire Wire Line
	4050 3400 4200 3400
Wire Wire Line
	4050 3300 4200 3300
Wire Wire Line
	4050 3200 4200 3200
NoConn ~ 3700 900 
NoConn ~ 2650 1250
Wire Wire Line
	5650 1100 5650 1200
Wire Wire Line
	4550 1200 4550 1100
Connection ~ 4550 1100
Wire Wire Line
	4550 1100 4950 1100
Wire Wire Line
	4950 1200 4950 1100
Connection ~ 4950 1100
Wire Wire Line
	4950 1100 5300 1100
Wire Wire Line
	5300 1200 5300 1100
Connection ~ 5300 1100
Wire Wire Line
	5300 1100 5650 1100
Wire Wire Line
	5650 1650 5650 1500
Wire Wire Line
	5300 1500 5300 1650
Connection ~ 5300 1650
Wire Wire Line
	5300 1650 5650 1650
Wire Wire Line
	4950 1500 4950 1650
Connection ~ 4950 1650
Wire Wire Line
	4950 1650 5300 1650
Wire Wire Line
	4550 1500 4550 1650
Connection ~ 4550 1650
Wire Wire Line
	4550 1650 4950 1650
Wire Wire Line
	2800 1650 2800 1350
Wire Wire Line
	2800 1350 2650 1350
Wire Wire Line
	5650 1100 5900 1100
Connection ~ 5650 1100
Connection ~ 5650 1650
Wire Wire Line
	7050 1100 6900 1100
Wire Wire Line
	7050 1100 7050 1300
Wire Wire Line
	7050 1300 6900 1300
Wire Wire Line
	7050 1100 7200 1100
Wire Wire Line
	7200 1100 7200 1200
Connection ~ 7050 1100
Wire Wire Line
	7200 1500 7200 1650
Wire Wire Line
	7500 1100 7500 1200
Connection ~ 7200 1100
Wire Wire Line
	7500 1500 7500 1650
Wire Wire Line
	7500 1650 7200 1650
Connection ~ 7200 1650
Wire Wire Line
	7500 1100 7750 1100
Connection ~ 7500 1100
Wire Wire Line
	8050 1100 8250 1100
Wire Wire Line
	8250 1100 8250 1200
Wire Wire Line
	8250 1500 8250 1650
Wire Wire Line
	8250 1650 7500 1650
Connection ~ 7500 1650
Wire Wire Line
	7200 1100 7300 1100
Wire Wire Line
	7300 950  7300 1100
Connection ~ 7300 1100
Wire Wire Line
	7300 1100 7500 1100
$Comp
L SensorDemo_power_supply:GND #PS010
U 1 1 60222C48
P 2950 4050
F 0 "#PS010" H 2950 3925 50  0001 C CNN
F 1 "GND" H 2950 3975 50  0001 C CNN
F 2 "" H 2950 4050 50  0001 C CNN
F 3 "" H 2950 4050 50  0001 C CNN
	1    2950 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 3200 5200 3200
Wire Wire Line
	5200 3200 5200 3300
Connection ~ 5200 3300
$Comp
L SensorDemo_power_supply:GND #PS06
U 1 1 60225DEB
P 5200 3550
F 0 "#PS06" H 5200 3425 50  0001 C CNN
F 1 "GND" H 5200 3475 50  0001 C CNN
F 2 "" H 5200 3550 50  0001 C CNN
F 3 "" H 5200 3550 50  0001 C CNN
	1    5200 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 1100 4100 1100
Wire Wire Line
	2800 1650 4100 1650
Wire Wire Line
	4100 1200 4100 1100
Connection ~ 4100 1100
Wire Wire Line
	4100 1100 4550 1100
Wire Wire Line
	4100 1500 4100 1650
Connection ~ 4100 1650
Wire Wire Line
	4100 1650 4550 1650
Wire Wire Line
	5650 1650 6300 1650
Wire Wire Line
	6300 1650 6300 1600
Connection ~ 6300 1650
Wire Wire Line
	6300 1650 7200 1650
Wire Wire Line
	2900 1000 2850 1000
Wire Wire Line
	2850 1000 2850 1150
Wire Wire Line
	2850 1150 2650 1150
$Comp
L SensorDemo_power_supply:+3V3 #PS01
U 1 1 6024921B
P 7300 950
F 0 "#PS01" H 7300 900 50  0001 C CNN
F 1 "+3V3" H 7200 1050 50  0000 L CNN
F 2 "" H 7305 645 50  0001 C CNN
F 3 "" H 7305 645 50  0001 C CNN
	1    7300 950 
	1    0    0    -1  
$EndComp
$Comp
L SensorDemo_power_supply:+3V3 #PS03
U 1 1 6024952C
P 4100 3000
F 0 "#PS03" H 4100 2950 50  0001 C CNN
F 1 "+3V3" H 4000 3100 50  0000 L CNN
F 2 "" H 4105 2695 50  0001 C CNN
F 3 "" H 4105 2695 50  0001 C CNN
	1    4100 3000
	1    0    0    -1  
$EndComp
$Comp
L SensorDemo_power_supply:+3V3 #PS05
U 1 1 6024A4DE
P 1150 3500
F 0 "#PS05" H 1150 3450 50  0001 C CNN
F 1 "+3V3" H 1050 3600 50  0000 L CNN
F 2 "" H 1155 3195 50  0001 C CNN
F 3 "" H 1155 3195 50  0001 C CNN
	1    1150 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3600 5950 3600
Wire Wire Line
	7000 3250 7000 3300
Wire Wire Line
	7000 3300 6850 3300
Wire Wire Line
	5100 3100 5550 3100
Wire Wire Line
	5550 3100 5550 3300
Wire Wire Line
	5550 3300 5950 3300
Wire Wire Line
	6400 2750 6850 2750
Wire Wire Line
	6850 2750 6850 3150
Wire Wire Line
	5950 3150 5950 2600
Wire Wire Line
	5950 2600 6150 2600
Wire Wire Line
	7000 3300 7250 3300
Wire Wire Line
	7250 3300 7250 3350
Connection ~ 7000 3300
Wire Wire Line
	7100 3600 6850 3600
Wire Wire Line
	7100 3450 6850 3450
Wire Wire Line
	5650 3450 5950 3450
Wire Wire Line
	1100 2550 1350 2550
Text Label 1100 2550 0    50   ~ 0
sensVal
Text Label 7100 3450 2    50   ~ 0
sensVal
Wire Wire Line
	5850 3600 5850 3950
Text Label 2800 3150 2    50   ~ 0
ucTX
Wire Wire Line
	2650 3150 2800 3150
Wire Wire Line
	2200 5200 1950 5200
Wire Wire Line
	2200 5300 1950 5300
Wire Wire Line
	2000 5500 1950 5500
Wire Wire Line
	2000 5650 2000 5500
Text Label 2200 5200 2    50   ~ 0
USBDM
Text Label 2200 5300 2    50   ~ 0
USBDP
Wire Wire Line
	4950 5350 5050 5350
Wire Wire Line
	5050 5350 5050 5650
Wire Wire Line
	3850 5650 3800 5650
Wire Wire Line
	3800 5650 3800 6500
Wire Wire Line
	3800 6500 5050 6500
Connection ~ 5050 6500
Wire Wire Line
	5050 6500 5050 6600
Wire Wire Line
	4950 6050 5050 6050
Connection ~ 5050 6050
Wire Wire Line
	5050 6050 5050 6500
Wire Wire Line
	4950 5750 5050 5750
Connection ~ 5050 5750
Wire Wire Line
	5050 5750 5050 6050
Wire Wire Line
	4950 5250 5050 5250
Wire Wire Line
	5050 5250 5050 5350
Connection ~ 5050 5350
Wire Wire Line
	3650 5450 3850 5450
Text Label 3650 5450 0    50   ~ 0
ucTX
Wire Wire Line
	4950 5850 5150 5850
Wire Wire Line
	2050 5100 1950 5100
Text Label 3500 5250 0    50   ~ 0
ucCTS
Wire Wire Line
	3500 5250 3850 5250
Wire Wire Line
	3500 6050 3850 6050
Text Label 3500 6050 0    50   ~ 0
ucRTS
Wire Wire Line
	3650 5350 3850 5350
Text Label 3650 5350 0    50   ~ 0
VCCIO
Wire Wire Line
	5600 5500 5600 5650
Wire Wire Line
	5050 5650 5600 5650
Connection ~ 5050 5650
Wire Wire Line
	5050 5650 5050 5750
Text Label 5800 4750 2    50   ~ 0
VCCIO
Wire Wire Line
	5150 4900 5150 5850
Wire Wire Line
	2050 5000 2050 5100
$Comp
L SensorDemo_power_supply:+3V3 #PS011
U 1 1 60335636
P 5150 4900
F 0 "#PS011" H 5150 4850 50  0001 C CNN
F 1 "+3V3" H 5050 5000 50  0000 L CNN
F 2 "" H 5155 4595 50  0001 C CNN
F 3 "" H 5155 4595 50  0001 C CNN
	1    5150 4900
	1    0    0    -1  
$EndComp
$Comp
L SensorDemo_passive:LED D3
U 1 1 603214B8
P 5600 4950
F 0 "D3" V 5554 5018 50  0000 L CNN
F 1 "LED" V 5750 5000 50  0000 L CNN
F 2 "SensorDemo_pcb:LED0805" H 5500 5400 60  0001 C CNN
F 3 "" H 5600 4950 60  0000 C CNN
	1    5600 4950
	0    1    1    0   
$EndComp
$Comp
L SensorDemo_passive:LED D2
U 1 1 60320B7D
P 5350 4950
F 0 "D2" V 5304 5018 50  0000 L CNN
F 1 "LED" V 5500 5000 50  0000 L CNN
F 2 "SensorDemo_pcb:LED0805" H 4850 4600 60  0001 C CNN
F 3 "" H 5350 4950 60  0000 C CNN
	1    5350 4950
	0    1    1    0   
$EndComp
$Comp
L SensorDemo_passive:R R3
U 1 1 6031BCC0
P 5600 5350
F 0 "R3" V 5554 5408 50  0000 L CNN
F 1 "1k" V 5645 5408 50  0000 L CNN
F 2 "SensorDemo_pcb:R0805" H 5600 5650 30  0001 C CNN
F 3 "" V 5600 5350 30  0001 C CNN
	1    5600 5350
	0    1    1    0   
$EndComp
$Comp
L SensorDemo_passive:R R2
U 1 1 6031B1AA
P 5350 5350
F 0 "R2" V 5304 5408 50  0000 L CNN
F 1 "1k" V 5395 5408 50  0000 L CNN
F 2 "SensorDemo_pcb:R0805" H 5300 5280 30  0001 C CNN
F 3 "" V 5350 5350 30  0001 C CNN
	1    5350 5350
	0    1    1    0   
$EndComp
$Comp
L SensorDemo_power_supply:GND #PS014
U 1 1 602E14D7
P 5050 6650
F 0 "#PS014" H 5050 6525 50  0001 C CNN
F 1 "GND" H 5050 6575 50  0001 C CNN
F 2 "" H 5050 6650 50  0001 C CNN
F 3 "" H 5050 6650 50  0001 C CNN
	1    5050 6650
	1    0    0    -1  
$EndComp
$Comp
L SensorDemo_IC:FT232RL U5
U 1 1 602D81A6
P 4400 5700
F 0 "U5" H 4400 6597 60  0000 C CNN
F 1 "FT232RL" H 4400 6491 60  0000 C CNN
F 2 "SensorDemo_pcb:DIP_28_300" H 4400 4200 60  0001 C CNN
F 3 "" H 4400 4200 60  0000 C CNN
	1    4400 5700
	1    0    0    -1  
$EndComp
$Comp
L SensorDemo_power_supply:GND #PS013
U 1 1 602D0E7C
P 2000 5700
F 0 "#PS013" H 2000 5575 50  0001 C CNN
F 1 "GND" H 2000 5625 50  0001 C CNN
F 2 "" H 2000 5700 50  0001 C CNN
F 3 "" H 2000 5700 50  0001 C CNN
	1    2000 5700
	1    0    0    -1  
$EndComp
$Comp
L SensorDemo_connector:USB2_MICRO J2
U 1 1 6028EAD3
P 1650 5300
F 0 "J2" V 2137 5292 60  0000 C CNN
F 1 "USB2_MICRO" V 2031 5292 60  0000 C CNN
F 2 "" H 1650 5300 60  0000 C CNN
F 3 "" H 1650 5300 60  0000 C CNN
	1    1650 5300
	0    -1   -1   0   
$EndComp
$Comp
L SensorDemo_power_supply:+3V3 #PS02
U 1 1 6027F5DA
P 5650 2850
F 0 "#PS02" H 5650 2800 50  0001 C CNN
F 1 "+3V3" H 5550 2950 50  0000 L CNN
F 2 "" H 5655 2545 50  0001 C CNN
F 3 "" H 5655 2545 50  0001 C CNN
	1    5650 2850
	1    0    0    -1  
$EndComp
$Comp
L SensorDemo_power_supply:GND #PS09
U 1 1 6027CA87
P 5850 4000
F 0 "#PS09" H 5850 3875 50  0001 C CNN
F 1 "GND" H 5850 3925 50  0001 C CNN
F 2 "" H 5850 4000 50  0001 C CNN
F 3 "" H 5850 4000 50  0001 C CNN
	1    5850 4000
	1    0    0    -1  
$EndComp
$Comp
L SensorDemo_power_supply:GND #PS08
U 1 1 6026B9E7
P 7250 3900
F 0 "#PS08" H 7250 3775 50  0001 C CNN
F 1 "GND" H 7250 3825 50  0001 C CNN
F 2 "" H 7250 3900 50  0001 C CNN
F 3 "" H 7250 3900 50  0001 C CNN
	1    7250 3900
	1    0    0    -1  
$EndComp
$Comp
L SensorDemo_passive:POT RV2
U 1 1 60265A30
P 7250 3600
F 0 "RV2" V 7296 3520 50  0000 R CNN
F 1 "POT" V 7205 3520 50  0000 R CNN
F 2 "" H 7250 3600 60  0000 C CNN
F 3 "" H 7250 3600 60  0000 C CNN
	1    7250 3600
	0    -1   -1   0   
$EndComp
$Comp
L SensorDemo_passive:POT RV1
U 1 1 6025EF57
P 6400 2600
F 0 "RV1" H 6400 2382 50  0000 C CNN
F 1 "POT" H 6400 2473 50  0000 C CNN
F 2 "" H 6400 2600 60  0000 C CNN
F 3 "" H 6400 2600 60  0000 C CNN
	1    6400 2600
	-1   0    0    1   
$EndComp
$Comp
L SensorDemo_power_supply:+3V3 #PS04
U 1 1 60240318
P 7000 3250
F 0 "#PS04" H 7000 3200 50  0001 C CNN
F 1 "+3V3" H 6900 3350 50  0000 L CNN
F 2 "" H 7005 2945 50  0001 C CNN
F 3 "" H 7005 2945 50  0001 C CNN
	1    7000 3250
	1    0    0    -1  
$EndComp
$Comp
L SensorDemo_IC:LM1117 U1
U 1 1 6022ABD4
P 6400 1200
F 0 "U1" H 6400 1567 50  0000 C CNN
F 1 "TLV1117-33CDCYR" H 6400 1476 50  0000 C CNN
F 2 "SensorDemo_pcb:SOT-223" H 6400 1200 60  0001 C CNN
F 3 "" H 6400 1200 60  0000 C CNN
	1    6400 1200
	1    0    0    -1  
$EndComp
$Comp
L SensorDemo_passive:C C1
U 1 1 60226FA7
P 4100 1350
F 0 "C1" V 4054 1433 50  0000 L CNN
F 1 "10uF" V 4145 1433 50  0000 L CNN
F 2 "SensorDemo_pcb:C0805" H 4138 1200 30  0001 C CNN
F 3 "" H 4100 1350 60  0000 C CNN
	1    4100 1350
	0    1    1    0   
$EndComp
$Comp
L SensorDemo_passive:R R1
U 1 1 601002F4
P 7900 1100
F 0 "R1" H 7750 1150 50  0000 C CNN
F 1 "1k" H 8050 1150 50  0000 C CNN
F 2 "SensorDemo_pcb:R0805" H 7850 1030 30  0001 C CNN
F 3 "" V 7900 1100 30  0001 C CNN
	1    7900 1100
	1    0    0    -1  
$EndComp
$Comp
L SensorDemo_passive:LED D1
U 1 1 600FF92A
P 8250 1350
F 0 "D1" V 8204 1418 50  0000 L CNN
F 1 "LED" V 8400 1400 50  0000 L CNN
F 2 "SensorDemo_pcb:LED0805" H 8250 1350 60  0001 C CNN
F 3 "" H 8250 1350 60  0000 C CNN
	1    8250 1350
	0    1    1    0   
$EndComp
$Comp
L SensorDemo_passive:C C7
U 1 1 600FD29D
P 7500 1350
F 0 "C7" V 7454 1433 50  0000 L CNN
F 1 "100nF" V 7545 1433 50  0000 L CNN
F 2 "SensorDemo_pcb:C0805" H 7538 1200 30  0001 C CNN
F 3 "" H 7500 1350 60  0000 C CNN
	1    7500 1350
	0    1    1    0   
$EndComp
$Comp
L SensorDemo_passive:C C6
U 1 1 600FA7B3
P 7200 1350
F 0 "C6" V 7154 1433 50  0000 L CNN
F 1 "1uF" V 7245 1433 50  0000 L CNN
F 2 "SensorDemo_pcb:C0805" H 7238 1200 30  0001 C CNN
F 3 "" H 7200 1350 60  0000 C CNN
	1    7200 1350
	0    1    1    0   
$EndComp
$Comp
L SensorDemo_passive:C C5
U 1 1 600F1246
P 5650 1350
F 0 "C5" V 5604 1433 50  0000 L CNN
F 1 "100nF" V 5695 1433 50  0000 L CNN
F 2 "SensorDemo_pcb:C0805" H 5688 1200 30  0001 C CNN
F 3 "" H 5650 1350 60  0000 C CNN
	1    5650 1350
	0    1    1    0   
$EndComp
$Comp
L SensorDemo_passive:C C4
U 1 1 600F0DF1
P 5300 1350
F 0 "C4" V 5254 1433 50  0000 L CNN
F 1 "100nF" V 5345 1433 50  0000 L CNN
F 2 "SensorDemo_pcb:C0805" H 5338 1200 30  0001 C CNN
F 3 "" H 5300 1350 60  0000 C CNN
	1    5300 1350
	0    1    1    0   
$EndComp
$Comp
L SensorDemo_passive:C C3
U 1 1 600F0A30
P 4950 1350
F 0 "C3" V 4904 1433 50  0000 L CNN
F 1 "1uF" V 4995 1433 50  0000 L CNN
F 2 "SensorDemo_pcb:C0805" H 4988 1200 30  0001 C CNN
F 3 "" H 4950 1350 60  0000 C CNN
	1    4950 1350
	0    1    1    0   
$EndComp
$Comp
L SensorDemo_passive:C C2
U 1 1 600EF0D0
P 4550 1350
F 0 "C2" V 4504 1433 50  0000 L CNN
F 1 "1uF" V 4595 1433 50  0000 L CNN
F 2 "SensorDemo_pcb:C0805" H 4588 1200 30  0001 C CNN
F 3 "" H 4550 1350 60  0000 C CNN
	1    4550 1350
	0    1    1    0   
$EndComp
$Comp
L SensorDemo_discrete:SWITCH_SPDT SW1
U 1 1 600EBAF7
P 3300 1000
F 0 "SW1" H 3300 1336 50  0000 C CNN
F 1 "SWITCH_SPDT" H 3300 1245 50  0000 C CNN
F 2 "SensorDemo_pcb:SW_OS102011MA1QN1" H 3300 1000 60  0001 C CNN
F 3 "" H 3300 1000 60  0000 C CNN
	1    3300 1000
	1    0    0    -1  
$EndComp
$Comp
L SensorDemo_connector:BARREL_JACK J1
U 1 1 600EAA30
P 2350 1250
F 0 "J1" H 2333 1483 50  0000 C CNN
F 1 "BARREL_JACK" H 2350 1050 50  0001 C CNN
F 2 "Global PCB Library:BARREL_JACK" H 2350 1250 60  0001 C CNN
F 3 "" H 2350 1250 60  0000 C CNN
	1    2350 1250
	1    0    0    -1  
$EndComp
$Comp
L SensorDemo_IC:dsPIC33EP32GP502 U2
U 1 1 600D29E3
P 2000 3100
F 0 "U2" H 2000 4037 60  0000 C CNN
F 1 "dsPIC33EP32GP502" H 2000 3931 60  0000 C CNN
F 2 "SensorDemo_pcb:SOIC-28" H 2000 2400 60  0001 C CNN
F 3 "" H 2000 2400 60  0000 C CNN
	1    2000 3100
	1    0    0    -1  
$EndComp
$Comp
L SensorDemo_power_supply:+3V3 #PS012
U 1 1 6033A7C8
P 2050 5000
F 0 "#PS012" H 2050 4950 50  0001 C CNN
F 1 "+3V3" H 2118 5028 50  0000 L CNN
F 2 "" H 2055 4695 50  0001 C CNN
F 3 "" H 2055 4695 50  0001 C CNN
	1    2050 5000
	1    0    0    -1  
$EndComp
$Comp
L SensorDemo_IC:MCP4821 U3
U 1 1 600BDDE0
P 4650 3250
F 0 "U3" H 4650 3687 60  0000 C CNN
F 1 "MCP4821" H 4650 3581 60  0000 C CNN
F 2 "SensorDemo_pcb:SOIC-8" H 4650 3250 60  0001 C CNN
F 3 "" H 4650 3250 60  0000 C CNN
	1    4650 3250
	1    0    0    -1  
$EndComp
$Comp
L SensorDemo_IC:INA126 U4
U 1 1 602358E6
P 6400 3400
F 0 "U4" H 6400 3937 60  0000 C CNN
F 1 "INA126" H 6400 3831 60  0000 C CNN
F 2 "SensorDemo_pcb:DIP_8_300" H 6400 3350 60  0001 C CNN
F 3 "" H 6400 3350 60  0000 C CNN
	1    6400 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 3450 5650 2850
Wire Wire Line
	5350 5550 5350 5500
Wire Wire Line
	4950 5550 5350 5550
Wire Wire Line
	5350 5200 5350 5100
Wire Wire Line
	5600 5200 5600 5100
Wire Wire Line
	5350 4800 5350 4750
Wire Wire Line
	5350 4750 5600 4750
Wire Wire Line
	5600 4750 5600 4800
Wire Wire Line
	5600 4750 5800 4750
Connection ~ 5600 4750
Wire Notes Line
	5300 4600 5300 5850
Wire Notes Line
	5300 5850 5900 5850
Wire Notes Line
	5900 5850 5900 4600
Wire Notes Line
	5900 4600 5300 4600
Text Notes 5950 5650 0    50   ~ 0
use wires to connect components.\nuse 90 degree angle on wire when cornering.\nthis would increase clarity.\nplease modify others accordingly\n\nuncheck the "footprint" and the\n"datasheet" property from components.\ndelete after read.\n
Text Notes 1700 2000 0    50   ~ 0
let's remove the power switch and the barrel jack,\ninstead, we should use the power line from the USB\nto supply the raw 5V power to the 3.3V LDO.
NoConn ~ 1950 5400
Wire Notes Line
	1950 4800 1950 5050
Wire Notes Line
	1950 5050 2400 5050
Wire Notes Line
	2400 5050 2400 4800
Wire Notes Line
	2400 4800 1950 4800
Text Notes 1150 4750 0    50   ~ 0
VCC from a standard USB port is 5V,\nwe should filter it and feed it into a LDO.\nplease check the video I shared and edit\naccordingly.
Wire Notes Line
	3850 600  3850 1700
Wire Notes Line
	3850 1700 1950 1700
Wire Notes Line
	1950 1700 1950 600 
Wire Notes Line
	1950 600  3850 600 
Wire Notes Line
	6100 2300 6100 2800
Wire Notes Line
	6100 2800 6750 2800
Wire Notes Line
	6750 2800 6750 2300
Wire Notes Line
	6750 2300 6100 2300
Text Notes 6800 2650 0    50   ~ 0
two things we can do:\n1. change the INA to something with\nprogrammable gain\n2. find a surface mount pot.
Wire Notes Line
	2300 2200 2300 2700
Wire Notes Line
	2300 2700 3250 2700
Wire Notes Line
	3250 2700 3250 2200
Wire Notes Line
	3250 2200 2300 2200
Text Notes 2650 2350 0    50   ~ 0
connect power
Text Notes 2750 3050 0    50   ~ 0
include a RX line also
Text Notes 2750 3250 0    50   ~ 0
missing Vcap
Wire Notes Line
	7100 3350 7100 4000
Wire Notes Line
	7100 4000 7500 4000
Wire Notes Line
	7500 4000 7500 3350
Wire Notes Line
	7500 3350 7100 3350
Text Notes 6800 4200 0    50   ~ 0
check INA126 datasheet fig.25\nfor example circuit. check the REF1004
$EndSCHEMATC
