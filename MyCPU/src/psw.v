// module psw(clk,cf_en,zf_en,c,z,cf,zf);
// 	input clk,cf_en,zf_en,cf,zf;
// 	output c,z;
// 	reg c,z;
// 	always@(negedge clk)
// 	begin
// 		if(cf_en) c<=cf;
// 		if(zf_en) z<=zf;
// 	end
// endmodule

module psw(
	input clk,cf_en,zf_en,cf,zf,
	output reg c,z
);
always@(negedge clk)
begin
	if(cf_en) c <= cf;
	else if(zf_en) z <= zf;
	else ;
end
endmodule
