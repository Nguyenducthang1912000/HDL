library verilog;
use verilog.vl_types.all;
entity ASIC is
    port(
        Inport          : in     vl_logic_vector(15 downto 0);
        Outport         : out    vl_logic_vector(15 downto 0);
        CLK             : in     vl_logic;
        Done            : out    vl_logic
    );
end ASIC;
