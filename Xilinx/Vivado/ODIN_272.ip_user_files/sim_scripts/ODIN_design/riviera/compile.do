transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {E:/vivado_projects/ODIN_272/ODIN_272.cache/compile_simlib/riviera}
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_14
vlib riviera/processing_system7_vip_v1_0_16
vlib riviera/xil_defaultlib
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/lib_pkg_v1_0_2
vlib riviera/fifo_generator_v13_2_8
vlib riviera/lib_fifo_v1_0_17
vlib riviera/lib_srl_fifo_v1_0_2
vlib riviera/axi_datamover_v5_1_30
vlib riviera/axi_sg_v4_1_16
vlib riviera/axi_dma_v7_1_29
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_register_slice_v2_1_28
vlib riviera/axi_data_fifo_v2_1_27
vlib riviera/axi_crossbar_v2_1_29
vlib riviera/axi_protocol_converter_v2_1_28
vlib riviera/axi_clock_converter_v2_1_27
vlib riviera/blk_mem_gen_v8_4_6
vlib riviera/axi_dwidth_converter_v2_1_28

vlog -work xilinx_vip  -incr "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l lib_pkg_v1_0_2 -l fifo_generator_v13_2_8 -l lib_fifo_v1_0_17 -l lib_srl_fifo_v1_0_2 -l axi_datamover_v5_1_30 -l axi_sg_v4_1_16 -l axi_dma_v7_1_29 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_protocol_converter_v2_1_28 -l axi_clock_converter_v2_1_27 -l blk_mem_gen_v8_4_6 -l axi_dwidth_converter_v2_1_28 \
"E:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"E:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"E:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"E:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"E:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"E:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"E:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"E:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"E:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/ec67/hdl" "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/aed8/hdl" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l lib_pkg_v1_0_2 -l fifo_generator_v13_2_8 -l lib_fifo_v1_0_17 -l lib_srl_fifo_v1_0_2 -l axi_datamover_v5_1_30 -l axi_sg_v4_1_16 -l axi_dma_v7_1_29 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_protocol_converter_v2_1_28 -l axi_clock_converter_v2_1_27 -l blk_mem_gen_v8_4_6 -l axi_dwidth_converter_v2_1_28 \
"E:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"E:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"E:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -v2k5 "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/ec67/hdl" "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/aed8/hdl" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l lib_pkg_v1_0_2 -l fifo_generator_v13_2_8 -l lib_fifo_v1_0_17 -l lib_srl_fifo_v1_0_2 -l axi_datamover_v5_1_30 -l axi_sg_v4_1_16 -l axi_dma_v7_1_29 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_protocol_converter_v2_1_28 -l axi_clock_converter_v2_1_27 -l blk_mem_gen_v8_4_6 -l axi_dwidth_converter_v2_1_28 \
"../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_14  -incr "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/ec67/hdl" "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/aed8/hdl" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l lib_pkg_v1_0_2 -l fifo_generator_v13_2_8 -l lib_fifo_v1_0_17 -l lib_srl_fifo_v1_0_2 -l axi_datamover_v5_1_30 -l axi_sg_v4_1_16 -l axi_dma_v7_1_29 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_protocol_converter_v2_1_28 -l axi_clock_converter_v2_1_27 -l blk_mem_gen_v8_4_6 -l axi_dwidth_converter_v2_1_28 \
"../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/ed63/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_16  -incr "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/ec67/hdl" "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/aed8/hdl" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l lib_pkg_v1_0_2 -l fifo_generator_v13_2_8 -l lib_fifo_v1_0_17 -l lib_srl_fifo_v1_0_2 -l axi_datamover_v5_1_30 -l axi_sg_v4_1_16 -l axi_dma_v7_1_29 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_protocol_converter_v2_1_28 -l axi_clock_converter_v2_1_27 -l blk_mem_gen_v8_4_6 -l axi_dwidth_converter_v2_1_28 \
"../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/aed8/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/ec67/hdl" "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/aed8/hdl" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l lib_pkg_v1_0_2 -l fifo_generator_v13_2_8 -l lib_fifo_v1_0_17 -l lib_srl_fifo_v1_0_2 -l axi_datamover_v5_1_30 -l axi_sg_v4_1_16 -l axi_dma_v7_1_29 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_protocol_converter_v2_1_28 -l axi_clock_converter_v2_1_27 -l blk_mem_gen_v8_4_6 -l axi_dwidth_converter_v2_1_28 \
"../../../bd/ODIN_design/ip/ODIN_design_processing_system7_0_0/sim/ODIN_design_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93  -incr \
"../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93  -incr \
"../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/ODIN_design/ip/ODIN_design_rst_ps7_0_100M_0/sim/ODIN_design_rst_ps7_0_100M_0.vhd" \

