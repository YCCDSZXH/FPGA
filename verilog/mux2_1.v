module mux2_1 (input wire [0:0] a,
               input wire [0:0] b,
               input wire [0:0] sel,
               output reg [0:0] out);
always @(*)
    if (sel == 1'b1)
        out = a;
    else
        out = b;
endmodule
