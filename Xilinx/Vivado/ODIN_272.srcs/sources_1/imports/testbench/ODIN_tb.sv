`timescale 1ns / 1ps

module ODIN_tb();

  // Parameters for the ODIN top-level module
  parameter N = 256;
  parameter M = 8;

  parameter SPI_GATE_ACTIVITY_ADDR           = 16'h0000;
  parameter SPI_OPEN_LOOP_ADDR               = 16'h0001;
  parameter SPI_SYN_SIGN_BASE_ADDR           = 16'h0002;
  parameter SPI_BURST_TIMEREF_ADDR           = 16'h0012;
  parameter SPI_AER_SRC_CTRL_nNEUR_ADDR      = 16'h0013;
  parameter SPI_OUT_AER_MONITOR_EN_ADDR      = 16'h0014;
  parameter SPI_MONITOR_NEUR_ADDR_ADDR       = 16'h0015;
  parameter SPI_MONITOR_SYN_ADDR_ADDR        = 16'h0016;
  parameter SPI_UPDATE_UNMAPPED_SYN_ADDR     = 16'h0017;
  parameter SPI_PROPAGATE_UNMAPPED_SYN_ADDR  = 16'h0018;
  parameter SPI_SDSP_ON_SYN_STIM_ADDR        = 16'h0019;
    
  // Clocks and Resets
  reg clk = 0;
  reg reset = 1;

  // SPI interface signals
  logic spi_clk, spi_mosi, spi_miso;
  logic [7:0] r_Master_TX_Byte = 0;
  logic r_Master_TX_DV = 1'b0;
  logic w_Master_TX_Ready;
  logic r_Master_RX_DV;
  logic [7:0] r_Master_RX_Byte;

  // Additional ODIN Signals
  logic [M-1:0] aerout_addr;
  logic aerout_req;
  logic aerout_ack = 0;
  logic [2*M:0] aerin_addr = 0;
  logic aerin_req = 0;
  logic aerin_ack;

  logic [31:0] synapse_data [0:8191];
  
  // Address data pair  
  typedef struct packed {
    logic [15:0] addr;
    logic [19:0] data;
  } addr_data_pair_t;

  addr_data_pair_t addr_data_pairs[0:25];

  // Neuron data
  typedef struct packed {
    logic [127:127] neur_disable;
    logic [126:86]  null_space_2;
    logic [85:81]   caleak_cnt;
    logic [80:78]   calcium;
    logic [77:70]   core;
    logic [69:40]   null_space;
    logic [39:35]   ca_leak;
    logic [34:32]   ca_theta3;
    logic [31:29]   ca_theta2;
    logic [28:26]   ca_theta1;
    logic [25:18]   thetamem;
    logic [17:17]   ca_en;
    logic [16:9]    thr;
    logic [8:8]     leak_en;
    logic [7:1]     leak_str;
    logic [0:0]     lif_izh_sel;
  } neuron_data_t;

  neuron_data_t neuron_data [0:255];

  // SPI transaction
  typedef struct packed {
    logic [3:0] config_bits;
    logic [15:0] address;
    logic [19:0] data;
  } spi_transaction_t;

  spi_transaction_t close_spi;

  // Instantiate SPI Master
  SPI_Master #(
    .SPI_MODE(0),          
    .CLKS_PER_HALF_BIT(2) 
  ) spi_master (
    .i_Rst_L(~reset),
    .i_Clk(clk),
    .i_TX_Byte(r_Master_TX_Byte),
    .i_TX_DV(r_Master_TX_DV),
    .o_TX_Ready(w_Master_TX_Ready),
    .o_RX_DV(r_Master_RX_DV),
    .o_RX_Byte(r_Master_RX_Byte),
    .o_SPI_Clk(spi_clk),
    .i_SPI_MISO(spi_miso),
    .o_SPI_MOSI(spi_mosi)
  );

  // Instantiate the ODIN module
  ODIN #(.N(N), .M(M)) odin_inst (
    .CLK(clk),
    .RST(reset),
    .SCK(spi_clk),
    .MOSI(spi_mosi),
    .MISO(spi_miso),
    .AERIN_ADDR(aerin_addr),
    .AERIN_REQ(aerin_req),
    .AERIN_ACK(aerin_ack),
    .AEROUT_ADDR(aerout_addr),
    .AEROUT_REQ(aerout_req),
    .AEROUT_ACK(aerout_ack)
  );

  // Clock generation
  always #5 clk = !clk;

  // Reset sequence
  initial begin
    reset = 1;
    #100;
    reset = 0;
    #50;
  end

  // Sends a single byte from master
  task SendSingleByte(input [7:0] data);
    @(posedge clk);
    r_Master_TX_Byte <= data;
    r_Master_TX_DV   <= 1'b1;
    @(posedge clk);
    r_Master_TX_DV <= 1'b0;
    @(posedge w_Master_TX_Ready);
  endtask
  
  logic [39:0] rx_data;
  // Sends an SPI transaction
  task automatic send_spi_transaction(spi_transaction_t transaction);
    for (int i = 4; i >= 0; i--) begin
      SendSingleByte(transaction[i*8 +: 8]);
      rx_data[i*8 +: 8] = r_Master_RX_Byte;
    end
 endtask



  task automatic read_neuron_data();
    reg [19:0] spi_address;
    reg [19:0] spi_data;
    reg [7:0] expected_data;
    integer neuron, neu_byte;
    logic [31:0] display_value; //Fixing a testbench error? Won't display value unless I do this.
    for (neuron = 0; neuron < 256; neuron = neuron + 1) begin
      for (neu_byte = 0; neu_byte < 16; neu_byte = neu_byte + 1) begin
        spi_address = {4'b1001, 4'b0, neu_byte[3:0], neuron[7:0]};
        spi_data = 20'd0;
        send_spi_transaction({spi_address, spi_data});
      end
      display_value = neuron;
      $display("Finished reading neuron %d, orignally written (not read), %h", display_value, neuron_data[neuron]);
    end
  endtask



  // Loads neuron data into memory
  task automatic load_neuron_data_into_memory(neuron_data_t neuron_data[256]);
    reg [19:0] spi_address;
    reg [19:0] spi_data;
    integer neuron, neu_byte;
    logic [31:0] display_value; //Fixing a testbench error? Won't display value unless I do this.
    for (neuron = 0; neuron < 256; neuron = neuron + 1) begin
      for (neu_byte = 0; neu_byte < 16; neu_byte = neu_byte + 1) begin
        spi_address = {4'b0101, 4'b0, neu_byte[3:0], neuron[7:0]};
        spi_data = {4'b0, 8'h00, neuron_data[neuron][(8*(neu_byte+1)-1) -: 8]};
        send_spi_transaction({spi_address, spi_data});
      end
      display_value = neuron;
      $display("Finished programming neuron %d with %h", display_value, neuron_data[neuron]);
    end
  endtask

  // Loads synapse data into memory
  task automatic load_synapse_data_into_memory(input logic [31:0] synapse_data[8192]);
    reg [19:0] spi_address;
    reg [19:0] spi_data;
    integer synapse, syn_byte;
    logic [31:0] display_value; //Fixing a testbench error? Won't display value unless I do this.
    
    for (synapse = 0; synapse < 8192; synapse++) begin
      for (syn_byte = 0; syn_byte < 4; syn_byte++) begin
        spi_address = {4'b0110, 1'b0, syn_byte[1:0], synapse[12:0]};
        spi_data = {4'b0, 8'h00, synapse_data[synapse][(8*(syn_byte+1)-1) -: 8]};
        send_spi_transaction({spi_address, spi_data});
      end
      display_value = synapse;
      $display("Finished programming synapse %d with %h", display_value, synapse_data[synapse]);
    end
  endtask

  // Configures registers
  task automatic config_registers(addr_data_pair_t addr_data_pairs[]);
    reg [19:0] spi_address;
    reg [19:0] spi_data;
    integer i;

    for (i = 0; i < addr_data_pairs.size(); i = i + 1) begin
      spi_address = {4'b0000, addr_data_pairs[i].addr};
      spi_data = {addr_data_pairs[i].data};
      send_spi_transaction({spi_address, spi_data});
      $display("Configured register at address %h with %h", addr_data_pairs[i].addr, addr_data_pairs[i].data);
    end
  endtask

  // Initialize addr_data_pairs
  initial begin
    addr_data_pairs[0].addr = SPI_GATE_ACTIVITY_ADDR;
    addr_data_pairs[0].data = 20'h00001;

    addr_data_pairs[1].addr = SPI_OPEN_LOOP_ADDR;
    addr_data_pairs[1].data = 20'h00000;

    for (int i = 0; i < 16; i++) begin
      addr_data_pairs[i+2].addr = SPI_SYN_SIGN_BASE_ADDR + i;
      addr_data_pairs[i+2].data = 20'hFAAAA;
    end

    addr_data_pairs[18].addr = SPI_BURST_TIMEREF_ADDR;
    addr_data_pairs[18].data = 20'h00000;

    addr_data_pairs[19].addr = SPI_AER_SRC_CTRL_nNEUR_ADDR;
    addr_data_pairs[19].data = 20'h00000;

    addr_data_pairs[20].addr = SPI_OUT_AER_MONITOR_EN_ADDR;
    addr_data_pairs[20].data = 20'h00000;

    addr_data_pairs[21].addr = SPI_MONITOR_NEUR_ADDR_ADDR;
    addr_data_pairs[21].data = 20'h00000;

    addr_data_pairs[22].addr = SPI_MONITOR_SYN_ADDR_ADDR;
    addr_data_pairs[22].data = 20'h00000;

    addr_data_pairs[23].addr = SPI_UPDATE_UNMAPPED_SYN_ADDR;
    addr_data_pairs[23].data = 20'h00000;

    addr_data_pairs[24].addr = SPI_PROPAGATE_UNMAPPED_SYN_ADDR;
    addr_data_pairs[24].data = 20'h00000;

    addr_data_pairs[25].addr = SPI_SDSP_ON_SYN_STIM_ADDR;
    addr_data_pairs[25].data = 20'h00001;
  end

  // Initialize close_spi
  initial begin
    close_spi.config_bits = 4'h0;
    close_spi.address = 16'h0000;
    close_spi.data = 20'h00000;      
  end

  // Read neuron and synapse data from files
  initial begin
    logic [127:0] data_line;
    integer file, file_2;
    integer line_num;
    string neur_file_path = "Neur_Mem.txt";
    string syn_file_path = "Syn_Mem_Empty.txt";

    // Read neuron data
    file = $fopen(neur_file_path, "r");
    if (file == 0) begin
      $display("Error: Unable to open file %s", neur_file_path);
      $finish;
    end

    line_num = 0;
    while (!$feof(file) && line_num < 256) begin
      $fscanf(file, "%b\n", data_line);
      neuron_data[line_num].null_space = '0;
      neuron_data[line_num].null_space_2 = '0;
      neuron_data[line_num].lif_izh_sel = data_line[0];
      neuron_data[line_num].leak_str = data_line[7:1];
      neuron_data[line_num].leak_en = data_line[8];
      neuron_data[line_num].thr = data_line[16:9];
      neuron_data[line_num].ca_en = data_line[17];
      neuron_data[line_num].thetamem = data_line[25:18];
      neuron_data[line_num].ca_theta1 = data_line[28:26];
      neuron_data[line_num].ca_theta2 = data_line[31:29];
      neuron_data[line_num].ca_theta3 = data_line[34:32];
      neuron_data[line_num].ca_leak = data_line[39:35];
      neuron_data[line_num].core = data_line[77:70];
      neuron_data[line_num].calcium = data_line[80:78];
      neuron_data[line_num].caleak_cnt = data_line[85:81];
      neuron_data[line_num].neur_disable = data_line[127];
      line_num = line_num + 1;
    end
    $fclose(file);

    // Read synapse data
    file_2 = $fopen(syn_file_path, "r");
    if (file_2 == 0) begin
      $display("Error: Unable to open file %s", syn_file_path);
      $finish;
    end
    line_num = 0;
    while (!$feof(file_2) && line_num < 8192) begin
      $fscanf(file_2, "%b\n", data_line);
      synapse_data[line_num] = data_line;
      line_num = line_num + 1;
    end
    $fclose(file_2);
  end
  
 always @(posedge clk) begin
  if (reset) begin
    aerout_ack <= 0;
  end else begin
    aerout_ack <= aerout_req;
  end
  end
  // Test sequence
  initial begin
    @(negedge reset);
    #100;

    config_registers(addr_data_pairs);
    $display("Done configuring registers");

    load_neuron_data_into_memory(neuron_data);
    $display("Done loading neurons");

    load_synapse_data_into_memory(synapse_data);
    $display("Done loading synapses");



    read_neuron_data;
    $display("Done loading neurons");
    
    
    send_spi_transaction(close_spi);
    $display("SPI closed");
    
    aerin_addr = 17'b0_0000_0000_0000_0111;
    aerin_req = 1'b1;
    @(posedge aerin_ack);
    aerin_req = 1'b0;
    @(negedge aerin_ack);
    
    aerin_addr = 17'b0_0000_0001_0000_0111;
    aerin_req = 1'b1;
    @(posedge aerin_ack);
    aerin_req = 1'b0;
    @(negedge aerin_ack);
    
    aerin_addr = 17'b0_0000_0010_0000_0111;
    aerin_req = 1'b1;
    @(posedge aerin_ack);
    aerin_req = 1'b0;
    @(negedge aerin_ack);
    
    aerin_addr = 17'b0_0000_0011_0000_0111;
    aerin_req = 1'b1;
    @(posedge aerin_ack);
    aerin_req = 1'b0;
    @(negedge aerin_ack);
    
    #200;
    $stop;
  end

endmodule