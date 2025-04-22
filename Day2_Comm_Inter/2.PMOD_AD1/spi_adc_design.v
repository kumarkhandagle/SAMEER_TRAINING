//////////////////////////////////////////////////////////////////////////////////
/*
Copyright (c) 2025 Namaste FPGA Technologies

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
*/ 
///////////////////////////////////////////////////////////////////////////////////

/*

                    +-------------------------+
                    |         spi_adc         |
                    |                         |
       clk -------->| clk                     |
    reset_n -------->| reset_n                |
     sample -------->| sample                 |
                    |                         |
     din1  -------->| din1                    |
     din2  -------->| din2                    |
                    |                         |
                    |                 cs_n -->|--------> cs_n
                    |                 sclk -->|--------> sclk
                    |                ready -->|--------> ready
                    |                 done -->|--------> done
                    |             adc1_dout -->|----> adc1_dout[11:0]
                    +-------------------------+

Description:
- `spi_adc` is an SPI interface module designed to communicate with two ADC devices.
- It takes in a sampling trigger and serial data from both ADCs and outputs the parallel value from ADC1.
- The module handles SPI protocol signals (SCLK, CS) and generates data ready/done indicators.
- Text-based simulation I/O logs ADC outputs into a file.

*/

`timescale 1ns / 1ps

module spi_adc(
    input  wire        clk,        // System clock
    input  wire        reset_n,    // Active-low reset
    input  wire        sample,     // Sample trigger signal
    input  wire        din1,       // Serial data input from ADC1
    input  wire        din2,       // Serial data input from ADC2
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
    end else if (state == SAMPLE) begin
        bit_count  <= bit_count + 1;
        adc1_data  <= {adc1_data[14:0], din1};  // Shift in new bit from din1
        adc2_data  <= {adc2_data[14:0], din2};  // Shift in new bit from din2
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