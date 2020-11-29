library verilog;
use verilog.vl_types.all;
entity Lab1 is
    port(
        clk             : in     vl_logic;
        count_o         : out    vl_logic_vector(3 downto 0);
        load            : in     vl_logic;
        value           : in     vl_logic_vector(3 downto 0)
    );
end Lab1;
