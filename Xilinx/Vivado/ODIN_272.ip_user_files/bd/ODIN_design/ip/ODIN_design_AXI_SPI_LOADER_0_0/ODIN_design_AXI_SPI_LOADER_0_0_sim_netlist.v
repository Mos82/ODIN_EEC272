// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sat Apr 27 02:34:49 2024
// Host        : DESKTOP-32F9FGL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/vivado_projects/ODIN_272/ODIN_272.gen/sources_1/bd/ODIN_design/ip/ODIN_design_AXI_SPI_LOADER_0_0/ODIN_design_AXI_SPI_LOADER_0_0_sim_netlist.v
// Design      : ODIN_design_AXI_SPI_LOADER_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ODIN_design_AXI_SPI_LOADER_0_0,AXI_SPI_LOADER_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "AXI_SPI_LOADER_v1_0,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module ODIN_design_AXI_SPI_LOADER_0_0
   (TX_Byte,
    TX_DV,
    TX_READY,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  output [7:0]TX_Byte;
  output TX_DV;
  input TX_READY;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 30303030, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ODIN_design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [3:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 30303030, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN ODIN_design_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;

  wire \<const0> ;
  wire [7:0]TX_Byte;
  wire TX_DV;
  wire TX_READY;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  ODIN_design_AXI_SPI_LOADER_0_0_AXI_SPI_LOADER_v1_0 inst
       (.S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .TX_Byte(TX_Byte),
        .TX_DV(TX_DV),
        .TX_READY(TX_READY),
        .axi_rvalid_reg(s00_axi_rvalid),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "AXI_SPI_LOADER_v1_0" *) 
module ODIN_design_AXI_SPI_LOADER_0_0_AXI_SPI_LOADER_v1_0
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    TX_Byte,
    TX_DV,
    S_AXI_ARREADY,
    s00_axi_rdata,
    axi_rvalid_reg,
    s00_axi_bvalid,
    TX_READY,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_aresetn,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output [7:0]TX_Byte;
  output TX_DV;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output axi_rvalid_reg;
  output s00_axi_bvalid;
  input TX_READY;
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input s00_axi_aresetn;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire [7:0]TX_Byte;
  wire TX_DV;
  wire TX_READY;
  wire axi_rvalid_reg;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  ODIN_design_AXI_SPI_LOADER_0_0_AXI_SPI_LOADER_v1_0_S00_AXI AXI_SPI_LOADER_v1_0_S00_AXI_inst
       (.S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .TX_Byte(TX_Byte),
        .TX_DV(TX_DV),
        .TX_READY(TX_READY),
        .axi_rvalid_reg_0(axi_rvalid_reg),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "AXI_SPI_LOADER_v1_0_S00_AXI" *) 
module ODIN_design_AXI_SPI_LOADER_0_0_AXI_SPI_LOADER_v1_0_S00_AXI
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    TX_Byte,
    TX_DV,
    S_AXI_ARREADY,
    s00_axi_rdata,
    axi_rvalid_reg_0,
    s00_axi_bvalid,
    TX_READY,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_aresetn,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output [7:0]TX_Byte;
  output TX_DV;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output axi_rvalid_reg_0;
  output s00_axi_bvalid;
  input TX_READY;
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input s00_axi_aresetn;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;
  input s00_axi_rready;

  wire \FSM_onehot_spi_state[1]_i_1_n_0 ;
  wire \FSM_onehot_spi_state[3]_i_1_n_0 ;
  wire \FSM_onehot_spi_state[3]_i_2_n_0 ;
  wire \FSM_onehot_spi_state_reg_n_0_[0] ;
  wire \FSM_onehot_spi_state_reg_n_0_[2] ;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire [7:0]TX_Byte;
  wire TX_DV;
  wire TX_DV_r;
  wire TX_READY;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_0;
  wire axi_wready0;
  wire p_0_in;
  wire [1:0]p_0_in_0;
  wire [31:7]p_1_in;
  wire p_3_in;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire set_DONE;
  wire set_DONE_reg_n_0;
  wire [31:0]slv_reg0;
  wire \slv_reg0[31]_i_2_n_0 ;
  wire [31:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire slv_reg3;
  wire \slv_reg3[0]_i_1_n_0 ;
  wire \slv_reg3[0]_i_2_n_0 ;
  wire [39:8]spi_data_latch;
  wire \spi_data_latch[0]_i_1_n_0 ;
  wire \spi_data_latch[10]_i_1_n_0 ;
  wire \spi_data_latch[11]_i_1_n_0 ;
  wire \spi_data_latch[12]_i_1_n_0 ;
  wire \spi_data_latch[13]_i_1_n_0 ;
  wire \spi_data_latch[14]_i_1_n_0 ;
  wire \spi_data_latch[15]_i_1_n_0 ;
  wire \spi_data_latch[16]_i_1_n_0 ;
  wire \spi_data_latch[17]_i_1_n_0 ;
  wire \spi_data_latch[18]_i_1_n_0 ;
  wire \spi_data_latch[19]_i_1_n_0 ;
  wire \spi_data_latch[1]_i_1_n_0 ;
  wire \spi_data_latch[20]_i_1_n_0 ;
  wire \spi_data_latch[21]_i_1_n_0 ;
  wire \spi_data_latch[22]_i_1_n_0 ;
  wire \spi_data_latch[23]_i_1_n_0 ;
  wire \spi_data_latch[24]_i_1_n_0 ;
  wire \spi_data_latch[25]_i_1_n_0 ;
  wire \spi_data_latch[26]_i_1_n_0 ;
  wire \spi_data_latch[27]_i_1_n_0 ;
  wire \spi_data_latch[28]_i_1_n_0 ;
  wire \spi_data_latch[29]_i_1_n_0 ;
  wire \spi_data_latch[2]_i_1_n_0 ;
  wire \spi_data_latch[30]_i_1_n_0 ;
  wire \spi_data_latch[31]_i_1_n_0 ;
  wire \spi_data_latch[39]_i_1_n_0 ;
  wire \spi_data_latch[3]_i_1_n_0 ;
  wire \spi_data_latch[4]_i_1_n_0 ;
  wire \spi_data_latch[5]_i_1_n_0 ;
  wire \spi_data_latch[6]_i_1_n_0 ;
  wire \spi_data_latch[7]_i_1_n_0 ;
  wire \spi_data_latch[7]_i_2_n_0 ;
  wire \spi_data_latch[8]_i_1_n_0 ;
  wire \spi_data_latch[9]_i_1_n_0 ;
  wire spi_tx_counter;
  wire \spi_tx_counter[0]_i_1_n_0 ;
  wire \spi_tx_counter[1]_i_1_n_0 ;
  wire \spi_tx_counter[2]_i_1_n_0 ;
  wire \spi_tx_counter[2]_i_2_n_0 ;
  wire \spi_tx_counter_reg_n_0_[0] ;
  wire \spi_tx_counter_reg_n_0_[1] ;
  wire \spi_tx_counter_reg_n_0_[2] ;
  wire transaction_start;
  wire transaction_start_i_1_n_0;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFAAA2)) 
    \FSM_onehot_spi_state[1]_i_1 
       (.I0(\FSM_onehot_spi_state_reg_n_0_[2] ),
        .I1(\spi_tx_counter_reg_n_0_[2] ),
        .I2(\spi_tx_counter_reg_n_0_[1] ),
        .I3(\spi_tx_counter_reg_n_0_[0] ),
        .I4(\FSM_onehot_spi_state_reg_n_0_[0] ),
        .O(\FSM_onehot_spi_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \FSM_onehot_spi_state[3]_i_1 
       (.I0(\FSM_onehot_spi_state_reg_n_0_[2] ),
        .I1(TX_READY),
        .I2(\FSM_onehot_spi_state_reg_n_0_[0] ),
        .I3(transaction_start),
        .I4(set_DONE),
        .I5(TX_DV_r),
        .O(\FSM_onehot_spi_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \FSM_onehot_spi_state[3]_i_2 
       (.I0(\FSM_onehot_spi_state_reg_n_0_[2] ),
        .I1(\spi_tx_counter_reg_n_0_[0] ),
        .I2(\spi_tx_counter_reg_n_0_[1] ),
        .I3(\spi_tx_counter_reg_n_0_[2] ),
        .O(\FSM_onehot_spi_state[3]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "S_IDLE:0001,S_WAIT:0100,S_SEND_PULSE:0010,S_END:1000" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_spi_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_spi_state[3]_i_1_n_0 ),
        .D(set_DONE),
        .Q(\FSM_onehot_spi_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "S_IDLE:0001,S_WAIT:0100,S_SEND_PULSE:0010,S_END:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_spi_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_spi_state[3]_i_1_n_0 ),
        .D(\FSM_onehot_spi_state[1]_i_1_n_0 ),
        .Q(TX_DV_r),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "S_IDLE:0001,S_WAIT:0100,S_SEND_PULSE:0010,S_END:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_spi_state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_spi_state[3]_i_1_n_0 ),
        .D(TX_DV_r),
        .Q(\FSM_onehot_spi_state_reg_n_0_[2] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "S_IDLE:0001,S_WAIT:0100,S_SEND_PULSE:0010,S_END:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_spi_state_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_spi_state[3]_i_1_n_0 ),
        .D(\FSM_onehot_spi_state[3]_i_2_n_0 ),
        .Q(set_DONE),
        .R(1'b0));
  FDRE TX_DV_r_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(TX_DV_r),
        .Q(TX_DV),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0FFFFFF88888888)) 
    aw_en_i_1
       (.I0(s00_axi_bready),
        .I1(s00_axi_bvalid),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(aw_en_reg_n_0),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(p_0_in));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(p_0_in));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(S_AXI_AWREADY),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .I4(aw_en_reg_n_0),
        .I5(p_0_in_0[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(S_AXI_AWREADY),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .I4(aw_en_reg_n_0),
        .I5(p_0_in_0[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in_0[0]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in_0[1]),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    axi_awready_i_2
       (.I0(S_AXI_AWREADY),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(aw_en_reg_n_0),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h7444444444444444)) 
    axi_bvalid_i_1
       (.I0(s00_axi_bready),
        .I1(s00_axi_bvalid),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(S_AXI_WREADY),
        .I5(S_AXI_AWREADY),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hCCCCF0F0FF00AAAA)) 
    \axi_rdata[0]_i_1 
       (.I0(slv_reg0[0]),
        .I1(slv_reg3),
        .I2(slv_reg1[0]),
        .I3(slv_reg2[0]),
        .I4(axi_araddr[3]),
        .I5(axi_araddr[2]),
        .O(reg_data_out[0]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg0[10]),
        .I1(slv_reg1[10]),
        .I2(slv_reg2[10]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[10]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg0[11]),
        .I1(slv_reg1[11]),
        .I2(slv_reg2[11]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[11]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg0[12]),
        .I1(slv_reg1[12]),
        .I2(slv_reg2[12]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[12]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg0[13]),
        .I1(slv_reg1[13]),
        .I2(slv_reg2[13]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[13]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg0[14]),
        .I1(slv_reg1[14]),
        .I2(slv_reg2[14]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[14]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg0[15]),
        .I1(slv_reg1[15]),
        .I2(slv_reg2[15]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[15]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg0[16]),
        .I1(slv_reg1[16]),
        .I2(slv_reg2[16]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[16]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg0[17]),
        .I1(slv_reg1[17]),
        .I2(slv_reg2[17]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[17]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg0[18]),
        .I1(slv_reg1[18]),
        .I2(slv_reg2[18]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[18]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg0[19]),
        .I1(slv_reg1[19]),
        .I2(slv_reg2[19]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[19]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg0[1]),
        .I1(slv_reg1[1]),
        .I2(slv_reg2[1]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[1]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg0[20]),
        .I1(slv_reg1[20]),
        .I2(slv_reg2[20]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[20]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg0[21]),
        .I1(slv_reg1[21]),
        .I2(slv_reg2[21]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[21]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg0[22]),
        .I1(slv_reg1[22]),
        .I2(slv_reg2[22]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[22]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg0[23]),
        .I1(slv_reg1[23]),
        .I2(slv_reg2[23]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[23]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg0[24]),
        .I1(slv_reg1[24]),
        .I2(slv_reg2[24]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[24]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg0[25]),
        .I1(slv_reg1[25]),
        .I2(slv_reg2[25]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[25]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg0[26]),
        .I1(slv_reg1[26]),
        .I2(slv_reg2[26]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[26]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg0[27]),
        .I1(slv_reg1[27]),
        .I2(slv_reg2[27]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[27]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg0[28]),
        .I1(slv_reg1[28]),
        .I2(slv_reg2[28]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[28]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg0[29]),
        .I1(slv_reg1[29]),
        .I2(slv_reg2[29]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[29]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg0[2]),
        .I1(slv_reg1[2]),
        .I2(slv_reg2[2]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[2]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg0[30]),
        .I1(slv_reg1[30]),
        .I2(slv_reg2[30]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[30]));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(axi_rvalid_reg_0),
        .O(p_3_in));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[31]_i_2 
       (.I0(slv_reg0[31]),
        .I1(slv_reg1[31]),
        .I2(slv_reg2[31]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[31]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg0[3]),
        .I1(slv_reg1[3]),
        .I2(slv_reg2[3]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[3]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg0[4]),
        .I1(slv_reg1[4]),
        .I2(slv_reg2[4]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[4]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg0[5]),
        .I1(slv_reg1[5]),
        .I2(slv_reg2[5]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[5]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[6]_i_1 
       (.I0(slv_reg0[6]),
        .I1(slv_reg1[6]),
        .I2(slv_reg2[6]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[6]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg0[7]),
        .I1(slv_reg1[7]),
        .I2(slv_reg2[7]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[7]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg0[8]),
        .I1(slv_reg1[8]),
        .I2(slv_reg2[8]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[8]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg0[9]),
        .I1(slv_reg1[9]),
        .I2(slv_reg2[9]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_3_in),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_3_in),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_3_in),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_3_in),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_3_in),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_3_in),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_3_in),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_3_in),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_3_in),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_3_in),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_3_in),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_3_in),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_3_in),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_3_in),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_3_in),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_3_in),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_3_in),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_3_in),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_3_in),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_3_in),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_3_in),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_3_in),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_3_in),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_3_in),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_3_in),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_3_in),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_3_in),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_3_in),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_3_in),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_3_in),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_3_in),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_3_in),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h7444)) 
    axi_rvalid_i_1
       (.I0(s00_axi_rready),
        .I1(axi_rvalid_reg_0),
        .I2(s00_axi_arvalid),
        .I3(S_AXI_ARREADY),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axi_rvalid_reg_0),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(aw_en_reg_n_0),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(S_AXI_WREADY),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(p_0_in));
  FDRE set_DONE_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(set_DONE),
        .Q(set_DONE_reg_n_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0100)) 
    \slv_reg0[15]_i_1 
       (.I0(p_0_in_0[1]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(p_0_in_0[0]),
        .I3(s00_axi_wstrb[1]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h0100)) 
    \slv_reg0[23]_i_1 
       (.I0(p_0_in_0[1]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(p_0_in_0[0]),
        .I3(s00_axi_wstrb[2]),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'h0100)) 
    \slv_reg0[31]_i_1 
       (.I0(p_0_in_0[1]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(p_0_in_0[0]),
        .I3(s00_axi_wstrb[3]),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \slv_reg0[31]_i_2 
       (.I0(S_AXI_AWREADY),
        .I1(S_AXI_WREADY),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(\slv_reg0[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \slv_reg0[7]_i_1 
       (.I0(p_0_in_0[1]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(p_0_in_0[0]),
        .I3(s00_axi_wstrb[0]),
        .O(p_1_in[7]));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0[0]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg0[10]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg0[11]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg0[12]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg0[13]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg0[14]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg0[15]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg0[16]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg0[17]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg0[18]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg0[19]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg0[20]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg0[21]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg0[22]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg0[23]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg0[24]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg0[25]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg0[26]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg0[27]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg0[28]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg0[29]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg0[30]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg0[31]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg0[5]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg0[6]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg0[7]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg0[8]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg0[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h1000)) 
    \slv_reg1[15]_i_1 
       (.I0(p_0_in_0[1]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(p_0_in_0[0]),
        .I3(s00_axi_wstrb[1]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \slv_reg1[23]_i_1 
       (.I0(p_0_in_0[1]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(p_0_in_0[0]),
        .I3(s00_axi_wstrb[2]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \slv_reg1[31]_i_1 
       (.I0(p_0_in_0[1]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(p_0_in_0[0]),
        .I3(s00_axi_wstrb[3]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \slv_reg1[7]_i_1 
       (.I0(p_0_in_0[1]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(p_0_in_0[0]),
        .I3(s00_axi_wstrb[0]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg2[15]_i_1 
       (.I0(p_0_in_0[1]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(p_0_in_0[0]),
        .I3(s00_axi_wstrb[1]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg2[23]_i_1 
       (.I0(p_0_in_0[1]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(p_0_in_0[0]),
        .I3(s00_axi_wstrb[2]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg2[31]_i_1 
       (.I0(p_0_in_0[1]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(p_0_in_0[0]),
        .I3(s00_axi_wstrb[3]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg2[7]_i_1 
       (.I0(p_0_in_0[1]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(p_0_in_0[0]),
        .I3(s00_axi_wstrb[0]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hBAAAFFFF8AAA0000)) 
    \slv_reg3[0]_i_1 
       (.I0(set_DONE_reg_n_0),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\slv_reg3[0]_i_2_n_0 ),
        .I5(slv_reg3),
        .O(\slv_reg3[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF08000000)) 
    \slv_reg3[0]_i_2 
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .I2(axi_rvalid_reg_0),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(set_DONE_reg_n_0),
        .O(\slv_reg3[0]_i_2_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[0]_i_1_n_0 ),
        .Q(slv_reg3),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spi_data_latch[0]_i_1 
       (.I0(slv_reg0[0]),
        .I1(transaction_start),
        .I2(spi_data_latch[8]),
        .O(\spi_data_latch[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spi_data_latch[10]_i_1 
       (.I0(slv_reg0[10]),
        .I1(transaction_start),
        .I2(spi_data_latch[18]),
        .O(\spi_data_latch[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spi_data_latch[11]_i_1 
       (.I0(slv_reg0[11]),
        .I1(transaction_start),
        .I2(spi_data_latch[19]),
        .O(\spi_data_latch[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spi_data_latch[12]_i_1 
       (.I0(slv_reg0[12]),
        .I1(transaction_start),
        .I2(spi_data_latch[20]),
        .O(\spi_data_latch[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spi_data_latch[13]_i_1 
       (.I0(slv_reg0[13]),
        .I1(transaction_start),
        .I2(spi_data_latch[21]),
        .O(\spi_data_latch[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spi_data_latch[14]_i_1 
       (.I0(slv_reg0[14]),
        .I1(transaction_start),
        .I2(spi_data_latch[22]),
        .O(\spi_data_latch[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spi_data_latch[15]_i_1 
       (.I0(slv_reg0[15]),
        .I1(transaction_start),
        .I2(spi_data_latch[23]),
        .O(\spi_data_latch[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spi_data_latch[16]_i_1 
       (.I0(slv_reg0[16]),
        .I1(transaction_start),
        .I2(spi_data_latch[24]),
        .O(\spi_data_latch[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spi_data_latch[17]_i_1 
       (.I0(slv_reg0[17]),
        .I1(transaction_start),
        .I2(spi_data_latch[25]),
        .O(\spi_data_latch[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spi_data_latch[18]_i_1 
       (.I0(slv_reg0[18]),
        .I1(transaction_start),
        .I2(spi_data_latch[26]),
        .O(\spi_data_latch[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spi_data_latch[19]_i_1 
       (.I0(slv_reg0[19]),
        .I1(transaction_start),
        .I2(spi_data_latch[27]),
        .O(\spi_data_latch[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spi_data_latch[1]_i_1 
       (.I0(slv_reg0[1]),
        .I1(transaction_start),
        .I2(spi_data_latch[9]),
        .O(\spi_data_latch[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spi_data_latch[20]_i_1 
       (.I0(slv_reg0[20]),
        .I1(transaction_start),
        .I2(spi_data_latch[28]),
        .O(\spi_data_latch[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spi_data_latch[21]_i_1 
       (.I0(slv_reg0[21]),
        .I1(transaction_start),
        .I2(spi_data_latch[29]),
        .O(\spi_data_latch[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spi_data_latch[22]_i_1 
       (.I0(slv_reg0[22]),
        .I1(transaction_start),
        .I2(spi_data_latch[30]),
        .O(\spi_data_latch[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spi_data_latch[23]_i_1 
       (.I0(slv_reg0[23]),
        .I1(transaction_start),
        .I2(spi_data_latch[31]),
        .O(\spi_data_latch[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spi_data_latch[24]_i_1 
       (.I0(slv_reg0[24]),
        .I1(transaction_start),
        .I2(spi_data_latch[32]),
        .O(\spi_data_latch[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spi_data_latch[25]_i_1 
       (.I0(slv_reg0[25]),
        .I1(transaction_start),
        .I2(spi_data_latch[33]),
        .O(\spi_data_latch[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spi_data_latch[26]_i_1 
       (.I0(slv_reg0[26]),
        .I1(transaction_start),
        .I2(spi_data_latch[34]),
        .O(\spi_data_latch[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spi_data_latch[27]_i_1 
       (.I0(slv_reg0[27]),
        .I1(transaction_start),
        .I2(spi_data_latch[35]),
        .O(\spi_data_latch[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spi_data_latch[28]_i_1 
       (.I0(slv_reg0[28]),
        .I1(transaction_start),
        .I2(spi_data_latch[36]),
        .O(\spi_data_latch[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spi_data_latch[29]_i_1 
       (.I0(slv_reg0[29]),
        .I1(transaction_start),
        .I2(spi_data_latch[37]),
        .O(\spi_data_latch[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spi_data_latch[2]_i_1 
       (.I0(slv_reg0[2]),
        .I1(transaction_start),
        .I2(spi_data_latch[10]),
        .O(\spi_data_latch[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spi_data_latch[30]_i_1 
       (.I0(slv_reg0[30]),
        .I1(transaction_start),
        .I2(spi_data_latch[38]),
        .O(\spi_data_latch[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spi_data_latch[31]_i_1 
       (.I0(slv_reg0[31]),
        .I1(transaction_start),
        .I2(spi_data_latch[39]),
        .O(\spi_data_latch[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \spi_data_latch[39]_i_1 
       (.I0(TX_READY),
        .I1(transaction_start),
        .O(\spi_data_latch[39]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spi_data_latch[3]_i_1 
       (.I0(slv_reg0[3]),
        .I1(transaction_start),
        .I2(spi_data_latch[11]),
        .O(\spi_data_latch[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spi_data_latch[4]_i_1 
       (.I0(slv_reg0[4]),
        .I1(transaction_start),
        .I2(spi_data_latch[12]),
        .O(\spi_data_latch[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spi_data_latch[5]_i_1 
       (.I0(slv_reg0[5]),
        .I1(transaction_start),
        .I2(spi_data_latch[13]),
        .O(\spi_data_latch[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spi_data_latch[6]_i_1 
       (.I0(slv_reg0[6]),
        .I1(transaction_start),
        .I2(spi_data_latch[14]),
        .O(\spi_data_latch[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \spi_data_latch[7]_i_1 
       (.I0(transaction_start),
        .I1(TX_READY),
        .O(\spi_data_latch[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spi_data_latch[7]_i_2 
       (.I0(slv_reg0[7]),
        .I1(transaction_start),
        .I2(spi_data_latch[15]),
        .O(\spi_data_latch[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spi_data_latch[8]_i_1 
       (.I0(slv_reg0[8]),
        .I1(transaction_start),
        .I2(spi_data_latch[16]),
        .O(\spi_data_latch[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spi_data_latch[9]_i_1 
       (.I0(slv_reg0[9]),
        .I1(transaction_start),
        .I2(spi_data_latch[17]),
        .O(\spi_data_latch[9]_i_1_n_0 ));
  FDRE \spi_data_latch_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\spi_data_latch[7]_i_1_n_0 ),
        .D(\spi_data_latch[0]_i_1_n_0 ),
        .Q(TX_Byte[0]),
        .R(1'b0));
  FDRE \spi_data_latch_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\spi_data_latch[7]_i_1_n_0 ),
        .D(\spi_data_latch[10]_i_1_n_0 ),
        .Q(spi_data_latch[10]),
        .R(1'b0));
  FDRE \spi_data_latch_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\spi_data_latch[7]_i_1_n_0 ),
        .D(\spi_data_latch[11]_i_1_n_0 ),
        .Q(spi_data_latch[11]),
        .R(1'b0));
  FDRE \spi_data_latch_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\spi_data_latch[7]_i_1_n_0 ),
        .D(\spi_data_latch[12]_i_1_n_0 ),
        .Q(spi_data_latch[12]),
        .R(1'b0));
  FDRE \spi_data_latch_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\spi_data_latch[7]_i_1_n_0 ),
        .D(\spi_data_latch[13]_i_1_n_0 ),
        .Q(spi_data_latch[13]),
        .R(1'b0));
  FDRE \spi_data_latch_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\spi_data_latch[7]_i_1_n_0 ),
        .D(\spi_data_latch[14]_i_1_n_0 ),
        .Q(spi_data_latch[14]),
        .R(1'b0));
  FDRE \spi_data_latch_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\spi_data_latch[7]_i_1_n_0 ),
        .D(\spi_data_latch[15]_i_1_n_0 ),
        .Q(spi_data_latch[15]),
        .R(1'b0));
  FDRE \spi_data_latch_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\spi_data_latch[7]_i_1_n_0 ),
        .D(\spi_data_latch[16]_i_1_n_0 ),
        .Q(spi_data_latch[16]),
        .R(1'b0));
  FDRE \spi_data_latch_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\spi_data_latch[7]_i_1_n_0 ),
        .D(\spi_data_latch[17]_i_1_n_0 ),
        .Q(spi_data_latch[17]),
        .R(1'b0));
  FDRE \spi_data_latch_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\spi_data_latch[7]_i_1_n_0 ),
        .D(\spi_data_latch[18]_i_1_n_0 ),
        .Q(spi_data_latch[18]),
        .R(1'b0));
  FDRE \spi_data_latch_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\spi_data_latch[7]_i_1_n_0 ),
        .D(\spi_data_latch[19]_i_1_n_0 ),
        .Q(spi_data_latch[19]),
        .R(1'b0));
  FDRE \spi_data_latch_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\spi_data_latch[7]_i_1_n_0 ),
        .D(\spi_data_latch[1]_i_1_n_0 ),
        .Q(TX_Byte[1]),
        .R(1'b0));
  FDRE \spi_data_latch_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\spi_data_latch[7]_i_1_n_0 ),
        .D(\spi_data_latch[20]_i_1_n_0 ),
        .Q(spi_data_latch[20]),
        .R(1'b0));
  FDRE \spi_data_latch_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\spi_data_latch[7]_i_1_n_0 ),
        .D(\spi_data_latch[21]_i_1_n_0 ),
        .Q(spi_data_latch[21]),
        .R(1'b0));
  FDRE \spi_data_latch_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\spi_data_latch[7]_i_1_n_0 ),
        .D(\spi_data_latch[22]_i_1_n_0 ),
        .Q(spi_data_latch[22]),
        .R(1'b0));
  FDRE \spi_data_latch_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\spi_data_latch[7]_i_1_n_0 ),
        .D(\spi_data_latch[23]_i_1_n_0 ),
        .Q(spi_data_latch[23]),
        .R(1'b0));
  FDRE \spi_data_latch_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\spi_data_latch[7]_i_1_n_0 ),
        .D(\spi_data_latch[24]_i_1_n_0 ),
        .Q(spi_data_latch[24]),
        .R(1'b0));
  FDRE \spi_data_latch_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\spi_data_latch[7]_i_1_n_0 ),
        .D(\spi_data_latch[25]_i_1_n_0 ),
        .Q(spi_data_latch[25]),
        .R(1'b0));
  FDRE \spi_data_latch_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\spi_data_latch[7]_i_1_n_0 ),
        .D(\spi_data_latch[26]_i_1_n_0 ),
        .Q(spi_data_latch[26]),
        .R(1'b0));
  FDRE \spi_data_latch_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\spi_data_latch[7]_i_1_n_0 ),
        .D(\spi_data_latch[27]_i_1_n_0 ),
        .Q(spi_data_latch[27]),
        .R(1'b0));
  FDRE \spi_data_latch_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\spi_data_latch[7]_i_1_n_0 ),
        .D(\spi_data_latch[28]_i_1_n_0 ),
        .Q(spi_data_latch[28]),
        .R(1'b0));
  FDRE \spi_data_latch_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\spi_data_latch[7]_i_1_n_0 ),
        .D(\spi_data_latch[29]_i_1_n_0 ),
        .Q(spi_data_latch[29]),
        .R(1'b0));
  FDRE \spi_data_latch_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\spi_data_latch[7]_i_1_n_0 ),
        .D(\spi_data_latch[2]_i_1_n_0 ),
        .Q(TX_Byte[2]),
        .R(1'b0));
  FDRE \spi_data_latch_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\spi_data_latch[7]_i_1_n_0 ),
        .D(\spi_data_latch[30]_i_1_n_0 ),
        .Q(spi_data_latch[30]),
        .R(1'b0));
  FDRE \spi_data_latch_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\spi_data_latch[7]_i_1_n_0 ),
        .D(\spi_data_latch[31]_i_1_n_0 ),
        .Q(spi_data_latch[31]),
        .R(1'b0));
  FDRE \spi_data_latch_reg[32] 
       (.C(s00_axi_aclk),
        .CE(\spi_data_latch[7]_i_1_n_0 ),
        .D(slv_reg1[0]),
        .Q(spi_data_latch[32]),
        .R(\spi_data_latch[39]_i_1_n_0 ));
  FDRE \spi_data_latch_reg[33] 
       (.C(s00_axi_aclk),
        .CE(\spi_data_latch[7]_i_1_n_0 ),
        .D(slv_reg1[1]),
        .Q(spi_data_latch[33]),
        .R(\spi_data_latch[39]_i_1_n_0 ));
  FDRE \spi_data_latch_reg[34] 
       (.C(s00_axi_aclk),
        .CE(\spi_data_latch[7]_i_1_n_0 ),
        .D(slv_reg1[2]),
        .Q(spi_data_latch[34]),
        .R(\spi_data_latch[39]_i_1_n_0 ));
  FDRE \spi_data_latch_reg[35] 
       (.C(s00_axi_aclk),
        .CE(\spi_data_latch[7]_i_1_n_0 ),
        .D(slv_reg1[3]),
        .Q(spi_data_latch[35]),
        .R(\spi_data_latch[39]_i_1_n_0 ));
  FDRE \spi_data_latch_reg[36] 
       (.C(s00_axi_aclk),
        .CE(\spi_data_latch[7]_i_1_n_0 ),
        .D(slv_reg1[4]),
        .Q(spi_data_latch[36]),
        .R(\spi_data_latch[39]_i_1_n_0 ));
  FDRE \spi_data_latch_reg[37] 
       (.C(s00_axi_aclk),
        .CE(\spi_data_latch[7]_i_1_n_0 ),
        .D(slv_reg1[5]),
        .Q(spi_data_latch[37]),
        .R(\spi_data_latch[39]_i_1_n_0 ));
  FDRE \spi_data_latch_reg[38] 
       (.C(s00_axi_aclk),
        .CE(\spi_data_latch[7]_i_1_n_0 ),
        .D(slv_reg1[6]),
        .Q(spi_data_latch[38]),
        .R(\spi_data_latch[39]_i_1_n_0 ));
  FDRE \spi_data_latch_reg[39] 
       (.C(s00_axi_aclk),
        .CE(\spi_data_latch[7]_i_1_n_0 ),
        .D(slv_reg1[7]),
        .Q(spi_data_latch[39]),
        .R(\spi_data_latch[39]_i_1_n_0 ));
  FDRE \spi_data_latch_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\spi_data_latch[7]_i_1_n_0 ),
        .D(\spi_data_latch[3]_i_1_n_0 ),
        .Q(TX_Byte[3]),
        .R(1'b0));
  FDRE \spi_data_latch_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\spi_data_latch[7]_i_1_n_0 ),
        .D(\spi_data_latch[4]_i_1_n_0 ),
        .Q(TX_Byte[4]),
        .R(1'b0));
  FDRE \spi_data_latch_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\spi_data_latch[7]_i_1_n_0 ),
        .D(\spi_data_latch[5]_i_1_n_0 ),
        .Q(TX_Byte[5]),
        .R(1'b0));
  FDRE \spi_data_latch_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\spi_data_latch[7]_i_1_n_0 ),
        .D(\spi_data_latch[6]_i_1_n_0 ),
        .Q(TX_Byte[6]),
        .R(1'b0));
  FDRE \spi_data_latch_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\spi_data_latch[7]_i_1_n_0 ),
        .D(\spi_data_latch[7]_i_2_n_0 ),
        .Q(TX_Byte[7]),
        .R(1'b0));
  FDRE \spi_data_latch_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\spi_data_latch[7]_i_1_n_0 ),
        .D(\spi_data_latch[8]_i_1_n_0 ),
        .Q(spi_data_latch[8]),
        .R(1'b0));
  FDRE \spi_data_latch_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\spi_data_latch[7]_i_1_n_0 ),
        .D(\spi_data_latch[9]_i_1_n_0 ),
        .Q(spi_data_latch[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h38)) 
    \spi_tx_counter[0]_i_1 
       (.I0(\spi_tx_counter[2]_i_2_n_0 ),
        .I1(spi_tx_counter),
        .I2(\spi_tx_counter_reg_n_0_[0] ),
        .O(\spi_tx_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2F80)) 
    \spi_tx_counter[1]_i_1 
       (.I0(\spi_tx_counter[2]_i_2_n_0 ),
        .I1(\spi_tx_counter_reg_n_0_[0] ),
        .I2(spi_tx_counter),
        .I3(\spi_tx_counter_reg_n_0_[1] ),
        .O(\spi_tx_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h4CFF8000)) 
    \spi_tx_counter[2]_i_1 
       (.I0(\spi_tx_counter_reg_n_0_[1] ),
        .I1(\spi_tx_counter[2]_i_2_n_0 ),
        .I2(\spi_tx_counter_reg_n_0_[0] ),
        .I3(spi_tx_counter),
        .I4(\spi_tx_counter_reg_n_0_[2] ),
        .O(\spi_tx_counter[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFEFFFE)) 
    \spi_tx_counter[2]_i_2 
       (.I0(\FSM_onehot_spi_state_reg_n_0_[2] ),
        .I1(TX_DV_r),
        .I2(set_DONE),
        .I3(\FSM_onehot_spi_state_reg_n_0_[0] ),
        .I4(transaction_start),
        .O(\spi_tx_counter[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFE0000)) 
    \spi_tx_counter[2]_i_3 
       (.I0(\FSM_onehot_spi_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_spi_state_reg_n_0_[2] ),
        .I2(TX_DV_r),
        .I3(set_DONE),
        .I4(TX_READY),
        .I5(transaction_start),
        .O(spi_tx_counter));
  FDRE \spi_tx_counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\spi_tx_counter[0]_i_1_n_0 ),
        .Q(\spi_tx_counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \spi_tx_counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\spi_tx_counter[1]_i_1_n_0 ),
        .Q(\spi_tx_counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \spi_tx_counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\spi_tx_counter[2]_i_1_n_0 ),
        .Q(\spi_tx_counter_reg_n_0_[2] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    transaction_start_i_1
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(s00_axi_aresetn),
        .I4(transaction_start),
        .O(transaction_start_i_1_n_0));
  FDRE transaction_start_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(transaction_start_i_1_n_0),
        .Q(transaction_start),
        .R(1'b0));
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
