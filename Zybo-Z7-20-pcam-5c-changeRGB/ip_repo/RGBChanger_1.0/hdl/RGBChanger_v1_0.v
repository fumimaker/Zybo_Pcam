
`timescale 1 ns / 1 ps

	module RGBChanger_v1_0 #
	(
		// Users to add parameters here
        
		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Master Bus Interface S00_AXI_Master
		parameter integer C_S00_AXI_Master_TDATA_WIDTH	= 32,
		parameter integer C_S00_AXI_Master_START_COUNT	= 32,

		// Parameters of Axi Slave Bus Interface S01_AXI_Slave
		parameter integer C_S01_AXI_Slave_TDATA_WIDTH	= 32
	)
	(
		// Users to add ports here
		//Ports of Master
		
		// User ports ends
		// Do not modify the ports beyond this line
		
		// Ports of Axi Master Bus Interface S00_AXI_Master
		input wire  s00_axi_master_aclk,
		input wire  s00_axi_master_aresetn,
		output wire  s00_axi_master_tvalid,
		output wire [C_S00_AXI_Master_TDATA_WIDTH-1 : 0] s00_axi_master_tdata,
		output wire [(C_S00_AXI_Master_TDATA_WIDTH/8)-1 : 0] s00_axi_master_tstrb,
		output wire  s00_axi_master_tlast,
		input wire  s00_axi_master_tready,

		// Ports of Axi Slave Bus Interface S01_AXI_Slave
		input wire  s01_axi_slave_aclk,
		input wire  s01_axi_slave_aresetn,
		output wire  s01_axi_slave_tready,
		input wire [C_S01_AXI_Slave_TDATA_WIDTH-1 : 0] s01_axi_slave_tdata,
		input wire [(C_S01_AXI_Slave_TDATA_WIDTH/8)-1 : 0] s01_axi_slave_tstrb,
		input wire  s01_axi_slave_tlast,
		input wire  s01_axi_slave_tvalid
	);
// Instantiation of Axi Bus Interface S00_AXI_Master
	RGBChanger_v1_0_S00_AXI_Master # ( 
		.C_M_AXIS_TDATA_WIDTH(C_S00_AXI_Master_TDATA_WIDTH),
		.C_M_START_COUNT(C_S00_AXI_Master_START_COUNT)
	) RGBChanger_v1_0_S00_AXI_Master_inst (
		.M_AXIS_ACLK(s00_axi_master_aclk),
		.M_AXIS_ARESETN(s00_axi_master_aresetn),
		.M_AXIS_TVALID(s00_axi_master_tvalid),
		.M_AXIS_TDATA(s00_axi_master_tdata),
		.M_AXIS_TSTRB(s00_axi_master_tstrb),
		.M_AXIS_TLAST(s00_axi_master_tlast),
		.M_AXIS_TREADY(s00_axi_master_tready)
	);

// Instantiation of Axi Bus Interface S01_AXI_Slave
	RGBChanger_v1_0_S01_AXI_Slave # ( 
		.C_S_AXIS_TDATA_WIDTH(C_S01_AXI_Slave_TDATA_WIDTH)
	) RGBChanger_v1_0_S01_AXI_Slave_inst (
		.S_AXIS_ACLK(s01_axi_slave_aclk),
		.S_AXIS_ARESETN(s01_axi_slave_aresetn),
		.S_AXIS_TREADY(s01_axi_slave_tready),
		.S_AXIS_TDATA(s01_axi_slave_tdata),
		.S_AXIS_TSTRB(s01_axi_slave_tstrb),
		.S_AXIS_TLAST(s01_axi_slave_tlast),
		.S_AXIS_TVALID(s01_axi_slave_tvalid)
	);

	// Add user logic here
    
	// User logic ends

	endmodule
