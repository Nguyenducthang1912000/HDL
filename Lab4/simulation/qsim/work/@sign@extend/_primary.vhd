library verilog;
use verilog.vl_types.all;
entity SignExtend is
    port(
        DATA_IN         : in     vl_logic_vector(4 downto 0);
        DATA_OUT        : out    vl_logic_vector(15 downto 0)
    );
end SignExtend;
