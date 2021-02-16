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
	7400 1000 7600 1000
Wire Wire Line
	7600 1000 7600 1100
Wire Wire Line
	6650 3800 6750 3800
Wire Wire Line
	8050 3700 7650 3700
Wire Wire Line
	6400 3700 6750 3700
Text Label 8050 3700 2    50   ~ 0
sensVal
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
L SensorDemo_power_supply:+3V3 #PS02
U 1 1 6027F5DA
P 7800 3050
F 0 "#PS02" H 7800 3000 50  0001 C CNN
F 1 "+3V3" H 7700 3150 50  0000 L CNN
F 2 "" H 7805 2745 50  0001 C CNN
F 3 "" H 7805 2745 50  0001 C CNN
	1    7800 3050
	1    0    0    -1  
$EndComp
$Comp
L SensorDemo_power_supply:GND #PS09
U 1 1 6027CA87
P 6650 4400
F 0 "#PS09" H 6650 4275 50  0001 C CNN
F 1 "GND" H 6650 4325 50  0001 C CNN
F 2 "" H 6650 4400 50  0001 C CNN
F 3 "" H 6650 4400 50  0001 C CNN
	1    6650 4400
	1    0    0    -1  
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
L SensorDemo_IC:INA126 U4
U 1 1 602358E6
P 7200 3650
F 0 "U4" H 7400 3350 60  0000 C CNN
F 1 "INA126" H 7300 3250 60  0000 C CNN
F 2 "SensorDemo_pcb:DIP_8_300" H 7200 3600 60  0001 C CNN
F 3 "" H 7200 3600 60  0000 C CNN
	1    7200 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 3600 7800 3050
$Comp
L SensorDemo_passive:FB FB?
U 1 1 602BAFCD
P 2850 1000
F 0 "FB?" H 2850 950 50  0000 C CNN
F 1 "12.3071 nano ohm" H 2925 1100 50  0001 C CNN
F 2 "" H 2850 1000 50  0001 C CNN
F 3 "" H 2850 1000 50  0001 C CNN
	1    2850 1000
	1    0    0    -1  
$EndComp
$Comp
L SensorDemo_passive:C C?
U 1 1 602BBCD9
P 3100 1250
F 0 "C?" V 3054 1333 50  0000 L CNN
F 1 "10nF" V 3145 1333 50  0000 L CNN
F 2 "" H 3138 1100 30  0000 C CNN
F 3 "" H 3100 1250 60  0000 C CNN
	1    3100 1250
	0    1    1    0   
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
F 1 "0.1uF" V 4700 1300 50  0000 L CNN
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
F 1 "0.1uF" V 5045 1333 50  0000 L CNN
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
F 1 "0.1uF" V 6795 1333 50  0000 L CNN
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
Connection ~ 6450 1000
Connection ~ 6750 1000
Wire Wire Line
	6750 1000 6900 1000
Wire Wire Line
	3950 1100 3950 1000
Connection ~ 3950 1000
Wire Wire Line
	3950 1000 4300 1000
Wire Wire Line
	3500 1100 3500 1000
Connection ~ 3500 1000
Wire Wire Line
	3500 1000 3950 1000
Wire Wire Line
	3500 1400 3500 1500
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
$Comp
L SensorDemo_power_supply:+3V3 #PS?
U 1 1 6025A9BB
P 6900 900
F 0 "#PS?" H 6900 850 50  0001 C CNN
F 1 "+3V3" H 6800 1000 50  0000 L CNN
F 2 "" H 6905 595 50  0001 C CNN
F 3 "" H 6905 595 50  0001 C CNN
	1    6900 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 1000 6750 1000
Wire Wire Line
	6900 900  6900 1000
Connection ~ 6900 1000
Wire Wire Line
	6900 1000 7000 1000
$Comp
L SensorDemo_passive:R R?
U 1 1 602D3910
P 1650 2250
F 0 "R?" V 1600 2300 50  0000 L CNN
F 1 "10k" V 1700 2300 50  0000 L CNN
F 2 "" H 1600 2180 30  0000 C CNN
F 3 "" V 1650 2250 30  0000 C CNN
	1    1650 2250
	0    1    1    0   
$EndComp
$Comp
L SensorDemo_power_supply:GND PS?
U 1 1 60308A02
P 1650 2850
F 0 "PS?" H 1650 2725 50  0001 C CNN
F 1 "GND" H 1650 2775 50  0001 C CNN
F 2 "" H 1650 2850 50  0001 C CNN
F 3 "" H 1650 2850 50  0001 C CNN
	1    1650 2850
	1    0    0    -1  
$EndComp
$Comp
L SensorDemo_passive:C C?
U 1 1 6030E441
P 1650 2600
F 0 "C?" V 1650 2450 50  0000 L CNN
F 1 ".01uF" V 1750 2350 50  0000 L CNN
F 2 "" H 1688 2450 30  0000 C CNN
F 3 "" H 1650 2600 60  0000 C CNN
	1    1650 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	1650 2750 1650 2800
