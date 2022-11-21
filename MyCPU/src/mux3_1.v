module mux3_1 (
    a,
    b,
    c,
    madd,
    y
);
  input wire [7:0] a, b, c;
  input wire [1:0] madd;
  output reg [7:0] y;

  always @(a, b, c, madd) begin
    case (madd)
      2'b00:   y[7:0] = a[7:0];
      2'b01:   y[7:0] = b[7:0];
      2'b10:   y[7:0] = c[7:0];
      default: y = "XXXXXXXX";
    endcase
  end
endmodule
