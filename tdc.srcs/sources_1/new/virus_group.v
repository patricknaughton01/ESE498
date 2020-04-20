/*
 * This module creates a group of ring oscillators that are all enabled with
 * the same signal.
 * 
 * Parameters
 *   SIZE:   the number of ring oscillators in this group
 *
 * Inputs
 *   enable: the enable signal for all the ring osciallators in this group
 * 
 * Outputs
 *   out:    the output from all the ring oscillators in this group
 * 
*/
`timescale 1ns / 1ps

module virus_group#(parameter SIZE=512)(
    (* dont_touch = "true" *)output[SIZE-1:0]       out,
    input                                           enable
);

genvar k;
generate
    for (k = 0; k<SIZE; k = k + 1)begin
        (* dont_touch="true" *)ro ringOsc(out[k], enable);
    end
endgenerate

endmodule