vcom -work lib_pkg_v1_0_2 -93  -incr \
"../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_8  -incr -v2k5 "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/ec67/hdl" "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/aed8/hdl" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l lib_pkg_v1_0_2 -l fifo_generator_v13_2_8 -l lib_fifo_v1_0_17 -l lib_srl_fifo_v1_0_2 -l axi_datamover_v5_1_30 -l axi_sg_v4_1_16 -l axi_dma_v7_1_29 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_protocol_converter_v2_1_28 -l axi_clock_converter_v2_1_27 -l blk_mem_gen_v8_4_6 -l axi_dwidth_converter_v2_1_28 \
"../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/c97d/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_8 -93  -incr \
"../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/c97d/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_8  -incr -v2k5 "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/ec67/hdl" "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/aed8/hdl" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l lib_pkg_v1_0_2 -l fifo_generator_v13_2_8 -l lib_fifo_v1_0_17 -l lib_srl_fifo_v1_0_2 -l axi_datamover_v5_1_30 -l axi_sg_v4_1_16 -l axi_dma_v7_1_29 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_protocol_converter_v2_1_28 -l axi_clock_converter_v2_1_27 -l blk_mem_gen_v8_4_6 -l axi_dwidth_converter_v2_1_28 \
"../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/c97d/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_17 -93  -incr \
"../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/3d41/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93  -incr \
"../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_30 -93  -incr \
"../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/e959/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_16 -93  -incr \
"../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/85d0/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_29 -93  -incr \
"../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/50c3/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/ODIN_design/ip/ODIN_design_axi_dma_0_0/sim/ODIN_design_axi_dma_0_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/ec67/hdl" "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/aed8/hdl" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l lib_pkg_v1_0_2 -l fifo_generator_v13_2_8 -l lib_fifo_v1_0_17 -l lib_srl_fifo_v1_0_2 -l axi_datamover_v5_1_30 -l axi_sg_v4_1_16 -l axi_dma_v7_1_29 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_protocol_converter_v2_1_28 -l axi_clock_converter_v2_1_27 -l blk_mem_gen_v8_4_6 -l axi_dwidth_converter_v2_1_28 \
"../../../bd/ODIN_design/ip/ODIN_design_ODIN_0_0/sim/ODIN_design_ODIN_0_0.v" \
"../../../bd/ODIN_design/ipshared/beb6/hdl/AER_bus_v1_0_M00_AXIS.v" \
"../../../bd/ODIN_design/ipshared/beb6/hdl/AER_bus_v1_0_S00_AXIS.v" \
"../../../bd/ODIN_design/ipshared/beb6/hdl/AER_bus_v1_0.v" \
"../../../bd/ODIN_design/ip/ODIN_design_AER_bus_0_0/sim/ODIN_design_AER_bus_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  -incr -v2k5 "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/ec67/hdl" "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/aed8/hdl" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l lib_pkg_v1_0_2 -l fifo_generator_v13_2_8 -l lib_fifo_v1_0_17 -l lib_srl_fifo_v1_0_2 -l axi_datamover_v5_1_30 -l axi_sg_v4_1_16 -l axi_dma_v7_1_29 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_protocol_converter_v2_1_28 -l axi_clock_converter_v2_1_27 -l blk_mem_gen_v8_4_6 -l axi_dwidth_converter_v2_1_28 \
"../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_28  -incr -v2k5 "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/ec67/hdl" "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/aed8/hdl" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l lib_pkg_v1_0_2 -l fifo_generator_v13_2_8 -l lib_fifo_v1_0_17 -l lib_srl_fifo_v1_0_2 -l axi_datamover_v5_1_30 -l axi_sg_v4_1_16 -l axi_dma_v7_1_29 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_protocol_converter_v2_1_28 -l axi_clock_converter_v2_1_27 -l blk_mem_gen_v8_4_6 -l axi_dwidth_converter_v2_1_28 \
"../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/87d1/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_27  -incr -v2k5 "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/ec67/hdl" "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/aed8/hdl" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l lib_pkg_v1_0_2 -l fifo_generator_v13_2_8 -l lib_fifo_v1_0_17 -l lib_srl_fifo_v1_0_2 -l axi_datamover_v5_1_30 -l axi_sg_v4_1_16 -l axi_dma_v7_1_29 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_protocol_converter_v2_1_28 -l axi_clock_converter_v2_1_27 -l blk_mem_gen_v8_4_6 -l axi_dwidth_converter_v2_1_28 \
"../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/fab7/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_29  -incr -v2k5 "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/ec67/hdl" "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/aed8/hdl" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l lib_pkg_v1_0_2 -l fifo_generator_v13_2_8 -l lib_fifo_v1_0_17 -l lib_srl_fifo_v1_0_2 -l axi_datamover_v5_1_30 -l axi_sg_v4_1_16 -l axi_dma_v7_1_29 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_protocol_converter_v2_1_28 -l axi_clock_converter_v2_1_27 -l blk_mem_gen_v8_4_6 -l axi_dwidth_converter_v2_1_28 \
"../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/f8f3/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/ec67/hdl" "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/aed8/hdl" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l lib_pkg_v1_0_2 -l fifo_generator_v13_2_8 -l lib_fifo_v1_0_17 -l lib_srl_fifo_v1_0_2 -l axi_datamover_v5_1_30 -l axi_sg_v4_1_16 -l axi_dma_v7_1_29 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_protocol_converter_v2_1_28 -l axi_clock_converter_v2_1_27 -l blk_mem_gen_v8_4_6 -l axi_dwidth_converter_v2_1_28 \
"../../../bd/ODIN_design/ip/ODIN_design_xbar_1/sim/ODIN_design_xbar_1.v" \
"../../../bd/ODIN_design/ip/ODIN_design_xbar_2/sim/ODIN_design_xbar_2.v" \
"../../../bd/ODIN_design/ipshared/fbad/src/AXI_SPI_LOADER_v1_0.v" \
"../../../bd/ODIN_design/ipshared/fbad/src/AXI_SPI_LOADER_v1_0_S00_AXI.v" \
"../../../bd/ODIN_design/ip/ODIN_design_AXI_SPI_LOADER_0_0/sim/ODIN_design_AXI_SPI_LOADER_0_0.v" \
"../../../bd/ODIN_design/ip/ODIN_design_SPI_Master_0_0/sim/ODIN_design_SPI_Master_0_0.v" \

