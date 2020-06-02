/*
 * This module creates a series of virus_groups to be used as a large power
 * virus.
 * 
 * Parameters
 *   NUM:    The number of virus groups to create
 *   SIZE:   The size of each virus_group
 *
 * Inputs
 *   enable: a bitmask that will tell which virus_groups to turn on
 * 
 * Outputs
 *   out:    the outputs from all ring oscillators in the entire power virus
 * 
*/

`timescale 1ns / 1ps

module virus#(parameter SIZE=1536)(
    output  wire[SIZE-1:0]    out,
    input   wire              enable
);

genvar k;
generate
    for(k = 0; k < SIZE; k = k + 1)begin
		// This creates a virus_group with size SIZE, unique output pins, and
		// enable signal enable[k]
        (* dont_touch="true" *)ro ringOsc(out[k], enable, enable);
    end
endgenerate

endmodule
