-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sun Jun 22 14:28:10 2025
-- Host        : Kumar_PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/kumar/axi_adc_intr/axi_adc_intr.srcs/sources_1/bd/design_1/ip/design_1_adc_sampler_0_0/design_1_adc_sampler_0_0_sim_netlist.vhdl
-- Design      : design_1_adc_sampler_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_adc_sampler_0_0_adc_sampler is
  port (
    clk_1K_reg_0 : out STD_LOGIC;
    cs_n : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 12 downto 0 );
    clk : in STD_LOGIC;
    din2 : in STD_LOGIC;
    din1 : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_adc_sampler_0_0_adc_sampler : entity is "adc_sampler";
end design_1_adc_sampler_0_0_adc_sampler;

architecture STRUCTURE of design_1_adc_sampler_0_0_adc_sampler is
  signal \FSM_sequential_astate[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_astate[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_astate[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_astate[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_astate[2]_i_4_n_0\ : STD_LOGIC;
  signal adc1_data : STD_LOGIC;
  signal \adc1_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \adc1_data_reg_n_0_[10]\ : STD_LOGIC;
  signal \adc1_data_reg_n_0_[11]\ : STD_LOGIC;
  signal \adc1_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \adc1_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \adc1_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \adc1_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \adc1_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \adc1_data_reg_n_0_[6]\ : STD_LOGIC;
  signal \adc1_data_reg_n_0_[7]\ : STD_LOGIC;
  signal \adc1_data_reg_n_0_[8]\ : STD_LOGIC;
  signal \adc1_data_reg_n_0_[9]\ : STD_LOGIC;
  signal \adc2_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \adc2_data_reg_n_0_[10]\ : STD_LOGIC;
  signal \adc2_data_reg_n_0_[11]\ : STD_LOGIC;
  signal \adc2_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \adc2_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \adc2_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \adc2_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \adc2_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \adc2_data_reg_n_0_[6]\ : STD_LOGIC;
  signal \adc2_data_reg_n_0_[7]\ : STD_LOGIC;
  signal \adc2_data_reg_n_0_[8]\ : STD_LOGIC;
  signal \adc2_data_reg_n_0_[9]\ : STD_LOGIC;
  signal astate : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \astate__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal average_value_adc1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal average_value_adc1_1 : STD_LOGIC;
  signal average_value_adc2 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \bit_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \bit_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \bit_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \bit_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \bit_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \bit_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \bit_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \bit_count_reg_n_0_[3]\ : STD_LOGIC;
  signal clk_1K_i_1_n_0 : STD_LOGIC;
  signal clk_1K_i_2_n_0 : STD_LOGIC;
  signal clk_1K_i_3_n_0 : STD_LOGIC;
  signal clk_1K_i_4_n_0 : STD_LOGIC;
  signal \^clk_1k_reg_0\ : STD_LOGIC;
  signal counter : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \counter0_carry__0_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_n_1\ : STD_LOGIC;
  signal \counter0_carry__0_n_2\ : STD_LOGIC;
  signal \counter0_carry__0_n_3\ : STD_LOGIC;
  signal \counter0_carry__1_n_1\ : STD_LOGIC;
  signal \counter0_carry__1_n_2\ : STD_LOGIC;
  signal \counter0_carry__1_n_3\ : STD_LOGIC;
  signal counter0_carry_n_0 : STD_LOGIC;
  signal counter0_carry_n_1 : STD_LOGIC;
  signal counter0_carry_n_2 : STD_LOGIC;
  signal counter0_carry_n_3 : STD_LOGIC;
  signal counter_0 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal data0 : STD_LOGIC_VECTOR ( 12 downto 1 );
  signal nastate : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \nastate__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \sample_counter[6]_i_2_n_0\ : STD_LOGIC;
  signal \sample_counter[8]_i_1_n_0\ : STD_LOGIC;
  signal \sample_counter[8]_i_3_n_0\ : STD_LOGIC;
  signal \sample_counter[8]_i_4_n_0\ : STD_LOGIC;
  signal sample_counter_reg : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal sel : STD_LOGIC;
  signal total_value_adc10 : STD_LOGIC_VECTOR ( 17 downto 1 );
  signal total_value_adc12 : STD_LOGIC;
  signal \total_value_adc1[0]_i_11_n_0\ : STD_LOGIC;
  signal \total_value_adc1[0]_i_12_n_0\ : STD_LOGIC;
  signal \total_value_adc1[0]_i_13_n_0\ : STD_LOGIC;
  signal \total_value_adc1[0]_i_2_n_0\ : STD_LOGIC;
  signal \total_value_adc1[0]_i_3_n_0\ : STD_LOGIC;
  signal \total_value_adc1[0]_i_4_n_0\ : STD_LOGIC;
  signal \total_value_adc1[0]_i_5_n_0\ : STD_LOGIC;
  signal \total_value_adc1[0]_i_6_n_0\ : STD_LOGIC;
  signal \total_value_adc1[0]_i_7_n_0\ : STD_LOGIC;
  signal \total_value_adc1[0]_i_8_n_0\ : STD_LOGIC;
  signal \total_value_adc1[0]_i_9_n_0\ : STD_LOGIC;
  signal \total_value_adc1[12]_i_2_n_0\ : STD_LOGIC;
  signal \total_value_adc1[12]_i_3_n_0\ : STD_LOGIC;
  signal \total_value_adc1[12]_i_4_n_0\ : STD_LOGIC;
  signal \total_value_adc1[12]_i_5_n_0\ : STD_LOGIC;
  signal \total_value_adc1[12]_i_7_n_0\ : STD_LOGIC;
  signal \total_value_adc1[16]_i_2_n_0\ : STD_LOGIC;
  signal \total_value_adc1[16]_i_3_n_0\ : STD_LOGIC;
  signal \total_value_adc1[4]_i_11_n_0\ : STD_LOGIC;
  signal \total_value_adc1[4]_i_12_n_0\ : STD_LOGIC;
  signal \total_value_adc1[4]_i_13_n_0\ : STD_LOGIC;
  signal \total_value_adc1[4]_i_14_n_0\ : STD_LOGIC;
  signal \total_value_adc1[4]_i_2_n_0\ : STD_LOGIC;
  signal \total_value_adc1[4]_i_3_n_0\ : STD_LOGIC;
  signal \total_value_adc1[4]_i_4_n_0\ : STD_LOGIC;
  signal \total_value_adc1[4]_i_5_n_0\ : STD_LOGIC;
  signal \total_value_adc1[4]_i_6_n_0\ : STD_LOGIC;
  signal \total_value_adc1[4]_i_7_n_0\ : STD_LOGIC;
  signal \total_value_adc1[4]_i_8_n_0\ : STD_LOGIC;
  signal \total_value_adc1[4]_i_9_n_0\ : STD_LOGIC;
  signal \total_value_adc1[8]_i_11_n_0\ : STD_LOGIC;
  signal \total_value_adc1[8]_i_12_n_0\ : STD_LOGIC;
  signal \total_value_adc1[8]_i_13_n_0\ : STD_LOGIC;
  signal \total_value_adc1[8]_i_14_n_0\ : STD_LOGIC;
  signal \total_value_adc1[8]_i_2_n_0\ : STD_LOGIC;
  signal \total_value_adc1[8]_i_3_n_0\ : STD_LOGIC;
  signal \total_value_adc1[8]_i_4_n_0\ : STD_LOGIC;
  signal \total_value_adc1[8]_i_5_n_0\ : STD_LOGIC;
  signal \total_value_adc1[8]_i_6_n_0\ : STD_LOGIC;
  signal \total_value_adc1[8]_i_7_n_0\ : STD_LOGIC;
  signal \total_value_adc1[8]_i_8_n_0\ : STD_LOGIC;
  signal \total_value_adc1[8]_i_9_n_0\ : STD_LOGIC;
  signal total_value_adc1_reg : STD_LOGIC_VECTOR ( 17 downto 6 );
  signal \total_value_adc1_reg[0]_i_10_n_0\ : STD_LOGIC;
  signal \total_value_adc1_reg[0]_i_10_n_1\ : STD_LOGIC;
  signal \total_value_adc1_reg[0]_i_10_n_2\ : STD_LOGIC;
  signal \total_value_adc1_reg[0]_i_10_n_3\ : STD_LOGIC;
  signal \total_value_adc1_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \total_value_adc1_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \total_value_adc1_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \total_value_adc1_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \total_value_adc1_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \total_value_adc1_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \total_value_adc1_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \total_value_adc1_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \total_value_adc1_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \total_value_adc1_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \total_value_adc1_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \total_value_adc1_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \total_value_adc1_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \total_value_adc1_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \total_value_adc1_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \total_value_adc1_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \total_value_adc1_reg[12]_i_6_n_0\ : STD_LOGIC;
  signal \total_value_adc1_reg[12]_i_6_n_1\ : STD_LOGIC;
  signal \total_value_adc1_reg[12]_i_6_n_2\ : STD_LOGIC;
  signal \total_value_adc1_reg[12]_i_6_n_3\ : STD_LOGIC;
  signal \total_value_adc1_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \total_value_adc1_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \total_value_adc1_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \total_value_adc1_reg[4]_i_10_n_0\ : STD_LOGIC;
  signal \total_value_adc1_reg[4]_i_10_n_1\ : STD_LOGIC;
  signal \total_value_adc1_reg[4]_i_10_n_2\ : STD_LOGIC;
  signal \total_value_adc1_reg[4]_i_10_n_3\ : STD_LOGIC;
  signal \total_value_adc1_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \total_value_adc1_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \total_value_adc1_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \total_value_adc1_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \total_value_adc1_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \total_value_adc1_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \total_value_adc1_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \total_value_adc1_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \total_value_adc1_reg[8]_i_10_n_0\ : STD_LOGIC;
  signal \total_value_adc1_reg[8]_i_10_n_1\ : STD_LOGIC;
  signal \total_value_adc1_reg[8]_i_10_n_2\ : STD_LOGIC;
  signal \total_value_adc1_reg[8]_i_10_n_3\ : STD_LOGIC;
  signal \total_value_adc1_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \total_value_adc1_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \total_value_adc1_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \total_value_adc1_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \total_value_adc1_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \total_value_adc1_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \total_value_adc1_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \total_value_adc1_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \total_value_adc1_reg__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal total_value_adc20 : STD_LOGIC_VECTOR ( 17 downto 1 );
  signal \total_value_adc2[0]_i_10_n_0\ : STD_LOGIC;
  signal \total_value_adc2[0]_i_11_n_0\ : STD_LOGIC;
  signal \total_value_adc2[0]_i_12_n_0\ : STD_LOGIC;
  signal \total_value_adc2[0]_i_13_n_0\ : STD_LOGIC;
  signal \total_value_adc2[0]_i_14_n_0\ : STD_LOGIC;
  signal \total_value_adc2[0]_i_15_n_0\ : STD_LOGIC;
  signal \total_value_adc2[0]_i_17_n_0\ : STD_LOGIC;
  signal \total_value_adc2[0]_i_18_n_0\ : STD_LOGIC;
  signal \total_value_adc2[0]_i_19_n_0\ : STD_LOGIC;
  signal \total_value_adc2[0]_i_1_n_0\ : STD_LOGIC;
  signal \total_value_adc2[0]_i_5_n_0\ : STD_LOGIC;
  signal \total_value_adc2[0]_i_6_n_0\ : STD_LOGIC;
  signal \total_value_adc2[0]_i_7_n_0\ : STD_LOGIC;
  signal \total_value_adc2[0]_i_8_n_0\ : STD_LOGIC;
  signal \total_value_adc2[0]_i_9_n_0\ : STD_LOGIC;
  signal \total_value_adc2[12]_i_2_n_0\ : STD_LOGIC;
  signal \total_value_adc2[12]_i_3_n_0\ : STD_LOGIC;
  signal \total_value_adc2[12]_i_4_n_0\ : STD_LOGIC;
  signal \total_value_adc2[12]_i_5_n_0\ : STD_LOGIC;
  signal \total_value_adc2[12]_i_7_n_0\ : STD_LOGIC;
  signal \total_value_adc2[16]_i_2_n_0\ : STD_LOGIC;
  signal \total_value_adc2[16]_i_3_n_0\ : STD_LOGIC;
  signal \total_value_adc2[4]_i_11_n_0\ : STD_LOGIC;
  signal \total_value_adc2[4]_i_12_n_0\ : STD_LOGIC;
  signal \total_value_adc2[4]_i_13_n_0\ : STD_LOGIC;
  signal \total_value_adc2[4]_i_14_n_0\ : STD_LOGIC;
  signal \total_value_adc2[4]_i_2_n_0\ : STD_LOGIC;
  signal \total_value_adc2[4]_i_3_n_0\ : STD_LOGIC;
  signal \total_value_adc2[4]_i_4_n_0\ : STD_LOGIC;
  signal \total_value_adc2[4]_i_5_n_0\ : STD_LOGIC;
  signal \total_value_adc2[4]_i_6_n_0\ : STD_LOGIC;
  signal \total_value_adc2[4]_i_7_n_0\ : STD_LOGIC;
  signal \total_value_adc2[4]_i_8_n_0\ : STD_LOGIC;
  signal \total_value_adc2[4]_i_9_n_0\ : STD_LOGIC;
  signal \total_value_adc2[8]_i_11_n_0\ : STD_LOGIC;
  signal \total_value_adc2[8]_i_12_n_0\ : STD_LOGIC;
  signal \total_value_adc2[8]_i_13_n_0\ : STD_LOGIC;
  signal \total_value_adc2[8]_i_14_n_0\ : STD_LOGIC;
  signal \total_value_adc2[8]_i_2_n_0\ : STD_LOGIC;
  signal \total_value_adc2[8]_i_3_n_0\ : STD_LOGIC;
  signal \total_value_adc2[8]_i_4_n_0\ : STD_LOGIC;
  signal \total_value_adc2[8]_i_5_n_0\ : STD_LOGIC;
  signal \total_value_adc2[8]_i_6_n_0\ : STD_LOGIC;
  signal \total_value_adc2[8]_i_7_n_0\ : STD_LOGIC;
  signal \total_value_adc2[8]_i_8_n_0\ : STD_LOGIC;
  signal \total_value_adc2[8]_i_9_n_0\ : STD_LOGIC;
  signal \total_value_adc2_reg[0]_i_16_n_0\ : STD_LOGIC;
  signal \total_value_adc2_reg[0]_i_16_n_1\ : STD_LOGIC;
  signal \total_value_adc2_reg[0]_i_16_n_2\ : STD_LOGIC;
  signal \total_value_adc2_reg[0]_i_16_n_3\ : STD_LOGIC;
  signal \total_value_adc2_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \total_value_adc2_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \total_value_adc2_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \total_value_adc2_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \total_value_adc2_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \total_value_adc2_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \total_value_adc2_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \total_value_adc2_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \total_value_adc2_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \total_value_adc2_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \total_value_adc2_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \total_value_adc2_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \total_value_adc2_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \total_value_adc2_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \total_value_adc2_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \total_value_adc2_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \total_value_adc2_reg[12]_i_6_n_0\ : STD_LOGIC;
  signal \total_value_adc2_reg[12]_i_6_n_1\ : STD_LOGIC;
  signal \total_value_adc2_reg[12]_i_6_n_2\ : STD_LOGIC;
  signal \total_value_adc2_reg[12]_i_6_n_3\ : STD_LOGIC;
  signal \total_value_adc2_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \total_value_adc2_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \total_value_adc2_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \total_value_adc2_reg[4]_i_10_n_0\ : STD_LOGIC;
  signal \total_value_adc2_reg[4]_i_10_n_1\ : STD_LOGIC;
  signal \total_value_adc2_reg[4]_i_10_n_2\ : STD_LOGIC;
  signal \total_value_adc2_reg[4]_i_10_n_3\ : STD_LOGIC;
  signal \total_value_adc2_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \total_value_adc2_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \total_value_adc2_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \total_value_adc2_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \total_value_adc2_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \total_value_adc2_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \total_value_adc2_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \total_value_adc2_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \total_value_adc2_reg[8]_i_10_n_0\ : STD_LOGIC;
  signal \total_value_adc2_reg[8]_i_10_n_1\ : STD_LOGIC;
  signal \total_value_adc2_reg[8]_i_10_n_2\ : STD_LOGIC;
  signal \total_value_adc2_reg[8]_i_10_n_3\ : STD_LOGIC;
  signal \total_value_adc2_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \total_value_adc2_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \total_value_adc2_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \total_value_adc2_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \total_value_adc2_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \total_value_adc2_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \total_value_adc2_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \total_value_adc2_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \total_value_adc2_reg_n_0_[0]\ : STD_LOGIC;
  signal \total_value_adc2_reg_n_0_[1]\ : STD_LOGIC;
  signal \total_value_adc2_reg_n_0_[2]\ : STD_LOGIC;
  signal \total_value_adc2_reg_n_0_[3]\ : STD_LOGIC;
  signal \total_value_adc2_reg_n_0_[4]\ : STD_LOGIC;
  signal \total_value_adc2_reg_n_0_[5]\ : STD_LOGIC;
  signal \NLW_counter0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_total_value_adc1_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_total_value_adc1_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_total_value_adc1_reg[16]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_total_value_adc1_reg[16]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_total_value_adc2_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_total_value_adc2_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_total_value_adc2_reg[16]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_total_value_adc2_reg[16]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_astate[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_sequential_astate[1]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_sequential_astate[2]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_sequential_astate[2]_i_4\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_astate_reg[0]\ : label is "AIDLE:000,SAMPLE:001,CHECK_SAMPLE_COUNT:010,WAIT_2:100,DONE:110,COMP_AVERAGE:101,WAIT_1:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_astate_reg[1]\ : label is "AIDLE:000,SAMPLE:001,CHECK_SAMPLE_COUNT:010,WAIT_2:100,DONE:110,COMP_AVERAGE:101,WAIT_1:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_astate_reg[2]\ : label is "AIDLE:000,SAMPLE:001,CHECK_SAMPLE_COUNT:010,WAIT_2:100,DONE:110,COMP_AVERAGE:101,WAIT_1:011";
  attribute SOFT_HLUTNM of \astate[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \astate[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \bit_count[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \bit_count[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \bit_count[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of cs_n_INST_0 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_out[10]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_out[11]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_out[12]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_out[13]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_out[14]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_out[15]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data_out[16]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data_out[17]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data_out[18]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data_out[19]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_out[8]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_out[9]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \sample_counter[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sample_counter[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sample_counter[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sample_counter[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sample_counter[8]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sample_counter[8]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \total_value_adc2[0]_i_13\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \total_value_adc2[0]_i_14\ : label is "soft_lutpair0";
begin
  clk_1K_reg_0 <= \^clk_1k_reg_0\;
\FSM_sequential_astate[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \astate__0\(0),
      I1 => \astate__0\(2),
      O => \nastate__0\(0)
    );
\FSM_sequential_astate[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \FSM_sequential_astate[1]_i_2_n_0\,
      I1 => \astate__0\(1),
      I2 => \astate__0\(0),
      O => \nastate__0\(1)
    );
\FSM_sequential_astate[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \sample_counter[8]_i_4_n_0\,
      I1 => sample_counter_reg(8),
      I2 => sample_counter_reg(1),
      I3 => sample_counter_reg(7),
      I4 => \FSM_sequential_astate[1]_i_3_n_0\,
      O => \FSM_sequential_astate[1]_i_2_n_0\
    );
\FSM_sequential_astate[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \astate__0\(2),
      I1 => \astate__0\(1),
      I2 => \astate__0\(0),
      O => \FSM_sequential_astate[1]_i_3_n_0\
    );
\FSM_sequential_astate[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFEFEFFFEFEFEF"
    )
        port map (
      I0 => astate(2),
      I1 => astate(1),
      I2 => astate(0),
      I3 => \bit_count_reg_n_0_[0]\,
      I4 => \bit_count_reg_n_0_[3]\,
      I5 => \FSM_sequential_astate[2]_i_3_n_0\,
      O => \FSM_sequential_astate[2]_i_1_n_0\
    );
\FSM_sequential_astate[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"31C0"
    )
        port map (
      I0 => \FSM_sequential_astate[2]_i_4_n_0\,
      I1 => \astate__0\(2),
      I2 => \astate__0\(0),
      I3 => \astate__0\(1),
      O => \nastate__0\(2)
    );
\FSM_sequential_astate[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \bit_count_reg_n_0_[1]\,
      I1 => \bit_count_reg_n_0_[2]\,
      O => \FSM_sequential_astate[2]_i_3_n_0\
    );
\FSM_sequential_astate[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sample_counter_reg(7),
      I1 => sample_counter_reg(1),
      I2 => sample_counter_reg(8),
      I3 => \sample_counter[8]_i_4_n_0\,
      O => \FSM_sequential_astate[2]_i_4_n_0\
    );
\FSM_sequential_astate_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_astate[2]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => \nastate__0\(0),
      Q => \astate__0\(0)
    );
\FSM_sequential_astate_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_astate[2]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => \nastate__0\(1),
      Q => \astate__0\(1)
    );
\FSM_sequential_astate_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_astate[2]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => \nastate__0\(2),
      Q => \astate__0\(2)
    );
\adc1_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => adc1_data,
      CLR => clk_1K_i_2_n_0,
      D => din1,
      Q => \adc1_data_reg_n_0_[0]\
    );
\adc1_data_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => adc1_data,
      CLR => clk_1K_i_2_n_0,
      D => \adc1_data_reg_n_0_[9]\,
      Q => \adc1_data_reg_n_0_[10]\
    );
\adc1_data_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => adc1_data,
      CLR => clk_1K_i_2_n_0,
      D => \adc1_data_reg_n_0_[10]\,
      Q => \adc1_data_reg_n_0_[11]\
    );
\adc1_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => adc1_data,
      CLR => clk_1K_i_2_n_0,
      D => \adc1_data_reg_n_0_[0]\,
      Q => \adc1_data_reg_n_0_[1]\
    );
\adc1_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => adc1_data,
      CLR => clk_1K_i_2_n_0,
      D => \adc1_data_reg_n_0_[1]\,
      Q => \adc1_data_reg_n_0_[2]\
    );
\adc1_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => adc1_data,
      CLR => clk_1K_i_2_n_0,
      D => \adc1_data_reg_n_0_[2]\,
      Q => \adc1_data_reg_n_0_[3]\
    );
\adc1_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => adc1_data,
      CLR => clk_1K_i_2_n_0,
      D => \adc1_data_reg_n_0_[3]\,
      Q => \adc1_data_reg_n_0_[4]\
    );
\adc1_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => adc1_data,
      CLR => clk_1K_i_2_n_0,
      D => \adc1_data_reg_n_0_[4]\,
      Q => \adc1_data_reg_n_0_[5]\
    );
\adc1_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => adc1_data,
      CLR => clk_1K_i_2_n_0,
      D => \adc1_data_reg_n_0_[5]\,
      Q => \adc1_data_reg_n_0_[6]\
    );
\adc1_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => adc1_data,
      CLR => clk_1K_i_2_n_0,
      D => \adc1_data_reg_n_0_[6]\,
      Q => \adc1_data_reg_n_0_[7]\
    );
\adc1_data_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => adc1_data,
      CLR => clk_1K_i_2_n_0,
      D => \adc1_data_reg_n_0_[7]\,
      Q => \adc1_data_reg_n_0_[8]\
    );
