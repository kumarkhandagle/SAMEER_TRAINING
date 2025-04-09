`timescale 1ns/1ps

module tb_top_spi_fifo_wrapper();

  // Testbench signals
  reg clk;
  reg rst_n;
  reg start_sample;
  reg din1;
  reg fifo_pop;
  wire cs_n, sclk, ready, done;
  wire [7:0] fifo_dout;
  wire fifo_empty, fifo_full;

  // Instantiate top wrapper
  top_spi_fifo_wrapper dut (
    .clk(clk),
    .rst_n(rst_n),
    .start_sample(start_sample),
    .din1(din1),
    .fifo_pop(fifo_pop),
    .cs_n(cs_n),
    .sclk(sclk),
    .ready(ready),
    .done(done),
    .fifo_dout(fifo_dout),
    .fifo_empty(fifo_empty),
    .fifo_full(fifo_full)
  );

  // Clock generation: 100 MHz
  always #5 clk = ~clk;

  // Serial data input
  reg [15:0] serial_data = 16'hABCD;
  integer bit_index;

  // Feed din1 on sclk rising edge
  always @(posedge sclk) begin
    if (dut.u_spi_adc.state == dut.u_spi_adc.SAMPLE && bit_index < 16) begin
      din1 <= serial_data[15 - bit_index];
      bit_index= bit_index + 1;
    end
  end

  initial begin
    // Initialize
    clk = 0;
    rst_n = 0;
    start_sample = 0;
    din1 = 0;
    fifo_pop = 0;
    bit_index = 0;

    // Reset
    #20 rst_n = 1;

    // Start sampling
    #30 start_sample = 1;

    // Wait for SPI + FIFO write
    wait (done == 1);
    #20;

    // Read both bytes from FIFO
    repeat (2) begin
      fifo_pop = 1;
      #10 fifo_pop = 0;
      #10;
      $display("Read FIFO data: %h", fifo_dout);
    end

    #50;
    $finish;
  end

endmodule
