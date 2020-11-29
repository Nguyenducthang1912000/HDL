library verilog;
use verilog.vl_types.all;
entity RegisterFile is
    port(
        DATA_IN         : in     vl_logic_vector(15 downto 0);
        ADDR_i          : in     vl_logic_vector(2 downto 0);
        WE_i            : in     vl_logic;
        clk             : in     vl_logic;
        ReadA_i         : in     vl_logic_vector(2 downto 0);
        ReadB_i         : in     vl_logic_vector(2 downto 0);
        OUTA            : out    vl_logic_vector(15 downto 0);
        OUTB            : out    vl_logic_vector(15 downto 0)
    );
end RegisterFile;
