module ShiftLeft1 (DATA_IN,DATA_OUT);
input	wire [5:0] DATA_IN;
output wire [5:0] DATA_OUT;
assign DATA_OUT = DATA_IN << 6'd1;
endmodule 