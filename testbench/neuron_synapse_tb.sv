`timescale 1ps/1ps
module neuron_synapse_tb;

    parameter N = 256;
    parameter M = 8;
    integer i, k, l, m;
    logic CLK;
    logic RSTN_syncn, SPI_GATE_ACTIVITY_sync, SPI_UPDATE_UNMAPPED_SYN, SPI_PROPAGATE_UNMAPPED_SYN;

    //Synaptic_core singals
    logic [  N-1:0] SPI_SYN_SIGN;
    logic [    7:0] CTRL_PRE_EN;
    logic           CTRL_BIST_REF;
    logic           CTRL_SYNARRAY_WE;
    logic [   12:0] CTRL_SYNARRAY_ADDR;
    logic           CTRL_SYNARRAY_CS;
    logic [2*M-1:0] CTRL_PROG_DATA;
    logic [2*M-1:0] CTRL_SPI_ADDR;
    logic [  N-1:0] NEUR_V_UP;
    logic [  N-1:0] NEUR_V_DOWN;
    logic [   31:0] SYNARRAY_RDATA;
    logic [   31:0] SYNARRAY_WDATA;
    logic           SYN_SIGN;
    //Neuron_core singals
    logic                 CTRL_NEUR_EVENT;
    logic                 CTRL_NEUR_TREF;
    logic [          4:0] CTRL_NEUR_VIRTS;
    logic                 CTRL_NEURMEM_CS;
    logic                 CTRL_NEURMEM_WE;
    logic [        M-1:0] CTRL_NEURMEM_ADDR;
    logic                 CTRL_NEUR_BURST_END;
    logic [         14:0] NEUR_STATE_MONITOR;
    logic [        127:0] NEUR_STATE;
    logic [          6:0] NEUR_EVENT_OUT;

    //AERIN
    logic [16:0] AERIN_ADDR;
    logic AERIN_REQ, AERIN_ACK;

    //Memory 
    logic comparison;
    logic [127:0] Neur_Mem[255:0];
    logic [31:0]  Syn_Mem[8191:0];
    logic [255:0]  Sign;
    logic [7:0] data_syn;
    logic [7:0] data_neur;
    logic done, start;

    
synaptic_core #(
        .N(N),
        .M(M)
    ) synaptic_core_0 (
    
        // Global inputs ------------------------------------------
        .RSTN_syncn(RSTN_syncn),
        .CLK(CLK),

        // Inputs from SPI configuration registers ----------------
        .SPI_GATE_ACTIVITY_sync(SPI_GATE_ACTIVITY_sync),
        .SPI_SYN_SIGN(SPI_SYN_SIGN),
        .SPI_UPDATE_UNMAPPED_SYN(SPI_UPDATE_UNMAPPED_SYN),
        
        // Inputs from controller ---------------------------------
        .CTRL_PRE_EN(CTRL_PRE_EN),
        .CTRL_BIST_REF(CTRL_BIST_REF),
        .CTRL_SYNARRAY_WE(CTRL_SYNARRAY_WE),
        .CTRL_SYNARRAY_ADDR(CTRL_SYNARRAY_ADDR),
        .CTRL_SYNARRAY_CS(CTRL_SYNARRAY_CS),
        .CTRL_PROG_DATA(CTRL_PROG_DATA),
        .CTRL_SPI_ADDR(CTRL_SPI_ADDR),
        
        // Inputs from neurons ------------------------------------
        .NEUR_V_UP(NEUR_V_UP),
        .NEUR_V_DOWN(NEUR_V_DOWN),
        
        // Outputs ------------------------------------------------
        .SYNARRAY_RDATA(SYNARRAY_RDATA),
        .SYNARRAY_WDATA(SYNARRAY_WDATA),
        .SYN_SIGN(SYN_SIGN)
	);

neuron_core #(
        .N(N),
        .M(M)
    ) neuron_core_0 (
    
        // Global inputs ------------------------------------------
        .RSTN_syncn(RSTN_syncn),
        .CLK(CLK),
        
        // Inputs from SPI configuration registers ----------------
        .SPI_GATE_ACTIVITY_sync(SPI_GATE_ACTIVITY_sync),
        .SPI_PROPAGATE_UNMAPPED_SYN(SPI_PROPAGATE_UNMAPPED_SYN),
		
        // Synaptic inputs ----------------------------------------
        .SYNARRAY_RDATA(SYNARRAY_RDATA),
        .SYN_SIGN(SYN_SIGN),
        
        // Inputs from controller ---------------------------------
        .CTRL_NEUR_EVENT(CTRL_NEUR_EVENT),
        .CTRL_NEUR_TREF(CTRL_NEUR_TREF),
        .CTRL_NEUR_VIRTS(CTRL_NEUR_VIRTS),
        .CTRL_NEURMEM_WE(CTRL_NEURMEM_WE),
        .CTRL_NEURMEM_ADDR(CTRL_NEURMEM_ADDR),
        .CTRL_NEURMEM_CS(CTRL_NEURMEM_CS),
        .CTRL_PROG_DATA(CTRL_PROG_DATA),
        .CTRL_SPI_ADDR(CTRL_SPI_ADDR),
        
        // Inputs from scheduler ----------------------------------
        .CTRL_NEUR_BURST_END(CTRL_NEUR_BURST_END), 
        
        // Outputs ------------------------------------------------
        .NEUR_STATE(NEUR_STATE),
        .NEUR_EVENT_OUT(NEUR_EVENT_OUT),
        .NEUR_V_UP(NEUR_V_UP),
        .NEUR_V_DOWN(NEUR_V_DOWN),
        .NEUR_STATE_MONITOR(NEUR_STATE_MONITOR)
    );


    always begin
        #5 CLK = ~CLK; 
    end

initial begin
    CLK = 0;
    RSTN_syncn = 1;
    done = 1'b0;
    start = 1'b0;

    CTRL_SYNARRAY_WE = 1; 
    CTRL_SYNARRAY_CS = 1; 
    CTRL_NEURMEM_WE = 1;
    CTRL_NEURMEM_CS = 1;
    CTRL_SPI_ADDR = 16'b0;
    CTRL_NEURMEM_ADDR = 8'b0;

    #10 RSTN_syncn = 0;

    SPI_GATE_ACTIVITY_sync = 1'b1;
    SPI_SYN_SIGN = {256{1'b0}};
    SPI_UPDATE_UNMAPPED_SYN = 1'b0;
    CTRL_PRE_EN = 8'b0;
    CTRL_BIST_REF = 1'b0;

    
    SPI_PROPAGATE_UNMAPPED_SYN = 1'b1;
    CTRL_NEUR_VIRTS = 5'b0;
    CTRL_NEUR_TREF = 1'b0;

    //Open Mem Files
    $readmemb("Neur_Mem.txt",Neur_Mem);
	$readmemb("Syn_Mem.txt",Syn_Mem);
    //$readmemb("Sign.txt",Sign);
    data_neur = 8'b0;
    data_syn = 8'b0;
    // Initialize Synaptic_core SRAM
    for (i = 0; i < 8192; i=i+1) begin
        
        CTRL_SYNARRAY_ADDR = i;
        for (k = 0; k < 4; k = k + 1) begin
        CTRL_SPI_ADDR[14:13] = k; 
        data_syn = Syn_Mem[i] >> (k * 8);
        CTRL_PROG_DATA = {8'b0, data_syn};
        #20;
        end
         #10;
    end
        CTRL_SYNARRAY_WE = 0; 

    //Initialize Neuron_core SRAM
    for (l = 0; l < 256; l=l+1) begin
        
        CTRL_NEURMEM_ADDR = l;
        for (m = 0; m < 16; m = m + 1) begin
            CTRL_SPI_ADDR[11:8] = m;
            data_neur = Neur_Mem[l] >> (m * 8);
            CTRL_PROG_DATA = {8'b0, data_neur};
            #20;
        end
        #10;
    end
    done = 1'b1;
    CTRL_NEURMEM_WE = 0;
    SPI_GATE_ACTIVITY_sync = 1'b0;
    
    #10;
    CTRL_SYNARRAY_ADDR = 13'b 0000_0010_0000_1;
    CTRL_NEURMEM_ADDR =  8'b 0000_1000;
    CTRL_NEUR_EVENT = 1'b1;
    #10;
    CTRL_NEURMEM_WE = 1;
    CTRL_SYNARRAY_WE = 1;
    #10;
    CTRL_NEUR_EVENT = 1'b0;
    CTRL_NEURMEM_WE = 0;
    CTRL_SYNARRAY_WE = 0;
    #10;
    CTRL_NEUR_EVENT = 1'b1;
    CTRL_SYNARRAY_ADDR = 13'b 0000_0100_0000_1;
    CTRL_NEURMEM_ADDR =  8'b 0000_1000;
    #10;
    CTRL_NEURMEM_WE = 1;
    CTRL_SYNARRAY_WE = 1;
    #10;

end
    


endmodule
