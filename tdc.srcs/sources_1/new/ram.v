/*
 * This module creates memory to hold all measurements throughout the
 * experiment
 * 
 * Parameters
 *   DEPTH:      the size of the memory needed. This is equal to the number
 *               of measurements made per frequency
 *   ADDR_WIDTH: the number of bits used to address the memory
 *   WIDTH:      the number of bits per location in this memory
 *
 * Inputs
 *   clk:        the global clock signal
 *   we:         the write eneable signal, this indicates that a location at
 *               address a is to be written to with the value of di
 *   a:          the target address for reads and writes
 *   di:         the data in bus for memory writes
 * 
 * Outputs
 *   do:         the data out bus for memory reads
 * 
*/

`timescale 1ns / 1ps

module RAM#(parameter DEPTH=10000, ADDR_WIDTH=16, WIDTH=32)(clk, we, a, di, do);

    input clk;
    input we;
    input [ADDR_WIDTH-1:0] a;
    input [WIDTH-1:0] di;
    output [WIDTH-1:0] do;
    
    reg [WIDTH-1:0] ram [DEPTH-1:0];
    
    always @(posedge clk) begin
        if (we)
            ram[a>>2] <= di;
    end
    
    assign do = ram[a>>2];

endmodule
