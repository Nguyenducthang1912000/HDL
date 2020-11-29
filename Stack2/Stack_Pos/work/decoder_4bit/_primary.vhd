library verilog;
use verilog.vl_types.all;
entity decoder_4bit is
    port(
        data_out        : out    vl_logic_vector(15 downto 0);
        data_in         : in     vl_logic_vector(3 downto 0)
    );
end decoder_4bit;
