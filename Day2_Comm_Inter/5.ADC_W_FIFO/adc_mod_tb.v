`timescale 1ns/1ps

module tb_spi_adc_with_fifo_wr();

  // DUT signals
  reg clk;
  reg reset_n;
  reg sample;
  reg din1;
  wire cs_n;
  wire sclk;
  wire write_to_fifo;
  wire ready;
  wire done;
  wire [7:0] adc1_dout;

  // Instantiate DUT
  spi_adc_with_fifo_wr dut (
    .clk(clk),
    .reset_n(reset_n),
    .sample(sample),
    .din1(din1),
    .cs_n(cs_n),
    .sclk(sclk),
    .write_to_fifo(write_to_fifo),
    .ready(ready),
    .done(done),
    .adc1_dout(adc1_dout)
  );

  // Clock generation (100 MHz)
  always #5 clk = ~clk;

  // Serial data stream for ADC (16 bits)
  reg [15:0] serial_data = 16'hABCD;
  integer bit_index;

  // Send serial data bit by bit on SCLK edge
  always @(posedge sclk) begin
    if (dut.state == dut.SAMPLE && bit_index < 16) begin
      din1 <= serial_data[15 - bit_index];
      bit_index= bit_index + 1;
    end
  end

  initial begin
    // Init signals
    clk = 0;
    reset_n = 0;
    sample = 0;
    din1 = 0;
    bit_index = 0;

    // Reset pulse
    #20;
    reset_n = 1;

    // Wait a bit then trigger sample
    #50;
    sample = 1;

    // Wait for data transaction
    wait(done == 1);

    $display("Sample done. adc1_dout = %h", adc1_dout);

    #50;

    $finish;
  end

endmodule