\adc1_data_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => adc1_data,
      CLR => clk_1K_i_2_n_0,
      D => \adc1_data_reg_n_0_[8]\,
      Q => \adc1_data_reg_n_0_[9]\
    );
\adc2_data[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \astate__0\(1),
      I1 => \astate__0\(0),
      I2 => \astate__0\(2),
      O => adc1_data
    );
\adc2_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => adc1_data,
      CLR => clk_1K_i_2_n_0,
      D => din2,
      Q => \adc2_data_reg_n_0_[0]\
    );
\adc2_data_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => adc1_data,
      CLR => clk_1K_i_2_n_0,
      D => \adc2_data_reg_n_0_[9]\,
      Q => \adc2_data_reg_n_0_[10]\
    );
\adc2_data_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => adc1_data,
      CLR => clk_1K_i_2_n_0,
      D => \adc2_data_reg_n_0_[10]\,
      Q => \adc2_data_reg_n_0_[11]\
    );
\adc2_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => adc1_data,
      CLR => clk_1K_i_2_n_0,
      D => \adc2_data_reg_n_0_[0]\,
      Q => \adc2_data_reg_n_0_[1]\
    );
\adc2_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => adc1_data,
      CLR => clk_1K_i_2_n_0,
      D => \adc2_data_reg_n_0_[1]\,
      Q => \adc2_data_reg_n_0_[2]\
    );
