timeunit 1ns;
timeprecision 1ps;

module register #(WIDTH = 8) (
    input logic clock,
    input logic reset,
    input logic[WIDTH - 1 :0] in;
    input logic[WIDTH - 1 :0] out
);
    always_ff @(posedge clock  or posedge reset) begin
        if(reset)
            out <= '0;
        else
            out <= in;
    end
endmodule