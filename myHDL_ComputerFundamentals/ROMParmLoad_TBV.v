// File: ROMParmLoad_TBV.v
// Generated by MyHDL 0.10
// Date: Tue Jun 26 23:15:24 2018


`timescale 1ns/10ps

module ROMParmLoad_TBV (

);



reg [3:0] addr = 0;
reg [3:0] dout = 0;
reg clk = 0;



always @(addr) begin: ROMPARMLOAD_TBV_ROMPARMLOAD0_0_READACTION
    case (addr)
        0: dout = 3;
        1: dout = 2;
        2: dout = 1;
        default: dout = 0;
    endcase
end


initial begin: ROMPARMLOAD_TBV_CLK_SIGNAL
    while (1'b1) begin
        clk <= (!clk);
        # 1;
    end
end


initial begin: ROMPARMLOAD_TBV_STIMULES
    integer i;
    for (i=0; i<(3 + 1); i=i+1) begin
        addr <= i;
        @(posedge clk);
    end
    $finish;
end


always @(posedge clk) begin: ROMPARMLOAD_TBV_PRINT_DATA
    $write("%h", addr);
    $write(" ");
    $write("%h", dout);
    $write("\n");
end

endmodule