\adc2_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => adc1_data,
      CLR => clk_1K_i_2_n_0,
      D => \adc2_data_reg_n_0_[2]\,
      Q => \adc2_data_reg_n_0_[3]\
    );
\adc2_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => adc1_data,
      CLR => clk_1K_i_2_n_0,
      D => \adc2_data_reg_n_0_[3]\,
      Q => \adc2_data_reg_n_0_[4]\
    );
\adc2_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => adc1_data,
      CLR => clk_1K_i_2_n_0,
      D => \adc2_data_reg_n_0_[4]\,
      Q => \adc2_data_reg_n_0_[5]\
    );
\adc2_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => adc1_data,
      CLR => clk_1K_i_2_n_0,
      D => \adc2_data_reg_n_0_[5]\,
      Q => \adc2_data_reg_n_0_[6]\
    );
\adc2_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => adc1_data,
      CLR => clk_1K_i_2_n_0,
      D => \adc2_data_reg_n_0_[6]\,
      Q => \adc2_data_reg_n_0_[7]\
    );
\adc2_data_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => adc1_data,
      CLR => clk_1K_i_2_n_0,
      D => \adc2_data_reg_n_0_[7]\,
      Q => \adc2_data_reg_n_0_[8]\
    );
\adc2_data_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => adc1_data,
      CLR => clk_1K_i_2_n_0,
      D => \adc2_data_reg_n_0_[8]\,
      Q => \adc2_data_reg_n_0_[9]\
    );
\astate[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => astate(0),
      I1 => astate(2),
      O => nastate(0)
    );
\astate[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02F0"
    )
        port map (
      I0 => \FSM_sequential_astate[2]_i_4_n_0\,
      I1 => astate(2),
      I2 => astate(0),
      I3 => astate(1),
      O => nastate(1)
    );
\astate[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AB0"
    )
        port map (
      I0 => astate(0),
      I1 => \FSM_sequential_astate[2]_i_4_n_0\,
      I2 => astate(1),
      I3 => astate(2),
      O => nastate(2)
    );
\astate_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_astate[2]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => nastate(0),
      Q => astate(0)
    );
\astate_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_astate[2]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => nastate(1),
      Q => astate(1)
    );
\astate_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_astate[2]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => nastate(2),
      Q => astate(2)
    );
\average_value_adc1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => average_value_adc1_1,
      CLR => clk_1K_i_2_n_0,
      D => total_value_adc1_reg(6),
      Q => average_value_adc1(0)
    );
\average_value_adc1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => average_value_adc1_1,
      CLR => clk_1K_i_2_n_0,
      D => total_value_adc1_reg(16),
      Q => average_value_adc1(10)
    );
\average_value_adc1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => average_value_adc1_1,
      CLR => clk_1K_i_2_n_0,
      D => total_value_adc1_reg(17),
      Q => average_value_adc1(11)
    );
\average_value_adc1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => average_value_adc1_1,
      CLR => clk_1K_i_2_n_0,
      D => total_value_adc1_reg(7),
      Q => average_value_adc1(1)
    );
\average_value_adc1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => average_value_adc1_1,
      CLR => clk_1K_i_2_n_0,
      D => total_value_adc1_reg(8),
      Q => average_value_adc1(2)
    );
\average_value_adc1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => average_value_adc1_1,
      CLR => clk_1K_i_2_n_0,
      D => total_value_adc1_reg(9),
      Q => average_value_adc1(3)
    );
\average_value_adc1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => average_value_adc1_1,
      CLR => clk_1K_i_2_n_0,
      D => total_value_adc1_reg(10),
      Q => average_value_adc1(4)
    );
\average_value_adc1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => average_value_adc1_1,
      CLR => clk_1K_i_2_n_0,
      D => total_value_adc1_reg(11),
      Q => average_value_adc1(5)
    );
\average_value_adc1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => average_value_adc1_1,
      CLR => clk_1K_i_2_n_0,
      D => total_value_adc1_reg(12),
      Q => average_value_adc1(6)
    );
\average_value_adc1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => average_value_adc1_1,
      CLR => clk_1K_i_2_n_0,
      D => total_value_adc1_reg(13),
      Q => average_value_adc1(7)
    );
\average_value_adc1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => average_value_adc1_1,
      CLR => clk_1K_i_2_n_0,
      D => total_value_adc1_reg(14),
      Q => average_value_adc1(8)
    );
\average_value_adc1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => average_value_adc1_1,
      CLR => clk_1K_i_2_n_0,
      D => total_value_adc1_reg(15),
      Q => average_value_adc1(9)
    );
\average_value_adc2[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \astate__0\(1),
      I1 => \astate__0\(0),
      I2 => \astate__0\(2),
      O => average_value_adc1_1
    );
\average_value_adc2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => average_value_adc1_1,
      CLR => clk_1K_i_2_n_0,
      D => p_0_in(0),
      Q => average_value_adc2(0)
    );
\average_value_adc2_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => average_value_adc1_1,
      CLR => clk_1K_i_2_n_0,
      D => p_0_in(10),
      Q => average_value_adc2(10)
    );
\average_value_adc2_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => average_value_adc1_1,
      CLR => clk_1K_i_2_n_0,
      D => p_0_in(11),
      Q => average_value_adc2(11)
    );
\average_value_adc2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => average_value_adc1_1,
      CLR => clk_1K_i_2_n_0,
      D => p_0_in(1),
      Q => average_value_adc2(1)
    );
\average_value_adc2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => average_value_adc1_1,
      CLR => clk_1K_i_2_n_0,
      D => p_0_in(2),
      Q => average_value_adc2(2)
    );
\average_value_adc2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => average_value_adc1_1,
      CLR => clk_1K_i_2_n_0,
      D => p_0_in(3),
      Q => average_value_adc2(3)
    );
\average_value_adc2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => average_value_adc1_1,
      CLR => clk_1K_i_2_n_0,
      D => p_0_in(4),
      Q => average_value_adc2(4)
    );
\average_value_adc2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => average_value_adc1_1,
      CLR => clk_1K_i_2_n_0,
      D => p_0_in(5),
      Q => average_value_adc2(5)
    );
\average_value_adc2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => average_value_adc1_1,
      CLR => clk_1K_i_2_n_0,
      D => p_0_in(6),
      Q => average_value_adc2(6)
    );
\average_value_adc2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => average_value_adc1_1,
      CLR => clk_1K_i_2_n_0,
      D => p_0_in(7),
      Q => average_value_adc2(7)
    );
\average_value_adc2_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => average_value_adc1_1,
      CLR => clk_1K_i_2_n_0,
      D => p_0_in(8),
      Q => average_value_adc2(8)
    );
\average_value_adc2_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => average_value_adc1_1,
      CLR => clk_1K_i_2_n_0,
      D => p_0_in(9),
      Q => average_value_adc2(9)
    );
\bit_count[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \astate__0\(2),
      I1 => \astate__0\(0),
      I2 => \astate__0\(1),
      I3 => \bit_count_reg_n_0_[0]\,
      O => \bit_count[0]_i_1_n_0\
    );
\bit_count[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040400"
    )
        port map (
      I0 => \astate__0\(1),
      I1 => \astate__0\(0),
      I2 => \astate__0\(2),
      I3 => \bit_count_reg_n_0_[0]\,
      I4 => \bit_count_reg_n_0_[1]\,
      O => \bit_count[1]_i_1_n_0\
    );
\bit_count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000060000000C00"
    )
        port map (
      I0 => \bit_count_reg_n_0_[1]\,
      I1 => \bit_count_reg_n_0_[2]\,
      I2 => \astate__0\(2),
      I3 => \astate__0\(0),
      I4 => \astate__0\(1),
      I5 => \bit_count_reg_n_0_[0]\,
      O => \bit_count[2]_i_1_n_0\
    );
\bit_count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7800F000"
    )
        port map (
      I0 => \bit_count_reg_n_0_[1]\,
      I1 => \bit_count_reg_n_0_[2]\,
      I2 => \bit_count_reg_n_0_[3]\,
      I3 => adc1_data,
      I4 => \bit_count_reg_n_0_[0]\,
      O => \bit_count[3]_i_1_n_0\
    );
\bit_count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => clk_1K_i_2_n_0,
      D => \bit_count[0]_i_1_n_0\,
      Q => \bit_count_reg_n_0_[0]\
    );
\bit_count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => clk_1K_i_2_n_0,
      D => \bit_count[1]_i_1_n_0\,
      Q => \bit_count_reg_n_0_[1]\
    );
\bit_count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => clk_1K_i_2_n_0,
      D => \bit_count[2]_i_1_n_0\,
      Q => \bit_count_reg_n_0_[2]\
    );
\bit_count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => clk_1K_i_2_n_0,
      D => \bit_count[3]_i_1_n_0\,
      Q => \bit_count_reg_n_0_[3]\
    );
clk_1K_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFFFFF00200000"
    )
        port map (
      I0 => clk_1K_i_3_n_0,
      I1 => clk_1K_i_4_n_0,
      I2 => counter(7),
      I3 => counter(0),
      I4 => counter(8),
      I5 => \^clk_1k_reg_0\,
      O => clk_1K_i_1_n_0
    );
clk_1K_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => clk_1K_i_2_n_0
    );
clk_1K_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => counter(12),
      I1 => counter(9),
      I2 => counter(1),
      I3 => counter(4),
      I4 => counter(10),
      I5 => counter(3),
      O => clk_1K_i_3_n_0
    );
clk_1K_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => counter(11),
      I1 => counter(5),
      I2 => counter(6),
      I3 => counter(2),
      O => clk_1K_i_4_n_0
    );
clk_1K_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => clk_1K_i_2_n_0,
      D => clk_1K_i_1_n_0,
      Q => \^clk_1k_reg_0\
    );
counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter0_carry_n_0,
      CO(2) => counter0_carry_n_1,
      CO(1) => counter0_carry_n_2,
      CO(0) => counter0_carry_n_3,
      CYINIT => counter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => counter(4 downto 1)
    );
\counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => counter0_carry_n_0,
      CO(3) => \counter0_carry__0_n_0\,
      CO(2) => \counter0_carry__0_n_1\,
      CO(1) => \counter0_carry__0_n_2\,
      CO(0) => \counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => counter(8 downto 5)
    );
\counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__0_n_0\,
      CO(3) => \NLW_counter0_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \counter0_carry__1_n_1\,
      CO(1) => \counter0_carry__1_n_2\,
      CO(0) => \counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => counter(12 downto 9)
    );
\counter[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00DF00FF"
    )
        port map (
      I0 => clk_1K_i_3_n_0,
      I1 => clk_1K_i_4_n_0,
      I2 => counter(7),
      I3 => counter(0),
      I4 => counter(8),
      O => counter_0(0)
    );
\counter[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFFFFF00000000"
    )
        port map (
      I0 => clk_1K_i_3_n_0,
      I1 => clk_1K_i_4_n_0,
      I2 => counter(7),
      I3 => counter(0),
      I4 => counter(8),
      I5 => data0(10),
      O => counter_0(10)
    );
\counter[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFFFFF00000000"
    )
        port map (
      I0 => clk_1K_i_3_n_0,
      I1 => clk_1K_i_4_n_0,
      I2 => counter(7),
      I3 => counter(0),
      I4 => counter(8),
      I5 => data0(11),
      O => counter_0(11)
    );
\counter[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFFFFF00000000"
    )
        port map (
      I0 => clk_1K_i_3_n_0,
      I1 => clk_1K_i_4_n_0,
      I2 => counter(7),
      I3 => counter(0),
      I4 => counter(8),
      I5 => data0(12),
      O => counter_0(12)
    );