Wire Wire Line
	1650 2050 1650 2100
Wire Wire Line
	10150 1150 9950 1150
Wire Wire Line
	9000 1250 9050 1250
Wire Wire Line
	8650 1150 9050 1150
$Comp
L SensorDemo_power_supply:GND PS?
U 1 1 6034AEB0
P 9000 1550
F 0 "PS?" H 9000 1425 50  0001 C CNN
F 1 "GND" H 9000 1475 50  0001 C CNN
F 2 "" H 9000 1550 50  0001 C CNN
F 3 "" H 9000 1550 50  0001 C CNN
	1    9000 1550
	1    0    0    -1  
$EndComp
Text Label 8650 1150 0    50   ~ 0
Vbias
Text Label 10150 1150 2    50   ~ 0
Vref
$Comp
L SensorDemo_passive:R R?
U 1 1 6038215A
P 7200 3250
F 0 "R?" H 7050 3300 50  0000 C CNN
F 1 "R" H 7350 3300 50  0000 C CNN
F 2 "" H 7150 3180 30  0000 C CNN
F 3 "" V 7200 3250 30  0000 C CNN
	1    7200 3250
	1    0    0    -1  
$EndComp
$Comp
L SensorDemo_discrete:PB K?
U 1 1 60393582
P 1250 2450
F 0 "K?" H 1250 2185 50  0000 C CNN
F 1 "PB" H 1250 2276 50  0000 C CNN
F 2 "" H 1250 2300 60  0001 C CNN
F 3 "https://www.mouser.com/ProductDetail/Schurter/1241161211?qs=JHn%2F0Af%2Fl5HGUVmYq1Th2w%3D%3D" H 1250 2300 60  0001 C CNN
	1    1250 2450
	-1   0    0    1   
$EndComp
Wire Wire Line
	1650 2400 1650 2450
Wire Wire Line
	1650 2400 1500 2400
Wire Wire Line
	1000 2400 900  2400
Wire Wire Line
	900  2400 900  2750
Wire Wire Line
	900  2750 1650 2750
Connection ~ 1650 2750
Connection ~ 1650 2400
$Comp
L SensorDemo_power_supply:+3V3 PS?
U 1 1 603D7984
P 1650 2050
F 0 "PS?" H 1650 2000 50  0001 C CNN
F 1 "+3V3" H 1550 2150 50  0000 L CNN
F 2 "" H 1655 1745 50  0001 C CNN
F 3 "" H 1655 1745 50  0001 C CNN
	1    1650 2050
	1    0    0    -1  
$EndComp
$Comp
L SensorDemo_passive:C C?
U 1 1 6040FB49
P 10400 1350
F 0 "C?" V 10354 1433 50  0000 L CNN
F 1 "1uF" V 10445 1433 50  0000 L CNN
F 2 "" H 10438 1200 30  0000 C CNN
F 3 "" H 10400 1350 60  0000 C CNN
	1    10400 1350
	0    1    1    0   
$EndComp
Text Label 8050 3800 2    50   ~ 0
Vbias
Connection ~ 2500 3100
Wire Wire Line
	2500 2700 2500 3100
Wire Wire Line
	2600 2700 2500 2700
$Comp
L SensorDemo_power_supply:+3V3 PS?
U 1 1 603FE38C
P 5900 3050
F 0 "PS?" H 5900 3000 50  0001 C CNN
F 1 "+3V3" H 5800 3150 50  0000 L CNN
F 2 "" H 5905 2745 50  0001 C CNN
F 3 "" H 5905 2745 50  0001 C CNN
	1    5900 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 3500 5850 3500
Wire Wire Line
	5900 3050 5900 3500
$Comp
L SensorDemo_power_supply:+3V3 PS?
U 1 1 603E1E68
P 4650 2150
F 0 "PS?" H 4650 2100 50  0001 C CNN
F 1 "+3V3" H 4550 2250 50  0000 L CNN
F 2 "" H 4655 1845 50  0001 C CNN
F 3 "" H 4655 1845 50  0001 C CNN
	1    4650 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 2150 4650 2400
Text Label 6100 3700 2    50   ~ 0
Vref
Wire Wire Line
	6100 3700 6050 3700
Wire Wire Line
	3900 3700 4950 3700
Wire Wire Line
	3900 3600 4950 3600
Wire Wire Line
	4000 3300 4000 3950
Connection ~ 4000 3300
Wire Wire Line
	3900 3300 4000 3300
Text Label 4250 3000 2    50   ~ 0
ucRX
Wire Wire Line
	4250 3000 3900 3000
Wire Wire Line
	4250 3100 3900 3100
Wire Wire Line
	3900 2500 4000 2500
Wire Wire Line
	4000 2500 4000 3300
Wire Wire Line
	4300 2400 4200 2400
Wire Wire Line
	6750 3600 5850 3600
