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
