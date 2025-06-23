-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sun Jun 22 14:28:10 2025
-- Host        : Kumar_PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/kumar/axi_adc_intr/axi_adc_intr.srcs/sources_1/bd/design_1/ip/design_1_adc_sampler_0_0/design_1_adc_sampler_0_0_stub.vhdl
-- Design      : design_1_adc_sampler_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_adc_sampler_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    din1 : in STD_LOGIC;
    din2 : in STD_LOGIC;
    cs_n : out STD_LOGIC;
    clk_5_12M : out STD_LOGIC;
    intr_sw : out STD_LOGIC_VECTOR ( 1 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end design_1_adc_sampler_0_0;

architecture stub of design_1_adc_sampler_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst_n,din1,din2,cs_n,clk_5_12M,intr_sw[1:0],data_out[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "adc_sampler,Vivado 2019.2";
begin
end;