$Comp
L SensorDemo_power_supply:GND PS?
U 1 1 60286B29
P 5900 4400
F 0 "PS?" H 5900 4275 50  0001 C CNN
F 1 "GND" H 5900 4325 50  0001 C CNN
F 2 "" H 5900 4400 50  0001 C CNN
F 3 "" H 5900 4400 50  0001 C CNN
	1    5900 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 3800 5850 3800
Wire Wire Line
	5900 4350 5900 4200
$Comp
L SensorDemo_IC:LTC1658 U?
U 1 1 602576B4
P 5400 3650
F 0 "U?" H 5400 4087 60  0000 C CNN
F 1 "LTC1658" H 5400 3981 60  0000 C CNN
F 2 "" H 5400 3650 60  0000 C CNN
F 3 "" H 5400 3650 60  0000 C CNN
	1    5400 3650
	1    0    0    -1  
$EndComp
$Comp
L SensorDemo_IC:dsPIC33EP32GP502 U2
U 1 1 600D29E3
P 3250 3050
F 0 "U2" H 3250 3987 60  0000 C CNN
F 1 "dsPIC33EP32GP502" H 3250 3881 60  0000 C CNN
F 2 "SensorDemo_pcb:SOIC-28" H 3250 2350 60  0001 C CNN
F 3 "" H 3250 2350 60  0000 C CNN
	1    3250 3050
	1    0    0    -1  
$EndComp
Text Label 4250 3100 2    50   ~ 0
ucTX
Text Label 2100 2500 0    50   ~ 0
sensVal
Wire Wire Line
	2100 2500 2600 2500
$Comp
L SensorDemo_power_supply:GND #PS010
U 1 1 60222C48
P 4000 4000
F 0 "#PS010" H 4000 3875 50  0001 C CNN
F 1 "GND" H 4000 3925 50  0001 C CNN
F 2 "" H 4000 4000 50  0001 C CNN
F 3 "" H 4000 4000 50  0001 C CNN
	1    4000 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 3800 2500 3700
Wire Wire Line
	2500 3100 2600 3100
$Comp
L SensorDemo_power_supply:GND #PS07
U 1 1 600DBC8F
P 2500 3850
F 0 "#PS07" H 2500 3725 50  0001 C CNN
F 1 "GND" H 2500 3775 50  0001 C CNN
F 2 "" H 2500 3850 50  0001 C CNN
F 3 "" H 2500 3850 50  0001 C CNN
	1    2500 3850
	1    0    0    -1  
$EndComp
Text Label 2050 2800 0    50   ~ 0
Vref
$Comp
L SensorDemo_passive:C C?
U 1 1 604FA490
P 2250 3200
F 0 "C?" V 2350 3050 50  0000 L CNN
F 1 "0.1uF" V 2150 2950 50  0000 L CNN
F 2 "" H 2288 3050 30  0000 C CNN
F 3 "" H 2250 3200 60  0000 C CNN
	1    2250 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	2250 3700 2500 3700
Connection ~ 2500 3700
Wire Wire Line
	2500 3700 2500 3100
Wire Wire Line
	1650 2400 2600 2400
$Comp
L SensorDemo_passive:C C?
U 1 1 604C549A
P 7800 4000
F 0 "C?" V 7754 4083 50  0000 L CNN
F 1 "0.1uF" V 7845 4083 50  0000 L CNN
F 2 "" H 7838 3850 30  0000 C CNN
F 3 "" H 7800 4000 60  0000 C CNN
	1    7800 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	6650 3800 6650 4200
Wire Wire Line
	7800 3800 7800 3850
Wire Wire Line
	7650 3800 7800 3800
Wire Wire Line
	7800 4150 7800 4200
Wire Wire Line
	7800 4200 6650 4200
Connection ~ 6650 4200
Wire Wire Line
	6650 4200 6650 4350
Wire Wire Line
	7800 3800 8050 3800
Connection ~ 7800 3800
Wire Wire Line
	7650 3500 7700 3500
Wire Wire Line
	7700 3500 7700 3250
Wire Wire Line
	7350 3250 7700 3250
Wire Wire Line
	6750 3500 6700 3500
Wire Wire Line
	6700 3500 6700 3250
Wire Wire Line
	6700 3250 7050 3250
Wire Wire Line
	7650 3600 7800 3600
NoConn ~ 4950 3800
Wire Wire Line
	4950 3500 3900 3500
Text Notes 4050 3500 0    40   ~ 0
Let's use SPI2 so we don't\nhave to twist the wires.
Text Notes 10650 850  0    40   ~ 0
Note:\nVref = 3V\nVbias = 1.5V
Text Label 6400 3700 0    50   ~ 0
Vsen
Wire Wire Line
	3000 1000 3100 1000
Wire Wire Line
	2450 1500 3100 1500
Wire Wire Line
	3100 1100 3100 1000
Connection ~ 3100 1000
Wire Wire Line
	3100 1000 3500 1000
