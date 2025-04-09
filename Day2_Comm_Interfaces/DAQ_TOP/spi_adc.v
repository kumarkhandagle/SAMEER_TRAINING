`timescale 1ns / 1ps

// SPI-based ADC interface module
module spi_adc(
    input  wire        clk,        // System clock
    input  wire        reset_n,    // Active-low reset
    input  wire        sample,     // Sample trigger signal
    input  wire        din1,       // Serial data input from ADC
    output reg         cs_n,       // Active-low chip select
    output reg         sclk,
    output reg         ready,      // Data ready signal
    output reg         done,
    output wire [11:0] adc1_dout  // Parallel output from ADC1
);

// Internal signals
reg  [2:0]  count_clk;              // Clock divider counter
reg  [3:0]  bit_count;              // Counts the number of bits received
reg  [15:0] adc1_data, adc2_data;   // Shift registers for ADC data

assign adc1_dout = (done == 1) ? adc1_data[11:0] : 12'h000;


// State encoding
parameter IDLE   = 2'd0,
          SAMPLE = 2'd1,
          DONE   = 2'd2;

reg [1:0] state, nstate;           // FSM state and next state

// Assign outputs


// Clock divider to generate ~12.5 MHz sclk from system clock
always @(posedge clk) begin
    if (!reset_n) begin
        count_clk <= 0;
        sclk <= 0;
    end else if (count_clk == 3'd4) begin
        count_clk <= 0;
        sclk <= ~sclk;
    end else begin
        count_clk <= count_clk + 1;
    end
end

// Data shifting logic on sclk edge
always @(posedge sclk) begin
    if (!reset_n) begin
        bit_count  <= 0;
        adc1_data  <= 16'h0000;
        adc2_data  <= 16'h0000;
    end else if (state == SAMPLE && bit_count != 4'd15) begin
        bit_count  <= bit_count + 1;
        adc1_data  <= {adc1_data[14:0], din1};  // Shift in new bit from din1
    //    adc2_data  <= {adc2_data[14:0], din2};  // Shift in new bit from din2
    end else begin
        bit_count <= 0;
    end
end

// FSM state update
always @(posedge sclk) begin
    if (!reset_n)
        state <= IDLE;
    else
        state <= nstate;
end

// FSM next state logic
always @(*) begin
    case (state)
        IDLE: begin
            if (sample)
                nstate = SAMPLE;
            else
                nstate = IDLE;
        end

        SAMPLE: begin
            if (bit_count == 4'd15)
                nstate = DONE;
            else
                nstate = SAMPLE;
        end

        DONE: begin
            nstate = IDLE;
        end

        default: begin
            nstate = IDLE;
        end
    endcase
end

// Output logic based on state
always @(*) begin
    case (state)
        IDLE: begin
            cs_n  = 1;   // Chip not selected
            ready = 1;   // Ready for new sample
            done  = 0;
        end

        SAMPLE: begin
            cs_n  = 0;   // Chip selected
            ready = 0;   // Sampling in progress
            done  = 0;
        end

        DONE: begin
            cs_n  = 1;   // Deselect chip
            ready = 1;   // Data not yet consumed
            done  = 1;
        end

        default: begin
            cs_n  = 1;
            ready = 1;
            done  = 0;
        end
    endcase
end


endmodule
