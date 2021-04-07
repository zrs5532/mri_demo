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
//#define DEBUG

/*
                         Main application
 */

// DAC & IN-AMP Variables
uint16_t dacVal = 2047; //2047
uint16_t sensVal = 0;

//Controller Variables
#define MAXBOUND (4095 - 805)
#define MINBOUND (0 + 805)
#define lowBound 2047 - 50 //2042;
#define upperBound 2047 + 50//2052;

bool runCalibrate;
uint8_t cmd;
uint16_t dacIncrement = 1023;
uint8_t flag;
uint8_t flip;


//Functions
void ADC1Val(); //Reads ADC Value
char UART1_RX_NB(void); //UART Receive Non-Blocking
void calibrate(void); //Calibrates the sensor
void SPI_transfer16(uint16_t input); //Sends data through SPI bus (16-bit)

int main(void)
{
    // initialize the device
    SYSTEM_Initialize();
    
    printf("\n\r5 Second Delay to Settle\n\r");
    __delay_ms(5000);
    printf("Settling complete.\n\r");
    
    runCalibrate = true;
    calibrate();
    dacIncrement = 1023;
    
    while (1)
    { 
        cmd = UART1_RX_NB();
        if (cmd == '1') {
            runCalibrate = true;
            calibrate();
            dacIncrement = 200;
        }
        
        
     
        ADC1Val();
        printf("%u\n\r", sensVal);
        
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
        printf("====================================\n\r");
        ADC1Val();
        printf("ADC VALUE BEFORE: %d\n\r", sensVal);
        printf("dacValue VALUE BEFORE: %u\n\r", dacVal);
        
        if((sensVal <= MINBOUND) || (sensVal >= MAXBOUND)){
            if(sensVal <= MINBOUND) {
                dacVal -= dacIncrement;
                flag = 0; //DAC IS BELOW ADC READING
                printf("subtracting %u\n\r", dacIncrement);
            } else if (sensVal >= MAXBOUND) {
                dacVal += dacIncrement;
                flag = 1; //DAC IS ABOVE ADC READING
                printf("adding %u\n\r", dacIncrement);
            }

            SPI_transfer16(0b0000000000000000 | dacVal);
            
            ADC1Val();
            
            if((sensVal > lowBound) && (sensVal < upperBound)) {
                runCalibrate = false; // BREAK WHILE LOOP
                printf("WITHIN BOUNDS!!!\n\r");
            } else if (dacIncrement == 0) {
                runCalibrate = false;
                printf("dacIncrement == 0!\n\r");
            }

            
            uint16_t testVal = 0b0000000000000000 | dacVal;
            printf("dacVal: %u\n\r", testVal);
            
            printf("ADC VALUE HALFWAY: %u\n\r", sensVal);
            
            
            
            if((sensVal <= MINBOUND) && (flag == 1)) {
                dacIncrement = (uint16_t)(dacIncrement / 2) + 1;
                printf("flipped!!\n\r");
            } else if ((sensVal >= MAXBOUND) && (flag == 0)) {
                dacIncrement = (uint16_t)(dacIncrement / 2) + 1;
                printf("flipped!!\n\r");
            }  
            
        } else if(((sensVal < lowBound) && (sensVal > MINBOUND)) || ((sensVal > upperBound) && (sensVal < MAXBOUND))) {
            printf("222222222222222222222222222222\n\r");
            if(sensVal < lowBound) {
                dacVal -= 1;
                printf("adding 1\n\r");
                SPI_transfer16(0b0000000000000000 | dacVal);
            } else if (sensVal > upperBound) {
                dacVal += 1;
                printf("subtracting 1\n\r");
                SPI_transfer16(0b0000000000000000 | dacVal);
            }
            
            //add stuff here
            
        } else {
            runCalibrate = false;
        }
        
        ADC1Val();
        printf("ADC VALUE AFTER: %d\n\r", sensVal);
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

