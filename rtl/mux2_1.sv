module mux2_1 #(
    WIDTH = 8
) (
    logic [WIDTH-1:0] in1,
    logic [WIDTH-1:0] in2,
    logic sel,
    logic [WIDTH-1:0] out
);

    assign out = sel ? in2 : in1;
    
endmodule