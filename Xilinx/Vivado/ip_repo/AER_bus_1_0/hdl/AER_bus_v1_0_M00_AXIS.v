
`timescale 1 ns / 1 ps

	module AER_bus_v1_0_M00_AXIS #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line

		// Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.
		parameter integer C_M_AXIS_TDATA_WIDTH	= 32,
		// Start count is the number of clock cycles the master will wait before initiating/issuing any transaction.
		parameter integer C_M_START_COUNT	= 32
	)
	(
		// Users to add ports here
       // Add output AER signals
        input wire AEROUT_REQ,
        output wire AEROUT_ACK,
        input  wire [7:0] AEROUT_ADDR,
		// User ports ends
		// Do not modify the ports beyond this line

		// Global ports
		input wire  M_AXIS_ACLK,
		// 
		input wire  M_AXIS_ARESETN,
		// Master Stream Ports. TVALID indicates that the master is driving a valid transfer, A transfer takes place when both TVALID and TREADY are asserted. 
		output wire  M_AXIS_TVALID,
		// TDATA is the primary payload that is used to provide the data that is passing across the interface from the master.
		output wire [C_M_AXIS_TDATA_WIDTH-1 : 0] M_AXIS_TDATA,
		// TSTRB is the byte qualifier that indicates whether the content of the associated byte of TDATA is processed as a data byte or a position byte.
		output wire [(C_M_AXIS_TDATA_WIDTH/8)-1 : 0] M_AXIS_TSTRB,
		// TLAST indicates the boundary of a packet.
		output wire  M_AXIS_TLAST,
		// TREADY indicates that the slave can accept a transfer in the current cycle.
		input wire  M_AXIS_TREADY
	);



reg aerout_ack_reg;
reg m_axis_tvalid_reg;

assign AEROUT_ACK = aerout_ack_reg;
assign M_AXIS_TDATA = {15'b0, AEROUT_ADDR};
assign M_AXIS_TSTRB = {(C_M_AXIS_TDATA_WIDTH/8){1'b1}};
assign M_AXIS_TLAST = 1'b1;

always @(posedge M_AXIS_ACLK) begin
    if (!M_AXIS_ARESETN) begin
        aerout_ack_reg <= 1'b0;
        m_axis_tvalid_reg <= 1'b0;
    end else begin
        if (AEROUT_REQ && !aerout_ack_reg) begin
            aerout_ack_reg <= 1'b1;
            m_axis_tvalid_reg <= 1'b1;
        end else if (aerout_ack_reg && M_AXIS_TREADY) begin
            aerout_ack_reg <= 1'b0;
            m_axis_tvalid_reg <= 1'b0;
        end
    end
end
	// User logic ends

	endmodule
