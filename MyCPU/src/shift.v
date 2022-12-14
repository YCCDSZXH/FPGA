// module shift (
//     input fbus,
//     input flbus,
//     input frbus,
//     input [7:0] a,
//     output reg [7:0] w,
//     output reg cf
// );
//   always @(fbus, flbus, frbus, a) begin
//     cf = 1'b0;
//     if (fbus == 1'b1) w[7:0] = a[7:0];
//     else if (frbus == 1'b1) begin
//       w[7:0] = {a[0], a[7:1]};
//       cf = a[0];
//     end else if (flbus == 1'b1) begin
//       w[7:0] = {a[6:0], a[7]};
//       cf = a[7];
//     end else w[7:0] = 8'hZZ;
//   end
// endmodule

module shift(
	input fbus,flbus,frbus,
	input [7:0]a,
	output reg [7:0]w,
	output reg cf
);
always@(fbus,flbus,frbus,a)
case({fbus,flbus,frbus})
	3'b100: w <= a;
	3'b010: 
	begin
		w[7:0] <= {a[6:0],a[7]};
		cf <= a[7];
	end
	3'b001:
	begin
		w[7:0] <= {a[0],a[7:1]};
		cf <= a[0];
	end
	3'b000: w <= 8'hZZ;
endcase
endmodule
