// File: PowerBehaverial.v
// Generated by MyHDL 0.10
// Date: Fri Aug 24 16:59:14 2018


`timescale 1ns/10ps

module PowerBehaverial (
    a,
    b,
    c
);


input signed [7:0] a;
input signed [7:0] b;
output signed [15:0] c;
wire signed [15:0] c;





assign c = (a ** 2);

endmodule