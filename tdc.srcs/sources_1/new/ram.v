`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/01/2020 02:30:37 PM
// Design Name: 
// Module Name: ram
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


module RAM#(parameter DEPTH=10000, ADDR_WIDTH=32)(clk, we, a, di, do);

    input clk;
    input we;
    input [5:0] a;
    input [15:0] di;
    output [15:0] do;
    
    reg [15:0] ram [DEPTH-1:0];
    
    always @(posedge clk) begin
        if (we)
            ram[a] <= di;
    end
    
    assign do = ram[a];

endmodule
