library verilog;
use verilog.vl_types.all;
entity SRAM_2x10_8bit is
    port(
        data_io         : inout  vl_logic_vector(7 downto 0);
        row_sl          : in     vl_logic;
        chip_sl         : in     vl_logic;
        address         : in     vl_logic_vector(9 downto 0)
    );
end SRAM_2x10_8bit;
