timeunit 1ns;
timeprecision 1ps;

module mux #(
    WIDTH = 8
) (
    input  logic [WIDTH-1:0] in1,
    input  logic [WIDTH-1:0] in2,
    input  logic sel,
    output logic [WIDTH-1:0] out
);

    assign out = (sel == 0) ? in1 : in2;
    
endmodule