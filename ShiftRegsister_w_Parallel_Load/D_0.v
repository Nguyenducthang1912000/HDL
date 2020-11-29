/*  in0 : Q0
    in1 : Input[0]
    in2 : Ir
    in3 : Q1
*/

module D_0 (
    data_out,in0,in1,in2,in3,select
);
    input in0,in1,in2,in3;
    input [1:0] select;
    output data_out;

    wire in0,in1,in2,in3,data_out;
    wire [1:0] select;

    wire inst0_out,inst1_out,inst2_out,inst3_out;

    and inst0(inst0_out,~select[1],~select[0],in0); //S1'S0'Q0'
    and inst1(inst1_out,~select[1], select[0],in1); // S1'S0I0
    and inst2(inst2_out, select[1],~select[0],in2); // S1S0'Ir
    and inst3(inst3_out, select[1], select[0],in3); // S1S0Q1

    or  inst4(data_out,inst0_out,inst1_out,inst2_out,inst3_out);


endmodule