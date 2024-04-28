-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Fri Apr 26 19:59:34 2024
-- Host        : DESKTOP-32F9FGL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top ODIN_design_AER_bus_0_0 -prefix
--               ODIN_design_AER_bus_0_0_ ODIN_design_AER_bus_0_0_sim_netlist.vhdl
-- Design      : ODIN_design_AER_bus_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ODIN_design_AER_bus_0_0_AER_bus_v1_0_M00_AXIS is
  port (
    AEROUT_ACK : out STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    AEROUT_REQ : in STD_LOGIC
  );
end ODIN_design_AER_bus_0_0_AER_bus_v1_0_M00_AXIS;

architecture STRUCTURE of ODIN_design_AER_bus_0_0_AER_bus_v1_0_M00_AXIS is
  signal \^aerout_ack\ : STD_LOGIC;
  signal aerout_ack_reg_i_1_n_0 : STD_LOGIC;
begin
  AEROUT_ACK <= \^aerout_ack\;
aerout_ack_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A08"
    )
        port map (
      I0 => m00_axis_aresetn,
      I1 => \^aerout_ack\,
      I2 => m00_axis_tready,
      I3 => AEROUT_REQ,
      O => aerout_ack_reg_i_1_n_0
    );
aerout_ack_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => aerout_ack_reg_i_1_n_0,
      Q => \^aerout_ack\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ODIN_design_AER_bus_0_0_AER_bus_v1_0_S00_AXIS is
  port (
    t_ready_reg_0 : out STD_LOGIC;
    AERIN_REQ : out STD_LOGIC;
    AERIN_ADDR : out STD_LOGIC_VECTOR ( 16 downto 0 );
    s00_axis_aclk : in STD_LOGIC;
    AERIN_ACK : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 16 downto 0 )
  );
end ODIN_design_AER_bus_0_0_AER_bus_v1_0_S00_AXIS;

architecture STRUCTURE of ODIN_design_AER_bus_0_0_AER_bus_v1_0_S00_AXIS is
  signal \^aerin_req\ : STD_LOGIC;
  signal \aerin_addr_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal aerin_req_reg0 : STD_LOGIC;
  signal aerin_req_reg_i_1_n_0 : STD_LOGIC;
  signal t_ready_i_1_n_0 : STD_LOGIC;
  signal \^t_ready_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of aerin_req_reg_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of t_ready_i_1 : label is "soft_lutpair0";
begin
  AERIN_REQ <= \^aerin_req\;
  t_ready_reg_0 <= \^t_ready_reg_0\;
\aerin_addr_reg[16]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axis_aresetn,
      O => \aerin_addr_reg[16]_i_1_n_0\
    );
\aerin_addr_reg[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axis_tvalid,
      I1 => \^t_ready_reg_0\,
      O => aerin_req_reg0
    );
\aerin_addr_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => aerin_req_reg0,
      D => s00_axis_tdata(0),
      Q => AERIN_ADDR(0),
      R => \aerin_addr_reg[16]_i_1_n_0\
    );
\aerin_addr_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => aerin_req_reg0,
      D => s00_axis_tdata(10),
      Q => AERIN_ADDR(10),
      R => \aerin_addr_reg[16]_i_1_n_0\
    );
\aerin_addr_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => aerin_req_reg0,
      D => s00_axis_tdata(11),
      Q => AERIN_ADDR(11),
      R => \aerin_addr_reg[16]_i_1_n_0\
    );
\aerin_addr_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => aerin_req_reg0,
      D => s00_axis_tdata(12),
      Q => AERIN_ADDR(12),
      R => \aerin_addr_reg[16]_i_1_n_0\
    );
\aerin_addr_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => aerin_req_reg0,
      D => s00_axis_tdata(13),
      Q => AERIN_ADDR(13),
      R => \aerin_addr_reg[16]_i_1_n_0\
    );
\aerin_addr_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => aerin_req_reg0,
      D => s00_axis_tdata(14),
      Q => AERIN_ADDR(14),
      R => \aerin_addr_reg[16]_i_1_n_0\
    );
\aerin_addr_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => aerin_req_reg0,
      D => s00_axis_tdata(15),
      Q => AERIN_ADDR(15),
      R => \aerin_addr_reg[16]_i_1_n_0\
    );
\aerin_addr_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => aerin_req_reg0,
      D => s00_axis_tdata(16),
      Q => AERIN_ADDR(16),
      R => \aerin_addr_reg[16]_i_1_n_0\
    );
\aerin_addr_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => aerin_req_reg0,
      D => s00_axis_tdata(1),
      Q => AERIN_ADDR(1),
      R => \aerin_addr_reg[16]_i_1_n_0\
    );
\aerin_addr_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => aerin_req_reg0,
      D => s00_axis_tdata(2),
      Q => AERIN_ADDR(2),
      R => \aerin_addr_reg[16]_i_1_n_0\
    );
