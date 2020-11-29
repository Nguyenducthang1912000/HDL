module Reg1(
	input[15:0] RegIn,
	input clk,
	output[15:0] RegOut
);
reg[15:0] Result;
assign RegOut = Result;
always @(negedge clk) begin
		Result<=RegIn;
end
endmodule