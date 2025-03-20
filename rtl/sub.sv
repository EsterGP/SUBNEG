timeunit 1ns;
timeprecision 1ps;

module sub #(
    WIDTH=8
) (
    input  logic [WIDTH-1:0] in1,
    input  logic [WIDTH-1:0] in2,
    output logic neg,
    output logic [WIDTH:0] out
);

    assign out = in2-in1;

    assign neg = (out<0) ? 1 : 0;

endmodule