# Clock constraint for SPI0_SCLK_O
create_clock -name spi0_sclk_o_clk -period 100.000 -waveform {0.000 50.000} [get_ports SPI0_SCLK_O_0LK_O]

# Generated clock constraint for SPI0_SCLK_O
create_generated_clock -name spi0_sclk_o_gen_clk -source [get_ports SPI0_SCLK_O] -divide_by 1 [get_ports SPI0_SCLK_O_0]