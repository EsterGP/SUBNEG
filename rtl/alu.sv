module alu #(
    WIDTH=8
) (
    logic [WIDTH-1:0] in1,
    logic [WIDTH-1:0] in2,
    logic op,
    logic neg,
    logic [WIDTH:0] out
);
    assign out = in2-in1;
endmodule