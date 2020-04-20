/*
 * This module creates a single one-stage ring oscillator. A NAND gate was
 * chosen for this module so that an enable input could be used. See truth
 * table below.
 *
 *       Ring Oscillator
 *         ____________
 *        |            |
 *        |   ______   |
 *    in1  --|      |  |
 *           | NAND |--  output
 * enable ---|______|
 *
 *
 *  enable | in1 | output
 * --------|-----|-------
 *    0    |  0  |   1
 *    0    |  1  |   1
 *    1    |  0  |   1
 *    1    |  1  |   0
 *
 * As shown in the truth table, when enable is 0, the ring oscillator is in
 * steady state, with an output of 1. But when enable is 1, the ring oscillator
 * is unstable. This will cause the output to switch repeatedly, drawing a
 * a relatively large amount of power.
 *
 * Inputs
 *   enable: the signal that tells the ring oscillator when to oscillate
 * 
 * Outputs
 *   out:    the value of the ring oscillator. The main reason why this is
 *           brought out of this module is so that syntesis tools do not
 *           optimize this module out
 * 
*/

`timescale 1ns / 1ps

module ro(
    output out,
    input enable
);

(* dont_touch = "true" *)nand(out, out, enable);

endmodule
