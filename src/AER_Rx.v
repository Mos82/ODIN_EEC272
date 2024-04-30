module AER_Rx (
    input wire CLK,
    input wire RST,
    input wire AEROUT_REQ,
    input wire [7:0] AEROUT_ADDR,
    output reg AEROUT_ACK
);

reg [7:0] received_data;
reg [1:0] state;


//parameter IDLE = 0;
parameter WAIT_REQ_HIGH = 1;
parameter WAIT_REQ_LOW = 2;

always @(posedge CLK) begin
    if (RST) begin
        AEROUT_ACK <= 0;
        state <= WAIT_REQ_HIGH;
        received_data <= 0;
    end else begin
        case (state)
            WAIT_REQ_HIGH: begin
                if (AEROUT_REQ) begin
                    state <= WAIT_REQ_LOW;
                    AEROUT_ACK <= 1;
                    received_data <= AEROUT_ADDR;
                end
            end
            WAIT_REQ_LOW: begin
                if (!AEROUT_REQ) begin
                    AEROUT_ACK <= 0;
                    state <= WAIT_REQ_HIGH;
                end
            end
        endcase
    end
end

endmodule