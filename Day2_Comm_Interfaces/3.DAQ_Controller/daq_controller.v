`timescale 1ns / 1ps

//--------------------------------------------------------
// DAQ Controller Module
// Handles DAC and ADC sequencing using FSM
//--------------------------------------------------------

module daq_cntroller (
    input  wire         clk,
    input  wire         reset_n,
    input  wire         dac_done,
    input  wire         adc_done,
    input  wire         start,
    input  wire [11:0]  dac_in,
    input  wire [11:0]  adc_in,
    output wire         dac_en_o,
    output wire [11:0]  data_to_dac_o,
    output wire         adc_en_o,
    output wire [11:0]  data_from_adc_o,
    output reg          done
);

//--------------------------------------------------------
// Internal signals and assignments to outputs
//--------------------------------------------------------
reg [11:0] data_to_dac;
reg        dac_en;
reg        adc_en;
reg [11:0] data_from_adc;

assign dac_en_o        = dac_en;
assign adc_en_o        = adc_en;
assign data_to_dac_o   = data_to_dac;
assign data_from_adc_o = data_from_adc;

//--------------------------------------------------------
// State Encoding
//--------------------------------------------------------
parameter IDLE        = 3'd0,
          SAMPLE_DATA = 3'd1,
          ENABLE_DAC  = 3'd2,
          ENABLE_ADC  = 3'd3,
          DONE        = 3'd4;

reg [2:0] state, nstate;

//--------------------------------------------------------
// State Register (Synchronous Reset)
//--------------------------------------------------------
always @(posedge clk) begin
    if (!reset_n)
        state <= IDLE;
    else
        state <= nstate;
end

//--------------------------------------------------------
// Next State Logic (Combinational)
//--------------------------------------------------------
always @(*) begin
    case (state)
        IDLE: begin
            if (start)
                nstate = SAMPLE_DATA;
            else
                nstate = IDLE;
        end

        SAMPLE_DATA: begin
            nstate = ENABLE_DAC;
        end

        ENABLE_DAC: begin
            if (dac_done)
                nstate = ENABLE_ADC;
            else
                nstate = ENABLE_DAC;
        end

        ENABLE_ADC: begin
            if (adc_done)
                nstate = DONE;
            else
                nstate = ENABLE_ADC;
        end

        DONE: begin
            nstate = IDLE;
        end

        default: nstate = IDLE;
    endcase
end

//--------------------------------------------------------
// Output Logic (Combinational)
//--------------------------------------------------------
always @(*) begin
    // Default values
    dac_en        = 1'b0;
    adc_en        = 1'b0;
    data_to_dac   = 12'h0;
    data_from_adc = 12'h0;
    done          = 1'b0;

    case (state)
        IDLE: begin
            // Wait for start
        end

        SAMPLE_DATA: begin
            // Latch input to DAC
            data_to_dac = dac_in;
        end

        ENABLE_DAC: begin
            // Enable DAC
            dac_en = 1'b1;
        end

        ENABLE_ADC: begin
            // Enable ADC
            adc_en = 1'b1;
            if (adc_done)
                data_from_adc = adc_in;
        end

        DONE: begin
            // Signal done
            done = 1'b1;
        end
    endcase
end

endmodule
