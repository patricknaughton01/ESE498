/*
	This code is based off of similar code from ESE 465
*/
#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "monitor.h"

void makeMeasurement();

int main() {
	init_platform();
	int i = 0;
	while(1){
		fflush(stdin);
		getchar();
		getchar();
		fflush(stdin);
		makeMeasurement();
		xil_printf("%d\n", ++i);
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
	// How long to wait between streams of measurements in ns
	const long delay = 100000000;
	// How many times to read from the monitor
	const int32_t numReads = 1000;
	*read_addr = numReads;
	for(int i = 1000; i>=1000; i-=100){
		*freq_addr = i;	// Set the frequency of the virus
		*rec_addr = 0;	// Start recording

		// Read from monitor
		validRead = 0;
		while(validRead < numReads) {
			// Check a flag bit
			int32_t *addr = peripheral + validRead;
			value = *addr;
			if ((value & (1<<31)) != 0) {
				value &= 0xFF;
				xil_printf("%d %d %d\n", i, validRead, value);
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
}
