/*
	This code is based off of similar code from ESE 465
*/
#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "monitor.h"

int main() {
	init_platform();
	int32_t validRead;
	int32_t value;
	XTime * end, ts;
	//FIXME
	int32_t * const peripheral = (int32_t*)0x43C00000;
	// How long to wait between streams of measurements in ns
	const long delay = 100000000;
	// How many times to read from the monitor
	const int32_t numReads = 10000;
	//while(1) {
		// First, write to the voltage monitor to begin a measurement
		*peripheral = 0;

		// Read from monitor
		validRead = 0;
		xil_printf("Starting read\n");
		while(validRead < numReads) {
			// Check a flag bit
			int32_t *addr = peripheral + validRead;
			value = *addr;
			if ((value & (1<<31)) != 0) {
				value &= 0xFF;
				validRead++;
				xil_printf("%d\n", value);
			}
		}
		xil_printf("Ending read\n");

		// Wait for time
		XTime_GetTime(&end);
		end += (delay * COUNTS_PER_SECOND) / 1000000000;

		XTime_GetTime(&ts);
		while (ts < end) {
			XTime_GetTime(&ts);
		}

		//xil_printf("\n%ld\n", ts);
	//}
	cleanup_platform();
	return 0;
}
