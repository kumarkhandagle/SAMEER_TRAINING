module top_spi_fifo_wrapper (
    input  wire       clk,
    input  wire       rst_n,
    input  wire       start_sample,   // External trigger to sample ADC
    input  wire       din1,           // Serial input from ADC
    input  wire       fifo_pop,       // External signal to pop FIFO
    output wire       cs_n,
    output wire       sclk,
    output wire       ready,
    output wire       done,
    output wire [7:0] fifo_dout,
    output wire       fifo_empty,
    output wire       fifo_full
);

  wire        write_to_fifo;
  wire [7:0]  adc_data;

  // SPI ADC Module
  spi_adc_with_fifo_wr u_spi_adc (
    .clk(clk),
    .reset_n(rst_n),
    .sample(start_sample),
    .din1(din1),
    .cs_n(cs_n),
    .sclk(sclk),
    .write_to_fifo(write_to_fifo),
    .ready(ready),
    .done(done),
    .adc1_dout(adc_data)
  );

  // FIFO Module
  fifo_top u_fifo (
    .rst_n(rst_n),
    .clk(clk),
    .en(1'b1),              // Always enable FIFO
    .push_in(write_to_fifo), // Push when ADC says data is ready
    .pop_in(fifo_pop),      // External pop control
    .din(adc_data),         // Data from ADC
    .dout(fifo_dout),
    .empty(fifo_empty),
    .full(fifo_full)
  );

endmodule
