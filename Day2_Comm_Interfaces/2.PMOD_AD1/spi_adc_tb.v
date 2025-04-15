`timescale 1ns / 1ps

module tb_spi_adc;

  // ==========================================================================
  // Testbench Signals
  // ==========================================================================
  reg         clk;
  reg         reset_n;
  reg         sample;
  reg         din1;
  reg         din2;
  wire        cs_n;
  wire        ready;
  wire        sclk;
  wire        done;
  wire [11:0] adc1_dout;

  // ==========================================================================
  // DUT Instantiation
  // ==========================================================================
  spi_adc uut (
    .clk        (clk),
    .reset_n    (reset_n),
    .sample     (sample),
    .din1       (din1),
    .din2       (din2),
    .cs_n       (cs_n),
    .sclk       (sclk),
    .ready      (ready),
    .done       (done),
    .adc1_dout  (adc1_dout)
  );

  // ==========================================================================
  // Clock Generation (100 MHz)
  // ==========================================================================
  always #5 clk = ~clk;

  // ==========================================================================
  // Task: Send 16-bit Serial Data to din1 and din2
  // ==========================================================================
  task send_serial_data(input [15:0] data1, input [15:0] data2);
    integer i;
    begin
      for (i = 15; i >= 0; i = i - 1) begin
        @(posedge sclk);
        din1 <= data1[i];
        din2 <= data2[i];
      end
    end
  endtask

  // ==========================================================================
  // Initial Simulation Block
  // ==========================================================================
  initial begin
    // Optional: waveform dumping for GTKWave or ModelSim
    $dumpfile("spi_adc_tb.vcd");
    $dumpvars(0, tb_spi_adc);

    // Initialize inputs
    clk     = 0;
    reset_n = 0;
    sample  = 0;
    din1    = 0;
    din2    = 0;

    // Apply reset
    #20;
    reset_n = 1;

    // Wait for sclk to stabilize
    repeat (5) @(posedge sclk);
    sample = 1;
 

    // Send serial data (e.g., 16'hA5A5 and 16'h5A5A)
    send_serial_data(16'hA5A5, 16'h5A5A);

    // Wait until done
    wait (ready == 1);

    // Display output
    $display("Time %t: ADC1 Output = %h", $time, adc1_dout);

    // End simulation
    #100;
    $finish;
  end

endmodule
