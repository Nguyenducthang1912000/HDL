library verilog;
use verilog.vl_types.all;
entity FIFO is
    port(
        empty           : out    vl_logic;
        full            : out    vl_logic;
        data_io         : inout  vl_logic_vector(7 downto 0);
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        read_write      : in     vl_logic;
        enable          : in     vl_logic
    );
end FIFO;
