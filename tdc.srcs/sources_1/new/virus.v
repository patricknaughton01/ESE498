`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/25/2020 12:40:09 PM
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


module virus#(parameter SIZE=1024)(
    (* dont_touch = "true" *)output[SIZE-1:0]    out,
    input               enable
);

genvar k;
generate
    for (k = 0; k<SIZE; k = k + 1)begin
        (* dont_touch="true" *)ro ringOsc(out[k], enable);
    end
endgenerate

endmodule
