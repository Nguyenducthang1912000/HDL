module AddConst (A_IN,B_IN,DATA_OUT);
input  [5:0] A_IN,B_IN;
output [5:0] DATA_OUT;
assign DATA_OUT = A_IN + B_IN;
endmodule