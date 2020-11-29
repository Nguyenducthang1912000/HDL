library verilog;
use verilog.vl_types.all;
entity ModelSimTest is
    port(
        Din             : in     vl_logic;
        Clk             : in     vl_logic;
        Resetn          : in     vl_logic;
        Qout            : out    vl_logic
    );
end ModelSimTest;
