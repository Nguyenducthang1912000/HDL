module NextState(NS_o,Reg_i);
//input declarations
input[4:0] Reg_i;
//output declarations
output[4:0] NS_o;
//connect type

reg[4:0] NS_o;
always @(Reg_i) 
begin
	NS_o = Reg_i + 1'd1;
		if(Reg_i == 16) begin
			NS_o = 0;
			end
end
endmodule 