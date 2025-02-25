module tb_mux #(WIDTH = 8);

    logic [WIDTH-1:0] in1;
    logic [WIDTH-1:0] in2;
    logic sel;
    logic [WIDTH-1:0] out;

    always #5 clk = ~clk;

    initial begin
        clk = '0;

        in1 = 'd10;
        in2 = 'd20;
        sel = 1;

        stop();
    end
    
endmodule: tb_mux
