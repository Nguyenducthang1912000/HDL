library verilog;
use verilog.vl_types.all;
entity Inc2 is
    port(
        DATA_IN         : in     vl_logic_vector(5 downto 0);
        DATA_OUT        : out    vl_logic_vector(5 downto 0)
    );
end Inc2;
