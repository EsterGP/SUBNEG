//  Module: subneg
//
module subneg#( WIDTH = 8)(
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

register #(WIDTH = 8) acc(
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

    case(state)
        E0: begin
            write_op1 = 1;
            write_op2 = 0;
            write_mem = 0;
            sel_pc    = 1;
            write_pc  = 1;
        end

        E1:	begin
            write_op1 = 0;
            write_op2 = 1;
            write_mem = 0;
            sel_pc    = 1;
            write_pc  = 1;
        end

        E2: begin
            write_op1 = 0;
            write_op2 = 0;
            write_mem = 1;
            sel_pc    = 1;
            write_pc  = 1;
        end

        E3:	begin
            write_op1 = 0;
            write_op2 = 0;
            write_mem = 0;
            sel_pc    = neg;
            write_pc  = 1;
        end

        default: next_state = E0;
    endcase

    
endmodule: subneg
