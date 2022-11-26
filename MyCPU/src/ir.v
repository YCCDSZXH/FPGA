// module ir(clk,ir_ld,d,ir);
// 	input clk,ir_ld;
// 	input [7:0] d;
// 	output [7:0] ir;
// 	reg [7:0] ir;
// 	always@(negedge clk)
// 	if(ir_ld) ir<=d;
// 	else ;
// endmodule

module ir(
	input clk,ir_ld,
	input [7:0]d,
	output reg [7:0]ir
);
always@(negedge clk)
begin
	if(ir_ld) ir[7:0] <= d[7:0];
end
endmodule
