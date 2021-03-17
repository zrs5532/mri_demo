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
uint16_t dacVal = 32767; //32767
uint16_t sensVal = 0;

//Controller Variables
bool runCalibrate;
uint8_t cmd;
uint16_t lowBound = 2042;//2042;
uint16_t upperBound = 2052;//2052;
uint16_t val = 5000;

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
        if (cmd == '1' || sensVal == 4095 || sensVal == 0) {
            runCalibrate = true;
            calibrate();
            val = 200;
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
        uint8_t flag;
        
        if(val == 0) {
            runCalibrate = false;
        }
        
        ADC1Val();
        if(dacVal < (sensVal*16)) {
            dacVal += val;
            flag = 0; //DAC IS BELOW ADC READING
            //printf("ADDING %d\n\r", val);
        } else if (dacVal > (sensVal*16)) {
            dacVal -= val;
            flag = 1; //DAC IS ABOVE ADC READING
            //printf("SUBTRACTING %d\n\r", val);
        }
        
        uint16_t transferVal = dacVal >> 4;      
        SPI_transfer16(transferVal << 4);
        ADC1Val();
        if((sensVal*16) > lowBound && (sensVal*16) < upperBound) {
            runCalibrate = false; // BREAK WHILE LOOP
        }
        
        if(dacVal < (sensVal*16) && flag == 1) {
            val = val * 0.5;
        } else if (dacVal > (sensVal*16) && flag == 0) {
            val = val * 0.5;
        }
        
        
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

