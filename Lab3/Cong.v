module Cong(
	
	input clk,
	input[15:0] datain,
	output[15:0] dataout
);
reg [2:0] count;
reg[15:0] Result;
assign dataout = Result;
always @(posedge clk)
begin
	count <= count + 1'b1;
	if (count<=0)
		Result = datain;
	else if (count <=1)
		Result = Result + 1'b1;
	else if (count <=2)
		Result = Result + 1'b1;
	else if (count <=3)
		Result = Result + 1'b1;
	else if (count <=4)
		Result = Result + 1'b1;
	else if (count <=5)
		Result = Result + 1'b1;
	else if (count <=6)
		Result = Result + 1'b1;
	else if (count <=7)
		count <= 0;
end
endmodule