library verilog;
use verilog.vl_types.all;
entity DMEM is
    port(
        CLK             : in     vl_logic;
        W               : in     vl_logic;
        DATA_IN         : in     vl_logic_vector(15 downto 0);
        ADDR            : in     vl_logic_vector(2 downto 0);
        DATA_OUT        : out    vl_logic_vector(15 downto 0)
    );
end DMEM;
