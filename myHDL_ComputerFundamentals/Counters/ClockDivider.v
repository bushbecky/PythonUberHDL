// File: ClockDivider.v
// Generated by MyHDL 0.10
// Date: Tue Aug 14 06:51:29 2018


`timescale 1ns/10ps

module ClockDivider (
    Divisor,
    clkOut,
    count,
    clk,
    rst
);
// Simple Clock Divider based on the Digilint Clock Divider
// https://learn.digilentinc.com/Documents/262
// 
// Input:
//     Divisor(32 bit): the clock frequncy divide by value
//     clk(bool): The input clock
//     rst(bool): clockDivider Reset
// 
// Ouput:
//     clkOut(bool): the divided clock ouput
//     count(32bit): the value of the internal counter

input [31:0] Divisor;
output clkOut;
wire clkOut;
output [31:0] count;
wire [31:0] count;
input clk;
input rst;

reg [31:0] count_i = 0;
reg clkOut_i = 0;



always @(posedge clk, posedge rst) begin: CLOCKDIVIDER_COUNTER
    if (rst) begin
        count_i <= 0;
    end
    else if (($signed({1'b0, count_i}) == ($signed({1'b0, Divisor}) - 1))) begin
        count_i <= 0;
    end
    else begin
        count_i <= (count_i + 1);
    end
end


always @(posedge clk, posedge rst) begin: CLOCKDIVIDER_CLOCKTICK
    if (rst) begin
        clkOut_i <= 0;
    end
    else if (($signed({1'b0, count_i}) == ($signed({1'b0, Divisor}) - 1))) begin
        clkOut_i <= (!clkOut_i);
    end
    else begin
        clkOut_i <= clkOut_i;
    end
end



assign count = count_i;
assign clkOut = clkOut_i;

endmodule
