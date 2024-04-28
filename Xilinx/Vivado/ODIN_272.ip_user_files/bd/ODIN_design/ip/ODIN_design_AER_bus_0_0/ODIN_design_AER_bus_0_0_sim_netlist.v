// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Fri Apr 26 19:59:34 2024
// Host        : DESKTOP-32F9FGL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top ODIN_design_AER_bus_0_0 -prefix
//               ODIN_design_AER_bus_0_0_ ODIN_design_AER_bus_0_0_sim_netlist.v
// Design      : ODIN_design_AER_bus_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ODIN_design_AER_bus_0_0_AER_bus_v1_0
   (AEROUT_ACK,
    AERIN_ADDR,
    AERIN_REQ,
    t_ready_reg,
    m00_axis_aresetn,
    m00_axis_tready,
    AEROUT_REQ,
    s00_axis_tdata,
    s00_axis_aclk,
    AERIN_ACK,
    s00_axis_tvalid,
    s00_axis_aresetn,
    m00_axis_aclk);
  output AEROUT_ACK;
  output [16:0]AERIN_ADDR;
  output AERIN_REQ;
  output t_ready_reg;
  input m00_axis_aresetn;
  input m00_axis_tready;
  input AEROUT_REQ;
  input [16:0]s00_axis_tdata;
  input s00_axis_aclk;
  input AERIN_ACK;
  input s00_axis_tvalid;
  input s00_axis_aresetn;
  input m00_axis_aclk;

  wire AERIN_ACK;
  wire [16:0]AERIN_ADDR;
  wire AERIN_REQ;
  wire AEROUT_ACK;
  wire AEROUT_REQ;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire m00_axis_tready;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire [16:0]s00_axis_tdata;
  wire s00_axis_tvalid;
  wire t_ready_reg;

  ODIN_design_AER_bus_0_0_AER_bus_v1_0_M00_AXIS AER_bus_v1_0_M00_AXIS_inst
       (.AEROUT_ACK(AEROUT_ACK),
        .AEROUT_REQ(AEROUT_REQ),
        .m00_axis_aclk(m00_axis_aclk),
        .m00_axis_aresetn(m00_axis_aresetn),
        .m00_axis_tready(m00_axis_tready));
  ODIN_design_AER_bus_0_0_AER_bus_v1_0_S00_AXIS AER_bus_v1_0_S00_AXIS_inst
       (.AERIN_ACK(AERIN_ACK),
        .AERIN_ADDR(AERIN_ADDR),
        .AERIN_REQ(AERIN_REQ),
        .s00_axis_aclk(s00_axis_aclk),
        .s00_axis_aresetn(s00_axis_aresetn),
        .s00_axis_tdata(s00_axis_tdata),
        .s00_axis_tvalid(s00_axis_tvalid),
        .t_ready_reg_0(t_ready_reg));
endmodule