Wire Wire Line
	3100 1400 3100 1500
Connection ~ 3100 1500
Wire Wire Line
	3100 1500 3500 1500
$Comp
L SensorDemo_passive:C C?
U 1 1 60369C72
P 3500 1250
F 0 "C?" V 3454 1333 50  0000 L CNN
F 1 "10uF" V 3545 1333 50  0000 L CNN
F 2 "" H 3538 1100 30  0001 C CNN
F 3 "" H 3500 1250 60  0001 C CNN
F 4 "https://www.mouser.com/ProductDetail/Samsung-Electro-Mechanics/CL21A106KOQNNNG/?qs=hqM3L16%252BxlcMWI7QbqH0LA%3D%3D" V 3500 1250 50  0001 C CNN "link"
	1    3500 1250
	0    1    1    0   
$EndComp
Wire Notes Line
	3400 850  3400 1600
Wire Notes Line
	3400 1600 2700 1600
Wire Notes Line
	2700 1600 2700 850 
Wire Notes Line
	2700 850  3400 850 
Text Notes 2700 850  0    40   ~ 0
Put the FB and C close\nto the USB port
Connection ~ 9300 3750
$Comp
L SensorDemo_IC:REF1933 U?
U 1 1 6032F828
P 9500 1250
F 0 "U?" H 9500 1637 60  0000 C CNN
F 1 "REF1930" H 9500 1531 60  0000 C CNN
F 2 "" H 9500 1250 60  0000 C CNN
F 3 "" H 9500 1250 60  0000 C CNN
	1    9500 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 1350 9950 1350
$Comp
L SensorDemo_power_supply:+3V3 #PS?
U 1 1 603F2885
P 10250 950
F 0 "#PS?" H 10250 900 50  0001 C CNN
F 1 "+3V3" H 10150 1050 50  0000 L CNN
F 2 "" H 10255 645 50  0001 C CNN
F 3 "" H 10255 645 50  0001 C CNN
	1    10250 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 950  10250 1100
Wire Wire Line
	9000 1250 9000 1500
$Comp
L SensorDemo_power_supply:+3V3 #PS?
U 1 1 60407867
P 8900 950
F 0 "#PS?" H 8900 900 50  0001 C CNN
F 1 "+3V3" H 8800 1050 50  0000 L CNN
F 2 "" H 8905 645 50  0001 C CNN
F 3 "" H 8905 645 50  0001 C CNN
	1    8900 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 950  8900 1350
Wire Wire Line
	8900 1350 9050 1350
$Comp
L SensorDemo_passive:C C?
U 1 1 6043DFE4
P 10750 1350
F 0 "C?" V 10704 1433 50  0000 L CNN
F 1 ".1uF" V 10795 1433 50  0000 L CNN
F 2 "" H 10788 1200 30  0000 C CNN
F 3 "" H 10750 1350 60  0000 C CNN
	1    10750 1350
	0    1    1    0   
$EndComp
Text Notes 550  7750 0    40   ~ 0
a good article about FBC:\nhttps://www.allaboutcircuits.com/technical-articles/choosing-and-using-ferrite-beads/
Wire Wire Line
	10400 1200 10400 1100
Wire Wire Line
	10400 1100 10250 1100
Connection ~ 10250 1100
Wire Wire Line
	10250 1100 10250 1350
Wire Wire Line
	10750 1200 10750 1100
Wire Wire Line
	10750 1100 10400 1100
Connection ~ 10400 1100
Wire Wire Line
	10400 1500 10400 1600
Wire Wire Line
	10400 1600 10750 1600
Wire Wire Line
	10750 1600 10750 1500
$Comp
L SensorDemo_power_supply:GND PS?
U 1 1 60453327
P 10750 1750
F 0 "PS?" H 10750 1625 50  0001 C CNN
F 1 "GND" H 10750 1675 50  0001 C CNN
F 2 "" H 10750 1750 50  0001 C CNN
F 3 "" H 10750 1750 50  0001 C CNN
	1    10750 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10750 1600 10750 1700
Connection ~ 10750 1600
$Comp
L SensorDemo_passive:TC TC?
U 1 1 6046A72B
P 4350 3200
F 0 "TC?" H 4200 3150 50  0000 C CNN
F 1 "10uF" H 4400 3300 50  0000 C CNN
F 2 "" H 4388 3050 30  0000 C CNN
F 3 "" H 4350 3200 60  0000 C CNN
F 4 "https://www.mouser.com/ProductDetail/AVX/TAJB106K020SNJ/?qs=sGAEpiMZZMtZ1n0r9vR22dqqeipQnnsBpy1lZYztj8Q%3D" H 4350 3200 50  0001 C CNN "link"
	1    4350 3200
	1    0    0    -1  
