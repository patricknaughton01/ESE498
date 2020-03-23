/*
	This code is based off of similar code from ESE 465
*/
#include <stdio.h>
#include <stdlib.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xuartps.h"
#include "monitor.h"

#define CLK_SPEED 100000000

int32_t * const peripheral = (int32_t*)0x43C00000;

void makeMeasurement();

int main() {
	init_platform();
	while(1){
		char go = XUartPs_RecvByte(XPAR_PS7_UART_1_BASEADDR);
		if(go == 'c'){
			makeMeasurement();
		}
		//xil_printf("%d\n", ++i);
	}


	//cleanup_platform();
	return 0;
}

void makeMeasurement(){
	int32_t validRead;
	int32_t value;
	int32_t * const rec_addr 	= (int32_t*)0x43C0FFFC;
	int32_t * const freq_addr 	= (int32_t*)0x43C0FFF8;
	int32_t * const read_addr 	= (int32_t*)0x43C0FFF4;
	int32_t * const pp_addr 	= (int32_t*)0x43C0FFF0;
	int32_t * const rms_addr	= (int32_t*)0x43C0FFEC;
	int32_t * const fft_addr	= (int32_t*)0x43C0FFE8;
	int32_t * const virus_addr 	= (int32_t*)0x43C0FFD8;
	// How many times to read from the monitor
	const int32_t numReads = 10000;
	// How many frequencies to test
	const int32_t num_freq = 500;
	// Factor to multiply the period value by
	const double period_mul = 1.01;
	*read_addr = numReads;
	int32_t period = 2;			// Actually half the period
//	*virus_addr = (1<<10) - 1;	// Generate a bitmask of 12 1's
//	for(int i = 0; i<num_freq; i++){
//		*freq_addr = period;	// Set the frequency of the virus
//		*rec_addr = 0;			// Start recording square response
//
//		// Read from monitor
//		validRead = 0;
//		int32_t real_freq = CLK_SPEED/(2*period);
//		while(validRead < numReads) {
//			// Check a flag bit
//			int32_t *addr = peripheral + validRead;
//			value = *addr;
//			if ((value & (1<<31)) != 0) {
//				value &= 0xFF;
//				xil_printf("%d %d %d\n", real_freq, validRead, value);
//				validRead++;
//			}
//		}
//		period = (int32_t)((period * period_mul) + 1);	// Change the period on the next run
//	}

	*virus_addr = 0x000003ff;
	*(virus_addr + 1) = 0x000003ff;
	*(virus_addr + 2) = 0x000003ff;
	*(virus_addr + 3) = 0x000003ff;
	for (int j=0; j<1; j++) {
		for(int i = 0; i<num_freq; i++){
			*freq_addr = (int32_t)period;	// Set the frequency of the virus
			*rec_addr = 0;			// Start recording square response

			// Wait until the response is done being collected
			value = *fft_addr;
			while(( value & (1<<31)) == 0) {
				value = *fft_addr;
			}

			xil_printf("%d %d\n", CLK_SPEED/(2*period), (value ^ (1<<31)));
			period = period + 1;	// Change the period on the next run
		}
		period = 2;
	}
}
