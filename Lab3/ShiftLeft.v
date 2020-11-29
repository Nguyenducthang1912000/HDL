module ShiftLeft (
	input[15:0] Data,
	input[1:0] S,
	output[15:0] SLOut
);
reg[15:0] Result;
assign SLOut = Result;
always @(*) begin
	Result = Data << S;
end
endmodule