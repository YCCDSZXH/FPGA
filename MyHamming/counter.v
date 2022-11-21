module counter #(
    parameter BITS = 4
) (
    input  wire            in,
    input  wire            rst,
    output reg  [BITS-1:0] out,
    output reg             rco
);
  always @(posedge in, negedge rst) begin
    rco = &out;
    if (rst == 1'b0) out <= 1'b0;
    else out <= out + 1'b1;
  end
endmodule
