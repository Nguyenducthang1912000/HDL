library verilog;
use verilog.vl_types.all;
entity Top_add1 is
    generic(
        N               : integer := 10
    );
    port(
        Cout            : out    vl_logic;
        \Out\           : out    vl_logic_vector;
        Din             : in     vl_logic;
        En              : in     vl_logic;
        clk             : in     vl_logic;
        \In\            : in     vl_logic_vector;
        rst             : in     vl_logic;
        Load            : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end Top_add1;
