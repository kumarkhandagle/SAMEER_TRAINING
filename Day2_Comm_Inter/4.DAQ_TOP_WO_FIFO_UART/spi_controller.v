`timescale 1ns / 1ps


module daq_cntroller(
input wire         clk, reset_n,
input wire         dac_done, adc_done,
input wire         start,
input [11:0]       dac_in,
input wire [11:0]  adc_in,
output wire        dac_en_o,
output wire [11:0] data_to_dac_o,
output wire        adc_en_o,
output wire [11:0] data_from_adc_o,
output reg         done
);

assign dac_en_o        = dac_en;
assign adc_en_o        = adc_en;
assign data_to_dac_o   = data_to_dac;
assign data_from_adc_o = data_from_adc;



reg [11:0] data_to_dac;
reg        dac_en;
reg        adc_en;
reg [11:0] data_from_adc;

parameter IDLE = 0,
          SAMPLE_DATA = 1,
          ENABLE_DAC  = 2,
          ENABLE_ADC  = 3,
          DONE        = 4;

reg [2:0] state,nstate;

/////reset decoder
always@(posedge clk)
begin
if(!reset_n)
state <= IDLE;
else
state <= nstate;
end

////next state decoder

always@(*)
begin
case(state)
IDLE: begin
if(start)
nstate = SAMPLE_DATA;
else
nstate = IDLE;
end

SAMPLE_DATA:begin
nstate = ENABLE_DAC;
end

ENABLE_DAC:begin
if(dac_done)
nstate = ENABLE_ADC;
else
nstate = ENABLE_DAC;
end

ENABLE_ADC:begin
if(adc_done)
nstate = DONE;
else
nstate = ENABLE_ADC;
end

DONE:begin
nstate = IDLE;
end

default : nstate = IDLE;
endcase
end

///output decoder
always@(*) begin
case(state)
IDLE:begin
dac_en = 1'b0;
data_to_dac = 12'h0;
adc_en = 0;
data_from_adc = 0;
done = 1'b0; 
end

SAMPLE_DATA:begin
data_to_dac = dac_in;
dac_en = 1'b0;
adc_en = 0;
data_from_adc = 0;
done = 1'b0;
end


ENABLE_DAC:begin
dac_en  = 1'b1;
adc_en  = 1'b0;
data_from_adc = 0;
done = 1'b0;
end

ENABLE_ADC:begin
dac_en = 1'b0;
data_to_dac = 12'h0;
adc_en = 1'b1;
data_from_adc = 0;
done = 1'b0;
if(adc_done)
data_from_adc = adc_in;
end

DONE:begin
dac_en = 1'b0;
adc_en = 1'b0;
done = 1'b1;
end

default:begin
dac_en = 1'b0;
data_to_dac = 12'h0;
adc_en = 1'b0;
data_from_adc = 12'h0;
done = 1'b0;
end
endcase
end

endmodule
