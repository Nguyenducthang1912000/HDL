module Reg(
	input[15:0] RegIn,
	input OE,
	input clk,
	output[15:0] RegOut

);
reg[15:0] Result;
assign RegOut = Result;
always @(posedge clk) begin
	if(OE)
		Result<=RegIn;
	else
		Result<=16'd0;
	
end
endmodule