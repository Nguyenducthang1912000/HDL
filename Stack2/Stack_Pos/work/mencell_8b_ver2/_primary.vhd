library verilog;
use verilog.vl_types.all;
entity mencell_8b_ver2 is
    port(
        data_out        : out    vl_logic_vector(7 downto 0);
        data_in         : in     vl_logic_vector(7 downto 0);
        row_sl          : in     vl_logic;
        write_enable    : in     vl_logic
    );
end mencell_8b_ver2;
