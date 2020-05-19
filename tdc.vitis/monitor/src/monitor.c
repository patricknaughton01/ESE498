/*
 *  This code runs on the Zynq processor on the Zedboard, and controls
 *  when and how measurements are made
 */

#include <stdio.h>
#include <stdlib.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xuartps.h"
#include "monitor.h"

#define CLK_SPEED 100000000
#define RUNS 100

int32_t * const peripheral 	= (int32_t*)0x43C00000;
int32_t * const rec_addr 	= (int32_t*)0x43C0FFFC;
int32_t * const freq_addr 	= (int32_t*)0x43C0FFF8;
int32_t * const read_addr 	= (int32_t*)0x43C0FFF4;
int32_t * const rms_addr	= (int32_t*)0x43C0FFEC;
int32_t * const sum_addr	= (int32_t*)0x43C0FFE8;
int32_t * const virus_addr 	= (int32_t*)0x43C0FFD8;
int32_t * const chal_addr	= (int32_t*)0x43C0FF00;
const int32_t num_reads = 10000;
int32_t maskRO[5] = {0x00001fff, 0x00001fff, 0x00001fff, 0x00001fff};

void makeMeasurement();
void stepResponse();
void challengeResponse();
void setMask();

int main() {
	init_platform();
	while(1){
		char go = XUartPs_RecvByte(XPAR_PS7_UART_1_BASEADDR);
		if(go == 'c'){
			makeMeasurement();
		}else if(go == 't'){
			stepResponse();
		}else if(go == 'r'){
			challengeResponse();
		}else if(go == 'm') {
			setMask();
		}
	}
	return 0;
}

// This function changes the mask to determine which ring oscillators are active
void setMask() {
	char buf[5] = {0,0,0,0,0};
	for(int i=0; i<5; ++i) {
		buf[i] = XUartPs_RecvByte(XPAR_PS7_UART_1_BASEADDR);
	}
	if(buf[0] < 4) {
		maskRO[buf[0]] = buf[1] + ((int)(buf[2]) << 8) + ((int)(buf[3]) << 16) + ((int)(buf[3]) << 24);
		xil_printf("mask: %x%x%x%x\n", maskRO[3], maskRO[2], maskRO[1], maskRO[0]);
	}else {
		xil_printf("Invalid index\n");
	}
}

// This function sends a challenge to the top module, then reads a challenge
// response 100 times for all challenges provided in the header file
void challengeResponse(){
	*read_addr = num_reads;
	*virus_addr = maskRO[0];
	*(virus_addr + 1) = maskRO[1];
	*(virus_addr + 2) = maskRO[2];
	*(virus_addr + 3) = maskRO[3];
	
	
	for (int i=0; i<NUM_CHAL; i++) {
		for(int j = 0; j<100; j++){
			*chal_addr = challenges[i][0];
			*(chal_addr + 1) = challenges[i][1];
			*(chal_addr + 2) = challenges[i][2];
			*(chal_addr + 3) = challenges[i][3];
			*rec_addr = 3;					// Start recording challenge response

			int32_t rms_val;
			// Wait until the response is done being collected
			do{
				rms_val = *(rms_addr);
			}while((rms_val & 1<<31)==0);
			rms_val ^= (1<<31);

			int32_t sum_val;
			do{
				sum_val = *(sum_addr);
			}while((sum_val & 1<<31) == 0);
			sum_val ^= (1<<31);

			int32_t energy_val = (int32_t)rms_val;	// Divide by clock ticks to get power

			double energy_no_dc_val =
					((double)energy_val)
					- ((double)sum_val * (double)sum_val / (double)num_reads);

			xil_printf("%d %d\n", i, (int32_t)energy_no_dc_val);
		}
	}
	xil_printf("stop\n");
}

// This function measures a frequency response of the board, starting at a high
// frequency and working down by multiply the length of the period by a small
// number
void makeMeasurement(){
	const double period_mul = 1.01;
	*read_addr = num_reads;

	*virus_addr = 0x00001fff;
	*(virus_addr + 1) = 0x00001fff;
	*(virus_addr + 2) = 0x00001fff;
	*(virus_addr + 3) = 0x00001fff;
	for (int i=0; i<RUNS; i++) {
		for(double period=1.0; period < 5000.0; period = (period*period_mul + 1)){
			*freq_addr = (int32_t)period;	// Set the frequency of the virus
			*rec_addr = 0;					// Start recording square response

			int32_t rms_val;
			// Wait until the response is done being collected
			do{
				rms_val = *(rms_addr);
			}while((rms_val & 1<<31)==0);
			rms_val ^= (1<<31);

			int32_t sum_val;
			do{
				sum_val = *(sum_addr);
			}while((sum_val & 1<<31) == 0);
			sum_val ^= (1<<31);

			int32_t energy_val = (int32_t)rms_val;	// Divide by clock ticks to get power

			double energy_no_dc_val =
					((double)energy_val)
					- ((double)sum_val * (double)sum_val / (double)num_reads);

			xil_printf("%d %d\n", CLK_SPEED/(2*((int32_t)period)), (int32_t)energy_no_dc_val);
		}
	}
}

// This function generates a step response. In this configuration, the
// frequency register is used to determine when the power virus turns on
void stepResponse(){
	*read_addr = num_reads;
	int32_t freq = 5000;

	*virus_addr = 0x00001fff;
	*(virus_addr + 1) = 0x00001fff;
	*(virus_addr + 2) = 0x00001fff;
	*(virus_addr + 3) = 0x00001fff;

	*freq_addr = freq;	// Start the step response half-way through the window
	*rec_addr = 1;		// Read a step response

	for(int i = 0; i<num_reads; i++){
		int32_t value;
		do{
			value = *(peripheral + i);
		}while((value & (1<<31))==0);
		value ^= (1<<31);
		xil_printf("%d %d %d\n", freq, i, value);
	}
}
