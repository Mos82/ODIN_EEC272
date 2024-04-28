`timescale 1 ns / 1 ps

module AER_bus_v1_0_S00_AXIS #
(
    // Users to add parameters here

    // User parameters ends
    // Do not modify the parameters beyond this line

    // AXI4Stream sink: Data Width
    parameter integer C_S_AXIS_TDATA_WIDTH = 32
)
(
    // Users to add ports here
    // Add input AER signals
    output wire AERIN_REQ,
    input wire AERIN_ACK,
    output wire [16:0] AERIN_ADDR,
    // User ports ends
    // Do not modify the ports beyond this line

    // AXI4Stream sink: Clock
    input wire S_AXIS_ACLK,
    // AXI4Stream sink: Reset
    input wire S_AXIS_ARESETN,
    // Ready to accept data in
    output wire S_AXIS_TREADY,
    // Data in
    input wire [C_S_AXIS_TDATA_WIDTH-1 : 0] S_AXIS_TDATA,
    // Byte qualifier
    input wire [(C_S_AXIS_TDATA_WIDTH/8)-1 : 0] S_AXIS_TSTRB,
    // Indicates boundary of last packet
    input wire S_AXIS_TLAST,
    // Data is in valid
    input wire S_AXIS_TVALID
);

    // Add user logic here
    reg aerin_req_reg;
    reg [16:0] aerin_addr_reg;
    reg t_ready;

    assign AERIN_REQ = aerin_req_reg;
    assign AERIN_ADDR = aerin_addr_reg;
    assign S_AXIS_TREADY = t_ready;

    always @(posedge S_AXIS_ACLK) begin
        if (!S_AXIS_ARESETN) begin
            aerin_req_reg <= 1'b0;
            aerin_addr_reg <= 17'b0;
            t_ready <= 1'b1; // Set t_ready to 1 when reset is active
        end else begin
            if (AERIN_ACK) begin
                aerin_req_reg <= 1'b0;
            end
            if (S_AXIS_TVALID && t_ready) begin
                t_ready <= 1'b0;
                aerin_req_reg <= 1'b1;
                aerin_addr_reg <= S_AXIS_TDATA[16:0];
            end else if (!AERIN_ACK && !aerin_req_reg) begin
                t_ready <= 1'b1;
            end
        end
    end

endmodule