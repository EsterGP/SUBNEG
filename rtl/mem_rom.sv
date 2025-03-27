timeunit 1ns;
timeprecision 1ps;

module mem_rom #(
    parameter WIDTH = 8;
) (
    input logic clk,
    input logic [WIDTH-1:0] in_pc,
    output logic [WIDTH-1:0] out_rom
);
    
endmodule