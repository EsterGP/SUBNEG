timeunit 1ns;
timeprecision 1ps;

module subneg #(parameter int WIDTH = 8)(
    logic clk, rst
    );

    register #(WIDTH = 8) pc(
        .clk(clk),
        .rst(rst)
    );

    register #(WIDTH = 8) op1(
        .clk(clk),
        .rst(rst)
    );

    register #(WIDTH = 8) op2(
        .clk(clk),
        .rst(rst)
    );

    sub #(WIDTH = 8) subtract(
        .clk(clk),
        .rst(rst)
    );

    mux #(WIDTH = 8) mux2_1(

    );

    inc #(WIDTH = 8) incr(

    );

    mem_data data();
    mem_rom rom();
    control controle();
    
endmodule: subneg
