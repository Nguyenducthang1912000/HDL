library verilog;
use verilog.vl_types.all;
entity Datapath_vlg_check_tst is
    port(
        ADDR_o          : in     vl_logic_vector(2 downto 0);
        ALU_Src         : in     vl_logic_vector(15 downto 0);
        ALU_o           : in     vl_logic_vector(15 downto 0);
        DATA_A          : in     vl_logic_vector(15 downto 0);
        DATA_B          : in     vl_logic_vector(15 downto 0);
        DMEM_o          : in     vl_logic_vector(15 downto 0);
        IMEM_o          : in     vl_logic_vector(15 downto 0);
        Ins             : in     vl_logic_vector(4 downto 0);
        PC_o            : in     vl_logic_vector(5 downto 0);
        RegDr_o         : in     vl_logic_vector(15 downto 0);
        ZERO            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Datapath_vlg_check_tst;
