// File: MUX41_behavioral.v
// Generated by MyHDL 0.9.0
// Date: Mon Oct  9 19:21:53 2017


`timescale 1ns/10ps

module MUX41_behavioral (
    sel_1,
    sel_2,
    x_1in,
    x_2in,
    x_3in,
    x_4in,
    f_out
);


input sel_1;
input sel_2;
input x_1in;
input x_2in;
input x_3in;
input x_4in;
output f_out;
reg f_out;






always @(x_1in, sel_2, sel_1, x_2in, x_4in, x_3in) begin: MUX41_BEHAVIORAL_LOGIC
    if (((!sel_1) && (!sel_2))) begin
        f_out = x_1in;
    end
    else if (((!sel_1) && sel_2)) begin
        f_out = x_2in;
    end
    else if ((sel_1 && (!sel_2))) begin
        f_out = x_3in;
    end
    else begin
        f_out = x_4in;
    end
end

endmodule
