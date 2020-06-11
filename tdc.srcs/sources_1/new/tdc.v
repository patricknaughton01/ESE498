/*
 * This module creates the voltage measuring circuit
 * 
 * Parameters
 *   INITIAL: the length of the initial delay line. On this particular board,
 *            it was found that an initial delay line of length 64 worked
 *   DELAY:   the length of the sensitive delay line. We found that a sensitive
 *            delay line of length 64 is plenty large for the variations seen
 *            on our board
 *
 * Inputs
 *   clk:     the global clock signal, which is where the voltage is measured
 *   reset:   the global reset signal, reset state when reset=0
 * 
 * Outputs
 *   delay:   the value at the output after each buffer in the sensitive delay
 *            line
 * 
*/

`timescale 1ns / 1ps

module tdc#(parameter INITIAL=64, DELAY=64)(
    input               clk,
    input               reset,
    output reg[DELAY-1:0] delay
);

(* dont_touch = "true" *) wire[INITIAL-1:0] initial_bufs;
(* dont_touch = "true" *) wire[DELAY-1:0] delay_bufs;
reg[DELAY-1:0] latches;
reg[DELAY-1:0] delayD;

generate
    genvar k;
	// Initial delay line, this is implemented with two NOT gates
    for(k = 1; k < INITIAL; k = k + 1)begin
        (* dont_touch = "true" *) buffer init(initial_bufs[k], initial_bufs[k-1]);
    end
	// Sensitive delay line, this is implemented with the CARRY4 primitive
    for(k = 0; k < (DELAY-1)/4; k = k + 1)begin
         (* dont_touch = "true" *) CARRY4 delay_k (
            .DI({0, 0, 0, delay_bufs[k*4] }),
            .S('b1110),
            .CYINIT('b0),
            .CI('b0),
            .CO(delay_bufs[k*4+4:k*4+1])
        );
    end
endgenerate

assign initial_bufs[0] = clk;
assign delay_bufs[0] = initial_bufs[INITIAL-1];

integer i;
always @ * begin
    if(clk)begin
        for(i = 0; i<=(DELAY-1); i = i + 1)begin
            latches[i] = delay_bufs[i];
        end
    end
    delayD <= latches;
end

always @ (posedge clk)begin
    if(reset == 1)begin
        delay <= delayD;
    end else begin
        delay <= 0;
    end    
end

endmodule
