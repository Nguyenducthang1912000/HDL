library verilog;
use verilog.vl_types.all;
entity decoder_10bit is
    port(
        data_out        : out    vl_logic_vector(1023 downto 0);
        data_in         : in     vl_logic_vector(9 downto 0)
    );
end decoder_10bit;
