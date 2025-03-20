timeunit 1ns;
timeprecision 1ps;

module inc #(
    WIDTH = 8
) (
    input logic [WIDTH-1:0] in,
    output logic [WIDTH-1:0]out
);

    assign out = in + 1;
    
endmodule