$EndComp
$Comp
L SensorDemo_power_supply:GND #PS?
U 1 1 6046B1B1
P 4550 3300
F 0 "#PS?" H 4550 3175 50  0001 C CNN
F 1 "GND" H 4550 3225 50  0001 C CNN
F 2 "" H 4550 3300 50  0001 C CNN
F 3 "" H 4550 3300 50  0001 C CNN
	1    4550 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 3250 4550 3200
Wire Wire Line
	4550 3200 4500 3200
Wire Wire Line
	4200 3200 3900 3200
Wire Wire Line
	2400 3600 2600 3600
$Comp
L SensorDemo_power_supply:+3V3 PS?
U 1 1 60471E04
P 2400 2300
F 0 "PS?" H 2400 2250 50  0001 C CNN
F 1 "+3V3" H 2250 2400 50  0000 L CNN
F 2 "" H 2405 1995 50  0001 C CNN
F 3 "" H 2405 1995 50  0001 C CNN
	1    2400 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 2300 2400 3600
Wire Wire Line
	9300 3750 9650 3750
Text Label 9650 3750 2    50   ~ 0
Vsen
Wire Wire Line
	9300 3750 9300 3800
Wire Wire Line
	9300 3700 9300 3750
Wire Wire Line
	9300 3300 9300 3400
Wire Wire Line
	9300 2700 9300 3000
$Comp
L SensorDemo_passive:R R?
U 1 1 6037DE0F
P 9300 3550
F 0 "R?" V 9250 3650 50  0000 C CNN
F 1 "R" V 9350 3650 50  0001 C CNN
F 2 "" H 9250 3480 30  0001 C CNN
F 3 "" V 9300 3550 30  0001 C CNN
	1    9300 3550
	0    1    1    0   
$EndComp
$Comp
L SensorDemo_passive:R R?
U 1 1 6037D798
P 9300 3150
F 0 "R?" V 9250 3250 50  0000 C CNN
F 1 "100R" V 9400 3250 50  0000 C CNN
F 2 "" H 9250 3080 30  0001 C CNN
F 3 "" V 9300 3150 30  0001 C CNN
	1    9300 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	9300 4500 9300 4600
Wire Wire Line
	9300 4100 9300 4200
$Comp
L SensorDemo_power_supply:GND #PS?
U 1 1 6038D96C
P 9300 4650
F 0 "#PS?" H 9300 4525 50  0001 C CNN
F 1 "GND" H 9300 4575 50  0001 C CNN
F 2 "" H 9300 4650 50  0001 C CNN
F 3 "" H 9300 4650 50  0001 C CNN
	1    9300 4650
	1    0    0    -1  
$EndComp
$Comp
L SensorDemo_passive:R R?
U 1 1 6037F35E
P 9300 4350
F 0 "R?" V 9250 4450 50  0000 C CNN
F 1 "100R" V 9400 4450 50  0000 C CNN
F 2 "" H 9250 4280 30  0001 C CNN
F 3 "" V 9300 4350 30  0001 C CNN
	1    9300 4350
	0    1    1    0   
$EndComp
$Comp
L SensorDemo_passive:R R?
U 1 1 6037E769
P 9300 3950
F 0 "R?" V 9300 4050 50  0000 C CNN
F 1 "R" V 9300 4054 50  0001 C CNN
F 2 "" H 9250 3880 30  0001 C CNN
F 3 "" V 9300 3950 30  0001 C CNN
	1    9300 3950
	0    1    1    0   
$EndComp
Wire Notes Line
	9200 3350 9450 3350
Wire Notes Line
	9450 3350 9450 4150
Wire Notes Line
	9450 4150 9200 4150
Wire Notes Line
	9200 4150 9200 3350
Text Notes 9500 4150 0    40   ~ 0
Note: Rx and Rx are sensors.\nRy and Ry are constant resistors\nto limit current under 15mA.
Wire Wire Line
	10050 2100 9950 2100
Wire Wire Line
	9000 2200 9050 2200
$Comp
L SensorDemo_power_supply:GND PS?
U 1 1 602F58D9
P 9000 2500
F 0 "PS?" H 9000 2375 50  0001 C CNN
F 1 "GND" H 9000 2425 50  0001 C CNN
F 2 "" H 9000 2500 50  0001 C CNN
F 3 "" H 9000 2500 50  0001 C CNN
	1    9000 2500
	1    0    0    -1  
$EndComp
$Comp
L SensorDemo_passive:C C?
U 1 1 602F58E5
P 10400 2300
F 0 "C?" V 10354 2383 50  0000 L CNN
F 1 "1uF" V 10445 2383 50  0000 L CNN
F 2 "" H 10438 2150 30  0000 C CNN
F 3 "" H 10400 2300 60  0000 C CNN
	1    10400 2300
	0    1    1    0   
$EndComp
$Comp
L SensorDemo_IC:REF1933 U?
U 1 1 602F58F0
P 9500 2200
F 0 "U?" H 9500 2587 60  0000 C CNN
F 1 "REF1930" H 9500 2481 60  0000 C CNN
F 2 "" H 9500 2200 60  0000 C CNN
F 3 "" H 9500 2200 60  0000 C CNN
	1    9500 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 2300 9950 2300
