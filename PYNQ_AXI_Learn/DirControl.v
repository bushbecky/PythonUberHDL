// File: DirControl.v
// Generated by MyHDL 0.9.0
// Date: Wed Feb  7 14:06:59 2018


`timescale 1ns/10ps

module DirControl (
    AXIin,
    SWITCHin,
    goLeft_O,
    goRight_O,
    clk
);


input [31:0] AXIin;
input [1:0] SWITCHin;
output goLeft_O;
reg goLeft_O;
output goRight_O;
reg goRight_O;
input clk;

reg [31:0] AXILast;
reg [31:0] SWITCHLast;





always @(posedge clk) begin: DIRCONTROL_LOGIC
    if ((AXIin != AXILast)) begin
        AXILast <= AXIin;
        if (((AXIin != 0) || (AXIin != 3))) begin
            goRight_O <= AXIin[0];
            goLeft_O <= AXIin[1];
        end
    end
    if ((SWITCHin != SWITCHLast)) begin
        SWITCHLast <= SWITCHin;
        if (((SWITCHin != 0) || (SWITCHin != 3))) begin
            goRight_O <= SWITCHin[0];
            goLeft_O <= SWITCHin[1];
        end
    end
end

endmodule