\aerin_addr_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => aerin_req_reg0,
      D => s00_axis_tdata(3),
      Q => AERIN_ADDR(3),
      R => \aerin_addr_reg[16]_i_1_n_0\
    );
\aerin_addr_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => aerin_req_reg0,
      D => s00_axis_tdata(4),
      Q => AERIN_ADDR(4),
      R => \aerin_addr_reg[16]_i_1_n_0\
    );
\aerin_addr_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => aerin_req_reg0,
      D => s00_axis_tdata(5),
      Q => AERIN_ADDR(5),
      R => \aerin_addr_reg[16]_i_1_n_0\
    );
\aerin_addr_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => aerin_req_reg0,
      D => s00_axis_tdata(6),
      Q => AERIN_ADDR(6),
      R => \aerin_addr_reg[16]_i_1_n_0\
    );
\aerin_addr_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => aerin_req_reg0,
      D => s00_axis_tdata(7),
      Q => AERIN_ADDR(7),
      R => \aerin_addr_reg[16]_i_1_n_0\
    );
\aerin_addr_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => aerin_req_reg0,
      D => s00_axis_tdata(8),
      Q => AERIN_ADDR(8),
      R => \aerin_addr_reg[16]_i_1_n_0\
    );
\aerin_addr_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => aerin_req_reg0,
      D => s00_axis_tdata(9),
      Q => AERIN_ADDR(9),
      R => \aerin_addr_reg[16]_i_1_n_0\
    );
aerin_req_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2220000"
    )
        port map (
      I0 => \^aerin_req\,
      I1 => AERIN_ACK,
      I2 => s00_axis_tvalid,
      I3 => \^t_ready_reg_0\,
      I4 => s00_axis_aresetn,
      O => aerin_req_reg_i_1_n_0
    );
aerin_req_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => aerin_req_reg_i_1_n_0,
      Q => \^aerin_req\,
      R => '0'
    );
t_ready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F11FFFF"
    )
        port map (
      I0 => AERIN_ACK,
      I1 => \^aerin_req\,
      I2 => s00_axis_tvalid,
      I3 => \^t_ready_reg_0\,
      I4 => s00_axis_aresetn,
      O => t_ready_i_1_n_0
    );
t_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => t_ready_i_1_n_0,
      Q => \^t_ready_reg_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ODIN_design_AER_bus_0_0_AER_bus_v1_0 is
  port (
    AEROUT_ACK : out STD_LOGIC;
    AERIN_ADDR : out STD_LOGIC_VECTOR ( 16 downto 0 );
    AERIN_REQ : out STD_LOGIC;
    t_ready_reg : out STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    AEROUT_REQ : in STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 16 downto 0 );
    s00_axis_aclk : in STD_LOGIC;
    AERIN_ACK : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC
  );
end ODIN_design_AER_bus_0_0_AER_bus_v1_0;

architecture STRUCTURE of ODIN_design_AER_bus_0_0_AER_bus_v1_0 is
begin
AER_bus_v1_0_M00_AXIS_inst: entity work.ODIN_design_AER_bus_0_0_AER_bus_v1_0_M00_AXIS
     port map (
      AEROUT_ACK => AEROUT_ACK,
      AEROUT_REQ => AEROUT_REQ,
      m00_axis_aclk => m00_axis_aclk,
      m00_axis_aresetn => m00_axis_aresetn,
      m00_axis_tready => m00_axis_tready
    );