\counter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFFFFF00000000"
    )
        port map (
      I0 => clk_1K_i_3_n_0,
      I1 => clk_1K_i_4_n_0,
      I2 => counter(7),
      I3 => counter(0),
      I4 => counter(8),
      I5 => data0(1),
      O => counter_0(1)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFFFFF00000000"
    )
        port map (
      I0 => clk_1K_i_3_n_0,
      I1 => clk_1K_i_4_n_0,
      I2 => counter(7),
      I3 => counter(0),
      I4 => counter(8),
      I5 => data0(2),
      O => counter_0(2)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFFFFF00000000"
    )
        port map (
      I0 => clk_1K_i_3_n_0,
      I1 => clk_1K_i_4_n_0,
      I2 => counter(7),
      I3 => counter(0),
      I4 => counter(8),
      I5 => data0(3),
      O => counter_0(3)
    );
\counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFFFFF00000000"
    )
        port map (
      I0 => clk_1K_i_3_n_0,
      I1 => clk_1K_i_4_n_0,
      I2 => counter(7),
      I3 => counter(0),
      I4 => counter(8),
      I5 => data0(4),
      O => counter_0(4)
    );
\counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFFFFF00000000"
    )
        port map (
      I0 => clk_1K_i_3_n_0,
      I1 => clk_1K_i_4_n_0,
      I2 => counter(7),
      I3 => counter(0),
      I4 => counter(8),
      I5 => data0(5),
      O => counter_0(5)
    );
\counter[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFFFFF00000000"
    )
        port map (
      I0 => clk_1K_i_3_n_0,
      I1 => clk_1K_i_4_n_0,
      I2 => counter(7),
      I3 => counter(0),
      I4 => counter(8),
      I5 => data0(6),
      O => counter_0(6)
    );
\counter[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFFFFF00000000"
    )
        port map (
      I0 => clk_1K_i_3_n_0,
      I1 => clk_1K_i_4_n_0,
      I2 => counter(7),
      I3 => counter(0),
      I4 => counter(8),
      I5 => data0(7),
      O => counter_0(7)
    );
\counter[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFFFFF00000000"
    )
        port map (
      I0 => clk_1K_i_3_n_0,
      I1 => clk_1K_i_4_n_0,
      I2 => counter(7),
      I3 => counter(0),
      I4 => counter(8),
      I5 => data0(8),
      O => counter_0(8)
    );
\counter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFFFFF00000000"
    )
        port map (
      I0 => clk_1K_i_3_n_0,
      I1 => clk_1K_i_4_n_0,
      I2 => counter(7),
      I3 => counter(0),
      I4 => counter(8),
      I5 => data0(9),
      O => counter_0(9)
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => clk_1K_i_2_n_0,
      D => counter_0(0),
      Q => counter(0)
    );
\counter_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => clk_1K_i_2_n_0,
      D => counter_0(10),
      Q => counter(10)
    );
\counter_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => clk_1K_i_2_n_0,
      D => counter_0(11),
      Q => counter(11)
    );
\counter_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => clk_1K_i_2_n_0,
      D => counter_0(12),
      Q => counter(12)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => clk_1K_i_2_n_0,
      D => counter_0(1),
      Q => counter(1)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => clk_1K_i_2_n_0,
      D => counter_0(2),
      Q => counter(2)
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => clk_1K_i_2_n_0,
      D => counter_0(3),
      Q => counter(3)
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => clk_1K_i_2_n_0,
      D => counter_0(4),
      Q => counter(4)
    );
\counter_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => clk_1K_i_2_n_0,
      D => counter_0(5),
      Q => counter(5)
    );
\counter_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => clk_1K_i_2_n_0,
      D => counter_0(6),
      Q => counter(6)
    );
\counter_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => clk_1K_i_2_n_0,
      D => counter_0(7),
      Q => counter(7)
    );
\counter_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => clk_1K_i_2_n_0,
      D => counter_0(8),
      Q => counter(8)
    );
\counter_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => clk_1K_i_2_n_0,
      D => counter_0(9),
      Q => counter(9)
    );
cs_n_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7D"
    )
        port map (
      I0 => \astate__0\(0),
      I1 => \astate__0\(1),
      I2 => \astate__0\(2),
      O => cs_n
    );
\data_out[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => average_value_adc1(2),
      I1 => \^clk_1k_reg_0\,
      I2 => average_value_adc2(2),
      O => data_out(3)
    );
\data_out[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => average_value_adc1(3),
      I1 => \^clk_1k_reg_0\,
      I2 => average_value_adc2(3),
      O => data_out(4)
    );
\data_out[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => average_value_adc1(4),
      I1 => \^clk_1k_reg_0\,
      I2 => average_value_adc2(4),
      O => data_out(5)
    );
\data_out[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => average_value_adc1(5),
      I1 => \^clk_1k_reg_0\,
      I2 => average_value_adc2(5),
      O => data_out(6)
    );
\data_out[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => average_value_adc1(6),
      I1 => \^clk_1k_reg_0\,
      I2 => average_value_adc2(6),
      O => data_out(7)
    );
\data_out[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => average_value_adc1(7),
      I1 => \^clk_1k_reg_0\,
      I2 => average_value_adc2(7),
      O => data_out(8)
    );
\data_out[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => average_value_adc1(8),
      I1 => \^clk_1k_reg_0\,
      I2 => average_value_adc2(8),
      O => data_out(9)
    );
\data_out[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => average_value_adc1(9),
      I1 => \^clk_1k_reg_0\,
      I2 => average_value_adc2(9),
      O => data_out(10)
    );
\data_out[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => average_value_adc1(10),
      I1 => \^clk_1k_reg_0\,
      I2 => average_value_adc2(10),
      O => data_out(11)
    );
\data_out[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => average_value_adc1(11),
      I1 => \^clk_1k_reg_0\,
      I2 => average_value_adc2(11),
      O => data_out(12)
    );
\data_out[1]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^clk_1k_reg_0\,
      O => data_out(0)
    );
\data_out[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => average_value_adc1(0),
      I1 => \^clk_1k_reg_0\,
      I2 => average_value_adc2(0),
      O => data_out(1)
    );
\data_out[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => average_value_adc1(1),
      I1 => \^clk_1k_reg_0\,
      I2 => average_value_adc2(1),
      O => data_out(2)
    );
\sample_counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => adc1_data,
      I1 => \bit_count_reg_n_0_[0]\,
      I2 => \bit_count_reg_n_0_[3]\,
      I3 => \bit_count_reg_n_0_[2]\,
      I4 => \bit_count_reg_n_0_[1]\,
      I5 => sample_counter_reg(0),
      O => \p_0_in__0\(0)
    );
\sample_counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => sample_counter_reg(0),
      I1 => \sample_counter[8]_i_3_n_0\,
      I2 => sample_counter_reg(1),
      O => \p_0_in__0\(1)
    );
\sample_counter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"48C0"
    )
        port map (
      I0 => sample_counter_reg(1),
      I1 => \sample_counter[8]_i_3_n_0\,
      I2 => sample_counter_reg(2),
      I3 => sample_counter_reg(0),
      O => \p_0_in__0\(2)
    );
\sample_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7800F000"
    )
        port map (
      I0 => sample_counter_reg(0),
      I1 => sample_counter_reg(2),
      I2 => sample_counter_reg(3),
      I3 => \sample_counter[8]_i_3_n_0\,
      I4 => sample_counter_reg(1),
      O => \p_0_in__0\(3)
    );
\sample_counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F800000FF000000"
    )
        port map (
      I0 => sample_counter_reg(2),
      I1 => sample_counter_reg(0),
      I2 => sample_counter_reg(3),
      I3 => sample_counter_reg(4),
      I4 => \sample_counter[8]_i_3_n_0\,
      I5 => sample_counter_reg(1),
      O => \p_0_in__0\(4)
    );
\sample_counter[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B400F000"
    )
        port map (
      I0 => \sample_counter[6]_i_2_n_0\,
      I1 => sample_counter_reg(4),
      I2 => sample_counter_reg(5),
      I3 => \sample_counter[8]_i_3_n_0\,
      I4 => sample_counter_reg(1),
      O => \p_0_in__0\(5)
    );
\sample_counter[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF200000FF000000"
    )
        port map (
      I0 => sample_counter_reg(4),
      I1 => \sample_counter[6]_i_2_n_0\,
      I2 => sample_counter_reg(5),
      I3 => sample_counter_reg(6),
      I4 => \sample_counter[8]_i_3_n_0\,
      I5 => sample_counter_reg(1),
      O => \p_0_in__0\(6)
    );
\sample_counter[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => sample_counter_reg(2),
      I1 => sample_counter_reg(0),
      I2 => sample_counter_reg(3),
      O => \sample_counter[6]_i_2_n_0\
    );
\sample_counter[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A208"
    )
        port map (
      I0 => \sample_counter[8]_i_3_n_0\,
      I1 => sample_counter_reg(1),
      I2 => \sample_counter[8]_i_4_n_0\,
      I3 => sample_counter_reg(7),
      O => \p_0_in__0\(7)
    );
\sample_counter[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF40"
    )
        port map (
      I0 => \astate__0\(0),
      I1 => \astate__0\(1),
      I2 => \astate__0\(2),
      I3 => \sample_counter[8]_i_3_n_0\,
      O => \sample_counter[8]_i_1_n_0\
    );
\sample_counter[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C6CC0000"
    )
        port map (
      I0 => sample_counter_reg(7),
      I1 => sample_counter_reg(8),
      I2 => \sample_counter[8]_i_4_n_0\,
      I3 => sample_counter_reg(1),
      I4 => \sample_counter[8]_i_3_n_0\,
      O => \p_0_in__0\(8)
    );
\sample_counter[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \bit_count_reg_n_0_[1]\,
      I1 => \bit_count_reg_n_0_[2]\,
      I2 => \bit_count_reg_n_0_[3]\,
      I3 => \bit_count_reg_n_0_[0]\,
      I4 => adc1_data,
      O => \sample_counter[8]_i_3_n_0\
    );
\sample_counter[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => sample_counter_reg(5),
      I1 => sample_counter_reg(3),
      I2 => sample_counter_reg(0),
      I3 => sample_counter_reg(2),
      I4 => sample_counter_reg(4),
      I5 => sample_counter_reg(6),
      O => \sample_counter[8]_i_4_n_0\
    );
\sample_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \sample_counter[8]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => \p_0_in__0\(0),
      Q => sample_counter_reg(0)
    );
\sample_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \sample_counter[8]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => \p_0_in__0\(1),
      Q => sample_counter_reg(1)
    );
\sample_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \sample_counter[8]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => \p_0_in__0\(2),
      Q => sample_counter_reg(2)
    );
\sample_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \sample_counter[8]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => \p_0_in__0\(3),
      Q => sample_counter_reg(3)
    );
\sample_counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \sample_counter[8]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => \p_0_in__0\(4),
      Q => sample_counter_reg(4)
    );
\sample_counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \sample_counter[8]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => \p_0_in__0\(5),
      Q => sample_counter_reg(5)
    );
\sample_counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \sample_counter[8]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => \p_0_in__0\(6),
      Q => sample_counter_reg(6)
    );
\sample_counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \sample_counter[8]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => \p_0_in__0\(7),
      Q => sample_counter_reg(7)
    );
\sample_counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \sample_counter[8]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => \p_0_in__0\(8),
      Q => sample_counter_reg(8)
    );
\total_value_adc1[0]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_value_adc1_reg__0\(4),
      I1 => \adc1_data_reg_n_0_[2]\,
      O => \total_value_adc1[0]_i_11_n_0\
    );
\total_value_adc1[0]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_value_adc1_reg__0\(3),
      I1 => \adc1_data_reg_n_0_[1]\,
      O => \total_value_adc1[0]_i_12_n_0\
    );
\total_value_adc1[0]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_value_adc1_reg__0\(2),
      I1 => \adc1_data_reg_n_0_[0]\,
      O => \total_value_adc1[0]_i_13_n_0\
    );
\total_value_adc1[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_astate[1]_i_2_n_0\,
      I1 => \adc1_data_reg_n_0_[3]\,
      O => \total_value_adc1[0]_i_2_n_0\
    );
\total_value_adc1[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_astate[1]_i_2_n_0\,
      I1 => \adc1_data_reg_n_0_[2]\,
      O => \total_value_adc1[0]_i_3_n_0\
    );
\total_value_adc1[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_astate[1]_i_2_n_0\,
      I1 => \adc1_data_reg_n_0_[1]\,
      O => \total_value_adc1[0]_i_4_n_0\
    );