module ODIN_design_AER_bus_0_0_AER_bus_v1_0_M00_AXIS
   (AEROUT_ACK,
    m00_axis_aclk,
    m00_axis_aresetn,
    m00_axis_tready,
    AEROUT_REQ);
  output AEROUT_ACK;
  input m00_axis_aclk;
  input m00_axis_aresetn;
  input m00_axis_tready;
  input AEROUT_REQ;

  wire AEROUT_ACK;
  wire AEROUT_REQ;
  wire aerout_ack_reg_i_1_n_0;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire m00_axis_tready;

  LUT4 #(
    .INIT(16'h2A08)) 
    aerout_ack_reg_i_1
       (.I0(m00_axis_aresetn),
        .I1(AEROUT_ACK),
        .I2(m00_axis_tready),
        .I3(AEROUT_REQ),
        .O(aerout_ack_reg_i_1_n_0));
  FDRE aerout_ack_reg_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(aerout_ack_reg_i_1_n_0),
        .Q(AEROUT_ACK),
        .R(1'b0));
endmodule

module ODIN_design_AER_bus_0_0_AER_bus_v1_0_S00_AXIS
   (t_ready_reg_0,
    AERIN_REQ,
    AERIN_ADDR,
    s00_axis_aclk,
    AERIN_ACK,
    s00_axis_tvalid,
    s00_axis_aresetn,
    s00_axis_tdata);
  output t_ready_reg_0;
  output AERIN_REQ;
  output [16:0]AERIN_ADDR;
  input s00_axis_aclk;
  input AERIN_ACK;
  input s00_axis_tvalid;
  input s00_axis_aresetn;
  input [16:0]s00_axis_tdata;

  wire AERIN_ACK;
  wire [16:0]AERIN_ADDR;
  wire AERIN_REQ;
  wire \aerin_addr_reg[16]_i_1_n_0 ;
  wire aerin_req_reg0;
  wire aerin_req_reg_i_1_n_0;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire [16:0]s00_axis_tdata;
  wire s00_axis_tvalid;
  wire t_ready_i_1_n_0;
  wire t_ready_reg_0;

  LUT1 #(
    .INIT(2'h1)) 
    \aerin_addr_reg[16]_i_1 
       (.I0(s00_axis_aresetn),
        .O(\aerin_addr_reg[16]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \aerin_addr_reg[16]_i_2 
       (.I0(s00_axis_tvalid),
        .I1(t_ready_reg_0),
        .O(aerin_req_reg0));
  FDRE \aerin_addr_reg_reg[0] 
       (.C(s00_axis_aclk),
        .CE(aerin_req_reg0),
        .D(s00_axis_tdata[0]),
        .Q(AERIN_ADDR[0]),
        .R(\aerin_addr_reg[16]_i_1_n_0 ));
  FDRE \aerin_addr_reg_reg[10] 
       (.C(s00_axis_aclk),
        .CE(aerin_req_reg0),
        .D(s00_axis_tdata[10]),
        .Q(AERIN_ADDR[10]),
        .R(\aerin_addr_reg[16]_i_1_n_0 ));
  FDRE \aerin_addr_reg_reg[11] 
       (.C(s00_axis_aclk),
        .CE(aerin_req_reg0),
        .D(s00_axis_tdata[11]),
        .Q(AERIN_ADDR[11]),
        .R(\aerin_addr_reg[16]_i_1_n_0 ));
  FDRE \aerin_addr_reg_reg[12] 
       (.C(s00_axis_aclk),
        .CE(aerin_req_reg0),
        .D(s00_axis_tdata[12]),
        .Q(AERIN_ADDR[12]),
        .R(\aerin_addr_reg[16]_i_1_n_0 ));
  FDRE \aerin_addr_reg_reg[13] 
       (.C(s00_axis_aclk),
        .CE(aerin_req_reg0),
        .D(s00_axis_tdata[13]),
        .Q(AERIN_ADDR[13]),
        .R(\aerin_addr_reg[16]_i_1_n_0 ));
  FDRE \aerin_addr_reg_reg[14] 
       (.C(s00_axis_aclk),
        .CE(aerin_req_reg0),
        .D(s00_axis_tdata[14]),
        .Q(AERIN_ADDR[14]),
        .R(\aerin_addr_reg[16]_i_1_n_0 ));
  FDRE \aerin_addr_reg_reg[15] 
       (.C(s00_axis_aclk),
        .CE(aerin_req_reg0),
        .D(s00_axis_tdata[15]),
        .Q(AERIN_ADDR[15]),
        .R(\aerin_addr_reg[16]_i_1_n_0 ));
  FDRE \aerin_addr_reg_reg[16] 
       (.C(s00_axis_aclk),
        .CE(aerin_req_reg0),
        .D(s00_axis_tdata[16]),
        .Q(AERIN_ADDR[16]),
        .R(\aerin_addr_reg[16]_i_1_n_0 ));
  FDRE \aerin_addr_reg_reg[1] 
       (.C(s00_axis_aclk),
        .CE(aerin_req_reg0),
        .D(s00_axis_tdata[1]),
        .Q(AERIN_ADDR[1]),
        .R(\aerin_addr_reg[16]_i_1_n_0 ));
  FDRE \aerin_addr_reg_reg[2] 
       (.C(s00_axis_aclk),
        .CE(aerin_req_reg0),
        .D(s00_axis_tdata[2]),
        .Q(AERIN_ADDR[2]),
        .R(\aerin_addr_reg[16]_i_1_n_0 ));
  FDRE \aerin_addr_reg_reg[3] 
       (.C(s00_axis_aclk),
        .CE(aerin_req_reg0),
        .D(s00_axis_tdata[3]),
        .Q(AERIN_ADDR[3]),
        .R(\aerin_addr_reg[16]_i_1_n_0 ));
  FDRE \aerin_addr_reg_reg[4] 
       (.C(s00_axis_aclk),
        .CE(aerin_req_reg0),
        .D(s00_axis_tdata[4]),
        .Q(AERIN_ADDR[4]),
        .R(\aerin_addr_reg[16]_i_1_n_0 ));
  FDRE \aerin_addr_reg_reg[5] 
       (.C(s00_axis_aclk),
        .CE(aerin_req_reg0),
        .D(s00_axis_tdata[5]),
        .Q(AERIN_ADDR[5]),
        .R(\aerin_addr_reg[16]_i_1_n_0 ));
  FDRE \aerin_addr_reg_reg[6] 
       (.C(s00_axis_aclk),
        .CE(aerin_req_reg0),
        .D(s00_axis_tdata[6]),
        .Q(AERIN_ADDR[6]),
        .R(\aerin_addr_reg[16]_i_1_n_0 ));
  FDRE \aerin_addr_reg_reg[7] 
       (.C(s00_axis_aclk),
        .CE(aerin_req_reg0),
        .D(s00_axis_tdata[7]),
        .Q(AERIN_ADDR[7]),
        .R(\aerin_addr_reg[16]_i_1_n_0 ));
  FDRE \aerin_addr_reg_reg[8] 
       (.C(s00_axis_aclk),
        .CE(aerin_req_reg0),
        .D(s00_axis_tdata[8]),
        .Q(AERIN_ADDR[8]),
        .R(\aerin_addr_reg[16]_i_1_n_0 ));
  FDRE \aerin_addr_reg_reg[9] 
       (.C(s00_axis_aclk),
        .CE(aerin_req_reg0),
        .D(s00_axis_tdata[9]),
        .Q(AERIN_ADDR[9]),
        .R(\aerin_addr_reg[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF2220000)) 
    aerin_req_reg_i_1
       (.I0(AERIN_REQ),
        .I1(AERIN_ACK),
        .I2(s00_axis_tvalid),
        .I3(t_ready_reg_0),
        .I4(s00_axis_aresetn),
        .O(aerin_req_reg_i_1_n_0));
  FDRE aerin_req_reg_reg
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(aerin_req_reg_i_1_n_0),
        .Q(AERIN_REQ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0F11FFFF)) 
    t_ready_i_1
       (.I0(AERIN_ACK),
        .I1(AERIN_REQ),
        .I2(s00_axis_tvalid),
        .I3(t_ready_reg_0),
        .I4(s00_axis_aresetn),
        .O(t_ready_i_1_n_0));
  FDRE t_ready_reg
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(t_ready_i_1_n_0),
        .Q(t_ready_reg_0),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "ODIN_design_AER_bus_0_0,AER_bus_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "AER_bus_v1_0,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module ODIN_design_AER_bus_0_0
   (AEROUT_REQ,
    AEROUT_ACK,
    AEROUT_ADDR,
    AERIN_REQ,
    AERIN_ACK,
    AERIN_ADDR,
    m00_axis_aclk,
    m00_axis_aresetn,
    m00_axis_tvalid,
    m00_axis_tdata,
    m00_axis_tstrb,
    m00_axis_tlast,
    m00_axis_tready,
    s00_axis_aclk,
    s00_axis_aresetn,
    s00_axis_tready,
    s00_axis_tdata,
    s00_axis_tstrb,
    s00_axis_tlast,
    s00_axis_tvalid);
  input AEROUT_REQ;
  output AEROUT_ACK;
  input [7:0]AEROUT_ADDR;
  output AERIN_REQ;
  input AERIN_ACK;
  output [16:0]AERIN_ADDR;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M00_AXIS_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS_CLK, ASSOCIATED_BUSIF M00_AXIS, ASSOCIATED_RESET m00_axis_aresetn, FREQ_HZ 30303030, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ODIN_design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input m00_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M00_AXIS_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m00_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TVALID" *) output m00_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TDATA" *) output [31:0]m00_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TSTRB" *) output [3:0]m00_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TLAST" *) output m00_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 30303030, PHASE 0.0, CLK_DOMAIN ODIN_design_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input m00_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXIS_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXIS_CLK, ASSOCIATED_BUSIF S00_AXIS, ASSOCIATED_RESET s00_axis_aresetn, FREQ_HZ 30303030, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ODIN_design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXIS_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TREADY" *) output s00_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TDATA" *) input [31:0]s00_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TSTRB" *) input [3:0]s00_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TLAST" *) input s00_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 30303030, PHASE 0.0, CLK_DOMAIN ODIN_design_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s00_axis_tvalid;

  wire \<const0> ;
  wire \<const1> ;
  wire AERIN_ACK;
  wire [16:0]AERIN_ADDR;
  wire AERIN_REQ;
  wire AEROUT_ACK;
  wire [7:0]AEROUT_ADDR;
  wire AEROUT_REQ;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire m00_axis_tready;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tready;
  wire s00_axis_tvalid;

  assign m00_axis_tdata[31] = \<const0> ;
  assign m00_axis_tdata[30] = \<const0> ;
  assign m00_axis_tdata[29] = \<const0> ;
  assign m00_axis_tdata[28] = \<const0> ;
  assign m00_axis_tdata[27] = \<const0> ;
  assign m00_axis_tdata[26] = \<const0> ;
  assign m00_axis_tdata[25] = \<const0> ;
  assign m00_axis_tdata[24] = \<const0> ;
  assign m00_axis_tdata[23] = \<const0> ;
  assign m00_axis_tdata[22] = \<const0> ;
  assign m00_axis_tdata[21] = \<const0> ;
  assign m00_axis_tdata[20] = \<const0> ;
  assign m00_axis_tdata[19] = \<const0> ;
  assign m00_axis_tdata[18] = \<const0> ;
  assign m00_axis_tdata[17] = \<const0> ;
  assign m00_axis_tdata[16] = \<const0> ;
  assign m00_axis_tdata[15] = \<const0> ;
  assign m00_axis_tdata[14] = \<const0> ;
  assign m00_axis_tdata[13] = \<const0> ;
  assign m00_axis_tdata[12] = \<const0> ;
  assign m00_axis_tdata[11] = \<const0> ;
  assign m00_axis_tdata[10] = \<const0> ;
  assign m00_axis_tdata[9] = \<const0> ;
  assign m00_axis_tdata[8] = \<const0> ;
  assign m00_axis_tdata[7:0] = AEROUT_ADDR;
  assign m00_axis_tlast = \<const1> ;
  assign m00_axis_tstrb[3] = \<const1> ;
  assign m00_axis_tstrb[2] = \<const1> ;
  assign m00_axis_tstrb[1] = \<const1> ;
  assign m00_axis_tstrb[0] = \<const1> ;
  assign m00_axis_tvalid = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  ODIN_design_AER_bus_0_0_AER_bus_v1_0 inst
       (.AERIN_ACK(AERIN_ACK),
        .AERIN_ADDR(AERIN_ADDR),
        .AERIN_REQ(AERIN_REQ),
        .AEROUT_ACK(AEROUT_ACK),
        .AEROUT_REQ(AEROUT_REQ),
        .m00_axis_aclk(m00_axis_aclk),
        .m00_axis_aresetn(m00_axis_aresetn),
        .m00_axis_tready(m00_axis_tready),
        .s00_axis_aclk(s00_axis_aclk),
        .s00_axis_aresetn(s00_axis_aresetn),
        .s00_axis_tdata(s00_axis_tdata[16:0]),
        .s00_axis_tvalid(s00_axis_tvalid),
        .t_ready_reg(s00_axis_tready));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
