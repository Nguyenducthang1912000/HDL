library verilog;
use verilog.vl_types.all;
entity Mux2_1 is
    port(
        \Out\           : out    vl_logic;
        In0             : in     vl_logic;
        In1             : in     vl_logic;
        S               : in     vl_logic
    );
end Mux2_1;
