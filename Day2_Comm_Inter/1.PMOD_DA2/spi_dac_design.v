`timescale 1ns / 1ps
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
                   |        spi_dac          |
                   |                         |
    sys_clk ------>| sys_clk                 |
     rst_n  ------>| rst_n                   |
                   |                         |
 dac_in1[11:0] ---->| dac_in1                |
 dac_in2[11:0] ---->| dac_in2                |
     start  ------>| start                   |
                   |                         |
                   |                 mosi1 --|-----> mosi1
                   |                 mosi2 --|-----> mosi2
                   |                  sclk --|-----> sclk
                   |                  cs_n --|-----> cs_n
                   |                 done --|-----> done
                   +-------------------------+
*/




module spi_dac(
    // General usage
    input  wire        sys_clk,       // System Clock (50MHz)
    input  wire        rst_n,

    // Pmod interface signals
    output wire        mosi1,
    output wire        mosi2,
    output wire        sclk,
    output reg         cs_n,

    // User interface signals
    input  wire [11:0] dac_in1,
    input  wire [11:0] dac_in2,
    input  wire        start,
    output reg         done
    );
    

// -----------------------------------------------------------------------------
// Module     : Clock Divider (125 MHz to 12.5 MHz)
// Description: Divides a 125 MHz input clock down to 12.5 MHz output.
//              - Uses a 3-bit counter to count from 0 to 4 (5 cycles).
//              - Toggles clk_12mhz every 5 input cycles.
//              - Final output frequency = 125 MHz / (2 * 5) = 12.5 MHz
// -----------------------------------------------------------------------------

reg [2:0] clk_count;    // 3-bit counter: counts from 0 to 4
reg       clk_12mhz;    // Intermediate 12.5 MHz clock (toggled every 5 cycles)

always @(posedge sys_clk or negedge rst_n) begin
    if (!rst_n) begin
        clk_count  <= 3'd0;
        clk_12mhz  <= 1'b0;
    end else begin
        if (clk_count == 3'd4) begin
            clk_count  <= 3'd0;
            clk_12mhz  <= ~clk_12mhz;  // Toggle every 5 sys_clk cycles
        end else begin
            clk_count  <= clk_count + 1;
        end
    end
end

assign sclk = clk_12mhz;
////////////////////////////

// Declare all required signals
reg  [3:0]  shiftCounter;
reg  [15:0] temp1, temp2;
reg enShiftCounter;




// Sequential logic block: sensitive to positive edge of clk_div
always @(posedge clk_12mhz) begin
    if (!rst_n) begin
        shiftCounter <= 4'b0000;                    
        temp1        <= 16'h0;          
        temp2        <= 16'h0;
        end
    else if (start) begin
        shiftCounter <= 4'b0000;                    // Reset counter
        temp1        <= {4'b0000, dac_in1};           // Concatenate control + DATA1
        temp2        <= {4'b0000, dac_in2};           // Concatenate control + DATA2
    end else if (enShiftCounter) begin
        temp1        <= {temp1[14:0], temp1[15]};   // Circular left shift
        temp2        <= {temp2[14:0], temp2[15]};   // Circular left shift
        shiftCounter <= shiftCounter + 1;
        end
end

// Assign outputs
assign mosi1 = temp1[15];
assign mosi2 = temp2[15];




// Reset Decoder
parameter IDLE       = 2'd0,
          SAMPLE     = 2'd1,
          SHIFT_DATA = 2'd2,
          DONE       = 2'd3;

reg [1:0] state, nstate;

// Sequential logic for state update
always @(posedge clk_12mhz) begin
    if (!rst_n)
        state <= IDLE;
    else
        state <= nstate;
end   

// Combinational logic for next state
always @(*) begin
    case (state)
        IDLE: begin
            if (start)
                nstate = SAMPLE;
            else
                nstate = IDLE;
        end

        SAMPLE: begin
            nstate = SHIFT_DATA;
        end

        SHIFT_DATA: begin
            if (shiftCounter == 4'b1111)
                nstate = DONE;
            else
                nstate = SHIFT_DATA;
        end

        DONE: begin
            nstate = IDLE;
        end

        default: nstate = IDLE;
    endcase
end

/////// output decode
always @(*) begin
    case (state)
        IDLE: begin
            done           = 0;
            cs_n           = 1;
            enShiftCounter = 0;
        end

        SAMPLE: begin
            done           = 0;
            cs_n           = 1;
            enShiftCounter = 0;
        end

        SHIFT_DATA: begin
            done           = 0;
            cs_n           = 0;
            enShiftCounter = 1;
        end

        DONE: begin
            done           = 1;
            cs_n           = 1;
            enShiftCounter = 0;
        end

        default: begin
            done           = 0;
            cs_n           = 1;
            enShiftCounter = 0;
        end
    endcase
end



endmodule
