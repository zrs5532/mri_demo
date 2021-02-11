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
Text Label 3000 3750 2    50   ~ 0
~CS
Text Label 3000 3650 2    50   ~ 0
SCK
Text Label 3000 3550 2    50   ~ 0
SDI
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
Wire Wire Line
	1250 3150 1350 3150
Wire Wire Line
	1250 3850 1250 3150
Wire Wire Line
	7400 1000 7600 1000
Wire Wire Line
	7600 1000 7600 1100
$Comp
L SensorDemo_power_supply:GND #PS010
U 1 1 60222C48
P 2750 4050
F 0 "#PS010" H 2750 3925 50  0001 C CNN
F 1 "GND" H 2750 3975 50  0001 C CNN
F 2 "" H 2750 4050 50  0001 C CNN
F 3 "" H 2750 4050 50  0001 C CNN
	1    2750 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3600 5950 3600
Wire Wire Line
	6400 2750 6850 2750
Wire Wire Line
	6850 2750 6850 3150
Wire Wire Line
	5950 3150 5950 2600
Wire Wire Line
	5950 2600 6150 2600
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
Text Label 3000 3150 2    50   ~ 0
ucTX
Wire Wire Line
	2650 1100 2400 1100
Wire Wire Line
	2650 1200 2400 1200
Wire Wire Line
	2450 1400 2400 1400
Text Label 2650 1100 2    50   ~ 0
USBDM
Text Label 2650 1200 2    50   ~ 0
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
Text Label 3500 5450 0    50   ~ 0
ucTX
Wire Wire Line
	4950 5850 5150 5850
Text Label 3500 5250 0    50   ~ 0
ucCTS
Wire Wire Line
	3500 5250 3850 5250
Wire Wire Line
	3500 6050 3850 6050
Text Label 3500 6050 0    50   ~ 0
ucRTS
Text Label 3500 5350 0    50   ~ 0
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
P 2450 1750
F 0 "#PS013" H 2450 1625 50  0001 C CNN
F 1 "GND" H 2450 1675 50  0001 C CNN
F 2 "" H 2450 1750 50  0001 C CNN
F 3 "" H 2450 1750 50  0001 C CNN
	1    2450 1750
	1    0    0    -1  
$EndComp
$Comp
L SensorDemo_connector:USB2_MICRO J2
U 1 1 6028EAD3
P 2100 1200
F 0 "J2" V 2587 1192 60  0000 C CNN
F 1 "USB2_MICRO" V 2481 1192 60  0000 C CNN
F 2 "" H 2100 1200 60  0000 C CNN
F 3 "" H 2100 1200 60  0000 C CNN
	1    2100 1200
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
P 9100 4450
F 0 "#PS08" H 9100 4325 50  0001 C CNN
F 1 "GND" H 9100 4375 50  0001 C CNN
F 2 "" H 9100 4450 50  0001 C CNN
F 3 "" H 9100 4450 50  0001 C CNN
	1    9100 4450
	1    0    0    -1  
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
L SensorDemo_passive:R R1
U 1 1 601002F4
P 7250 1000
F 0 "R1" H 7100 1050 50  0000 C CNN
F 1 "1k" H 7400 1050 50  0000 C CNN
F 2 "SensorDemo_pcb:R0805" H 7200 930 30  0001 C CNN
F 3 "" V 7250 1000 30  0001 C CNN
	1    7250 1000
	1    0    0    -1  
$EndComp
$Comp
L SensorDemo_passive:LED D1
U 1 1 600FF92A
P 7600 1250
F 0 "D1" V 7554 1318 50  0000 L CNN
F 1 "LED" V 7750 1300 50  0000 L CNN
F 2 "SensorDemo_pcb:LED0805" H 7600 1250 60  0001 C CNN
F 3 "" H 7600 1250 60  0000 C CNN
	1    7600 1250
	0    1    1    0   
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
Text Notes 900  7150 0    50   ~ 0
let's remove the power switch and the barrel jack,\ninstead, we should use the power line from the USB\nto supply the raw 5V power to the 3.3V LDO.
NoConn ~ 2400 1300
Text Notes 1850 -100 0    50   ~ 0
VCC from a standard USB port is 5V,\nwe should filter it and feed it into a LDO.\nplease check the video I shared and edit\naccordingly.
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
Text Notes 7600 4800 0    50   ~ 0
check INA126 datasheet fig.25\nfor example circuit. check the REF1004
$Comp
L SensorDemo_IC:LTC1658 U?
U 1 1 602576B4
P 4650 3250
F 0 "U?" H 4650 3687 60  0000 C CNN
F 1 "LTC1658" H 4650 3581 60  0000 C CNN
F 2 "" H 4650 3250 60  0000 C CNN
F 3 "" H 4650 3250 60  0000 C CNN
	1    4650 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 3300 4200 3300
Wire Wire Line
	3950 3200 4200 3200
Wire Wire Line
	3950 3100 4200 3100
