`timescale 1ns / 1ps


module spi_dac(
    // General usage
    input  wire        sys_clk,       // System Clock (50MHz)
    input  wire        rst_n,

    // Pmod interface signals
    output wire        mosi1,
    output reg         sclk,
    output reg         cs_n,

    // User interface signals
    //input  wire [11:0] dac_in1,
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

parameter clk_freq = 100000000;
parameter baud_rate = 115200;   
localparam clkcount = (clk_freq/baud_rate); ///x
  
integer count = 0;

 ///////////uart_clock_gen
always@(posedge sys_clk)
    begin
     if (!rst_n) begin
        count <= 0;
        sclk <= 0;
        end else if(count < clkcount/2)
        count <= count + 1;
        else begin
        count <= 0;
        sclk <= ~sclk;
      end 
end


////////////////////////////

// Declare all required signals
reg  [3:0]  shiftCounter;
reg  [15:0] temp1, temp2;
reg enShiftCounter;




// Sequential logic block: sensitive to positive edge of clk_div
always @(posedge sclk) begin
    if (!rst_n) begin                
        temp1        <= 16'h0;          
        end
    else if (start) begin
        temp1        <= {4'b0000, 12'hfff};  
   //     temp1        <= {4'b0000, dac_in1};           // Concatenate control + DATA1
  //    temp2        <= {4'b0000, dac_in2};           // Concatenate control + DATA2
  end
end

// Assign outputs
assign mosi1 = (state == SHIFT_DATA) ? temp1[15-shiftCounter] : 1'b0;
//assign mosi2 = temp2[15];




// Reset Decoder
parameter IDLE       = 2'd0,
          SAMPLE     = 2'd1,
          SHIFT_DATA = 2'd2,
          DONE       = 2'd3;

reg [1:0] state, nstate;

// Sequential logic for state update
always @(posedge sclk) begin
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

/////counter
always@(posedge sclk)
begin
case(state)
IDLE, SAMPLE, DONE : shiftCounter <= 0;
SHIFT_DATA : shiftCounter <= shiftCounter + 1;
default : shiftCounter <= 0;
endcase
end

endmodule
