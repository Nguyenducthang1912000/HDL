module SignExtend (DATA_IN,DATA_OUT);
input wire signed [4:0] DATA_IN;
output wire [15:0]	DATA_OUT;
assign DATA_OUT = DATA_IN;
endmodule