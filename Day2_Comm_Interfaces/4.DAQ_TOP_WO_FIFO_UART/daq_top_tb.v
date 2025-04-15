`timescale 1ns / 1ps

module tb_top_daq;

  //-------------------------------------------------------
  // Testbench Signals
  //-------------------------------------------------------
  reg         clk;
  reg         reset_n;
  reg         top_start;
  reg  [11:0] top_din;
  wire [11:0] top_dout;
  wire        top_done;

  // SPI Interface
  reg         adc_din;
  wire        dac_cs, dac_sclk, dac_mosi;
  wire        adc_cs, adc_sclk;

  //-------------------------------------------------------
  // Instantiate DUT
  //-------------------------------------------------------
  top_daq uut (
    .clk        (clk),
    .reset_n    (reset_n),
    .top_start  (top_start),
    .top_din    (top_din),
    .top_dout   (top_dout),
    .top_done   (top_done),
    .adc_din    (adc_din),
    .dac_cs     (dac_cs),
    .dac_sclk   (dac_sclk),
    .dac_mosi   (dac_mosi),
    .adc_sclk   (adc_sclk),
    .adc_cs     (adc_cs)
  );

  //-------------------------------------------------------
  // Clock Generation: 100MHz
  //-------------------------------------------------------
  always #5 clk = ~clk;

  //-------------------------------------------------------
  // Simple ADC serial data simulation task
  //-------------------------------------------------------
  task simulate_adc_serial_input(input [11:0] value);
    integer i;
    begin
      for (i = 11; i >= 0; i = i - 1) begin
        adc_din = value[i];
        @(posedge adc_sclk);
      end
    end
  endtask

  //-------------------------------------------------------
  // Test Sequence
  //-------------------------------------------------------
  initial begin
    // Initial values
    clk        = 0;
    reset_n    = 0;
    top_start  = 0;
    top_din    = 12'hA55;
    adc_din    = 0;

    // Apply reset
    repeat(4) @(posedge clk);
    reset_n = 1;

    // Wait a few cycles then start
    repeat(5) @(posedge clk);
    top_start = 1;
    @(posedge clk);
    top_start = 0;

    // Simulate ADC serial input (manually triggered when ADC sclk active)
    wait (adc_cs == 0);  // Wait until ADC chip select is active (active low)
    simulate_adc_serial_input(12'h789);  // Provide serial data bits

    // Wait for operation to complete
    wait (top_done == 1);
    @(posedge clk);

    // Display output
    $display("DAQ process complete.");
    $display("DAC input sent     : %h", top_din);
    $display("ADC output received: %h", top_dout);

    $stop;
  end

endmodule
