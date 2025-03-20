timeunit 1ns;
timeprecision 1ps;

module tb_mux #(WIDTH = 8);

    logic [WIDTH-1:0] in1;
    logic [WIDTH-1:0] in2;
    logic sel;
    logic clk;
    logic [WIDTH-1:0] out;

    mux #(8) dut (.in1(in1),.in2(in1),.sel(sel),.out(out));

    always #5 clk = ~clk;

    initial begin
        clk = 0;

        for (int i = 0; i < 100; i++) begin

            in1 = $urandom;  
            in2 = $urandom; 
            sel = $urandom; 

            #20;   // delay

        end

        #40;
        $stop();
    end
    
endmodule: tb_mux