\total_value_adc1[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_astate[1]_i_2_n_0\,
      I1 => \adc1_data_reg_n_0_[0]\,
      O => \total_value_adc1[0]_i_5_n_0\
    );
\total_value_adc1[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55C06AC0"
    )
        port map (
      I0 => \adc1_data_reg_n_0_[3]\,
      I1 => \total_value_adc2[0]_i_15_n_0\,
      I2 => total_value_adc10(3),
      I3 => \FSM_sequential_astate[1]_i_2_n_0\,
      I4 => \total_value_adc1_reg__0\(3),
      O => \total_value_adc1[0]_i_6_n_0\
    );
\total_value_adc1[0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55C06AC0"
    )
        port map (
      I0 => \adc1_data_reg_n_0_[2]\,
      I1 => \total_value_adc2[0]_i_15_n_0\,
      I2 => total_value_adc10(2),
      I3 => \FSM_sequential_astate[1]_i_2_n_0\,
      I4 => \total_value_adc1_reg__0\(2),
      O => \total_value_adc1[0]_i_7_n_0\
    );
\total_value_adc1[0]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55C06AC0"
    )
        port map (
      I0 => \adc1_data_reg_n_0_[1]\,
      I1 => \total_value_adc2[0]_i_15_n_0\,
      I2 => total_value_adc10(1),
      I3 => \FSM_sequential_astate[1]_i_2_n_0\,
      I4 => \total_value_adc1_reg__0\(1),
      O => \total_value_adc1[0]_i_8_n_0\
    );
\total_value_adc1[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888788888"
    )
        port map (
      I0 => \adc1_data_reg_n_0_[0]\,
      I1 => \FSM_sequential_astate[1]_i_2_n_0\,
      I2 => \total_value_adc1_reg__0\(0),
      I3 => \astate__0\(2),
      I4 => \astate__0\(1),
      I5 => \astate__0\(0),
      O => \total_value_adc1[0]_i_9_n_0\
    );
\total_value_adc1[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => total_value_adc1_reg(15),
      I1 => \FSM_sequential_astate[1]_i_2_n_0\,
      I2 => total_value_adc10(15),
      I3 => \total_value_adc2[0]_i_15_n_0\,
      O => \total_value_adc1[12]_i_2_n_0\
    );
\total_value_adc1[12]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => total_value_adc1_reg(14),
      I1 => \FSM_sequential_astate[1]_i_2_n_0\,
      I2 => total_value_adc10(14),
      I3 => \total_value_adc2[0]_i_15_n_0\,
      O => \total_value_adc1[12]_i_3_n_0\
    );
\total_value_adc1[12]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => total_value_adc1_reg(13),
      I1 => \FSM_sequential_astate[1]_i_2_n_0\,
      I2 => total_value_adc10(13),
      I3 => \total_value_adc2[0]_i_15_n_0\,
      O => \total_value_adc1[12]_i_4_n_0\
    );
\total_value_adc1[12]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => total_value_adc1_reg(12),
      I1 => \FSM_sequential_astate[1]_i_2_n_0\,
      I2 => total_value_adc10(12),
      I3 => \total_value_adc2[0]_i_15_n_0\,
      O => \total_value_adc1[12]_i_5_n_0\
    );
\total_value_adc1[12]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => total_value_adc1_reg(13),
      I1 => \adc1_data_reg_n_0_[11]\,
      O => \total_value_adc1[12]_i_7_n_0\
    );
\total_value_adc1[16]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => total_value_adc1_reg(17),
      I1 => \FSM_sequential_astate[1]_i_2_n_0\,
      I2 => total_value_adc10(17),
      I3 => \total_value_adc2[0]_i_15_n_0\,
      O => \total_value_adc1[16]_i_2_n_0\
    );
\total_value_adc1[16]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => total_value_adc1_reg(16),
      I1 => \FSM_sequential_astate[1]_i_2_n_0\,
      I2 => total_value_adc10(16),
      I3 => \total_value_adc2[0]_i_15_n_0\,
      O => \total_value_adc1[16]_i_3_n_0\
    );
\total_value_adc1[4]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => total_value_adc1_reg(8),
      I1 => \adc1_data_reg_n_0_[6]\,
      O => \total_value_adc1[4]_i_11_n_0\
    );
\total_value_adc1[4]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => total_value_adc1_reg(7),
      I1 => \adc1_data_reg_n_0_[5]\,
      O => \total_value_adc1[4]_i_12_n_0\
    );
\total_value_adc1[4]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => total_value_adc1_reg(6),
      I1 => \adc1_data_reg_n_0_[4]\,
      O => \total_value_adc1[4]_i_13_n_0\
    );
\total_value_adc1[4]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_value_adc1_reg__0\(5),
      I1 => \adc1_data_reg_n_0_[3]\,
      O => \total_value_adc1[4]_i_14_n_0\
    );
\total_value_adc1[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_astate[1]_i_2_n_0\,
      I1 => \adc1_data_reg_n_0_[7]\,
      O => \total_value_adc1[4]_i_2_n_0\
    );
\total_value_adc1[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_astate[1]_i_2_n_0\,
      I1 => \adc1_data_reg_n_0_[6]\,
      O => \total_value_adc1[4]_i_3_n_0\
    );
\total_value_adc1[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_astate[1]_i_2_n_0\,
      I1 => \adc1_data_reg_n_0_[5]\,
      O => \total_value_adc1[4]_i_4_n_0\
    );
\total_value_adc1[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_astate[1]_i_2_n_0\,
      I1 => \adc1_data_reg_n_0_[4]\,
      O => \total_value_adc1[4]_i_5_n_0\
    );
\total_value_adc1[4]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55C06AC0"
    )
        port map (
      I0 => \adc1_data_reg_n_0_[7]\,
      I1 => \total_value_adc2[0]_i_15_n_0\,
      I2 => total_value_adc10(7),
      I3 => \FSM_sequential_astate[1]_i_2_n_0\,
      I4 => total_value_adc1_reg(7),
      O => \total_value_adc1[4]_i_6_n_0\
    );
\total_value_adc1[4]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55C06AC0"
    )
        port map (
      I0 => \adc1_data_reg_n_0_[6]\,
      I1 => \total_value_adc2[0]_i_15_n_0\,
      I2 => total_value_adc10(6),
      I3 => \FSM_sequential_astate[1]_i_2_n_0\,
      I4 => total_value_adc1_reg(6),
      O => \total_value_adc1[4]_i_7_n_0\
    );
\total_value_adc1[4]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55C06AC0"
    )
        port map (
      I0 => \adc1_data_reg_n_0_[5]\,
      I1 => \total_value_adc2[0]_i_15_n_0\,
      I2 => total_value_adc10(5),
      I3 => \FSM_sequential_astate[1]_i_2_n_0\,
      I4 => \total_value_adc1_reg__0\(5),
      O => \total_value_adc1[4]_i_8_n_0\
    );
\total_value_adc1[4]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55C06AC0"
    )
        port map (
      I0 => \adc1_data_reg_n_0_[4]\,
      I1 => \total_value_adc2[0]_i_15_n_0\,
      I2 => total_value_adc10(4),
      I3 => \FSM_sequential_astate[1]_i_2_n_0\,
      I4 => \total_value_adc1_reg__0\(4),
      O => \total_value_adc1[4]_i_9_n_0\
    );
\total_value_adc1[8]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => total_value_adc1_reg(12),
      I1 => \adc1_data_reg_n_0_[10]\,
      O => \total_value_adc1[8]_i_11_n_0\
    );
\total_value_adc1[8]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => total_value_adc1_reg(11),
      I1 => \adc1_data_reg_n_0_[9]\,
      O => \total_value_adc1[8]_i_12_n_0\
    );
\total_value_adc1[8]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => total_value_adc1_reg(10),
      I1 => \adc1_data_reg_n_0_[8]\,
      O => \total_value_adc1[8]_i_13_n_0\
    );
\total_value_adc1[8]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => total_value_adc1_reg(9),
      I1 => \adc1_data_reg_n_0_[7]\,
      O => \total_value_adc1[8]_i_14_n_0\
    );
\total_value_adc1[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_astate[1]_i_2_n_0\,
      I1 => \adc1_data_reg_n_0_[11]\,
      O => \total_value_adc1[8]_i_2_n_0\
    );
\total_value_adc1[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_astate[1]_i_2_n_0\,
      I1 => \adc1_data_reg_n_0_[10]\,
      O => \total_value_adc1[8]_i_3_n_0\
    );
\total_value_adc1[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_astate[1]_i_2_n_0\,
      I1 => \adc1_data_reg_n_0_[9]\,
      O => \total_value_adc1[8]_i_4_n_0\
    );
\total_value_adc1[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_astate[1]_i_2_n_0\,
      I1 => \adc1_data_reg_n_0_[8]\,
      O => \total_value_adc1[8]_i_5_n_0\
    );
\total_value_adc1[8]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55C06AC0"
    )
        port map (
      I0 => \adc1_data_reg_n_0_[11]\,
      I1 => \total_value_adc2[0]_i_15_n_0\,
      I2 => total_value_adc10(11),
      I3 => \FSM_sequential_astate[1]_i_2_n_0\,
      I4 => total_value_adc1_reg(11),
      O => \total_value_adc1[8]_i_6_n_0\
    );
\total_value_adc1[8]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55C06AC0"
    )
        port map (
      I0 => \adc1_data_reg_n_0_[10]\,
      I1 => \total_value_adc2[0]_i_15_n_0\,
      I2 => total_value_adc10(10),
      I3 => \FSM_sequential_astate[1]_i_2_n_0\,
      I4 => total_value_adc1_reg(10),
      O => \total_value_adc1[8]_i_7_n_0\
    );
\total_value_adc1[8]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55C06AC0"
    )
        port map (
      I0 => \adc1_data_reg_n_0_[9]\,
      I1 => \total_value_adc2[0]_i_15_n_0\,
      I2 => total_value_adc10(9),
      I3 => \FSM_sequential_astate[1]_i_2_n_0\,
      I4 => total_value_adc1_reg(9),
      O => \total_value_adc1[8]_i_8_n_0\
    );
\total_value_adc1[8]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55C06AC0"
    )
        port map (
      I0 => \adc1_data_reg_n_0_[8]\,
      I1 => \total_value_adc2[0]_i_15_n_0\,
      I2 => total_value_adc10(8),
      I3 => \FSM_sequential_astate[1]_i_2_n_0\,
      I4 => total_value_adc1_reg(8),
      O => \total_value_adc1[8]_i_9_n_0\
    );
\total_value_adc1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \total_value_adc2[0]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => \total_value_adc1_reg[0]_i_1_n_7\,
      Q => \total_value_adc1_reg__0\(0)
    );
\total_value_adc1_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \total_value_adc1_reg[0]_i_1_n_0\,
      CO(2) => \total_value_adc1_reg[0]_i_1_n_1\,
      CO(1) => \total_value_adc1_reg[0]_i_1_n_2\,
      CO(0) => \total_value_adc1_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \total_value_adc1[0]_i_2_n_0\,
      DI(2) => \total_value_adc1[0]_i_3_n_0\,
      DI(1) => \total_value_adc1[0]_i_4_n_0\,
      DI(0) => \total_value_adc1[0]_i_5_n_0\,
      O(3) => \total_value_adc1_reg[0]_i_1_n_4\,
      O(2) => \total_value_adc1_reg[0]_i_1_n_5\,
      O(1) => \total_value_adc1_reg[0]_i_1_n_6\,
      O(0) => \total_value_adc1_reg[0]_i_1_n_7\,
      S(3) => \total_value_adc1[0]_i_6_n_0\,
      S(2) => \total_value_adc1[0]_i_7_n_0\,
      S(1) => \total_value_adc1[0]_i_8_n_0\,
      S(0) => \total_value_adc1[0]_i_9_n_0\
    );
\total_value_adc1_reg[0]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \total_value_adc1_reg[0]_i_10_n_0\,
      CO(2) => \total_value_adc1_reg[0]_i_10_n_1\,
      CO(1) => \total_value_adc1_reg[0]_i_10_n_2\,
      CO(0) => \total_value_adc1_reg[0]_i_10_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => \total_value_adc1_reg__0\(4 downto 2),
      DI(0) => '0',
      O(3 downto 0) => total_value_adc10(4 downto 1),
      S(3) => \total_value_adc1[0]_i_11_n_0\,
      S(2) => \total_value_adc1[0]_i_12_n_0\,
      S(1) => \total_value_adc1[0]_i_13_n_0\,
      S(0) => \total_value_adc1_reg__0\(1)
    );
