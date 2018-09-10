// File: BufferGate.v
// Generated by MyHDL 0.10
// Date: Mon Sep  3 14:43:49 2018


`timescale 1ns/10ps

module BufferGate (
    X,
    Y
);
// Buffer Gate demo module
// Input:
//     X(bool): Input conection to wire between `X` and `Y`
// Ouput:
//     Y(bool): Output connection to wire between 'X' and 'Y'

input X;
output Y;
wire Y;





assign Y = X;

endmodule
