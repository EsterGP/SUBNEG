//  Module: subneg
//
module subneg#( WIDTH = 8)(
    logic clk, rst
    );

reg #(WIDTH = 8) PC(
    .clk(clk),
    .rst(rst)
);

reg #(WIDTH = 8) OP1(
    .clk(clk),
    .rst(rst)
);

reg #(WIDTH = 8) ACC(
    .clk(clk),
    .rst(rst)
);

alu #(WIDTH = 8) ALU(
    .clk(clk),
    .rst(rst)
);

mux2_1 #(WIDTH = 8) MUX(

);
    
endmodule: subneg
