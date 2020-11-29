library verilog;
use verilog.vl_types.all;
entity ShiftLeft is
    port(
        Data            : in     vl_logic_vector(15 downto 0);
        S               : in     vl_logic_vector(1 downto 0);
        SLOut           : out    vl_logic_vector(15 downto 0)
    );
end ShiftLeft;
