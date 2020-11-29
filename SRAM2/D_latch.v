module D_latch (
    Qout,Din,control_sig
);
    input Din,control_sig;
    output Qout;

    wire Qout,Din,control_sig;

    wire w1,w2,w3,Qnout;

    and inst0 (w1,control_sig,~Din);
    and inst1 (w2,control_sig, Din);

    nor inst2 (Qout,Qnout,w1);
    nor inst3 (Qnout,Qout,w2);
    
endmodule 