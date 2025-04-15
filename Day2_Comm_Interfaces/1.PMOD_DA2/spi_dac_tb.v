`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
/*
Copyright (c) 2025 Namaste FPGA Technologies

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
*/ 
`timescale 1ns / 1ps

module spi_dac_tb;

  // Inputs
  logic sys_clk;
  logic rst_n;
  logic [11:0] dac_in1;
  logic [11:0] dac_in2;
  logic start;

  // Outputs
  wire mosi1;
  wire mosi2;
  wire sclk;
  wire cs_n;
  wire done;

  // Instantiate the Unit Under Test (UUT)
  spi_dac uut (
    .sys_clk(sys_clk),
    .rst_n(rst_n),
    .mosi1(mosi1),
    .mosi2(mosi2),
    .sclk(sclk),
    .cs_n(cs_n),
    .dac_in1(dac_in1),
    .dac_in2(dac_in2),
    .start(start),
    .done(done)
  );

  // Clock generation (50 MHz)
  initial sys_clk = 0;
  always #10 sys_clk = ~sys_clk;  // 20 ns period = 50 MHz

  // Stimulus
  initial begin
    $display("Starting SPI DAC Testbench...");

    // Initial values
    rst_n = 0;
    start = 0;
    dac_in1 = 12'd0;
    dac_in2 = 12'd0;

    // Apply reset
    #100;
    rst_n = 1;

    // Wait for few clock cycles
    @(posedge sclk);

    // Apply input data and assert start
    dac_in1 = 12'hABC;
    dac_in2 = 12'h123;
    start   = 1;

    @(posedge sclk);
    start = 0;

    // Wait enough time for FSM to finish
    wait (cs_n == 0);
    $display("Data shifting started...");

    wait (cs_n == 1);
    $display("Data shifting complete.");

    #100;
    $finish;
  end

  // Monitor outputs
  initial begin
    $monitor("Time=%0t | cs_n=%b | mosi1=%b | mosi2=%b | done=%b | shiftCounter=%0d", 
              $time, cs_n, mosi1, mosi2, done, uut.shiftCounter);
  end

endmodule