\total_value_adc1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \total_value_adc2[0]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => \total_value_adc1_reg[8]_i_1_n_5\,
      Q => total_value_adc1_reg(10)
    );
\total_value_adc1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \total_value_adc2[0]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => \total_value_adc1_reg[8]_i_1_n_4\,
      Q => total_value_adc1_reg(11)
    );
\total_value_adc1_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \total_value_adc2[0]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => \total_value_adc1_reg[12]_i_1_n_7\,
      Q => total_value_adc1_reg(12)
    );
\total_value_adc1_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \total_value_adc1_reg[8]_i_1_n_0\,
      CO(3) => \total_value_adc1_reg[12]_i_1_n_0\,
      CO(2) => \total_value_adc1_reg[12]_i_1_n_1\,
      CO(1) => \total_value_adc1_reg[12]_i_1_n_2\,
      CO(0) => \total_value_adc1_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \total_value_adc1_reg[12]_i_1_n_4\,
      O(2) => \total_value_adc1_reg[12]_i_1_n_5\,
      O(1) => \total_value_adc1_reg[12]_i_1_n_6\,
      O(0) => \total_value_adc1_reg[12]_i_1_n_7\,
      S(3) => \total_value_adc1[12]_i_2_n_0\,
      S(2) => \total_value_adc1[12]_i_3_n_0\,
      S(1) => \total_value_adc1[12]_i_4_n_0\,
      S(0) => \total_value_adc1[12]_i_5_n_0\
    );
\total_value_adc1_reg[12]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \total_value_adc1_reg[8]_i_10_n_0\,
      CO(3) => \total_value_adc1_reg[12]_i_6_n_0\,
      CO(2) => \total_value_adc1_reg[12]_i_6_n_1\,
      CO(1) => \total_value_adc1_reg[12]_i_6_n_2\,
      CO(0) => \total_value_adc1_reg[12]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => total_value_adc1_reg(13),
      O(3 downto 0) => total_value_adc10(16 downto 13),
      S(3 downto 1) => total_value_adc1_reg(16 downto 14),
      S(0) => \total_value_adc1[12]_i_7_n_0\
    );
\total_value_adc1_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \total_value_adc2[0]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => \total_value_adc1_reg[12]_i_1_n_6\,
      Q => total_value_adc1_reg(13)
    );
\total_value_adc1_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \total_value_adc2[0]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => \total_value_adc1_reg[12]_i_1_n_5\,
      Q => total_value_adc1_reg(14)
    );
\total_value_adc1_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \total_value_adc2[0]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => \total_value_adc1_reg[12]_i_1_n_4\,
      Q => total_value_adc1_reg(15)
    );
\total_value_adc1_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \total_value_adc2[0]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => \total_value_adc1_reg[16]_i_1_n_7\,
      Q => total_value_adc1_reg(16)
    );
\total_value_adc1_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \total_value_adc1_reg[12]_i_1_n_0\,
      CO(3 downto 1) => \NLW_total_value_adc1_reg[16]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \total_value_adc1_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_total_value_adc1_reg[16]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \total_value_adc1_reg[16]_i_1_n_6\,
      O(0) => \total_value_adc1_reg[16]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \total_value_adc1[16]_i_2_n_0\,
      S(0) => \total_value_adc1[16]_i_3_n_0\
    );
\total_value_adc1_reg[16]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \total_value_adc1_reg[12]_i_6_n_0\,
      CO(3 downto 0) => \NLW_total_value_adc1_reg[16]_i_4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_total_value_adc1_reg[16]_i_4_O_UNCONNECTED\(3 downto 1),
      O(0) => total_value_adc10(17),
      S(3 downto 1) => B"000",
      S(0) => total_value_adc1_reg(17)
    );
\total_value_adc1_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \total_value_adc2[0]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => \total_value_adc1_reg[16]_i_1_n_6\,
      Q => total_value_adc1_reg(17)
    );
\total_value_adc1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \total_value_adc2[0]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => \total_value_adc1_reg[0]_i_1_n_6\,
      Q => \total_value_adc1_reg__0\(1)
    );
\total_value_adc1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \total_value_adc2[0]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => \total_value_adc1_reg[0]_i_1_n_5\,
      Q => \total_value_adc1_reg__0\(2)
    );
\total_value_adc1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \total_value_adc2[0]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => \total_value_adc1_reg[0]_i_1_n_4\,
      Q => \total_value_adc1_reg__0\(3)
    );
\total_value_adc1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \total_value_adc2[0]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => \total_value_adc1_reg[4]_i_1_n_7\,
      Q => \total_value_adc1_reg__0\(4)
    );
\total_value_adc1_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \total_value_adc1_reg[0]_i_1_n_0\,
      CO(3) => \total_value_adc1_reg[4]_i_1_n_0\,
      CO(2) => \total_value_adc1_reg[4]_i_1_n_1\,
      CO(1) => \total_value_adc1_reg[4]_i_1_n_2\,
      CO(0) => \total_value_adc1_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \total_value_adc1[4]_i_2_n_0\,
      DI(2) => \total_value_adc1[4]_i_3_n_0\,
      DI(1) => \total_value_adc1[4]_i_4_n_0\,
      DI(0) => \total_value_adc1[4]_i_5_n_0\,
      O(3) => \total_value_adc1_reg[4]_i_1_n_4\,
      O(2) => \total_value_adc1_reg[4]_i_1_n_5\,
      O(1) => \total_value_adc1_reg[4]_i_1_n_6\,
      O(0) => \total_value_adc1_reg[4]_i_1_n_7\,
      S(3) => \total_value_adc1[4]_i_6_n_0\,
      S(2) => \total_value_adc1[4]_i_7_n_0\,
      S(1) => \total_value_adc1[4]_i_8_n_0\,
      S(0) => \total_value_adc1[4]_i_9_n_0\
    );
\total_value_adc1_reg[4]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \total_value_adc1_reg[0]_i_10_n_0\,
      CO(3) => \total_value_adc1_reg[4]_i_10_n_0\,
      CO(2) => \total_value_adc1_reg[4]_i_10_n_1\,
      CO(1) => \total_value_adc1_reg[4]_i_10_n_2\,
      CO(0) => \total_value_adc1_reg[4]_i_10_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => total_value_adc1_reg(8 downto 6),
      DI(0) => \total_value_adc1_reg__0\(5),
      O(3 downto 0) => total_value_adc10(8 downto 5),
      S(3) => \total_value_adc1[4]_i_11_n_0\,
      S(2) => \total_value_adc1[4]_i_12_n_0\,
      S(1) => \total_value_adc1[4]_i_13_n_0\,
      S(0) => \total_value_adc1[4]_i_14_n_0\
    );
\total_value_adc1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \total_value_adc2[0]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => \total_value_adc1_reg[4]_i_1_n_6\,
      Q => \total_value_adc1_reg__0\(5)
    );
\total_value_adc1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \total_value_adc2[0]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => \total_value_adc1_reg[4]_i_1_n_5\,
      Q => total_value_adc1_reg(6)
    );
\total_value_adc1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \total_value_adc2[0]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => \total_value_adc1_reg[4]_i_1_n_4\,
      Q => total_value_adc1_reg(7)
    );
\total_value_adc1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \total_value_adc2[0]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => \total_value_adc1_reg[8]_i_1_n_7\,
      Q => total_value_adc1_reg(8)
    );
\total_value_adc1_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \total_value_adc1_reg[4]_i_1_n_0\,
      CO(3) => \total_value_adc1_reg[8]_i_1_n_0\,
      CO(2) => \total_value_adc1_reg[8]_i_1_n_1\,
      CO(1) => \total_value_adc1_reg[8]_i_1_n_2\,
      CO(0) => \total_value_adc1_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \total_value_adc1[8]_i_2_n_0\,
      DI(2) => \total_value_adc1[8]_i_3_n_0\,
      DI(1) => \total_value_adc1[8]_i_4_n_0\,
      DI(0) => \total_value_adc1[8]_i_5_n_0\,
      O(3) => \total_value_adc1_reg[8]_i_1_n_4\,
      O(2) => \total_value_adc1_reg[8]_i_1_n_5\,
      O(1) => \total_value_adc1_reg[8]_i_1_n_6\,
      O(0) => \total_value_adc1_reg[8]_i_1_n_7\,
      S(3) => \total_value_adc1[8]_i_6_n_0\,
      S(2) => \total_value_adc1[8]_i_7_n_0\,
      S(1) => \total_value_adc1[8]_i_8_n_0\,
      S(0) => \total_value_adc1[8]_i_9_n_0\
    );
\total_value_adc1_reg[8]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \total_value_adc1_reg[4]_i_10_n_0\,
      CO(3) => \total_value_adc1_reg[8]_i_10_n_0\,
      CO(2) => \total_value_adc1_reg[8]_i_10_n_1\,
      CO(1) => \total_value_adc1_reg[8]_i_10_n_2\,
      CO(0) => \total_value_adc1_reg[8]_i_10_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => total_value_adc1_reg(12 downto 9),
      O(3 downto 0) => total_value_adc10(12 downto 9),
      S(3) => \total_value_adc1[8]_i_11_n_0\,
      S(2) => \total_value_adc1[8]_i_12_n_0\,
      S(1) => \total_value_adc1[8]_i_13_n_0\,
      S(0) => \total_value_adc1[8]_i_14_n_0\
    );
\total_value_adc1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \total_value_adc2[0]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => \total_value_adc1_reg[8]_i_1_n_6\,
      Q => total_value_adc1_reg(9)
    );
\total_value_adc2[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F000E0"
    )
        port map (
      I0 => sel,
      I1 => \astate__0\(2),
      I2 => \astate__0\(1),
      I3 => \astate__0\(0),
      I4 => total_value_adc12,
      O => \total_value_adc2[0]_i_1_n_0\
    );
\total_value_adc2[0]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55C06AC0"
    )
        port map (
      I0 => \adc2_data_reg_n_0_[2]\,
      I1 => \total_value_adc2[0]_i_15_n_0\,
      I2 => total_value_adc20(2),
      I3 => \FSM_sequential_astate[1]_i_2_n_0\,
      I4 => \total_value_adc2_reg_n_0_[2]\,
      O => \total_value_adc2[0]_i_10_n_0\
    );
\total_value_adc2[0]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55C06AC0"
    )
        port map (
      I0 => \adc2_data_reg_n_0_[1]\,
      I1 => \total_value_adc2[0]_i_15_n_0\,
      I2 => total_value_adc20(1),
      I3 => \FSM_sequential_astate[1]_i_2_n_0\,
      I4 => \total_value_adc2_reg_n_0_[1]\,
      O => \total_value_adc2[0]_i_11_n_0\
    );
\total_value_adc2[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888788888"
    )
        port map (
      I0 => \adc2_data_reg_n_0_[0]\,
      I1 => \FSM_sequential_astate[1]_i_2_n_0\,
      I2 => \total_value_adc2_reg_n_0_[0]\,
      I3 => \astate__0\(2),
      I4 => \astate__0\(1),
      I5 => \astate__0\(0),
      O => \total_value_adc2[0]_i_12_n_0\
    );
\total_value_adc2[0]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => sample_counter_reg(3),
      I1 => sample_counter_reg(0),
      I2 => sample_counter_reg(2),
      I3 => sample_counter_reg(5),
      I4 => sample_counter_reg(4),
      O => \total_value_adc2[0]_i_13_n_0\
    );
\total_value_adc2[0]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => sample_counter_reg(2),
      I1 => sample_counter_reg(3),
      I2 => sample_counter_reg(0),
      I3 => sample_counter_reg(5),
      O => \total_value_adc2[0]_i_14_n_0\
    );
\total_value_adc2[0]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \FSM_sequential_astate[1]_i_3_n_0\,
      I1 => \sample_counter[8]_i_4_n_0\,
      I2 => sample_counter_reg(8),
      I3 => sample_counter_reg(1),
      I4 => sample_counter_reg(7),
      O => \total_value_adc2[0]_i_15_n_0\
    );
