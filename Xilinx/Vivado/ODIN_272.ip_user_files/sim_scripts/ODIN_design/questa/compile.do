vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_14
vlib questa_lib/msim/processing_system7_vip_v1_0_16
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/lib_pkg_v1_0_2
vlib questa_lib/msim/fifo_generator_v13_2_8
vlib questa_lib/msim/lib_fifo_v1_0_17
vlib questa_lib/msim/lib_srl_fifo_v1_0_2
vlib questa_lib/msim/axi_datamover_v5_1_30
vlib questa_lib/msim/axi_sg_v4_1_16
vlib questa_lib/msim/axi_dma_v7_1_29
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_28
vlib questa_lib/msim/axi_data_fifo_v2_1_27
vlib questa_lib/msim/axi_crossbar_v2_1_29
vlib questa_lib/msim/axi_protocol_converter_v2_1_28
vlib questa_lib/msim/axi_clock_converter_v2_1_27
vlib questa_lib/msim/blk_mem_gen_v8_4_6
vlib questa_lib/msim/axi_dwidth_converter_v2_1_28

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_14 questa_lib/msim/axi_vip_v1_1_14
vmap processing_system7_vip_v1_0_16 questa_lib/msim/processing_system7_vip_v1_0_16
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap lib_pkg_v1_0_2 questa_lib/msim/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_8 questa_lib/msim/fifo_generator_v13_2_8
vmap lib_fifo_v1_0_17 questa_lib/msim/lib_fifo_v1_0_17
vmap lib_srl_fifo_v1_0_2 questa_lib/msim/lib_srl_fifo_v1_0_2
vmap axi_datamover_v5_1_30 questa_lib/msim/axi_datamover_v5_1_30
vmap axi_sg_v4_1_16 questa_lib/msim/axi_sg_v4_1_16
vmap axi_dma_v7_1_29 questa_lib/msim/axi_dma_v7_1_29
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_28 questa_lib/msim/axi_register_slice_v2_1_28
vmap axi_data_fifo_v2_1_27 questa_lib/msim/axi_data_fifo_v2_1_27
vmap axi_crossbar_v2_1_29 questa_lib/msim/axi_crossbar_v2_1_29
vmap axi_protocol_converter_v2_1_28 questa_lib/msim/axi_protocol_converter_v2_1_28
vmap axi_clock_converter_v2_1_27 questa_lib/msim/axi_clock_converter_v2_1_27
vmap blk_mem_gen_v8_4_6 questa_lib/msim/blk_mem_gen_v8_4_6
vmap axi_dwidth_converter_v2_1_28 questa_lib/msim/axi_dwidth_converter_v2_1_28

vlog -work xilinx_vip  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L processing_system7_vip_v1_0_16 -L xilinx_vip "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"E:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"E:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"E:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"E:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"E:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"E:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"E:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"E:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"E:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L processing_system7_vip_v1_0_16 -L xilinx_vip "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/ec67/hdl" "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/aed8/hdl" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"E:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"E:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"E:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/ec67/hdl" "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/aed8/hdl" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_14  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L processing_system7_vip_v1_0_16 -L xilinx_vip "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/ec67/hdl" "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/aed8/hdl" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/ed63/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_16  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L processing_system7_vip_v1_0_16 -L xilinx_vip "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/ec67/hdl" "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/aed8/hdl" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/aed8/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/ec67/hdl" "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/aed8/hdl" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/ODIN_design/ip/ODIN_design_processing_system7_0_0/sim/ODIN_design_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_2  -93  \
"../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13  -93  \
"../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/ODIN_design/ip/ODIN_design_rst_ps7_0_100M_0/sim/ODIN_design_rst_ps7_0_100M_0.vhd" \

vcom -work lib_pkg_v1_0_2  -93  \
"../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_8  -incr -mfcu  "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/ec67/hdl" "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/aed8/hdl" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/c97d/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_8  -93  \
"../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/c97d/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_8  -incr -mfcu  "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/ec67/hdl" "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/aed8/hdl" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/c97d/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_17  -93  \
"../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/3d41/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2  -93  \
"../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_30  -93  \
"../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/e959/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_16  -93  \
"../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/85d0/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_29  -93  \
"../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/50c3/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/ODIN_design/ip/ODIN_design_axi_dma_0_0/sim/ODIN_design_axi_dma_0_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/ec67/hdl" "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/aed8/hdl" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/ODIN_design/ip/ODIN_design_ODIN_0_0/sim/ODIN_design_ODIN_0_0.v" \
"../../../bd/ODIN_design/ipshared/beb6/hdl/AER_bus_v1_0_M00_AXIS.v" \
"../../../bd/ODIN_design/ipshared/beb6/hdl/AER_bus_v1_0_S00_AXIS.v" \
"../../../bd/ODIN_design/ipshared/beb6/hdl/AER_bus_v1_0.v" \
"../../../bd/ODIN_design/ip/ODIN_design_AER_bus_0_0/sim/ODIN_design_AER_bus_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  -incr -mfcu  "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/ec67/hdl" "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/aed8/hdl" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_28  -incr -mfcu  "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/ec67/hdl" "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/aed8/hdl" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/87d1/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_27  -incr -mfcu  "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/ec67/hdl" "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/aed8/hdl" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/fab7/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_29  -incr -mfcu  "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/ec67/hdl" "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/aed8/hdl" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/f8f3/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/ec67/hdl" "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/aed8/hdl" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/ODIN_design/ip/ODIN_design_xbar_1/sim/ODIN_design_xbar_1.v" \
"../../../bd/ODIN_design/ip/ODIN_design_xbar_2/sim/ODIN_design_xbar_2.v" \
"../../../bd/ODIN_design/ipshared/fbad/src/AXI_SPI_LOADER_v1_0.v" \
"../../../bd/ODIN_design/ipshared/fbad/src/AXI_SPI_LOADER_v1_0_S00_AXI.v" \
"../../../bd/ODIN_design/ip/ODIN_design_AXI_SPI_LOADER_0_0/sim/ODIN_design_AXI_SPI_LOADER_0_0.v" \
"../../../bd/ODIN_design/ip/ODIN_design_SPI_Master_0_0/sim/ODIN_design_SPI_Master_0_0.v" \

vlog -work axi_protocol_converter_v2_1_28  -incr -mfcu  "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/ec67/hdl" "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/aed8/hdl" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/8c02/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_27  -incr -mfcu  "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/ec67/hdl" "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/aed8/hdl" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/29db/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_6  -incr -mfcu  "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/ec67/hdl" "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/aed8/hdl" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/bb55/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_28  -incr -mfcu  "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/ec67/hdl" "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/aed8/hdl" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/08ae/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/ec67/hdl" "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/aed8/hdl" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/ODIN_design/ip/ODIN_design_auto_us_0/sim/ODIN_design_auto_us_0.v" \
"../../../bd/ODIN_design/ip/ODIN_design_auto_us_1/sim/ODIN_design_auto_us_1.v" \
"../../../bd/ODIN_design/ip/ODIN_design_auto_pc_0/sim/ODIN_design_auto_pc_0.v" \
"../../../bd/ODIN_design/ip/ODIN_design_auto_pc_1/sim/ODIN_design_auto_pc_1.v" \
"../../../bd/ODIN_design/sim/ODIN_design.v" \

vlog -work xil_defaultlib \
"glbl.v"

