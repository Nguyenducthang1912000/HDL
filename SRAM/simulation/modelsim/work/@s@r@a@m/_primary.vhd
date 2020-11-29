library verilog;
use verilog.vl_types.all;
entity SRAM is
    port(
        data_io         : inout  vl_logic_vector(7 downto 0);
        address         : in     vl_logic_vector(9 downto 0);
        read_write_select: in     vl_logic;
        chip_select     : in     vl_logic
    );
end SRAM;
