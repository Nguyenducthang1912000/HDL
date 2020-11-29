module Decode2_4 (C,X);
//input ports declarations
input [1:0] X;
//output ports declarations
output [3:0] C;
//code start here 
and (C[0],!X[0],!X[1]);
and (C[1],X[0],!X[1]);
and (C[2],!X[0],X[1]);
and (C[3],X[0],X[1]);
endmodule