\total_value_adc2[0]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_value_adc2_reg_n_0_[4]\,
      I1 => \adc2_data_reg_n_0_[2]\,
      O => \total_value_adc2[0]_i_17_n_0\
    );
\total_value_adc2[0]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_value_adc2_reg_n_0_[3]\,
      I1 => \adc2_data_reg_n_0_[1]\,
      O => \total_value_adc2[0]_i_18_n_0\
    );
\total_value_adc2[0]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_value_adc2_reg_n_0_[2]\,
      I1 => \adc2_data_reg_n_0_[0]\,
      O => \total_value_adc2[0]_i_19_n_0\
    );
\total_value_adc2[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFDF"
    )
        port map (
      I0 => \total_value_adc2[0]_i_13_n_0\,
      I1 => sample_counter_reg(1),
      I2 => sample_counter_reg(6),
      I3 => sample_counter_reg(8),
      I4 => sample_counter_reg(7),
      O => sel
    );
\total_value_adc2[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => sample_counter_reg(7),
      I1 => \total_value_adc2[0]_i_14_n_0\,
      I2 => sample_counter_reg(1),
      I3 => sample_counter_reg(8),
      I4 => sample_counter_reg(4),
      I5 => sample_counter_reg(6),
      O => total_value_adc12
    );
\total_value_adc2[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_astate[1]_i_2_n_0\,
      I1 => \adc2_data_reg_n_0_[3]\,
      O => \total_value_adc2[0]_i_5_n_0\
    );
\total_value_adc2[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_astate[1]_i_2_n_0\,
      I1 => \adc2_data_reg_n_0_[2]\,
      O => \total_value_adc2[0]_i_6_n_0\
    );
\total_value_adc2[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_astate[1]_i_2_n_0\,
      I1 => \adc2_data_reg_n_0_[1]\,
      O => \total_value_adc2[0]_i_7_n_0\
    );
\total_value_adc2[0]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_astate[1]_i_2_n_0\,
      I1 => \adc2_data_reg_n_0_[0]\,
      O => \total_value_adc2[0]_i_8_n_0\
    );
\total_value_adc2[0]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55C06AC0"
    )
        port map (
      I0 => \adc2_data_reg_n_0_[3]\,
      I1 => \total_value_adc2[0]_i_15_n_0\,
      I2 => total_value_adc20(3),
      I3 => \FSM_sequential_astate[1]_i_2_n_0\,
      I4 => \total_value_adc2_reg_n_0_[3]\,
      O => \total_value_adc2[0]_i_9_n_0\
    );
\total_value_adc2[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => p_0_in(9),
      I1 => \FSM_sequential_astate[1]_i_2_n_0\,
      I2 => total_value_adc20(15),
      I3 => \total_value_adc2[0]_i_15_n_0\,
      O => \total_value_adc2[12]_i_2_n_0\
    );
\total_value_adc2[12]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => p_0_in(8),
      I1 => \FSM_sequential_astate[1]_i_2_n_0\,
      I2 => total_value_adc20(14),
      I3 => \total_value_adc2[0]_i_15_n_0\,
      O => \total_value_adc2[12]_i_3_n_0\
    );
\total_value_adc2[12]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => p_0_in(7),
      I1 => \FSM_sequential_astate[1]_i_2_n_0\,
      I2 => total_value_adc20(13),
      I3 => \total_value_adc2[0]_i_15_n_0\,
      O => \total_value_adc2[12]_i_4_n_0\
    );
\total_value_adc2[12]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => p_0_in(6),
      I1 => \FSM_sequential_astate[1]_i_2_n_0\,
      I2 => total_value_adc20(12),
      I3 => \total_value_adc2[0]_i_15_n_0\,
      O => \total_value_adc2[12]_i_5_n_0\
    );
\total_value_adc2[12]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in(7),
      I1 => \adc2_data_reg_n_0_[11]\,
      O => \total_value_adc2[12]_i_7_n_0\
    );
\total_value_adc2[16]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => p_0_in(11),
      I1 => \FSM_sequential_astate[1]_i_2_n_0\,
      I2 => total_value_adc20(17),
      I3 => \total_value_adc2[0]_i_15_n_0\,
      O => \total_value_adc2[16]_i_2_n_0\
    );
\total_value_adc2[16]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => p_0_in(10),
      I1 => \FSM_sequential_astate[1]_i_2_n_0\,
      I2 => total_value_adc20(16),
      I3 => \total_value_adc2[0]_i_15_n_0\,
      O => \total_value_adc2[16]_i_3_n_0\
    );
\total_value_adc2[4]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in(2),
      I1 => \adc2_data_reg_n_0_[6]\,
      O => \total_value_adc2[4]_i_11_n_0\
    );
\total_value_adc2[4]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in(1),
      I1 => \adc2_data_reg_n_0_[5]\,
      O => \total_value_adc2[4]_i_12_n_0\
    );
\total_value_adc2[4]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in(0),
      I1 => \adc2_data_reg_n_0_[4]\,
      O => \total_value_adc2[4]_i_13_n_0\
    );
\total_value_adc2[4]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_value_adc2_reg_n_0_[5]\,
      I1 => \adc2_data_reg_n_0_[3]\,
      O => \total_value_adc2[4]_i_14_n_0\
    );
\total_value_adc2[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_astate[1]_i_2_n_0\,
      I1 => \adc2_data_reg_n_0_[7]\,
      O => \total_value_adc2[4]_i_2_n_0\
    );
\total_value_adc2[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_astate[1]_i_2_n_0\,
      I1 => \adc2_data_reg_n_0_[6]\,
      O => \total_value_adc2[4]_i_3_n_0\
    );
\total_value_adc2[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_astate[1]_i_2_n_0\,
      I1 => \adc2_data_reg_n_0_[5]\,
      O => \total_value_adc2[4]_i_4_n_0\
    );
\total_value_adc2[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_astate[1]_i_2_n_0\,
      I1 => \adc2_data_reg_n_0_[4]\,
      O => \total_value_adc2[4]_i_5_n_0\
    );
\total_value_adc2[4]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55C06AC0"
    )
        port map (
      I0 => \adc2_data_reg_n_0_[7]\,
      I1 => \total_value_adc2[0]_i_15_n_0\,
      I2 => total_value_adc20(7),
      I3 => \FSM_sequential_astate[1]_i_2_n_0\,
      I4 => p_0_in(1),
      O => \total_value_adc2[4]_i_6_n_0\
    );
\total_value_adc2[4]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55C06AC0"
    )
        port map (
      I0 => \adc2_data_reg_n_0_[6]\,
      I1 => \total_value_adc2[0]_i_15_n_0\,
      I2 => total_value_adc20(6),
      I3 => \FSM_sequential_astate[1]_i_2_n_0\,
      I4 => p_0_in(0),
      O => \total_value_adc2[4]_i_7_n_0\
    );
\total_value_adc2[4]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55C06AC0"
    )
        port map (
      I0 => \adc2_data_reg_n_0_[5]\,
      I1 => \total_value_adc2[0]_i_15_n_0\,
      I2 => total_value_adc20(5),
      I3 => \FSM_sequential_astate[1]_i_2_n_0\,
      I4 => \total_value_adc2_reg_n_0_[5]\,
      O => \total_value_adc2[4]_i_8_n_0\
    );
\total_value_adc2[4]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55C06AC0"
    )
        port map (
      I0 => \adc2_data_reg_n_0_[4]\,
      I1 => \total_value_adc2[0]_i_15_n_0\,
      I2 => total_value_adc20(4),
      I3 => \FSM_sequential_astate[1]_i_2_n_0\,
      I4 => \total_value_adc2_reg_n_0_[4]\,
      O => \total_value_adc2[4]_i_9_n_0\
    );
\total_value_adc2[8]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in(6),
      I1 => \adc2_data_reg_n_0_[10]\,
      O => \total_value_adc2[8]_i_11_n_0\
    );
\total_value_adc2[8]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in(5),
      I1 => \adc2_data_reg_n_0_[9]\,
      O => \total_value_adc2[8]_i_12_n_0\
    );
\total_value_adc2[8]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in(4),
      I1 => \adc2_data_reg_n_0_[8]\,
      O => \total_value_adc2[8]_i_13_n_0\
    );
\total_value_adc2[8]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in(3),
      I1 => \adc2_data_reg_n_0_[7]\,
      O => \total_value_adc2[8]_i_14_n_0\
    );
\total_value_adc2[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_astate[1]_i_2_n_0\,
      I1 => \adc2_data_reg_n_0_[11]\,
      O => \total_value_adc2[8]_i_2_n_0\
    );
\total_value_adc2[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_astate[1]_i_2_n_0\,
      I1 => \adc2_data_reg_n_0_[10]\,
      O => \total_value_adc2[8]_i_3_n_0\
    );
\total_value_adc2[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_astate[1]_i_2_n_0\,
      I1 => \adc2_data_reg_n_0_[9]\,
      O => \total_value_adc2[8]_i_4_n_0\
    );
\total_value_adc2[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_astate[1]_i_2_n_0\,
      I1 => \adc2_data_reg_n_0_[8]\,
      O => \total_value_adc2[8]_i_5_n_0\
    );
\total_value_adc2[8]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55C06AC0"
    )
        port map (
      I0 => \adc2_data_reg_n_0_[11]\,
      I1 => \total_value_adc2[0]_i_15_n_0\,
      I2 => total_value_adc20(11),
      I3 => \FSM_sequential_astate[1]_i_2_n_0\,
      I4 => p_0_in(5),
      O => \total_value_adc2[8]_i_6_n_0\
    );
\total_value_adc2[8]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55C06AC0"
    )
        port map (
      I0 => \adc2_data_reg_n_0_[10]\,
      I1 => \total_value_adc2[0]_i_15_n_0\,
      I2 => total_value_adc20(10),
      I3 => \FSM_sequential_astate[1]_i_2_n_0\,
      I4 => p_0_in(4),
      O => \total_value_adc2[8]_i_7_n_0\
    );
\total_value_adc2[8]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55C06AC0"
    )
        port map (
      I0 => \adc2_data_reg_n_0_[9]\,
      I1 => \total_value_adc2[0]_i_15_n_0\,
      I2 => total_value_adc20(9),
      I3 => \FSM_sequential_astate[1]_i_2_n_0\,
      I4 => p_0_in(3),
      O => \total_value_adc2[8]_i_8_n_0\
    );
\total_value_adc2[8]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55C06AC0"
    )
        port map (
      I0 => \adc2_data_reg_n_0_[8]\,
      I1 => \total_value_adc2[0]_i_15_n_0\,
      I2 => total_value_adc20(8),
      I3 => \FSM_sequential_astate[1]_i_2_n_0\,
      I4 => p_0_in(2),
      O => \total_value_adc2[8]_i_9_n_0\
    );
\total_value_adc2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \total_value_adc2[0]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => \total_value_adc2_reg[0]_i_2_n_7\,
      Q => \total_value_adc2_reg_n_0_[0]\
    );
\total_value_adc2_reg[0]_i_16\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \total_value_adc2_reg[0]_i_16_n_0\,
      CO(2) => \total_value_adc2_reg[0]_i_16_n_1\,
      CO(1) => \total_value_adc2_reg[0]_i_16_n_2\,
      CO(0) => \total_value_adc2_reg[0]_i_16_n_3\,
      CYINIT => '0',
      DI(3) => \total_value_adc2_reg_n_0_[4]\,
      DI(2) => \total_value_adc2_reg_n_0_[3]\,
      DI(1) => \total_value_adc2_reg_n_0_[2]\,
      DI(0) => '0',
      O(3 downto 0) => total_value_adc20(4 downto 1),
      S(3) => \total_value_adc2[0]_i_17_n_0\,
      S(2) => \total_value_adc2[0]_i_18_n_0\,
      S(1) => \total_value_adc2[0]_i_19_n_0\,
      S(0) => \total_value_adc2_reg_n_0_[1]\
    );
