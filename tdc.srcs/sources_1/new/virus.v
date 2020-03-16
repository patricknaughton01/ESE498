`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/21/2020 01:12:33 PM
// Design Name: 
// Module Name: virus
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


module virus#(parameter NUM=16, SIZE=512)(
    output  wire[(NUM*SIZE)-1:0]    out,
    input   wire[NUM-1:0]           enable
);

genvar k;
generate
    for(k = 0; k < NUM; k = k + 1)begin
        virus_group#(.SIZE(SIZE)) vg(out[((NUM-k)*SIZE) - 1:(NUM-k-1)*SIZE], enable[k]);
    end
endgenerate;

endmodule