vlog -work axi_protocol_converter_v2_1_28  -incr -v2k5 "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/ec67/hdl" "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/aed8/hdl" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l lib_pkg_v1_0_2 -l fifo_generator_v13_2_8 -l lib_fifo_v1_0_17 -l lib_srl_fifo_v1_0_2 -l axi_datamover_v5_1_30 -l axi_sg_v4_1_16 -l axi_dma_v7_1_29 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_protocol_converter_v2_1_28 -l axi_clock_converter_v2_1_27 -l blk_mem_gen_v8_4_6 -l axi_dwidth_converter_v2_1_28 \
"../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/8c02/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_27  -incr -v2k5 "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/ec67/hdl" "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/aed8/hdl" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l lib_pkg_v1_0_2 -l fifo_generator_v13_2_8 -l lib_fifo_v1_0_17 -l lib_srl_fifo_v1_0_2 -l axi_datamover_v5_1_30 -l axi_sg_v4_1_16 -l axi_dma_v7_1_29 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_protocol_converter_v2_1_28 -l axi_clock_converter_v2_1_27 -l blk_mem_gen_v8_4_6 -l axi_dwidth_converter_v2_1_28 \
"../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/29db/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_6  -incr -v2k5 "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/ec67/hdl" "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/aed8/hdl" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l lib_pkg_v1_0_2 -l fifo_generator_v13_2_8 -l lib_fifo_v1_0_17 -l lib_srl_fifo_v1_0_2 -l axi_datamover_v5_1_30 -l axi_sg_v4_1_16 -l axi_dma_v7_1_29 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_protocol_converter_v2_1_28 -l axi_clock_converter_v2_1_27 -l blk_mem_gen_v8_4_6 -l axi_dwidth_converter_v2_1_28 \
"../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/bb55/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_28  -incr -v2k5 "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/ec67/hdl" "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/aed8/hdl" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l lib_pkg_v1_0_2 -l fifo_generator_v13_2_8 -l lib_fifo_v1_0_17 -l lib_srl_fifo_v1_0_2 -l axi_datamover_v5_1_30 -l axi_sg_v4_1_16 -l axi_dma_v7_1_29 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_protocol_converter_v2_1_28 -l axi_clock_converter_v2_1_27 -l blk_mem_gen_v8_4_6 -l axi_dwidth_converter_v2_1_28 \
"../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/08ae/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/ec67/hdl" "+incdir+../../../../ODIN_272.gen/sources_1/bd/ODIN_design/ipshared/aed8/hdl" "+incdir+E:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l lib_pkg_v1_0_2 -l fifo_generator_v13_2_8 -l lib_fifo_v1_0_17 -l lib_srl_fifo_v1_0_2 -l axi_datamover_v5_1_30 -l axi_sg_v4_1_16 -l axi_dma_v7_1_29 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_protocol_converter_v2_1_28 -l axi_clock_converter_v2_1_27 -l blk_mem_gen_v8_4_6 -l axi_dwidth_converter_v2_1_28 \
"../../../bd/ODIN_design/ip/ODIN_design_auto_us_0/sim/ODIN_design_auto_us_0.v" \
"../../../bd/ODIN_design/ip/ODIN_design_auto_us_1/sim/ODIN_design_auto_us_1.v" \
"../../../bd/ODIN_design/ip/ODIN_design_auto_pc_0/sim/ODIN_design_auto_pc_0.v" \
"../../../bd/ODIN_design/ip/ODIN_design_auto_pc_1/sim/ODIN_design_auto_pc_1.v" \
"../../../bd/ODIN_design/sim/ODIN_design.v" \

vlog -work xil_defaultlib \
"glbl.v"

