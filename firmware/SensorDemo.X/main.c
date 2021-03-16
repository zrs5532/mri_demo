/**
  Generated main.c file from MPLAB Code Configurator

  @Company
    Microchip Technology Inc.

  @File Name
    main.c

  @Summary
    This is the generated main.c using PIC24 / dsPIC33 / PIC32MM MCUs.

  @Description
    This source file provides main entry point for system initialization and application code development.
    Generation Information :
        Product Revision  :  PIC24 / dsPIC33 / PIC32MM MCUs - 1.170.0
        Device            :  dsPIC33EP32GP502
    The generated drivers are tested against the following:
        Compiler          :  XC16 v1.61
        MPLAB 	          :  MPLAB X v5.45
*/

/*
    (c) 2020 Microchip Technology Inc. and its subsidiaries. You may use this
    software and any derivatives exclusively with Microchip products.

    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
    WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
    PARTICULAR PURPOSE, OR ITS INTERACTION WITH MICROCHIP PRODUCTS, COMBINATION
    WITH ANY OTHER PRODUCTS, OR USE IN ANY APPLICATION.

    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
    BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
    FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
    ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
    THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.

    MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF THESE
    TERMS.
*/

/**
  Section: Included Files
*/
#include "mcc_generated_files/system.h"
#define FCY 40000000UL
#include <xc.h>
#include <stdio.h>
#include <string.h>
#include <libpic30.h>

/*
                         Main application
 */

// DAC & IN-AMP Variables
uint16_t dacVal = 30; //32767
uint16_t sensVal = 0;

//Controller Variables
bool runCalibrate;
uint8_t cmd;

void ADC1Val();
void UART1_Receive_CallBack(void);
char UART1_RX_NB(void);
void calibrate(void);
void SPI_transfer16(uint16_t input);

int main(void)
{
    // initialize the device
    SYSTEM_Initialize();
    
    //Configure ADC Registers
    AD1CON1bits.SSRCG = 0;
    AD1CON1bits.SSRC = 0b111;
    
    
    printf("\n\r5 Second Delay to Settle\n\r");
    __delay_ms(5000);
    printf("Settling complete.\n\r");
    
    
    
    while (1)
    { 
        cmd = UART1_RX_NB();
        if (cmd == '1') {
            runCalibrate = true;
            calibrate();
        }
     
        ADC1Val();
        printf("Sens Val: %d\n\r", sensVal);
            
            
//            switch(cmd) {
//                case '1':
//                    calibrate();
//                    printf("Calibration Complete.\n\r");
//                    printf("Sens Val: %d\n\r", sensVal);
//                    break;
//                case '2':
//                    runSense = true;
//                    while (runSense) {
//                        ADC1Val();
//                        printf("Sens Val: %d\n\r", sensVal);
//                    }
//                    break;
//                }
//            } 
        
    }
    return 1; 
}

void ADC1Val() {
    AD1CON1bits.DONE = 0;               // Clear DONE bit Before Start Sampling
    AD1CON1bits.SAMP = 1;               // Start Sampling Manually
    while (AD1CON1bits.DONE == 0);      // Wait for Conversion Completes
    sensVal = ADC1BUF0;
    
}

//void UART1_Receive_CallBack(void) {
//    __delay_us(10);
//    cmd = (uint8_t)UART1_RX_NB();
//    printf("%d", cmd);
//    
//    if(cmd == '1') {
//        //printf("test\n\r");
//        //calibrate();
//        printf("test\n\r");
//        
//    }
//    else if(cmd == '2') {
//        //runSense = false;
//        printf("runSense is false");
//    }
//}

char UART1_RX_NB(void) {
    if(U1STAbits.URXDA == 1) {
        return U1RXREG;
    }
    else {
        return 0;
    }
}

void calibrate(void) {
    while (runCalibrate) {
        ADC1Val();
        
        uint8_t accuracy;
        uint8_t topBound;
        
        //3072 < inp < 1024
        if  (sensVal == 4095 || sensVal == 0) {
            accuracy = 1;
        } else if (sensVal > 3071 || sensVal < 1023) {
            accuracy = 2;
        }else if (sensVal > 2560 || sensVal < 1536) {
            accuracy = 3;
        }else if (sensVal > 2052 || sensVal < 2042) {
            accuracy = 4;
//        }else if (sensVal > 2052 || sensVal < 2042) {
//            accuracy = 4;
        }else {
            runCalibrate = false;
        }
        
        switch(accuracy) {
            case 1: 
                if (sensVal == 4095) {
                    dacVal += 200;
                } else {
                    dacVal -= 200;
                }
                printf("accuracy = 1 ");
                break;
            case 2: 
                if (sensVal > 3072) {
                    dacVal += 50;
                } else {
                    dacVal -= 50;
                }
                printf("accuracy = 2 ");
                break;
            case 3:
                if (sensVal > 2560) {
                    dacVal += 25;
                } else {
                    dacVal -= 25;
                }
                printf("accuracy = 3 ");
                break;
            case 4:
                if (sensVal > 2052) {
                    dacVal += 10;
                } else {
                    dacVal -= 10;
                }
                printf("accuracy = 4 ");
                break;
        }
        
        //runCalibrate = false;
        
        
        
        
        
        
        SPI_transfer16(dacVal);
        printf("Calibrating... %d\n\r", sensVal);
    }
}

void SPI_transfer16(uint16_t input) {
    CS1_SetLow();
    SPI2_Exchange16bit(input);
    CS1_SetHigh();
    __delay_ms(10);
}



//while (sensVal < 2021 || sensVal > 2073) {
//        ADC1Val();
//        
//        if  (inp > 2073) {
//        dacVal += 25;
//        } else if (inp < 2021) {
//            dacVal -= 25;
//        }
/**
 End of File
*/

