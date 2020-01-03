library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rgb_change_v1_0 is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Master Bus Interface S00_AXI_Master
		C_S00_AXI_Master_TDATA_WIDTH	: integer	:= 32;
		C_S00_AXI_Master_START_COUNT	: integer	:= 32;

		-- Parameters of Axi Slave Bus Interface S01_AXI_Slave
		C_S01_AXI_Slave_TDATA_WIDTH	: integer	:= 32
	);
	port (
		-- Users to add ports here

		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Master Bus Interface S00_AXI_Master
		s00_axi_master_aclk	: in std_logic;
		s00_axi_master_aresetn	: in std_logic;
		s00_axi_master_tvalid	: out std_logic;
		s00_axi_master_tdata	: out std_logic_vector(C_S00_AXI_Master_TDATA_WIDTH-1 downto 0);
		s00_axi_master_tstrb	: out std_logic_vector((C_S00_AXI_Master_TDATA_WIDTH/8)-1 downto 0);
		s00_axi_master_tlast	: out std_logic;
		s00_axi_master_tready	: in std_logic;

		-- Ports of Axi Slave Bus Interface S01_AXI_Slave
		s01_axi_slave_aclk	: in std_logic;
		s01_axi_slave_aresetn	: in std_logic;
		s01_axi_slave_tready	: out std_logic;
		s01_axi_slave_tdata	: in std_logic_vector(C_S01_AXI_Slave_TDATA_WIDTH-1 downto 0);
		s01_axi_slave_tstrb	: in std_logic_vector((C_S01_AXI_Slave_TDATA_WIDTH/8)-1 downto 0);
		s01_axi_slave_tlast	: in std_logic;
		s01_axi_slave_tvalid	: in std_logic
	);
end rgb_change_v1_0;

architecture arch_imp of rgb_change_v1_0 is

	-- component declaration
	component rgb_change_v1_0_S00_AXI_Master is
		generic (
		C_M_AXIS_TDATA_WIDTH	: integer	:= 32;
		C_M_START_COUNT	: integer	:= 32
		);
		port (
		M_AXIS_ACLK	: in std_logic;
		M_AXIS_ARESETN	: in std_logic;
		M_AXIS_TVALID	: out std_logic;
		M_AXIS_TDATA	: out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
		M_AXIS_TSTRB	: out std_logic_vector((C_M_AXIS_TDATA_WIDTH/8)-1 downto 0);
		M_AXIS_TLAST	: out std_logic;
		M_AXIS_TREADY	: in std_logic
		);
	end component rgb_change_v1_0_S00_AXI_Master;

	component rgb_change_v1_0_S01_AXI_Slave is
		generic (
		C_S_AXIS_TDATA_WIDTH	: integer	:= 32
		);
		port (
		S_AXIS_ACLK	: in std_logic;
		S_AXIS_ARESETN	: in std_logic;
		S_AXIS_TREADY	: out std_logic;
		S_AXIS_TDATA	: in std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
		S_AXIS_TSTRB	: in std_logic_vector((C_S_AXIS_TDATA_WIDTH/8)-1 downto 0);
		S_AXIS_TLAST	: in std_logic;
		S_AXIS_TVALID	: in std_logic
		);
	end component rgb_change_v1_0_S01_AXI_Slave;

begin

-- Instantiation of Axi Bus Interface S00_AXI_Master
rgb_change_v1_0_S00_AXI_Master_inst : rgb_change_v1_0_S00_AXI_Master
	generic map (
		C_M_AXIS_TDATA_WIDTH	=> C_S00_AXI_Master_TDATA_WIDTH,
		C_M_START_COUNT	=> C_S00_AXI_Master_START_COUNT
	)
	port map (
		M_AXIS_ACLK	=> s00_axi_master_aclk,
		M_AXIS_ARESETN	=> s00_axi_master_aresetn,
		M_AXIS_TVALID	=> s00_axi_master_tvalid,
		M_AXIS_TDATA	=> s00_axi_master_tdata,
		M_AXIS_TSTRB	=> s00_axi_master_tstrb,
		M_AXIS_TLAST	=> s00_axi_master_tlast,
		M_AXIS_TREADY	=> s00_axi_master_tready
	);

-- Instantiation of Axi Bus Interface S01_AXI_Slave
rgb_change_v1_0_S01_AXI_Slave_inst : rgb_change_v1_0_S01_AXI_Slave
	generic map (
		C_S_AXIS_TDATA_WIDTH	=> C_S01_AXI_Slave_TDATA_WIDTH
	)
	port map (
		S_AXIS_ACLK	=> s01_axi_slave_aclk,
		S_AXIS_ARESETN	=> s01_axi_slave_aresetn,
		S_AXIS_TREADY	=> s01_axi_slave_tready,
		S_AXIS_TDATA	=> s01_axi_slave_tdata,
		S_AXIS_TSTRB	=> s01_axi_slave_tstrb,
		S_AXIS_TLAST	=> s01_axi_slave_tlast,
		S_AXIS_TVALID	=> s01_axi_slave_tvalid
	);

	-- Add user logic here

	-- User logic ends

end arch_imp;
