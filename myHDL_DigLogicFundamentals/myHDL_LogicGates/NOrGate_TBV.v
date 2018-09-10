// File: NOrGate_TBV.v
// Generated by MyHDL 0.10
// Date: Mon Sep  3 14:50:11 2018


`timescale 1ns/10ps

module NOrGate_TBV (

);
// myHDL -> Verilog testbench for module `NOrGate`


wire Y;
reg X0 = 0;
reg X1 = 0;
wire [13:0] X0TV;
wire [13:0] X1TV;

assign X0TV = 14'd5499;
assign X1TV = 14'd3180;


always @(X1, Y, X0) begin: NORGATE_TBV_PRINT_DATA
    $write("%h", X0);
    $write(" ");
    $write("%h", X1);
    $write(" ");
    $write("%h", Y);
    $write("\n");
end



assign Y = (!(X0 || X1));


initial begin: NORGATE_TBV_STIMULES
    integer i;
    for (i=0; i<14; i=i+1) begin
        X0 <= X0TV[i];
        X1 <= X1TV[i];
        # 1;
    end
    $finish;
end

endmodule