$Comp
L SensorDemo_power_supply:+3V3 #PS?
U 1 1 602F58FB
P 10250 1900
F 0 "#PS?" H 10250 1850 50  0001 C CNN
F 1 "+3V3" H 10150 2000 50  0000 L CNN
F 2 "" H 10255 1595 50  0001 C CNN
F 3 "" H 10255 1595 50  0001 C CNN
	1    10250 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 1900 10250 2050
Wire Wire Line
	9000 2200 9000 2450
$Comp
L SensorDemo_power_supply:+3V3 #PS?
U 1 1 602F5907
P 8900 1900
F 0 "#PS?" H 8900 1850 50  0001 C CNN
F 1 "+3V3" H 8800 2000 50  0000 L CNN
F 2 "" H 8905 1595 50  0001 C CNN
F 3 "" H 8905 1595 50  0001 C CNN
	1    8900 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 1900 8900 2300
Wire Wire Line
	8900 2300 9050 2300
$Comp
L SensorDemo_passive:C C?
U 1 1 602F5913
P 10750 2300
F 0 "C?" V 10704 2383 50  0000 L CNN
F 1 ".1uF" V 10795 2383 50  0000 L CNN
F 2 "" H 10788 2150 30  0000 C CNN
F 3 "" H 10750 2300 60  0000 C CNN
	1    10750 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	10400 2150 10400 2050
Wire Wire Line
	10400 2050 10250 2050
Connection ~ 10250 2050
Wire Wire Line
	10250 2050 10250 2300
Wire Wire Line
	10750 2150 10750 2050
Wire Wire Line
	10750 2050 10400 2050
Connection ~ 10400 2050
Wire Wire Line
	10400 2450 10400 2550
Wire Wire Line
	10400 2550 10750 2550
Wire Wire Line
	10750 2550 10750 2450
$Comp
L SensorDemo_power_supply:GND PS?
U 1 1 602F5927
P 10750 2700
F 0 "PS?" H 10750 2575 50  0001 C CNN
F 1 "GND" H 10750 2625 50  0001 C CNN
F 2 "" H 10750 2700 50  0001 C CNN
F 3 "" H 10750 2700 50  0001 C CNN
	1    10750 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10750 2550 10750 2650
Connection ~ 10750 2550
Wire Wire Line
	10050 2100 10050 2700
Text Notes 9450 2850 0    40   ~ 0
Maximum 20mA,\nuse 15mA
$Comp
L SensorDemo_passive:FB FB?
U 1 1 6033AEDC
P 4450 2400
F 0 "FB?" H 4450 2350 50  0000 C CNN
F 1 "12.3071 nano ohm" H 4525 2500 50  0001 C CNN
F 2 "" H 4450 2400 50  0001 C CNN
F 3 "" H 4450 2400 50  0001 C CNN
	1    4450 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 2400 4600 2400
$Comp
L SensorDemo_passive:C C?
U 1 1 6034B814
P 4200 2600
F 0 "C?" V 4154 2683 50  0000 L CNN
F 1 "0.1uF" V 4250 2650 50  0000 L CNN
F 2 "" H 4238 2450 30  0000 C CNN
F 3 "" H 4200 2600 60  0000 C CNN
	1    4200 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	4200 2450 4200 2400
Connection ~ 4200 2400
Wire Wire Line
	4200 2400 3900 2400
Wire Wire Line
	4200 2750 4200 2800
Wire Wire Line
	4200 2800 4550 2800
Wire Wire Line
	4550 2800 4550 3200
Connection ~ 4550 3200
NoConn ~ 9050 2100
$Comp
L SensorDemo_passive:C C?
U 1 1 6037670C
P 6050 4000
F 0 "C?" V 6004 4083 50  0000 L CNN
F 1 "0.1uF" V 6095 4083 50  0000 L CNN
F 2 "" H 6088 3850 30  0000 C CNN
F 3 "" H 6050 4000 60  0000 C CNN
	1    6050 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	6050 3850 6050 3700
Connection ~ 6050 3700
Wire Wire Line
	6050 3700 5850 3700
Wire Wire Line
	6050 4150 6050 4200
Wire Wire Line
	6050 4200 5900 4200
Connection ~ 5900 4200
Wire Wire Line
	5900 4200 5900 3800
Text Notes 2300 4150 0    50   ~ 0
Please include the crystal circuit\nfor the mcu
Text Notes 6550 3150 0    50   ~ 0
Gain is decided by application.
$Comp
L SensorDemo_passive:C C?
U 1 1 602BF7E6
P 5200 5000
F 0 "C?" V 5154 5083 50  0000 L CNN
F 1 "1uF" V 5245 5083 50  0000 L CNN
F 2 "" H 5238 4850 30  0000 C CNN
F 3 "" H 5200 5000 60  0000 C CNN
	1    5200 5000
	0    1    1    0   
