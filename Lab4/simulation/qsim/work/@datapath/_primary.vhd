library verilog;
use verilog.vl_types.all;
entity Datapath is
    port(
        PCSrc           : in     vl_logic;
        RegSrc          : in     vl_logic;
        RegEn           : in     vl_logic;
        ALUSrc          : in     vl_logic;
        ALUOp           : in     vl_logic_vector(3 downto 0);
        DmemWr          : in     vl_logic;
        WrSrc           : in     vl_logic;
        CLK             : in     vl_logic;
        Ins             : out    vl_logic_vector(4 downto 0);
        ZERO            : out    vl_logic;
        PC_o            : out    vl_logic_vector(5 downto 0);
        IMEM_o          : out    vl_logic_vector(15 downto 0);
        ALU_o           : out    vl_logic_vector(15 downto 0);
        DMEM_o          : out    vl_logic_vector(15 downto 0);
        RegDr_o         : out    vl_logic_vector(15 downto 0);
        ADDR_o          : out    vl_logic_vector(2 downto 0);
        ALU_Src         : out    vl_logic_vector(15 downto 0);
        DATA_A          : out    vl_logic_vector(15 downto 0);
        DATA_B          : out    vl_logic_vector(15 downto 0)
    );
end Datapath;