Text Label 3950 3100 0    50   ~ 0
SCK
Text Label 3950 3200 0    50   ~ 0
SDI
Text Label 3950 3300 0    50   ~ 0
~CS
Wire Wire Line
	5150 3550 5150 3400
Wire Wire Line
	5150 3400 5100 3400
$Comp
L SensorDemo_power_supply:GND PS?
U 1 1 60286B29
P 5150 3600
F 0 "PS?" H 5150 3475 50  0001 C CNN
F 1 "GND" H 5150 3525 50  0001 C CNN
F 2 "" H 5150 3600 50  0001 C CNN
F 3 "" H 5150 3600 50  0001 C CNN
	1    5150 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3200 5100 3200
Text Label 5350 3200 2    50   ~ 0
dacVout
Text Label 5700 3300 0    50   ~ 0
dacVout
Wire Wire Line
	5700 3300 5950 3300
$Comp
L SensorDemo_passive:FB FB?
U 1 1 602BAFCD
P 3000 1000
F 0 "FB?" H 3000 1099 50  0000 C CNN
F 1 "FB" H 3075 1100 50  0001 C CNN
F 2 "" H 3000 1000 50  0001 C CNN
F 3 "" H 3000 1000 50  0001 C CNN
	1    3000 1000
	1    0    0    -1  
$EndComp
$Comp
L SensorDemo_passive:C C?
U 1 1 602BBCD9
P 2750 1250
F 0 "C?" V 2704 1333 50  0000 L CNN
F 1 "10nF" V 2795 1333 50  0000 L CNN
F 2 "" H 2788 1100 30  0000 C CNN
F 3 "" H 2750 1250 60  0000 C CNN
	1    2750 1250
	0    1    1    0   
$EndComp
Wire Wire Line
	2750 1100 2750 1000
Wire Wire Line
	2400 1000 2750 1000
Wire Wire Line
	2750 1000 2850 1000
Connection ~ 2750 1000
$Comp
L SensorDemo_passive:EC EC?
U 1 1 602D954E
P 3500 1250
F 0 "EC?" H 3633 1288 40  0000 L CNN
F 1 "10uF" H 3633 1212 40  0000 L CNN
F 2 "" H 3500 1250 60  0000 C CNN
F 3 "" H 3500 1250 60  0000 C CNN
	1    3500 1250
	1    0    0    -1  
$EndComp
$Comp
L SensorDemo_passive:C C?
U 1 1 602DB3A0
P 3950 1250
F 0 "C?" V 3904 1333 50  0000 L CNN
F 1 "1uF" V 3995 1333 50  0000 L CNN
F 2 "" H 3988 1100 30  0000 C CNN
F 3 "" H 3950 1250 60  0000 C CNN
	1    3950 1250
	0    1    1    0   
$EndComp
$Comp
L SensorDemo_passive:C C?
U 1 1 602DC3AA
P 4300 1250
F 0 "C?" V 4254 1333 50  0000 L CNN
F 1 "1uF" V 4345 1333 50  0000 L CNN
F 2 "" H 4338 1100 30  0000 C CNN
F 3 "" H 4300 1250 60  0000 C CNN
	1    4300 1250
	0    1    1    0   
$EndComp
$Comp
L SensorDemo_passive:C C?
U 1 1 602DC6E0
P 4650 1250
F 0 "C?" V 4604 1333 50  0000 L CNN
F 1 "100nF" V 4700 1300 50  0000 L CNN
F 2 "" H 4688 1100 30  0000 C CNN
F 3 "" H 4650 1250 60  0000 C CNN
	1    4650 1250
	0    1    1    0   
$EndComp
$Comp
L SensorDemo_passive:C C?
U 1 1 602DCB90
P 5000 1250
F 0 "C?" V 4954 1333 50  0000 L CNN
F 1 "100nF" V 5045 1333 50  0000 L CNN
F 2 "" H 5038 1100 30  0000 C CNN
F 3 "" H 5000 1250 60  0000 C CNN
	1    5000 1250
	0    1    1    0   
$EndComp
$Comp
L SensorDemo_passive:C C?
U 1 1 602FD8A2
P 6450 1250
F 0 "C?" V 6404 1333 50  0000 L CNN
F 1 "1uF" V 6495 1333 50  0000 L CNN
F 2 "" H 6488 1100 30  0000 C CNN
F 3 "" H 6450 1250 60  0000 C CNN
	1    6450 1250
	0    1    1    0   
$EndComp
$Comp
L SensorDemo_passive:C C?
U 1 1 602FE300
P 6750 1250
F 0 "C?" V 6704 1333 50  0000 L CNN
F 1 "100nF" V 6795 1333 50  0000 L CNN
F 2 "" H 6788 1100 30  0000 C CNN
F 3 "" H 6750 1250 60  0000 C CNN
	1    6750 1250
	0    1    1    0   
$EndComp
Wire Wire Line
	6150 1200 6200 1200
Wire Wire Line
	6200 1200 6200 1000
Wire Wire Line
	6200 1000 6150 1000
Wire Wire Line
	6200 1000 6450 1000
