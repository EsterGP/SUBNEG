//  Module: subneg
//
module subneg#( WIDTH = 8)(
    logic clk, rst
    );

register #(WIDTH = 8) PC(
    .clk(clk),
    .rst(rst)
);

register #(WIDTH = 8) OP1(
    .clk(clk),
    .rst(rst)
);

register #(WIDTH = 8) ACC(
    .clk(clk),
    .rst(rst)
);

sub #(WIDTH = 8) SUB(
    .clk(clk),
    .rst(rst)
);

mux #(WIDTH = 8) MUX(

);
    
endmodule: subneg
