`timescale 1ns / 1ps

// SPI-based ADC interface module
module spi_adc_with_fifo_wr(
    input  wire        clk,        // System clock
    input  wire        reset_n,    // Active-low reset
    input  wire        sample,     // Sample trigger signal
    input  wire        din1,       // Serial data input from ADC
    output reg         cs_n,       // Active-low chip select
    output reg         sclk,
    output reg         write_to_fifo,      // Data ready signal
    output reg         ready,
    output reg         done,
    output wire [7:0] adc1_dout  // Parallel output from ADC1
);


reg  [3:0]  bit_count;              // Counts the number of bits received
reg  [15:0] adc1_data, adc2_data;   // Shift registers for ADC data

assign adc1_dout = (state == SEND_FIRST_BYTE ) ? adc1_data[7:0] : (state == SEND_SECOND_BYTE)? {4'h0,adc1_data[11:8]} : 12'h0;


// State encoding
parameter IDLE             = 3'd0,
          SAMPLE           = 3'd1,
          READ_DONE        = 3'd3,
          SEND_FIRST_BYTE  = 3'd4,
          SEND_SECOND_BYTE = 3'd5,
          DONE             = 3'd6;

reg [2:0] state, nstate;           // FSM state and next state

// Assign outputs

/*
reg [5:0] count_clk = 0;  // Enough to count till 49          // Output clock (1 MHz)

always @(posedge clk) begin
    if (!reset_n) begin
        count_clk <= 0;
        sclk <= 0;
    end else if (count_clk == 6'd49) begin // 100MHz / 2 / 50 = 1MHz
        count_clk <= 0;
        sclk <= ~sclk;   // Toggle output clock
    end else begin
        count_clk <= count_clk + 1;
    end
end
*/


parameter clk_freq = 100000000;
parameter baud_rate = 115200;   
localparam clkcount = (clk_freq/baud_rate); ///x
  
integer count = 0;

 ///////////uart_clock_gen
always@(posedge clk)
    begin
     if (!reset_n) begin
        count <= 0;
        sclk <= 0;
        end else if(count < clkcount/2)
        count <= count + 1;
        else begin
        count <= 0;
        sclk <= ~sclk;
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
                nstate = READ_DONE;
            else
                nstate = SAMPLE;
        end

        READ_DONE: begin
            nstate = SEND_FIRST_BYTE;
        end
        
        SEND_FIRST_BYTE:begin
            nstate = SEND_SECOND_BYTE;
        end
        
        SEND_SECOND_BYTE:begin
            nstate = DONE;
        end
        
        DONE:begin
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
            write_to_fifo = 0;
            cs_n  = 1;   // Chip not selected
            ready = 1;   // Ready for new sample
            done  = 0;
        end

        SAMPLE: begin
            write_to_fifo = 0;
            cs_n  = 0;   // Chip selected
            ready = 0;   // Sampling in progress
            done  = 0;
        end

        READ_DONE: begin
            write_to_fifo = 0;
            cs_n  = 1;   // Deselect chip
            ready = 0;   // Data not yet consumed
            done  = 0;
        end

       SEND_FIRST_BYTE:begin
            write_to_fifo = 1;
            cs_n  = 1;   // Deselect chip
            ready = 0;   // Data not yet consumed
            done  = 0; 
       end
       
       
      SEND_SECOND_BYTE:begin
            write_to_fifo = 1;
            cs_n  = 1;   // Deselect chip
            ready = 0;   // Data not yet consumed
            done  = 0; 
       end
       
       DONE: begin
            write_to_fifo = 0;
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
