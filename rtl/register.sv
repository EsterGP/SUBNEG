module reg #(WIDTH = 8) (
    logic clock, reset,
    logic[WIDTH - 1 :0] in;
    logic[WIDTH - 1 :0] out;
);
    always_ff @(posedge clock  or posedge reset) begin
        if(reset)
            out <= '0;
        else
            out <= in;
    end
endmodule
