`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/24/2020 01:30:34 PM
// Design Name: 
// Module Name: tdc
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tdc#(parameter INITIAL=64, DELAY=64)(
    input               clk,
    input               reset,
    // TODO: Replace this with an encoder that just uses 6 bits
    output  reg[DELAY-1:0]    delay
);

(* dont_touch = "true" *) wire[INITIAL:0] initial_bufs;     // Not INITIAL-1 so that instantiation is convenient
(* dont_touch = "true" *) wire[DELAY:0] delay_bufs;
reg[DELAY-1:0] latches;
reg[DELAY-1:0] delayD;

generate
    genvar k;
    for(k = 0; k < INITIAL/4; k = k + 1)begin
        CARRY4 init_k (
            .DI(initial_bufs[k*4+3:k*4]),
            .S('b0000),
            .CYINIT('b0),
            .CI('b0),
            .O(initial_bufs[k*4+4:k*4+1])
        );
    end
    for(k = 0; k < DELAY/4; k = k + 1)begin
         CARRY4 delay_k (
            .DI(delay_bufs[k*4+3:k*4]),
            .S('b0000),
            .CYINIT('b0),
            .CI('b0),
            .O(delay_bufs[k*4+4:k*4+1])
        );
    end
endgenerate

assign initial_bufs[0] = clk;
assign delay_bufs[0] = initial_bufs[INITIAL];

integer i;
always @ * begin
    if(clk)begin
        for(i = 0; i<=DELAY; i = i + 1)begin
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
