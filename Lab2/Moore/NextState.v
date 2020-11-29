module NextState(NS_o,Reg_i,Done);
//input declarations
input[15:0] Reg_i;
//output declarations
output[15:0] NS_o;
output Done;
//connect type
reg Done;
reg[15:0] NS_o;
always @(Reg_i) 
begin
	NS_o = Reg_i + 1'd1;
	Done = 1'd0;
		if(Reg_i == 15) begin
			NS_o = 0;
			Done = 1'd1;
			end
end
endmodule 