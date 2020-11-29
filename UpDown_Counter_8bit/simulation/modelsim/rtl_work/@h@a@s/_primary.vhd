library verilog;
use verilog.vl_types.all;
entity HAS is
    port(
        Cout            : out    vl_logic;
        DFF             : out    vl_logic;
        Din             : in     vl_logic;
        En              : in     vl_logic;
        Q               : in     vl_logic
    );
end HAS;
