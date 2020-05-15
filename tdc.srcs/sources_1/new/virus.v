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

module virus#(parameter NUM=16, SIZE=512)(
    output  wire[(NUM*SIZE)-1:0]    out,
    input   wire[NUM-1:0]           enable
);

genvar k;
generate
    for(k = 0; k < NUM; k = k + 1)begin
		// This creates a virus_group with size SIZE, unique output pins, and
		// enable signal enable[k]
        virus_group#(.SIZE(SIZE)) vg(out[((NUM-k)*SIZE) - 1:(NUM-k-1)*SIZE], enable[k]);
    end
endgenerate;

endmodule
