module control(
    input logic clk,
    input logic rst,
    input logic neg,
    output logic write_op1,
    output logic write_op2,
    output logic write_mem,
    output logic sel_pc,
    output logic write_pc
);

    typedef enum logic [1:0] {
        E0, E1, E2, E3
    } stateType;
    stateType state, next_state;

    always_ff @(posedge clk or posedge rst) begin
        if(rst)
            state <= E0;
        else
            state <= next_state;
    end

    always_comb begin
        write_op1 = 0;
        write_op2 = 0;
        write_mem = 0;
        sel_pc    = 0;
        write_pc  = 0;
        next_state = state;
        
        case(state)
            E0: begin
                write_op1 = 1;
                write_op2 = 0;
                write_mem = 0;
                sel_pc    = 1;
                write_pc  = 1;
                next_state = E1;
            end
    
            E1:	begin
                write_op1 = 0;
                write_op2 = 1;
                write_mem = 0;
                sel_pc    = 1;
                write_pc  = 1;
                next_state = E2;
            end
    
            E2: begin
                write_op1 = 0;
                write_op2 = 0;
                write_mem = 1;
                sel_pc    = 1;
                write_pc  = 1;
                next_state = E3;
            end
    
            E3:	begin
                write_op1 = 0;
                write_op2 = 0;
                write_mem = 0;
                sel_pc    = neg;
                write_pc  = 1;
                next_state = E0;
            end
    
            default: next_state = E0;
        endcase
    end
endmodule