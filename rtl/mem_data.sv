timeunit 1ns;
timeprecision 1ps;

module mem_data #(
    parameter WIDTH = 8;
) (
    input logic clk,
    input logic [WIDTH-1:0] in_sub,
    input logic [WIDTH-1:0] in_rom,
    output logic [WIDTH-1:0] out_ram
);

    logic out_data;
    
endmodule