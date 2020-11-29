library verilog;
use verilog.vl_types.all;
entity memcell_1b is
    port(
        data_out        : out    vl_logic;
        row_sl          : in     vl_logic;
        data_in         : in     vl_logic;
        write_enable    : in     vl_logic
    );
end memcell_1b;