Connection ~ 6200 1000
Wire Wire Line
	2450 1400 2450 1500
$Comp
L SensorDemo_IC:LM1117 U1
U 1 1 6022ABD4
P 5650 1100
F 0 "U1" H 5650 1467 50  0000 C CNN
F 1 "TLV1117-33CDCYR" H 5650 1376 50  0000 C CNN
F 2 "SensorDemo_pcb:SOT-223" H 5650 1100 60  0001 C CNN
F 3 "" H 5650 1100 60  0000 C CNN
	1    5650 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 1500 6450 1500
Wire Wire Line
	7600 1500 7600 1400
Connection ~ 5550 1500
Connection ~ 2450 1500
Wire Wire Line
	2450 1500 2450 1700
Wire Wire Line
	2750 1400 2750 1500
Connection ~ 2750 1500
Wire Wire Line
	2750 1500 2450 1500
Connection ~ 6450 1000
Wire Wire Line
	6450 1000 6550 1000
Connection ~ 6750 1000
Wire Wire Line
	6750 1000 7100 1000
Wire Wire Line
	2750 1500 3500 1500
Wire Wire Line
	3950 1100 3950 1000
Connection ~ 3950 1000
Wire Wire Line
	3950 1000 4300 1000
Wire Wire Line
	3500 1050 3500 1000
Connection ~ 3500 1000
Wire Wire Line
	3500 1000 3950 1000
Wire Wire Line
	3500 1450 3500 1500
Connection ~ 3500 1500
Wire Wire Line
	3500 1500 3950 1500
Wire Wire Line
	3950 1400 3950 1500
Connection ~ 3950 1500
Wire Wire Line
	3950 1500 4300 1500
Wire Wire Line
	4300 1400 4300 1500
Connection ~ 4300 1500
Wire Wire Line
	4300 1500 4650 1500
Wire Wire Line
	4300 1100 4300 1000
Connection ~ 4300 1000
Wire Wire Line
	4300 1000 4650 1000
Wire Wire Line
	4650 1100 4650 1000
Connection ~ 4650 1000
Wire Wire Line
	4650 1000 5000 1000
Wire Wire Line
	5000 1100 5000 1000
Connection ~ 5000 1000
Wire Wire Line
	5000 1000 5150 1000
Wire Wire Line
	5000 1400 5000 1500
Connection ~ 5000 1500
Wire Wire Line
	5000 1500 5550 1500
Wire Wire Line
	4650 1400 4650 1500
Connection ~ 4650 1500
Wire Wire Line
	4650 1500 5000 1500
Wire Wire Line
	6450 1000 6450 1100
Wire Wire Line
	6750 1000 6750 1100
Wire Wire Line
	6450 1400 6450 1500
Connection ~ 6450 1500
Wire Wire Line
	6450 1500 6750 1500
Wire Wire Line
	6750 1400 6750 1500
Connection ~ 6750 1500
Wire Wire Line
	6750 1500 7600 1500
Wire Wire Line
	6550 850  6550 1000
Connection ~ 6550 1000
Wire Wire Line
	6550 1000 6750 1000
Text Label 6350 850  0    50   ~ 0
+3V3
Wire Wire Line
	6350 850  6550 850 
Text Notes 2800 850  0    50   ~ 0
12.3071 nano ohm
Wire Wire Line
	3150 1000 3500 1000
Text Label 1000 3650 0    50   ~ 0
+3V3
Wire Wire Line
	1000 3650 1350 3650
Wire Wire Line
	2700 2300 2700 2450
Wire Wire Line
	2700 2450 2650 2450
Wire Wire Line
	2700 3250 2650 3250
Connection ~ 2700 2450
Wire Wire Line
	2900 2300 2700 2300
Text Label 2900 2300 2    50   ~ 0
+3V3
Wire Wire Line
	2750 2550 2750 3350
Wire Wire Line
	2650 2550 2750 2550
Wire Wire Line
	2700 2450 2700 3250
Wire Wire Line
	3000 3150 2650 3150
Wire Wire Line
	3000 3050 2650 3050
Wire Wire Line
	2650 3550 3000 3550
Wire Wire Line
	2650 3650 3000 3650
Wire Wire Line
	2650 3750 3000 3750
Text Label 3000 3050 2    50   ~ 0
ucRX
Wire Wire Line
	5100 3100 5350 3100
Text Label 5350 3100 2    50   ~ 0
+3V3
Wire Wire Line
	3500 5350 3850 5350
Wire Wire Line
	3500 5450 3850 5450
Wire Wire Line
	5150 4850 5150 5850
Wire Wire Line
	4950 4850 5150 4850
Text Label 4950 4850 0    50   ~ 0
+3V3
Text Label 7100 3300 2    50   ~ 0
+3V3
Wire Wire Line
	6850 3300 7250 3300
Wire Wire Line
	6850 3600 7250 3600
Wire Wire Line
	2650 3350 2750 3350
Connection ~ 2750 3350
Wire Wire Line
	2750 3350 2750 4000
$EndSCHEMATC
