`timescale 1ns / 1ps

module testbench;

    // Clock and Reset
    reg clk;
    reg rst;

    // SPI Signals
    reg [7:0] mosi_data_i;
    reg [7:0] miso_data_o;
    reg en_i;
    wire data_ready_o;
    wire cs_o;
    wire sclk_o;
    wire mosi_o;
    reg miso_i;

    // Data to be sent to the UUT
    reg [255:0] data_to_send;
    reg start;
    wire busy;
    wire done;
    reg [15:0] data_length;  // Dynamic data length

    // Configuration Data Constants
    localparam [0:0] SPI_GATE_ACTIVITY_DATA = 1'b0;
    localparam [0:0] SPI_OPEN_LOOP_DATA = 1'b1;
    localparam [19:0] SPI_BURST_TIMEREF_DATA = 20'h00000;
    localparam [0:0] SPI_AER_SRC_CTRL_nNEUR_DATA = 1'b0;
    localparam [0:0] SPI_OUT_AER_MONITOR_EN_DATA = 1'b1;
    localparam [7:0] SPI_MONITOR_NEUR_ADDR_DATA = 8'h1A;
    localparam [7:0] SPI_MONITOR_SYN_ADDR_DATA = 8'h1B;
    localparam [0:0] SPI_UPDATE_UNMAPPED_SYN_DATA = 1'b1;
    localparam [0:0] SPI_PROPAGATE_UNMAPPED_SYN_DATA = 1'b0;
    localparam [0:0] SPI_SDSP_ON_SYN_STIM_DATA = 1'b1;
    reg [255:0] spi_syn_sign_data = 'X;

  
    // Instantiate the SPI Master (VHDL Entity)
    spi_master #(
        .c_clkfreq(50_000_000),
        .c_sclkfreq(1_000_000)
    ) spi_master_inst (
        .clk_i(clk),
        .en_i(en_i),
        .mosi_data_i(mosi_data_i),
        .miso_data_o(miso_data_o),
        .data_ready_o(data_ready_o),
        .cs_o(cs_o),
        .sclk_o(sclk_o),
        .mosi_o(mosi_o),
        .miso_i(miso_i)
    );

    // Instantiate the ODIN UUT
    ODIN odin (
        .CLK(clk),
        .RST(rst),
        .MOSI(spi_mosi),
        .MISO(spi_miso),
        .SCK(spi_sck)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #10 clk = ~clk;  // 50MHz Clock
    end

    // Reset generation
    initial begin
        rst = 1'b1;
        #100;
        rst = 1'b0;
    end
    // File I/O for SPI_SYN_SIGN
    // initial begin
    //     $readmemb("spi_control_data.txt", spi_syn_sign_data);
    // end

    // Task to handle register programming with variable data lengths
    task program_register;
        input [15:0] address;
        input [255:0] data;
        input integer data_byte_length;
        integer i;
        begin
            en_i = 1'b1;
            for (i = 0; i < data_byte_length * 8; i = i + 8) begin
                mosi_data_i = data[i +: 8];  // Send data 8 bits at a time
                @(posedge clk);
                wait(data_ready_o);  // Wait for SPI transaction to complete
            end
            en_i = 1'b0;
        end
    endtask



    // Test sequence for programming configuration registers
    initial begin
        en_i = 0;
        #200;  // Wait for reset release

        // Program each register with constants
        program_register(16'h0000, 8'h00, 1);  // SPI_GATE_ACTIVITY
        program_register(16'h0001, 8'hFF, 1);  // SPI_OPEN_LOOP
        program_register(16'h0002, spi_syn_sign_data, 32);  // SPI_SYN_SIGN, data from file
        program_register(16'h0012, 8'h00, 3);  // SPI_BURST_TIMEREF

        #100;  // Wait for all programming to complete
        
        $finish;
    end


endmodule