//AER TX to ODIN
// 1.0.0: Initial release
module AER_Tx (
    input wire CLK,
    input wire RST,
    input wire AERIN_ACK,
    output wire AERIN_REQ,
    output wire [16:0] AERIN_ADDR
);


reg [7:0] aerin_data_reg;
reg aerin_req_reg;

reg [7:0] neuron_counter;

reg [1:0] state;
parameter IDLE = 0;
parameter WAIT_ACK_HIGH = 3;    
parameter WAIT_ACK_LOW = 1;

assign AERIN_REQ = aerin_req_reg;
assign AERIN_ADDR = {1'b0, neuron_counter, 8'b0000_0111};

always @(posedge CLK)
begin
    if (RST) begin
        aerin_req_reg <= 0;
        state <= IDLE;
        neuron_counter <= 0;
    end else begin
        case (state)
            IDLE: begin
                state <= WAIT_ACK_HIGH;
                aerin_req_reg <= 1;
            end
            WAIT_ACK_HIGH: begin
                if (AERIN_ACK) begin
                    aerin_req_reg <= 0;
                    neuron_counter <= neuron_counter + 1;
                    state <= WAIT_ACK_LOW;
                end
            end
            WAIT_ACK_LOW: begin
                if (!AERIN_ACK) begin
                    state <= IDLE;
                end
            end
        endcase
    end
end

endmodule