$EndComp
$Comp
L SensorDemo_passive:C C?
U 1 1 602BF7F0
P 5550 5000
F 0 "C?" V 5504 5083 50  0000 L CNN
F 1 ".1uF" V 5595 5083 50  0000 L CNN
F 2 "" H 5588 4850 30  0000 C CNN
F 3 "" H 5550 5000 60  0000 C CNN
	1    5550 5000
	0    1    1    0   
$EndComp
Wire Wire Line
	5200 4850 5200 4750
Wire Wire Line
	5550 4850 5550 4750
Wire Wire Line
	5550 4750 5200 4750
Wire Wire Line
	5200 5150 5200 5250
Wire Wire Line
	5200 5250 5550 5250
Wire Wire Line
	5550 5250 5550 5150
$Comp
L SensorDemo_power_supply:GND PS?
U 1 1 602BF802
P 5550 5400
F 0 "PS?" H 5550 5275 50  0001 C CNN
F 1 "GND" H 5550 5325 50  0001 C CNN
F 2 "" H 5550 5400 50  0001 C CNN
F 3 "" H 5550 5400 50  0001 C CNN
	1    5550 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 5250 5550 5350
Connection ~ 5550 5250
$Comp
L SensorDemo_passive:C C?
U 1 1 602E1ADA
P 7150 4950
F 0 "C?" V 7104 5033 50  0000 L CNN
F 1 "1uF" V 7195 5033 50  0000 L CNN
F 2 "" H 7188 4800 30  0000 C CNN
F 3 "" H 7150 4950 60  0000 C CNN
	1    7150 4950
	0    1    1    0   
$EndComp
$Comp
L SensorDemo_passive:C C?
U 1 1 602E1AF2
P 7500 4950
F 0 "C?" V 7454 5033 50  0000 L CNN
F 1 ".1uF" V 7545 5033 50  0000 L CNN
F 2 "" H 7538 4800 30  0000 C CNN
F 3 "" H 7500 4950 60  0000 C CNN
	1    7500 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	7150 4800 7150 4700
Wire Wire Line
	7500 4800 7500 4700
Wire Wire Line
	7500 4700 7150 4700
Wire Wire Line
	7150 5100 7150 5200
Wire Wire Line
	7150 5200 7500 5200
Wire Wire Line
	7500 5200 7500 5100
$Comp
L SensorDemo_power_supply:GND PS?
U 1 1 602E1B04
P 7500 5350
F 0 "PS?" H 7500 5225 50  0001 C CNN
F 1 "GND" H 7500 5275 50  0001 C CNN
F 2 "" H 7500 5350 50  0001 C CNN
F 3 "" H 7500 5350 50  0001 C CNN
	1    7500 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 5200 7500 5300
Connection ~ 7500 5200
$Comp
L SensorDemo_power_supply:+3V3 PS?
U 1 1 603052E4
P 5550 4650
F 0 "PS?" H 5550 4600 50  0001 C CNN
F 1 "+3V3" H 5450 4750 50  0000 L CNN
F 2 "" H 5555 4345 50  0001 C CNN
F 3 "" H 5555 4345 50  0001 C CNN
	1    5550 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 4650 5550 4750
Connection ~ 5550 4750
$Comp
L SensorDemo_power_supply:+3V3 PS?
U 1 1 60310695
P 7500 4600
F 0 "PS?" H 7500 4550 50  0001 C CNN
F 1 "+3V3" H 7400 4700 50  0000 L CNN
F 2 "" H 7505 4295 50  0001 C CNN
F 3 "" H 7505 4295 50  0001 C CNN
	1    7500 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 4600 7500 4700
Connection ~ 7500 4700
Text Notes 5100 5600 0    50   ~ 0
3V3 bypass of the \nLTC1658
Text Notes 7000 5600 0    50   ~ 0
3V3 bypass of the \nINA126
$Comp
L SensorDemo_connector:CONN3X2 P?
U 1 1 602BAE03
P 1750 1100
F 0 "P?" H 1750 1373 50  0000 C CNN
F 1 "CONN3X2" H 1750 650 50  0001 C CNN
F 2 "" H 5050 -1050 60  0000 C CNN
F 3 "" H 5050 -1050 60  0000 C CNN
	1    1750 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 1000 1400 1000
Wire Wire Line
	1150 1200 1400 1200
Wire Wire Line
	2100 1000 2700 1000
Text Label 2250 1000 2    50   ~ 0
VDD
Text Label 1150 1000 0    50   ~ 0
~MCLR
Wire Wire Line
	1000 1100 1000 1500
Wire Wire Line
	1000 1500 2450 1500
Wire Wire Line
	1000 1100 1400 1100
Text Label 1150 1200 0    50   ~ 0
PGC
Wire Wire Line
	2350 1100 2100 1100