AER_bus_v1_0_S00_AXIS_inst: entity work.ODIN_design_AER_bus_0_0_AER_bus_v1_0_S00_AXIS
     port map (
      AERIN_ACK => AERIN_ACK,
      AERIN_ADDR(16 downto 0) => AERIN_ADDR(16 downto 0),
      AERIN_REQ => AERIN_REQ,
      s00_axis_aclk => s00_axis_aclk,
      s00_axis_aresetn => s00_axis_aresetn,
      s00_axis_tdata(16 downto 0) => s00_axis_tdata(16 downto 0),
      s00_axis_tvalid => s00_axis_tvalid,
      t_ready_reg_0 => t_ready_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ODIN_design_AER_bus_0_0 is
  port (
    AEROUT_REQ : in STD_LOGIC;
    AEROUT_ACK : out STD_LOGIC;
    AEROUT_ADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    AERIN_REQ : out STD_LOGIC;
    AERIN_ACK : in STD_LOGIC;
    AERIN_ADDR : out STD_LOGIC_VECTOR ( 16 downto 0 );
    m00_axis_aclk : in STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC;
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axis_tlast : out STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    s00_axis_aclk : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    s00_axis_tready : out STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ODIN_design_AER_bus_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ODIN_design_AER_bus_0_0 : entity is "ODIN_design_AER_bus_0_0,AER_bus_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ODIN_design_AER_bus_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ODIN_design_AER_bus_0_0 : entity is "AER_bus_v1_0,Vivado 2023.1";
end ODIN_design_AER_bus_0_0;

architecture STRUCTURE of ODIN_design_AER_bus_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^aerout_addr\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of m00_axis_aclk : signal is "xilinx.com:signal:clock:1.0 M00_AXIS_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of m00_axis_aclk : signal is "XIL_INTERFACENAME M00_AXIS_CLK, ASSOCIATED_BUSIF M00_AXIS, ASSOCIATED_RESET m00_axis_aresetn, FREQ_HZ 30303030, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ODIN_design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 M00_AXIS_RST RST";
  attribute X_INTERFACE_PARAMETER of m00_axis_aresetn : signal is "XIL_INTERFACENAME M00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axis_tlast : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TLAST";
  attribute X_INTERFACE_INFO of m00_axis_tready : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TREADY";
  attribute X_INTERFACE_PARAMETER of m00_axis_tready : signal is "XIL_INTERFACENAME M00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 30303030, PHASE 0.0, CLK_DOMAIN ODIN_design_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TVALID";
  attribute X_INTERFACE_INFO of s00_axis_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXIS_CLK CLK";
  attribute X_INTERFACE_PARAMETER of s00_axis_aclk : signal is "XIL_INTERFACENAME S00_AXIS_CLK, ASSOCIATED_BUSIF S00_AXIS, ASSOCIATED_RESET s00_axis_aresetn, FREQ_HZ 30303030, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ODIN_design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXIS_RST RST";
  attribute X_INTERFACE_PARAMETER of s00_axis_aresetn : signal is "XIL_INTERFACENAME S00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axis_tlast : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TLAST";
  attribute X_INTERFACE_INFO of s00_axis_tready : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TREADY";
  attribute X_INTERFACE_INFO of s00_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TVALID";
  attribute X_INTERFACE_PARAMETER of s00_axis_tvalid : signal is "XIL_INTERFACENAME S00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 30303030, PHASE 0.0, CLK_DOMAIN ODIN_design_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TDATA";
  attribute X_INTERFACE_INFO of m00_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TSTRB";
  attribute X_INTERFACE_INFO of s00_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TDATA";
  attribute X_INTERFACE_INFO of s00_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TSTRB";
begin
  \^aerout_addr\(7 downto 0) <= AEROUT_ADDR(7 downto 0);
  m00_axis_tdata(31) <= \<const0>\;
  m00_axis_tdata(30) <= \<const0>\;
  m00_axis_tdata(29) <= \<const0>\;
  m00_axis_tdata(28) <= \<const0>\;
  m00_axis_tdata(27) <= \<const0>\;
  m00_axis_tdata(26) <= \<const0>\;
  m00_axis_tdata(25) <= \<const0>\;
  m00_axis_tdata(24) <= \<const0>\;
  m00_axis_tdata(23) <= \<const0>\;
  m00_axis_tdata(22) <= \<const0>\;
  m00_axis_tdata(21) <= \<const0>\;
  m00_axis_tdata(20) <= \<const0>\;
  m00_axis_tdata(19) <= \<const0>\;
  m00_axis_tdata(18) <= \<const0>\;
  m00_axis_tdata(17) <= \<const0>\;
  m00_axis_tdata(16) <= \<const0>\;
  m00_axis_tdata(15) <= \<const0>\;
  m00_axis_tdata(14) <= \<const0>\;
  m00_axis_tdata(13) <= \<const0>\;
  m00_axis_tdata(12) <= \<const0>\;
  m00_axis_tdata(11) <= \<const0>\;
  m00_axis_tdata(10) <= \<const0>\;
  m00_axis_tdata(9) <= \<const0>\;
  m00_axis_tdata(8) <= \<const0>\;
  m00_axis_tdata(7 downto 0) <= \^aerout_addr\(7 downto 0);
  m00_axis_tlast <= \<const1>\;
  m00_axis_tstrb(3) <= \<const1>\;
  m00_axis_tstrb(2) <= \<const1>\;
  m00_axis_tstrb(1) <= \<const1>\;
  m00_axis_tstrb(0) <= \<const1>\;
  m00_axis_tvalid <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.ODIN_design_AER_bus_0_0_AER_bus_v1_0
     port map (
      AERIN_ACK => AERIN_ACK,
      AERIN_ADDR(16 downto 0) => AERIN_ADDR(16 downto 0),
      AERIN_REQ => AERIN_REQ,
      AEROUT_ACK => AEROUT_ACK,
      AEROUT_REQ => AEROUT_REQ,
      m00_axis_aclk => m00_axis_aclk,
      m00_axis_aresetn => m00_axis_aresetn,
      m00_axis_tready => m00_axis_tready,
      s00_axis_aclk => s00_axis_aclk,
      s00_axis_aresetn => s00_axis_aresetn,
      s00_axis_tdata(16 downto 0) => s00_axis_tdata(16 downto 0),
      s00_axis_tvalid => s00_axis_tvalid,
      t_ready_reg => s00_axis_tready
    );
end STRUCTURE;
