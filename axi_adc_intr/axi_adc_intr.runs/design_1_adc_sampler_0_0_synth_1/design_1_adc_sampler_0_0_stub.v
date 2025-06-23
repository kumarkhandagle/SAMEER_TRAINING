// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun Jun 22 14:28:10 2025
// Host        : Kumar_PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_adc_sampler_0_0_stub.v
// Design      : design_1_adc_sampler_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "adc_sampler,Vivado 2019.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, rst_n, din1, din2, cs_n, clk_5_12M, intr_sw, 
  data_out)
/* synthesis syn_black_box black_box_pad_pin="clk,rst_n,din1,din2,cs_n,clk_5_12M,intr_sw[1:0],data_out[31:0]" */;
  input clk;
  input rst_n;
  input din1;
  input din2;
  output cs_n;
  output clk_5_12M;
  output [1:0]intr_sw;
  output [31:0]data_out;
endmodule
