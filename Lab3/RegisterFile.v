module	RegisterFile(DATA_IN,ADDR_i,WE_i,clk,ReadA_i,ReadB_i,OUTA,OUTB);
input[15:0] DATA_IN;
input[2:0] ADDR_i,ReadA_i,ReadB_i;
input WE_i,clk;
output[15:0] OUTA,OUTB;
reg[15:0] register[7:0];
//data type
assign OUTA = register[ReadA_i];
assign OUTB = register[ReadB_i];
always @ (posedge clk) begin
	if(WE_i)
		if(ADDR_i!=3'd0)
		register[ADDR_i]<=DATA_IN;
		else 	
		register[0] <= #3'd0;
end
endmodule