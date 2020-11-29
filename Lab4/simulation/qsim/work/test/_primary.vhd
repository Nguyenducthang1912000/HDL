library verilog;
use verilog.vl_types.all;
entity test is
    port(
        CLK             : in     vl_logic;
        PCSrc           : out    vl_logic;
        RegSrc          : out    vl_logic;
        RegEn           : out    vl_logic;
        ALUSrc          : out    vl_logic;
        ALUOp           : out    vl_logic_vector(3 downto 0);
        DmemWr          : out    vl_logic;
        WrSrc           : out    vl_logic;
        Inst            : out    vl_logic_vector(15 downto 0)
    );
end test;
