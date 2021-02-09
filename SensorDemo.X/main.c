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

uint16_t dacVal = 32768; //32768
uint16_t sensVal;

void ADCVal();
void compute(uint16_t inp);

int main(void)
{
    // initialize the device
    SYSTEM_Initialize();
    
    AD1CON1bits.SSRCG = 0;
    AD1CON1bits.SSRC = 0b111;
    
    sensVal = 1;
    while (1)
    {    
        ADCVal();
         
        printf("Sens Val: %d\n\r", sensVal);
        __delay_us(100);
        compute(sensVal);
        __delay_ms(100);
        CS1_SetLow();
        SPI1_Exchange16bit(dacVal);
        CS1_SetHigh();
        __delay_ms(100);
        
    }
    return 1; 
}

void ADCVal() {
  AD1CON1bits.DONE = 0;               // Clear DONE bit Before Start Sampling
  AD1CON1bits.SAMP = 1;               // Start Sampling Manually
  while (AD1CON1bits.DONE == 0);      // Wait for Conversion Completes
  sensVal = ADC1BUF0;
}

void compute(uint16_t inp) {
    if  (inp > 2073) {
        dacVal += 25;
    } else if (inp < 2023) {
        dacVal -= 25;
    }
}

/**
 End of File
*/

