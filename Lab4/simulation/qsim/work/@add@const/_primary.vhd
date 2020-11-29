library verilog;
use verilog.vl_types.all;
entity AddConst is
    port(
        A_IN            : in     vl_logic_vector(5 downto 0);
        B_IN            : in     vl_logic_vector(5 downto 0);
        DATA_OUT        : out    vl_logic_vector(5 downto 0)
    );
end AddConst;
