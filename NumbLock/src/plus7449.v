module plus7449
(
	input[6:0]      origin_seg_data,     // bin data input
	output reg[6:0] seg_data      // seven segments LED output
);

always@(*)
begin
	case(origin_seg_data)
		7'b010_0111:seg_data <= 7'b000_1000;
		7'b011_0011:seg_data <= 7'b000_0011;
		7'b001_1101:seg_data <= 7'b100_0110;
		7'b001_0110:seg_data <= 7'b010_0001;
		7'b000_0111:seg_data <= 7'b000_0110;
		7'b111_1111:seg_data <= 7'b000_1110;
		7'b000_0011:seg_data <= 7'b000_0010;
		7'b001_1000:seg_data <= 7'b001_0000;
		default:seg_data <= origin_seg_data;
	endcase
end
endmodule