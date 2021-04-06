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
uint16_t dacVal = 2047; //2047
uint16_t sensVal = 0;

//Controller Variables
bool runCalibrate;
uint8_t cmd;
uint16_t lowBound = 2037;//2042;
uint16_t upperBound = 2057;//2052;
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
    
    runCalibrate = true;
    calibrate();
    val = 200;
    
    
    
    
    while (1)
    { 
        cmd = UART1_RX_NB();
        if (cmd == '1') {
            runCalibrate = true;
            calibrate();
            val = 200;
        }
        
        
     
        ADC1Val();
        printf("Sens Val: %d\n\r", sensVal);
        
    }
    return 1; 
}

void ADC1Val() {
    AD1CON1bits.DONE = 0;               // Clear DONE bit Before Start Sampling
    AD1CON1bits.SAMP = 1;               // Start Sampling Manually
    while (AD1CON1bits.DONE == 0);      // Wait for Conversion Completes
    sensVal = ADC1BUF0;
    
}

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
        
        
        ADC1Val();
        printf("ADC VALUE BEFORE: %d\n\r", sensVal);
        
        if((sensVal <= 0) || (sensVal >= 4095)){
            if(sensVal == 0) {
                dacVal += val;
                flag = 0; //DAC IS BELOW ADC READING
                printf("adding %d\n\r", val);
            } else if (sensVal == 4095) {
                dacVal -= val;
                flag = 1; //DAC IS ABOVE ADC READING
                printf("subtracting %d\n\r", val);
            }

            ADC1Val();
            
            if((sensVal > lowBound) && (sensVal < upperBound)) {
                runCalibrate = false; // BREAK WHILE LOOP
                printf("WITHIN BOUNDS!!!\n\r");
            } else if (val == 0) {
                runCalibrate = false;
                printf("val == 0!\n\r");
            }

            if((dacVal < sensVal) && (flag == 1)) {
                val = (uint16_t)(val * 0.5) + 1;
            } else if ((dacVal > sensVal) && (flag == 0)) {
                val = (uint16_t)(val * 0.5) + 1;
            }  
        } else if((sensVal < lowBound) || (sensVal > upperBound)) {
            printf("222222222222222222222222222222\n\r");
            if(dacVal < sensVal) {
                dacVal += 5;
            } else if (dacVal > sensVal) {
                dacVal -= 5;
            }
            
            //add stuff here
            
        } else {
            runCalibrate = false;
        }
        
        SPI_transfer16(0b0000000000000000 | dacVal);
        printf("Calibrating... %d\n\r", sensVal);
    }
}

void SPI_transfer16(uint16_t input) {
    CS1_SetLow();
    SPI2_Exchange16bit(input);
    CS1_SetHigh();
    __delay_ms(1);
}
/**
 End of File
*/

