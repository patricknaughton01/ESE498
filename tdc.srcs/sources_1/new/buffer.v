/*
 * This module is simply two NOT gates in series to implement the initial
 * delay line
 *
 * Inputs
 *   in:  the input to the buffer
 * 
 * Outputs
 *   out: the output of the buffer
 * 
*/

`timescale 1ns / 1ps

module buffer(
    output      out,
    input       in
);
(* dont_touch = "true" *)wire tmp;
(* dont_touch = "true" *)not(tmp, in);
(* dont_touch = "true" *)not(out, tmp);
endmodule
