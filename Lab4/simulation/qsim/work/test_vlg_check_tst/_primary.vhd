library verilog;
use verilog.vl_types.all;
entity test_vlg_check_tst is
    port(
        ALUOp           : in     vl_logic_vector(3 downto 0);
        ALUSrc          : in     vl_logic;
        DmemWr          : in     vl_logic;
        Inst            : in     vl_logic_vector(15 downto 0);
        PCSrc           : in     vl_logic;
        RegEn           : in     vl_logic;
        RegSrc          : in     vl_logic;
        WrSrc           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end test_vlg_check_tst;
