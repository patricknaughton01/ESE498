/*
	This is the header file for testing the voltage monitor
*/

#include "xil_printf.h"
#include "xparameters.h"
#include "xtime_l.h"

//FIXME
int * peripheral = 0x00000000;

// How long to wait between streams of measurements in ns
long delay = 100000000;

// How many times to read from the monitor
int numReads = 100;
