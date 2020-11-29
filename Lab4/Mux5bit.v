module Mux5bit (IN_0,IN_1,Select,DATA_OUT);
parameter n = 6;
input[n-1:0] IN_0;
input[n-1:0] IN_1;
input Select;
output[n-1:0] DATA_OUT;
reg[n-1:0] DATA_OUT;
always @(*) begin
	DATA_OUT = 0;
	if(Select == 0) 
		DATA_OUT = IN_0;
	else if (Select == 1)
		DATA_OUT = IN_1;
end
endmodule