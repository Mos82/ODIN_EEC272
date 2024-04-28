set_property SRC_FILE_INFO {cfile:E:/vivado_projects/ODIN_272/ODIN_272.srcs/constrs_1/imports/ODIN_EEC272/PYNQ-Z1_C.xdc rfile:../../../ODIN_272.srcs/constrs_1/imports/ODIN_EEC272/PYNQ-Z1_C.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:8 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN H16   IOSTANDARD LVCMOS33 } [get_ports { CLK }]; #IO_L13P_T2_MRCC_35 Sch=sysclk
set_property src_info {type:XDC file:1 line:9 export:INPUT save:INPUT read:READ} [current_design]
create_clock -add -name sys_clk_pin -period 8.00 -waveform {0 4} [get_ports { CLK }];
set_property src_info {type:XDC file:1 line:28 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN R14   IOSTANDARD LVCMOS33 } [get_ports { led[0] }]; #IO_L6N_T0_VREF_34 Sch=led[0]
set_property src_info {type:XDC file:1 line:29 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN P14   IOSTANDARD LVCMOS33 } [get_ports { led[1] }]; #IO_L6P_T0_34 Sch=led[1]
set_property src_info {type:XDC file:1 line:30 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN N16   IOSTANDARD LVCMOS33 } [get_ports { led[2] }]; #IO_L21N_T3_DQS_AD14N_35 Sch=led[2]
set_property src_info {type:XDC file:1 line:31 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN M14   IOSTANDARD LVCMOS33 } [get_ports { led[3] }]; #IO_L23P_T3_35 Sch=led[3]
set_property src_info {type:XDC file:1 line:128 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U5    IOSTANDARD LVCMOS33 } [get_ports { ck_io[26] }]; #IO_L19N_T3_VREF_13 Sch=ck_io[26]
set_property src_info {type:XDC file:1 line:129 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V5    IOSTANDARD LVCMOS33 } [get_ports { ck_io[27] }]; #IO_L6N_T0_VREF_13 Sch=ck_io[27]
set_property src_info {type:XDC file:1 line:130 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V6    IOSTANDARD LVCMOS33 } [get_ports { ck_io[28] }]; #IO_L22P_T3_13 Sch=ck_io[28]
set_property src_info {type:XDC file:1 line:148 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN W15   IOSTANDARD LVCMOS33 } [get_ports { MSIO }]; #IO_L10N_T1_34 Sch=ck_miso
set_property src_info {type:XDC file:1 line:149 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN T12   IOSTANDARD LVCMOS33 } [get_ports { MOSI }]; #IO_L2P_T0_34 Sch=ck_mosi
set_property src_info {type:XDC file:1 line:150 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN H15   IOSTANDARD LVCMOS33 } [get_ports { SCK }]; #IO_L19P_T3_35 Sch=ck_sck
set_property src_info {type:XDC file:1 line:193 export:INPUT save:INPUT read:READ} [current_design]
create_debug_core u_ila_0 ila
set_property src_info {type:XDC file:1 line:194 export:INPUT save:INPUT read:READ} [current_design]
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property src_info {type:XDC file:1 line:195 export:INPUT save:INPUT read:READ} [current_design]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property src_info {type:XDC file:1 line:196 export:INPUT save:INPUT read:READ} [current_design]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property src_info {type:XDC file:1 line:197 export:INPUT save:INPUT read:READ} [current_design]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property src_info {type:XDC file:1 line:198 export:INPUT save:INPUT read:READ} [current_design]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property src_info {type:XDC file:1 line:199 export:INPUT save:INPUT read:READ} [current_design]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property src_info {type:XDC file:1 line:200 export:INPUT save:INPUT read:READ} [current_design]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property src_info {type:XDC file:1 line:201 export:INPUT save:INPUT read:READ} [current_design]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property src_info {type:XDC file:1 line:202 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
set_property src_info {type:XDC file:1 line:203 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/clk [get_nets [list ODIN_design_i/processing_system7_0/inst/FCLK_CLK0]]
set_property src_info {type:XDC file:1 line:204 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property src_info {type:XDC file:1 line:205 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 20 [get_debug_ports u_ila_0/probe0]
set_property src_info {type:XDC file:1 line:206 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe0 [get_nets [list {ODIN_design_i/ODIN_0/inst/spi_slave_0/spi_data[0]} {ODIN_design_i/ODIN_0/inst/spi_slave_0/spi_data[1]} {ODIN_design_i/ODIN_0/inst/spi_slave_0/spi_data[2]} {ODIN_design_i/ODIN_0/inst/spi_slave_0/spi_data[3]} {ODIN_design_i/ODIN_0/inst/spi_slave_0/spi_data[4]} {ODIN_design_i/ODIN_0/inst/spi_slave_0/spi_data[5]} {ODIN_design_i/ODIN_0/inst/spi_slave_0/spi_data[6]} {ODIN_design_i/ODIN_0/inst/spi_slave_0/spi_data[7]} {ODIN_design_i/ODIN_0/inst/spi_slave_0/spi_data[8]} {ODIN_design_i/ODIN_0/inst/spi_slave_0/spi_data[9]} {ODIN_design_i/ODIN_0/inst/spi_slave_0/spi_data[10]} {ODIN_design_i/ODIN_0/inst/spi_slave_0/spi_data[11]} {ODIN_design_i/ODIN_0/inst/spi_slave_0/spi_data[12]} {ODIN_design_i/ODIN_0/inst/spi_slave_0/spi_data[13]} {ODIN_design_i/ODIN_0/inst/spi_slave_0/spi_data[14]} {ODIN_design_i/ODIN_0/inst/spi_slave_0/spi_data[15]} {ODIN_design_i/ODIN_0/inst/spi_slave_0/spi_data[16]} {ODIN_design_i/ODIN_0/inst/spi_slave_0/spi_data[17]} {ODIN_design_i/ODIN_0/inst/spi_slave_0/spi_data[18]} {ODIN_design_i/ODIN_0/inst/spi_slave_0/spi_data[19]}]]
set_property src_info {type:XDC file:1 line:207 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:1 line:208 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property src_info {type:XDC file:1 line:209 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 20 [get_debug_ports u_ila_0/probe1]
set_property src_info {type:XDC file:1 line:210 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe1 [get_nets [list {ODIN_design_i/ODIN_0/inst/spi_slave_0/spi_addr[0]} {ODIN_design_i/ODIN_0/inst/spi_slave_0/spi_addr[1]} {ODIN_design_i/ODIN_0/inst/spi_slave_0/spi_addr[2]} {ODIN_design_i/ODIN_0/inst/spi_slave_0/spi_addr[3]} {ODIN_design_i/ODIN_0/inst/spi_slave_0/spi_addr[4]} {ODIN_design_i/ODIN_0/inst/spi_slave_0/spi_addr[5]} {ODIN_design_i/ODIN_0/inst/spi_slave_0/spi_addr[6]} {ODIN_design_i/ODIN_0/inst/spi_slave_0/spi_addr[7]} {ODIN_design_i/ODIN_0/inst/spi_slave_0/spi_addr[8]} {ODIN_design_i/ODIN_0/inst/spi_slave_0/spi_addr[9]} {ODIN_design_i/ODIN_0/inst/spi_slave_0/spi_addr[10]} {ODIN_design_i/ODIN_0/inst/spi_slave_0/spi_addr[11]} {ODIN_design_i/ODIN_0/inst/spi_slave_0/spi_addr[12]} {ODIN_design_i/ODIN_0/inst/spi_slave_0/spi_addr[13]} {ODIN_design_i/ODIN_0/inst/spi_slave_0/spi_addr[14]} {ODIN_design_i/ODIN_0/inst/spi_slave_0/spi_addr[15]} {ODIN_design_i/ODIN_0/inst/spi_slave_0/spi_addr[16]} {ODIN_design_i/ODIN_0/inst/spi_slave_0/spi_addr[17]} {ODIN_design_i/ODIN_0/inst/spi_slave_0/spi_addr[18]} {ODIN_design_i/ODIN_0/inst/spi_slave_0/spi_addr[19]}]]
set_property src_info {type:XDC file:1 line:211 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:1 line:212 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property src_info {type:XDC file:1 line:213 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 6 [get_debug_ports u_ila_0/probe2]
set_property src_info {type:XDC file:1 line:214 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe2 [get_nets [list {ODIN_design_i/ODIN_0/inst/spi_slave_0/spi_cnt[0]} {ODIN_design_i/ODIN_0/inst/spi_slave_0/spi_cnt[1]} {ODIN_design_i/ODIN_0/inst/spi_slave_0/spi_cnt[2]} {ODIN_design_i/ODIN_0/inst/spi_slave_0/spi_cnt[3]} {ODIN_design_i/ODIN_0/inst/spi_slave_0/spi_cnt[4]} {ODIN_design_i/ODIN_0/inst/spi_slave_0/spi_cnt[5]}]]
set_property src_info {type:XDC file:1 line:215 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:1 line:216 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property src_info {type:XDC file:1 line:217 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 16 [get_debug_ports u_ila_0/probe3]
set_property src_info {type:XDC file:1 line:218 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe3 [get_nets [list {ODIN_design_i/ODIN_0/inst/CTRL_PROG_DATA[0]} {ODIN_design_i/ODIN_0/inst/CTRL_PROG_DATA[1]} {ODIN_design_i/ODIN_0/inst/CTRL_PROG_DATA[2]} {ODIN_design_i/ODIN_0/inst/CTRL_PROG_DATA[3]} {ODIN_design_i/ODIN_0/inst/CTRL_PROG_DATA[4]} {ODIN_design_i/ODIN_0/inst/CTRL_PROG_DATA[5]} {ODIN_design_i/ODIN_0/inst/CTRL_PROG_DATA[6]} {ODIN_design_i/ODIN_0/inst/CTRL_PROG_DATA[7]} {ODIN_design_i/ODIN_0/inst/CTRL_PROG_DATA[8]} {ODIN_design_i/ODIN_0/inst/CTRL_PROG_DATA[9]} {ODIN_design_i/ODIN_0/inst/CTRL_PROG_DATA[10]} {ODIN_design_i/ODIN_0/inst/CTRL_PROG_DATA[11]} {ODIN_design_i/ODIN_0/inst/CTRL_PROG_DATA[12]} {ODIN_design_i/ODIN_0/inst/CTRL_PROG_DATA[13]} {ODIN_design_i/ODIN_0/inst/CTRL_PROG_DATA[14]} {ODIN_design_i/ODIN_0/inst/CTRL_PROG_DATA[15]}]]
set_property src_info {type:XDC file:1 line:219 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:1 line:220 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property src_info {type:XDC file:1 line:221 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 2 [get_debug_ports u_ila_0/probe4]
set_property src_info {type:XDC file:1 line:222 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe4 [get_nets [list {ODIN_design_i/ODIN_0/inst/CTRL_OP_CODE[0]} {ODIN_design_i/ODIN_0/inst/CTRL_OP_CODE[1]}]]
set_property src_info {type:XDC file:1 line:223 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:1 line:224 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property src_info {type:XDC file:1 line:225 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 16 [get_debug_ports u_ila_0/probe5]
set_property src_info {type:XDC file:1 line:226 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe5 [get_nets [list {ODIN_design_i/ODIN_0/inst/CTRL_SPI_ADDR[0]} {ODIN_design_i/ODIN_0/inst/CTRL_SPI_ADDR[1]} {ODIN_design_i/ODIN_0/inst/CTRL_SPI_ADDR[2]} {ODIN_design_i/ODIN_0/inst/CTRL_SPI_ADDR[3]} {ODIN_design_i/ODIN_0/inst/CTRL_SPI_ADDR[4]} {ODIN_design_i/ODIN_0/inst/CTRL_SPI_ADDR[5]} {ODIN_design_i/ODIN_0/inst/CTRL_SPI_ADDR[6]} {ODIN_design_i/ODIN_0/inst/CTRL_SPI_ADDR[7]} {ODIN_design_i/ODIN_0/inst/CTRL_SPI_ADDR[8]} {ODIN_design_i/ODIN_0/inst/CTRL_SPI_ADDR[9]} {ODIN_design_i/ODIN_0/inst/CTRL_SPI_ADDR[10]} {ODIN_design_i/ODIN_0/inst/CTRL_SPI_ADDR[11]} {ODIN_design_i/ODIN_0/inst/CTRL_SPI_ADDR[12]} {ODIN_design_i/ODIN_0/inst/CTRL_SPI_ADDR[13]} {ODIN_design_i/ODIN_0/inst/CTRL_SPI_ADDR[14]} {ODIN_design_i/ODIN_0/inst/CTRL_SPI_ADDR[15]}]]
set_property src_info {type:XDC file:1 line:227 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:1 line:228 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property src_info {type:XDC file:1 line:229 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 1 [get_debug_ports u_ila_0/probe6]
set_property src_info {type:XDC file:1 line:230 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe6 [get_nets [list ODIN_design_i/ODIN_0/inst/CTRL_NEURMEM_WE]]
set_property src_info {type:XDC file:1 line:231 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:1 line:232 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property src_info {type:XDC file:1 line:233 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 1 [get_debug_ports u_ila_0/probe7]
set_property src_info {type:XDC file:1 line:234 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe7 [get_nets [list ODIN_design_i/ODIN_0/inst/CTRL_PROG_EVENT]]
set_property src_info {type:XDC file:1 line:235 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:1 line:236 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property src_info {type:XDC file:1 line:237 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 1 [get_debug_ports u_ila_0/probe8]
set_property src_info {type:XDC file:1 line:238 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe8 [get_nets [list ODIN_design_i/ODIN_0/inst/CTRL_READBACK_EVENT]]
set_property src_info {type:XDC file:1 line:239 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:1 line:240 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property src_info {type:XDC file:1 line:241 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 1 [get_debug_ports u_ila_0/probe9]
set_property src_info {type:XDC file:1 line:242 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe9 [get_nets [list ODIN_design_i/ODIN_0/inst/CTRL_SYNARRAY_WE]]
set_property src_info {type:XDC file:1 line:243 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:1 line:244 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property src_info {type:XDC file:1 line:245 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 1 [get_debug_ports u_ila_0/probe10]
set_property src_info {type:XDC file:1 line:246 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe10 [get_nets [list ODIN_design_i/ODIN_0/inst/spi_slave_0/SPI_GATE_ACTIVITY]]
set_property src_info {type:XDC file:1 line:247 export:INPUT save:INPUT read:READ} [current_design]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property src_info {type:XDC file:1 line:248 export:INPUT save:INPUT read:READ} [current_design]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property src_info {type:XDC file:1 line:249 export:INPUT save:INPUT read:READ} [current_design]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
set_property src_info {type:XDC file:1 line:250 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port dbg_hub/clk [get_nets clk]
