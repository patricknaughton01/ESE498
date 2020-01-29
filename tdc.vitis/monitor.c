/*
	This code is based off of similar code from ESE 465
*/

#include "monitor.h"

void main() {
	int validRead;
	int value;
	XTime * end, ts;

	while(1) {
		// First, write to the voltage monitor to begin a measurement
		*peripheral = 0;

		// Read from monitor
		validRead = 0;
		while(validRead < numReads) {
			// Check a flag bit
			value = *peripheral;
			if (value & 0x80000000 != 0) {
				validRead++;
				xil_printf("%d\n", value);
			}
		}

		// Wait for time
		XTime_GetTime(&end);
		end += (delay * COUNTS_PER_SECOND) / 1000000000;

		XTime_GetTime(&ts);
		while (ts < end)) {
			XTime_GetTime(&ts);
		}

		xil_printf("\n%ld\n", ts);
	}

	return 0;
}
