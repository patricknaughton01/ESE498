/*
	This code is based off of similar code from ESE 465
*/
#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xuartps.h"
#include "monitor.h"

void makeMeasurement();

int main() {
	init_platform();
	while(1){
		XUartPs_RecvByte(XPAR_PS7_UART_1_BASEADDR);
		makeMeasurement();
		//xil_printf("%d\n", ++i);
	}


	//cleanup_platform();
	return 0;
}

void makeMeasurement(){
	int32_t validRead;
	int32_t value;
	XTime * end, ts;
	int32_t * const peripheral = (int32_t*)0x43C00000;
	int32_t * const rec_addr = (int32_t*)0x43C0FFFC;
	int32_t * const freq_addr = (int32_t*)0x43C0FFF8;
	int32_t * const read_addr = (int32_t*)0x43C0FFF4;
	int32_t * const virus_addr = (int32_t*)0x43C0FFF0;
	// How long to wait between streams of measurements in ns
	const long delay = 100000000;
	// How many times to read from the monitor
	const int32_t numReads = 10000;
	*read_addr = numReads;
	int32_t freq = 1;

	*virus_addr = (1<<12) - 1;	// Generate a bitmask of 12 1's
	*freq_addr = freq;	// Set the frequency of the virus
	*rec_addr = 0;		// Start recording square response

	// Read from monitor
	validRead = 0;
	while(validRead < numReads) {
		// Check a flag bit
		int32_t *addr = peripheral + validRead;
		value = *addr;
		if ((value & (1<<31)) != 0) {
			value &= 0xFF;
			xil_printf("%d %d %d\n", 1, validRead, value);
			validRead++;
		}
	}

	// Wait for time
	XTime_GetTime(&end);
	end += (delay * COUNTS_PER_SECOND) / 1000000000;

	XTime_GetTime(&ts);
	while (ts < end) {
		XTime_GetTime(&ts);
	}
}
