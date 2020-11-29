module Decode5_32 (B,C);
//input port declarations
input [4:0] B;
//port wires
wire [4:0] B;
wire DeO;
//output port declarations
//internal 
Decode3_8 u0 (
.En(DeO)
);
Decode3_8 u1 (
.A[](B[3])
);
Decode2_4 u2 (
.C(DeO)
);
endmodule