Text Label 2350 1100 2    50   ~ 0
PGD
Wire Wire Line
	2350 1200 2100 1200
Text Label 2350 1200 2    50   ~ 0
PGM
$Comp
L SensorDemo_passive:R R?
U 1 1 60353991
P 1500 4500
F 0 "R?" H 1500 4695 50  0000 C CNN
F 1 "R" H 1500 4604 50  0000 C CNN
F 2 "" H 1450 4430 30  0001 C CNN
F 3 "" V 1500 4500 30  0001 C CNN
	1    1500 4500
	1    0    0    -1  
$EndComp
$Comp
L SensorDemo_passive:C C?
U 1 1 60357F46
P 1150 5350
F 0 "C?" V 1104 5433 50  0000 L CNN
F 1 "C" V 1195 5433 50  0000 L CNN
F 2 "" H 1188 5200 30  0000 C CNN
F 3 "" H 1150 5350 60  0000 C CNN
	1    1150 5350
	0    1    1    0   
$EndComp
$Comp
L SensorDemo_passive:C C?
U 1 1 60358853
P 1850 5350
F 0 "C?" V 1804 5433 50  0000 L CNN
F 1 "C" V 1895 5433 50  0000 L CNN
F 2 "" H 1888 5200 30  0000 C CNN
F 3 "" H 1850 5350 60  0000 C CNN
	1    1850 5350
	0    1    1    0   
$EndComp
Wire Wire Line
	1350 4500 1150 4500
Wire Wire Line
	1150 4500 1150 5000
Wire Wire Line
	1650 4500 1850 4500
Wire Wire Line
	1850 4500 1850 5000
Wire Wire Line
	1250 5000 1150 5000
Connection ~ 1150 5000
Wire Wire Line
	1150 5000 1150 5200
Wire Wire Line
	1750 5000 1850 5000
Connection ~ 1850 5000
Wire Wire Line
	1850 5000 1850 5200
Wire Wire Line
	1150 5500 1150 5600
Wire Wire Line
	1150 5600 1850 5600
Wire Wire Line
	1850 5600 1850 5500
Wire Wire Line
	1150 5700 1150 5600
Connection ~ 1150 5600
$Comp
L SensorDemo_power_supply:GND PS?
U 1 1 603C07C7
P 1150 5750
F 0 "PS?" H 1150 5625 50  0001 C CNN
F 1 "GND" H 1150 5675 50  0001 C CNN
F 2 "" H 1150 5750 50  0001 C CNN
F 3 "" H 1150 5750 50  0001 C CNN
	1    1150 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 2900 2600 2900
Wire Wire Line
	2050 3000 2600 3000
Wire Wire Line
	2050 2800 2250 2800
Wire Wire Line
	2250 2800 2250 3050
Connection ~ 2250 2800
Wire Wire Line
	2250 2800 2600 2800
Wire Wire Line
	2250 3350 2250 3700
Text Label 2050 2900 0    50   ~ 0
PGC
Text Label 2050 3000 0    50   ~ 0
PGD
$Comp
L SensorDemo_discrete:CRYSTAL X?
U 1 1 60354DB4
P 1500 5000
F 0 "X?" H 1500 5243 50  0000 C CNN
F 1 "CRYSTAL" H 1500 5152 50  0000 C CNN
F 2 "" H 1500 5000 60  0001 C CNN
F 3 "https://www.mouser.com/ProductDetail/ABRACON/ABM3-8000MHZ-B4Y-T?qs=%252BlF%252B75lapNKxd1hbTYfShQ%3D%3D" H 1500 5159 60  0001 C CNN
	1    1500 5000
	1    0    0    -1  
$EndComp
$Comp
L SensorDemo_passive:R R?
U 1 1 6040CF70
P 9000 2700
F 0 "R?" H 8900 2600 50  0000 C CNN
F 1 "0" H 9000 2600 50  0000 C CNN
F 2 "" H 8950 2630 30  0001 C CNN
F 3 "" V 9000 2700 30  0001 C CNN
	1    9000 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 850  7000 1000
Connection ~ 7000 1000
Wire Wire Line
	7000 1000 7100 1000
Text Label 7300 850  2    50   ~ 0
Sensor
Wire Wire Line
	7000 850  7300 850 
Wire Wire Line
	8550 2700 8850 2700
Text Label 8550 2700 0    50   ~ 0
Sensor
Wire Wire Line
	9150 2700 9300 2700
$Comp
L SensorDemo_passive:R R?
U 1 1 60446EE9
P 9650 2700
F 0 "R?" H 9650 2895 50  0000 C CNN
F 1 "0" H 9650 2804 50  0000 C CNN
F 2 "" H 9600 2630 30  0001 C CNN
F 3 "" V 9650 2700 30  0001 C CNN
	1    9650 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 2700 9800 2700
Wire Wire Line
	9500 2700 9300 2700
Connection ~ 9300 2700
$EndSCHEMATC
