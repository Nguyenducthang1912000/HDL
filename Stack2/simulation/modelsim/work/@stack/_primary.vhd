library verilog;
use verilog.vl_types.all;
entity Stack is
    port(
        data_io         : inout  vl_logic_vector(7 downto 0);
        empty           : out    vl_logic;
        full            : out    vl_logic;
        rst             : in     vl_logic;
        push_pop        : in     vl_logic;
        enable          : in     vl_logic;
        clk             : in     vl_logic
    );
end Stack;
