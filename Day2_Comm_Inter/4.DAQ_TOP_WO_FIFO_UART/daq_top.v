`timescale 1ns / 1ps

//------------------------------------------------------------
// Module: top_daq
// Description: Top-level DAQ module connecting controller,
//              SPI DAC, and SPI ADC
//------------------------------------------------------------

module top_daq (
    input  wire        clk,          // System clock
    input  wire        reset_n,      // Active-low reset
    input  wire        top_start,    // Start signal from user
    input  wire [11:0] top_din,      // 12-bit input to DAC
    output wire [11:0] top_dout,     // 12-bit output from ADC
    output wire        top_done,     // Done flag after one complete cycle
    input  wire        adc_din,      // Serial input from ADC (MISO)
    output wire        dac_cs,       // DAC chip select (active low)
    output wire        dac_sclk,     // DAC serial clock
    output wire        dac_mosi,     // DAC data out (MOSI)
    output wire        adc_sclk,     // ADC serial clock
    output wire        adc_cs        // ADC chip select (active low)
);

    //--------------------------------------------------------
    // Internal signal declarations
    //--------------------------------------------------------
    wire        dac_start;     // Trigger for SPI DAC
    wire [11:0] dac_in;        // Data to be sent to DAC
    wire        dac_done;      // Completion signal from SPI DAC

    wire        adc_start;     // Trigger for SPI ADC
    wire        adc_done;      // Completion signal from SPI ADC
    wire        adc_rdy;       // ADC data ready flag
    wire [11:0] adc_dout;      // Captured parallel ADC output

    //--------------------------------------------------------
    // DAQ Controller Instance
    //--------------------------------------------------------
    daq_cntroller u_daq_cntroller (
        .clk              (clk),
        .reset_n          (reset_n),
        .dac_done         (dac_done),
        .adc_done         (adc_done),
        .start            (top_start),
        .dac_in           (top_din),
        .adc_in           (adc_dout),
        .dac_en_o         (dac_start),
        .data_to_dac_o    (dac_in),
        .adc_en_o         (adc_start),
        .data_from_adc_o  (top_dout),
        .done             (top_done)
    );

    //--------------------------------------------------------
    // SPI DAC Instance
    //--------------------------------------------------------
    spi_dac u_spi_dac (
        .sys_clk   (clk),
        .rst_n     (reset_n),
        .mosi1     (dac_mosi),
        .sclk      (dac_sclk),
        .cs_n      (dac_cs),
        .dac_in1   (dac_in),
        .start     (dac_start),
        .done      (dac_done)
    );

    //--------------------------------------------------------
    // SPI ADC Instance
    //--------------------------------------------------------
    spi_adc u_spi_adc (
        .clk        (clk),
        .reset_n    (reset_n),
        .sample     (adc_start),
        .din1       (adc_din),
        .cs_n       (adc_cs),
        .sclk       (adc_sclk),
        .ready      (adc_rdy),
        .done       (adc_done),
        .adc1_dout  (adc_dout)
    );

endmodule