\total_value_adc2_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \total_value_adc2_reg[0]_i_2_n_0\,
      CO(2) => \total_value_adc2_reg[0]_i_2_n_1\,
      CO(1) => \total_value_adc2_reg[0]_i_2_n_2\,
      CO(0) => \total_value_adc2_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \total_value_adc2[0]_i_5_n_0\,
      DI(2) => \total_value_adc2[0]_i_6_n_0\,
      DI(1) => \total_value_adc2[0]_i_7_n_0\,
      DI(0) => \total_value_adc2[0]_i_8_n_0\,
      O(3) => \total_value_adc2_reg[0]_i_2_n_4\,
      O(2) => \total_value_adc2_reg[0]_i_2_n_5\,
      O(1) => \total_value_adc2_reg[0]_i_2_n_6\,
      O(0) => \total_value_adc2_reg[0]_i_2_n_7\,
      S(3) => \total_value_adc2[0]_i_9_n_0\,
      S(2) => \total_value_adc2[0]_i_10_n_0\,
      S(1) => \total_value_adc2[0]_i_11_n_0\,
      S(0) => \total_value_adc2[0]_i_12_n_0\
    );
\total_value_adc2_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \total_value_adc2[0]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => \total_value_adc2_reg[8]_i_1_n_5\,
      Q => p_0_in(4)
    );
\total_value_adc2_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \total_value_adc2[0]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => \total_value_adc2_reg[8]_i_1_n_4\,
      Q => p_0_in(5)
    );
\total_value_adc2_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \total_value_adc2[0]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => \total_value_adc2_reg[12]_i_1_n_7\,
      Q => p_0_in(6)
    );
\total_value_adc2_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \total_value_adc2_reg[8]_i_1_n_0\,
      CO(3) => \total_value_adc2_reg[12]_i_1_n_0\,
      CO(2) => \total_value_adc2_reg[12]_i_1_n_1\,
      CO(1) => \total_value_adc2_reg[12]_i_1_n_2\,
      CO(0) => \total_value_adc2_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \total_value_adc2_reg[12]_i_1_n_4\,
      O(2) => \total_value_adc2_reg[12]_i_1_n_5\,
      O(1) => \total_value_adc2_reg[12]_i_1_n_6\,
      O(0) => \total_value_adc2_reg[12]_i_1_n_7\,
      S(3) => \total_value_adc2[12]_i_2_n_0\,
      S(2) => \total_value_adc2[12]_i_3_n_0\,
      S(1) => \total_value_adc2[12]_i_4_n_0\,
      S(0) => \total_value_adc2[12]_i_5_n_0\
    );
\total_value_adc2_reg[12]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \total_value_adc2_reg[8]_i_10_n_0\,
      CO(3) => \total_value_adc2_reg[12]_i_6_n_0\,
      CO(2) => \total_value_adc2_reg[12]_i_6_n_1\,
      CO(1) => \total_value_adc2_reg[12]_i_6_n_2\,
      CO(0) => \total_value_adc2_reg[12]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => p_0_in(7),
      O(3 downto 0) => total_value_adc20(16 downto 13),
      S(3 downto 1) => p_0_in(10 downto 8),
      S(0) => \total_value_adc2[12]_i_7_n_0\
    );
\total_value_adc2_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \total_value_adc2[0]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => \total_value_adc2_reg[12]_i_1_n_6\,
      Q => p_0_in(7)
    );
\total_value_adc2_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \total_value_adc2[0]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => \total_value_adc2_reg[12]_i_1_n_5\,
      Q => p_0_in(8)
    );
\total_value_adc2_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \total_value_adc2[0]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => \total_value_adc2_reg[12]_i_1_n_4\,
      Q => p_0_in(9)
    );
\total_value_adc2_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \total_value_adc2[0]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => \total_value_adc2_reg[16]_i_1_n_7\,
      Q => p_0_in(10)
    );
\total_value_adc2_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \total_value_adc2_reg[12]_i_1_n_0\,
      CO(3 downto 1) => \NLW_total_value_adc2_reg[16]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \total_value_adc2_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_total_value_adc2_reg[16]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \total_value_adc2_reg[16]_i_1_n_6\,
      O(0) => \total_value_adc2_reg[16]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \total_value_adc2[16]_i_2_n_0\,
      S(0) => \total_value_adc2[16]_i_3_n_0\
    );
\total_value_adc2_reg[16]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \total_value_adc2_reg[12]_i_6_n_0\,
      CO(3 downto 0) => \NLW_total_value_adc2_reg[16]_i_4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_total_value_adc2_reg[16]_i_4_O_UNCONNECTED\(3 downto 1),
      O(0) => total_value_adc20(17),
      S(3 downto 1) => B"000",
      S(0) => p_0_in(11)
    );
\total_value_adc2_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \total_value_adc2[0]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => \total_value_adc2_reg[16]_i_1_n_6\,
      Q => p_0_in(11)
    );
\total_value_adc2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \total_value_adc2[0]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => \total_value_adc2_reg[0]_i_2_n_6\,
      Q => \total_value_adc2_reg_n_0_[1]\
    );
\total_value_adc2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \total_value_adc2[0]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => \total_value_adc2_reg[0]_i_2_n_5\,
      Q => \total_value_adc2_reg_n_0_[2]\
    );
\total_value_adc2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \total_value_adc2[0]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => \total_value_adc2_reg[0]_i_2_n_4\,
      Q => \total_value_adc2_reg_n_0_[3]\
    );
\total_value_adc2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \total_value_adc2[0]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => \total_value_adc2_reg[4]_i_1_n_7\,
      Q => \total_value_adc2_reg_n_0_[4]\
    );
\total_value_adc2_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \total_value_adc2_reg[0]_i_2_n_0\,
      CO(3) => \total_value_adc2_reg[4]_i_1_n_0\,
      CO(2) => \total_value_adc2_reg[4]_i_1_n_1\,
      CO(1) => \total_value_adc2_reg[4]_i_1_n_2\,
      CO(0) => \total_value_adc2_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \total_value_adc2[4]_i_2_n_0\,
      DI(2) => \total_value_adc2[4]_i_3_n_0\,
      DI(1) => \total_value_adc2[4]_i_4_n_0\,
      DI(0) => \total_value_adc2[4]_i_5_n_0\,
      O(3) => \total_value_adc2_reg[4]_i_1_n_4\,
      O(2) => \total_value_adc2_reg[4]_i_1_n_5\,
      O(1) => \total_value_adc2_reg[4]_i_1_n_6\,
      O(0) => \total_value_adc2_reg[4]_i_1_n_7\,
      S(3) => \total_value_adc2[4]_i_6_n_0\,
      S(2) => \total_value_adc2[4]_i_7_n_0\,
      S(1) => \total_value_adc2[4]_i_8_n_0\,
      S(0) => \total_value_adc2[4]_i_9_n_0\
    );
\total_value_adc2_reg[4]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \total_value_adc2_reg[0]_i_16_n_0\,
      CO(3) => \total_value_adc2_reg[4]_i_10_n_0\,
      CO(2) => \total_value_adc2_reg[4]_i_10_n_1\,
      CO(1) => \total_value_adc2_reg[4]_i_10_n_2\,
      CO(0) => \total_value_adc2_reg[4]_i_10_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => p_0_in(2 downto 0),
      DI(0) => \total_value_adc2_reg_n_0_[5]\,
      O(3 downto 0) => total_value_adc20(8 downto 5),
      S(3) => \total_value_adc2[4]_i_11_n_0\,
      S(2) => \total_value_adc2[4]_i_12_n_0\,
      S(1) => \total_value_adc2[4]_i_13_n_0\,
      S(0) => \total_value_adc2[4]_i_14_n_0\
    );
\total_value_adc2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \total_value_adc2[0]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => \total_value_adc2_reg[4]_i_1_n_6\,
      Q => \total_value_adc2_reg_n_0_[5]\
    );
\total_value_adc2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \total_value_adc2[0]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => \total_value_adc2_reg[4]_i_1_n_5\,
      Q => p_0_in(0)
    );
\total_value_adc2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \total_value_adc2[0]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => \total_value_adc2_reg[4]_i_1_n_4\,
      Q => p_0_in(1)
    );
\total_value_adc2_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \total_value_adc2[0]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => \total_value_adc2_reg[8]_i_1_n_7\,
      Q => p_0_in(2)
    );
\total_value_adc2_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \total_value_adc2_reg[4]_i_1_n_0\,
      CO(3) => \total_value_adc2_reg[8]_i_1_n_0\,
      CO(2) => \total_value_adc2_reg[8]_i_1_n_1\,
      CO(1) => \total_value_adc2_reg[8]_i_1_n_2\,
      CO(0) => \total_value_adc2_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \total_value_adc2[8]_i_2_n_0\,
      DI(2) => \total_value_adc2[8]_i_3_n_0\,
      DI(1) => \total_value_adc2[8]_i_4_n_0\,
      DI(0) => \total_value_adc2[8]_i_5_n_0\,
      O(3) => \total_value_adc2_reg[8]_i_1_n_4\,
      O(2) => \total_value_adc2_reg[8]_i_1_n_5\,
      O(1) => \total_value_adc2_reg[8]_i_1_n_6\,
      O(0) => \total_value_adc2_reg[8]_i_1_n_7\,
      S(3) => \total_value_adc2[8]_i_6_n_0\,
      S(2) => \total_value_adc2[8]_i_7_n_0\,
      S(1) => \total_value_adc2[8]_i_8_n_0\,
      S(0) => \total_value_adc2[8]_i_9_n_0\
    );
\total_value_adc2_reg[8]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \total_value_adc2_reg[4]_i_10_n_0\,
      CO(3) => \total_value_adc2_reg[8]_i_10_n_0\,
      CO(2) => \total_value_adc2_reg[8]_i_10_n_1\,
      CO(1) => \total_value_adc2_reg[8]_i_10_n_2\,
      CO(0) => \total_value_adc2_reg[8]_i_10_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => p_0_in(6 downto 3),
      O(3 downto 0) => total_value_adc20(12 downto 9),
      S(3) => \total_value_adc2[8]_i_11_n_0\,
      S(2) => \total_value_adc2[8]_i_12_n_0\,
      S(1) => \total_value_adc2[8]_i_13_n_0\,
      S(0) => \total_value_adc2[8]_i_14_n_0\
    );
\total_value_adc2_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \total_value_adc2[0]_i_1_n_0\,
      CLR => clk_1K_i_2_n_0,
      D => \total_value_adc2_reg[8]_i_1_n_6\,
      Q => p_0_in(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_adc_sampler_0_0 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    din1 : in STD_LOGIC;
    din2 : in STD_LOGIC;
    cs_n : out STD_LOGIC;
    clk_5_12M : out STD_LOGIC;
    intr_sw : out STD_LOGIC_VECTOR ( 1 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_adc_sampler_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_adc_sampler_0_0 : entity is "design_1_adc_sampler_0_0,adc_sampler,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_adc_sampler_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_adc_sampler_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_adc_sampler_0_0 : entity is "adc_sampler,Vivado 2019.2";
end design_1_adc_sampler_0_0;

architecture STRUCTURE of design_1_adc_sampler_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^clk\ : STD_LOGIC;
  signal \^data_out\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \^intr_sw\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 5000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  \^clk\ <= clk;
  clk_5_12M <= \^clk\;
  data_out(31) <= \<const0>\;
  data_out(30) <= \<const0>\;
  data_out(29) <= \<const1>\;
  data_out(28) <= \<const0>\;
  data_out(27) <= \<const0>\;
  data_out(26) <= \<const0>\;
  data_out(25) <= \<const0>\;
  data_out(24) <= \<const0>\;
  data_out(23) <= \<const0>\;
  data_out(22) <= \<const0>\;
  data_out(21) <= \<const0>\;
  data_out(20) <= \<const0>\;
  data_out(19 downto 8) <= \^data_out\(19 downto 8);
  data_out(7) <= \<const0>\;
  data_out(6) <= \<const0>\;
  data_out(5) <= \<const1>\;
  data_out(4) <= \<const1>\;
  data_out(3) <= \<const0>\;
  data_out(2) <= \<const0>\;
  data_out(1) <= \^intr_sw\(0);
  data_out(0) <= \^data_out\(0);
  intr_sw(1) <= \^data_out\(0);
  intr_sw(0) <= \^intr_sw\(0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.design_1_adc_sampler_0_0_adc_sampler
     port map (
      clk => \^clk\,
      clk_1K_reg_0 => \^data_out\(0),
      cs_n => cs_n,
      data_out(12 downto 1) => \^data_out\(19 downto 8),
      data_out(0) => \^intr_sw\(0),
      din1 => din1,
      din2 => din2,
      rst_n => rst_n
    );
end STRUCTURE;
