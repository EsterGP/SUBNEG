timeunit 1ns;
timeprecision 1ps;

module subneg #(parameter int WIDTH = 8)(
    logic clk, rst
    );

    register #(WIDTH = 8) pc(
        .clk(clk),
        .rst(rst),
        .in(in),
        .out(out)
    );

    register #(WIDTH = 8) op1(
        .clk(clk),
        .rst(rst),
        .in(in),
        .out(out)
    );

    register #(WIDTH = 8) op2(
        .clk(clk),
        .rst(rst),
        .in(in),
        .out(out)
    );

    sub #(WIDTH = 8) subtract(
        .in1(in1),
        .in2(in2),
        .neg(neg),
        .out(out)
    );

    mux #(WIDTH = 8) mux2_1(
        .in1(in1),
        .in2(in2),
        .sel(sel),
        .out(out)
    );

    inc #(WIDTH = 8) incr(
        .in(in),
        .out(out)
    );

    mem_data data();
    mem_rom rom();

    control controle(
        .clk(clk),
        .rst(rst),
        .write_op1(write_op1),
        .write_op2(write_op2),
        .write_mem(write_mem),
        .sel_pc(sel_pc),
        .write_pc(write_pc)
    );
    
endmodule: subneg
