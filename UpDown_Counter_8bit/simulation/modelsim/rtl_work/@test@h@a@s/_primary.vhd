library verilog;
use verilog.vl_types.all;
entity TestHAS is
    port(
        Cout            : out    vl_logic;
        \Out\           : out    vl_logic_vector(7 downto 0);
        Din             : in     vl_logic;
        En              : in     vl_logic;
        clk             : in     vl_logic;
        \In\            : in     vl_logic_vector(7 downto 0);
        Load            : in     vl_logic
    );
end TestHAS;
