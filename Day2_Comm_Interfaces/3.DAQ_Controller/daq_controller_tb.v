`timescale 1ns / 1ps

module tb_daq_controller;

  //-------------------------------------------------------
  // Inputs
  //-------------------------------------------------------
  reg         clk;
  reg         reset_n;
  reg         dac_done;
  reg         adc_done;
  reg         start;
  reg [11:0]  dac_in;
  reg [11:0]  adc_in;

  //-------------------------------------------------------
  // Outputs
  //-------------------------------------------------------
  wire        dac_en_o;
  wire [11:0] data_to_dac_o;
  wire        adc_en_o;
  wire [11:0] data_from_adc_o;
  wire        done;

  //-------------------------------------------------------
  // DUT Instantiation
  //-------------------------------------------------------
  daq_cntroller uut (
    .clk              (clk),
    .reset_n          (reset_n),
    .dac_done         (dac_done),
    .adc_done         (adc_done),
    .start            (start),
    .dac_in           (dac_in),
    .adc_in           (adc_in),
    .dac_en_o         (dac_en_o),
    .data_to_dac_o    (data_to_dac_o),
    .adc_en_o         (adc_en_o),
    .data_from_adc_o  (data_from_adc_o),
    .done             (done)
  );

  //-------------------------------------------------------
  // Clock Generation: 100 MHz (10 ns period)
  //-------------------------------------------------------
  always #5 clk = ~clk;

  //-------------------------------------------------------
  // Test Sequence
  //-------------------------------------------------------
  initial begin
    // Initialize signals
    clk        = 0;
    reset_n    = 0;
    start      = 0;
    dac_done   = 0;
    adc_done   = 0;
    dac_in     = 12'hABC;
    adc_in     = 12'h789;

    // Apply reset for 5 clock cycles
    repeat(5) @(posedge clk);
    reset_n = 1;

    // Wait one cycle before start
    @(posedge clk);
    start = 1;
    @(posedge clk);
    start = 0;  // One cycle pulse

    // Wait for DAC to be enabled, simulate DAC done
    repeat(16) @(posedge clk);  // Wait arbitrarily before asserting
    dac_done = 1;
    @(posedge clk);
    dac_done = 0;

    // Wait for ADC to be enabled, simulate ADC done
    repeat(16) @(posedge clk);  // Again arbitrary delay
    adc_done = 1;
    @(posedge clk);
    adc_done = 0;

    // Wait for completion
    wait (done == 1);
    @(posedge clk);  // Give 1 more cycle for safe display

    // Display result
    $display("Simulation complete.");
    $display("Input to DAC     : %h", dac_in);
    $display("Output from ADC  : %h", data_from_adc_o);

    $stop;
  end

endmodule
