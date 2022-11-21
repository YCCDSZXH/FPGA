module convertor (input [3:0] data,
                  input wire A4,
                  input wire A2,
                  input wire A1,
                  output wire [6:0] converted_harm);
                  
assign converted_harm[0] = A1;
assign converted_harm[1] = A2;
assign converted_harm[2] = data[0];
assign converted_harm[3] = A4;
assign converted_harm[4] = data[1];
assign converted_harm[5] = data[2];
assign converted_harm[6] = data[3];  

endmodule
