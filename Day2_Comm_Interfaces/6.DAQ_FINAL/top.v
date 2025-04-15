module top_wrapper (
    input  wire       clk,
    input  wire       rst_n,
    input  wire       start_sample,   // External trigger to sample ADC
   
    input  wire       din1,           // Serial input from ADC
    output wire       cs_n,
    output wire       sclk,
    
    output wire       dac_sclk,
    output wire       dac_cs,
    output wire       dac_mosi,
    
    output wire       tx            // UART Tx output
);

  wire        write_to_fifo;
  wire [7:0]  adc_data;
  wire        pop_data;      // Pop control from UART to FIFO
  wire [7:0]  fifo_in;       // FIFO output connected to UART input
  wire        new_data;      // FIFO not empty signal
  wire fifo_empty;
  wire dac_done;

// Instantiate SPI DAC
spi_dac u_spi_dac (
    .sys_clk   (clk),
    .rst_n     (rst_n),
    .mosi1     (dac_mosi),
    .sclk      (dac_sclk),
    .cs_n      (dac_cs),
    .start     (start_sample),
    .done      (dac_done)
);


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
    .done(adc_done),
    .adc1_dout(adc_data)
  );

  // FIFO Module
  fifo_top u_fifo (
    .rst_n(rst_n),
    .clk(clk),
    .en(start_sample),                  // Always enable FIFO
    .push_in(write_to_fifo),    // Push when ADC provides data
    .pop_in(pop_data),          // Pop when UART asks
    .din(adc_data),             // Data from ADC
    .dout(fifo_in),             // FIFO output to UART
    .empty(fifo_empty),
    .full(fifo_full)
  );

  // UART TX Module
  uarttx u_uarttx_inst (
    .clk       (clk),
    .rst_n     (rst_n),
    .fifo_empty(fifo_empty),
    .newd      (start_sample),    // Indicate new data from FIFO
    .fifo_in   (fifo_in),     // Data from FIFO
    .pop_data  (pop_data),    // Pop control to FIFO
    .tx        (tx),          // UART Tx output
    .donetx    (donetx)       // UART transmission done
  );

endmodule
