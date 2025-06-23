// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun Jun 22 14:28:10 2025
// Host        : Kumar_PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_adc_sampler_0_0_sim_netlist.v
// Design      : design_1_adc_sampler_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc_sampler
   (clk_1K_reg_0,
    cs_n,
    data_out,
    clk,
    din2,
    din1,
    rst_n);
  output clk_1K_reg_0;
  output cs_n;
  output [12:0]data_out;
  input clk;
  input din2;
  input din1;
  input rst_n;

  wire \FSM_sequential_astate[1]_i_2_n_0 ;
  wire \FSM_sequential_astate[1]_i_3_n_0 ;
  wire \FSM_sequential_astate[2]_i_1_n_0 ;
  wire \FSM_sequential_astate[2]_i_3_n_0 ;
  wire \FSM_sequential_astate[2]_i_4_n_0 ;
  wire adc1_data;
  wire \adc1_data_reg_n_0_[0] ;
  wire \adc1_data_reg_n_0_[10] ;
  wire \adc1_data_reg_n_0_[11] ;
  wire \adc1_data_reg_n_0_[1] ;
  wire \adc1_data_reg_n_0_[2] ;
  wire \adc1_data_reg_n_0_[3] ;
  wire \adc1_data_reg_n_0_[4] ;
  wire \adc1_data_reg_n_0_[5] ;
  wire \adc1_data_reg_n_0_[6] ;
  wire \adc1_data_reg_n_0_[7] ;
  wire \adc1_data_reg_n_0_[8] ;
  wire \adc1_data_reg_n_0_[9] ;
  wire \adc2_data_reg_n_0_[0] ;
  wire \adc2_data_reg_n_0_[10] ;
  wire \adc2_data_reg_n_0_[11] ;
  wire \adc2_data_reg_n_0_[1] ;
  wire \adc2_data_reg_n_0_[2] ;
  wire \adc2_data_reg_n_0_[3] ;
  wire \adc2_data_reg_n_0_[4] ;
  wire \adc2_data_reg_n_0_[5] ;
  wire \adc2_data_reg_n_0_[6] ;
  wire \adc2_data_reg_n_0_[7] ;
  wire \adc2_data_reg_n_0_[8] ;
  wire \adc2_data_reg_n_0_[9] ;
  wire [2:0]astate;
  wire [2:0]astate__0;
  wire [11:0]average_value_adc1;
  wire average_value_adc1_1;
  wire [11:0]average_value_adc2;
  wire \bit_count[0]_i_1_n_0 ;
  wire \bit_count[1]_i_1_n_0 ;
  wire \bit_count[2]_i_1_n_0 ;
  wire \bit_count[3]_i_1_n_0 ;
  wire \bit_count_reg_n_0_[0] ;
  wire \bit_count_reg_n_0_[1] ;
  wire \bit_count_reg_n_0_[2] ;
  wire \bit_count_reg_n_0_[3] ;
  wire clk;
  wire clk_1K_i_1_n_0;
  wire clk_1K_i_2_n_0;
  wire clk_1K_i_3_n_0;
  wire clk_1K_i_4_n_0;
  wire clk_1K_reg_0;
  wire [12:0]counter;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__1_n_1;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire [12:0]counter_0;
  wire cs_n;
  wire [12:1]data0;
  wire [12:0]data_out;
  wire din1;
  wire din2;
  wire [2:0]nastate;
  wire [2:0]nastate__0;
  wire [11:0]p_0_in;
  wire [8:0]p_0_in__0;
  wire rst_n;
  wire \sample_counter[6]_i_2_n_0 ;
  wire \sample_counter[8]_i_1_n_0 ;
  wire \sample_counter[8]_i_3_n_0 ;
  wire \sample_counter[8]_i_4_n_0 ;
  wire [8:0]sample_counter_reg;
  wire sel;
  wire [17:1]total_value_adc10;
  wire total_value_adc12;
  wire \total_value_adc1[0]_i_11_n_0 ;
  wire \total_value_adc1[0]_i_12_n_0 ;
  wire \total_value_adc1[0]_i_13_n_0 ;
  wire \total_value_adc1[0]_i_2_n_0 ;
  wire \total_value_adc1[0]_i_3_n_0 ;
  wire \total_value_adc1[0]_i_4_n_0 ;
  wire \total_value_adc1[0]_i_5_n_0 ;
  wire \total_value_adc1[0]_i_6_n_0 ;
  wire \total_value_adc1[0]_i_7_n_0 ;
  wire \total_value_adc1[0]_i_8_n_0 ;
  wire \total_value_adc1[0]_i_9_n_0 ;
  wire \total_value_adc1[12]_i_2_n_0 ;
  wire \total_value_adc1[12]_i_3_n_0 ;
  wire \total_value_adc1[12]_i_4_n_0 ;
  wire \total_value_adc1[12]_i_5_n_0 ;
  wire \total_value_adc1[12]_i_7_n_0 ;
  wire \total_value_adc1[16]_i_2_n_0 ;
  wire \total_value_adc1[16]_i_3_n_0 ;
  wire \total_value_adc1[4]_i_11_n_0 ;
  wire \total_value_adc1[4]_i_12_n_0 ;
  wire \total_value_adc1[4]_i_13_n_0 ;
  wire \total_value_adc1[4]_i_14_n_0 ;
  wire \total_value_adc1[4]_i_2_n_0 ;
  wire \total_value_adc1[4]_i_3_n_0 ;
  wire \total_value_adc1[4]_i_4_n_0 ;
  wire \total_value_adc1[4]_i_5_n_0 ;
  wire \total_value_adc1[4]_i_6_n_0 ;
  wire \total_value_adc1[4]_i_7_n_0 ;
  wire \total_value_adc1[4]_i_8_n_0 ;
  wire \total_value_adc1[4]_i_9_n_0 ;
  wire \total_value_adc1[8]_i_11_n_0 ;
  wire \total_value_adc1[8]_i_12_n_0 ;
  wire \total_value_adc1[8]_i_13_n_0 ;
  wire \total_value_adc1[8]_i_14_n_0 ;
  wire \total_value_adc1[8]_i_2_n_0 ;
  wire \total_value_adc1[8]_i_3_n_0 ;
  wire \total_value_adc1[8]_i_4_n_0 ;
  wire \total_value_adc1[8]_i_5_n_0 ;
  wire \total_value_adc1[8]_i_6_n_0 ;
  wire \total_value_adc1[8]_i_7_n_0 ;
  wire \total_value_adc1[8]_i_8_n_0 ;
  wire \total_value_adc1[8]_i_9_n_0 ;
  wire [17:6]total_value_adc1_reg;
  wire \total_value_adc1_reg[0]_i_10_n_0 ;
  wire \total_value_adc1_reg[0]_i_10_n_1 ;
  wire \total_value_adc1_reg[0]_i_10_n_2 ;
  wire \total_value_adc1_reg[0]_i_10_n_3 ;
  wire \total_value_adc1_reg[0]_i_1_n_0 ;
  wire \total_value_adc1_reg[0]_i_1_n_1 ;
  wire \total_value_adc1_reg[0]_i_1_n_2 ;
  wire \total_value_adc1_reg[0]_i_1_n_3 ;
  wire \total_value_adc1_reg[0]_i_1_n_4 ;
  wire \total_value_adc1_reg[0]_i_1_n_5 ;
  wire \total_value_adc1_reg[0]_i_1_n_6 ;
  wire \total_value_adc1_reg[0]_i_1_n_7 ;
  wire \total_value_adc1_reg[12]_i_1_n_0 ;
  wire \total_value_adc1_reg[12]_i_1_n_1 ;
  wire \total_value_adc1_reg[12]_i_1_n_2 ;
  wire \total_value_adc1_reg[12]_i_1_n_3 ;
  wire \total_value_adc1_reg[12]_i_1_n_4 ;
  wire \total_value_adc1_reg[12]_i_1_n_5 ;
  wire \total_value_adc1_reg[12]_i_1_n_6 ;
  wire \total_value_adc1_reg[12]_i_1_n_7 ;
  wire \total_value_adc1_reg[12]_i_6_n_0 ;
  wire \total_value_adc1_reg[12]_i_6_n_1 ;
  wire \total_value_adc1_reg[12]_i_6_n_2 ;
  wire \total_value_adc1_reg[12]_i_6_n_3 ;
  wire \total_value_adc1_reg[16]_i_1_n_3 ;
  wire \total_value_adc1_reg[16]_i_1_n_6 ;
  wire \total_value_adc1_reg[16]_i_1_n_7 ;
  wire \total_value_adc1_reg[4]_i_10_n_0 ;
  wire \total_value_adc1_reg[4]_i_10_n_1 ;
  wire \total_value_adc1_reg[4]_i_10_n_2 ;
  wire \total_value_adc1_reg[4]_i_10_n_3 ;
  wire \total_value_adc1_reg[4]_i_1_n_0 ;
  wire \total_value_adc1_reg[4]_i_1_n_1 ;
  wire \total_value_adc1_reg[4]_i_1_n_2 ;
  wire \total_value_adc1_reg[4]_i_1_n_3 ;
  wire \total_value_adc1_reg[4]_i_1_n_4 ;
  wire \total_value_adc1_reg[4]_i_1_n_5 ;
  wire \total_value_adc1_reg[4]_i_1_n_6 ;
  wire \total_value_adc1_reg[4]_i_1_n_7 ;
  wire \total_value_adc1_reg[8]_i_10_n_0 ;
  wire \total_value_adc1_reg[8]_i_10_n_1 ;
  wire \total_value_adc1_reg[8]_i_10_n_2 ;
  wire \total_value_adc1_reg[8]_i_10_n_3 ;
  wire \total_value_adc1_reg[8]_i_1_n_0 ;
  wire \total_value_adc1_reg[8]_i_1_n_1 ;
  wire \total_value_adc1_reg[8]_i_1_n_2 ;
  wire \total_value_adc1_reg[8]_i_1_n_3 ;
  wire \total_value_adc1_reg[8]_i_1_n_4 ;
  wire \total_value_adc1_reg[8]_i_1_n_5 ;
  wire \total_value_adc1_reg[8]_i_1_n_6 ;
  wire \total_value_adc1_reg[8]_i_1_n_7 ;
  wire [5:0]total_value_adc1_reg__0;
  wire [17:1]total_value_adc20;
  wire \total_value_adc2[0]_i_10_n_0 ;
  wire \total_value_adc2[0]_i_11_n_0 ;
  wire \total_value_adc2[0]_i_12_n_0 ;
  wire \total_value_adc2[0]_i_13_n_0 ;
  wire \total_value_adc2[0]_i_14_n_0 ;
  wire \total_value_adc2[0]_i_15_n_0 ;
  wire \total_value_adc2[0]_i_17_n_0 ;
  wire \total_value_adc2[0]_i_18_n_0 ;
  wire \total_value_adc2[0]_i_19_n_0 ;
  wire \total_value_adc2[0]_i_1_n_0 ;
  wire \total_value_adc2[0]_i_5_n_0 ;
  wire \total_value_adc2[0]_i_6_n_0 ;
  wire \total_value_adc2[0]_i_7_n_0 ;
  wire \total_value_adc2[0]_i_8_n_0 ;
  wire \total_value_adc2[0]_i_9_n_0 ;
  wire \total_value_adc2[12]_i_2_n_0 ;
  wire \total_value_adc2[12]_i_3_n_0 ;
  wire \total_value_adc2[12]_i_4_n_0 ;
  wire \total_value_adc2[12]_i_5_n_0 ;
  wire \total_value_adc2[12]_i_7_n_0 ;
  wire \total_value_adc2[16]_i_2_n_0 ;
  wire \total_value_adc2[16]_i_3_n_0 ;
  wire \total_value_adc2[4]_i_11_n_0 ;
  wire \total_value_adc2[4]_i_12_n_0 ;
  wire \total_value_adc2[4]_i_13_n_0 ;
  wire \total_value_adc2[4]_i_14_n_0 ;
  wire \total_value_adc2[4]_i_2_n_0 ;
  wire \total_value_adc2[4]_i_3_n_0 ;
  wire \total_value_adc2[4]_i_4_n_0 ;
  wire \total_value_adc2[4]_i_5_n_0 ;
  wire \total_value_adc2[4]_i_6_n_0 ;
  wire \total_value_adc2[4]_i_7_n_0 ;
  wire \total_value_adc2[4]_i_8_n_0 ;
  wire \total_value_adc2[4]_i_9_n_0 ;
  wire \total_value_adc2[8]_i_11_n_0 ;
  wire \total_value_adc2[8]_i_12_n_0 ;
  wire \total_value_adc2[8]_i_13_n_0 ;
  wire \total_value_adc2[8]_i_14_n_0 ;
  wire \total_value_adc2[8]_i_2_n_0 ;
  wire \total_value_adc2[8]_i_3_n_0 ;
  wire \total_value_adc2[8]_i_4_n_0 ;
  wire \total_value_adc2[8]_i_5_n_0 ;
  wire \total_value_adc2[8]_i_6_n_0 ;
  wire \total_value_adc2[8]_i_7_n_0 ;
  wire \total_value_adc2[8]_i_8_n_0 ;
  wire \total_value_adc2[8]_i_9_n_0 ;
  wire \total_value_adc2_reg[0]_i_16_n_0 ;
  wire \total_value_adc2_reg[0]_i_16_n_1 ;
  wire \total_value_adc2_reg[0]_i_16_n_2 ;
  wire \total_value_adc2_reg[0]_i_16_n_3 ;
  wire \total_value_adc2_reg[0]_i_2_n_0 ;
  wire \total_value_adc2_reg[0]_i_2_n_1 ;
  wire \total_value_adc2_reg[0]_i_2_n_2 ;
  wire \total_value_adc2_reg[0]_i_2_n_3 ;
  wire \total_value_adc2_reg[0]_i_2_n_4 ;
  wire \total_value_adc2_reg[0]_i_2_n_5 ;
  wire \total_value_adc2_reg[0]_i_2_n_6 ;
  wire \total_value_adc2_reg[0]_i_2_n_7 ;
  wire \total_value_adc2_reg[12]_i_1_n_0 ;
  wire \total_value_adc2_reg[12]_i_1_n_1 ;
  wire \total_value_adc2_reg[12]_i_1_n_2 ;
  wire \total_value_adc2_reg[12]_i_1_n_3 ;
  wire \total_value_adc2_reg[12]_i_1_n_4 ;
  wire \total_value_adc2_reg[12]_i_1_n_5 ;
  wire \total_value_adc2_reg[12]_i_1_n_6 ;
  wire \total_value_adc2_reg[12]_i_1_n_7 ;
  wire \total_value_adc2_reg[12]_i_6_n_0 ;
  wire \total_value_adc2_reg[12]_i_6_n_1 ;
  wire \total_value_adc2_reg[12]_i_6_n_2 ;
  wire \total_value_adc2_reg[12]_i_6_n_3 ;
  wire \total_value_adc2_reg[16]_i_1_n_3 ;
  wire \total_value_adc2_reg[16]_i_1_n_6 ;
  wire \total_value_adc2_reg[16]_i_1_n_7 ;
  wire \total_value_adc2_reg[4]_i_10_n_0 ;
  wire \total_value_adc2_reg[4]_i_10_n_1 ;
  wire \total_value_adc2_reg[4]_i_10_n_2 ;
  wire \total_value_adc2_reg[4]_i_10_n_3 ;
  wire \total_value_adc2_reg[4]_i_1_n_0 ;
  wire \total_value_adc2_reg[4]_i_1_n_1 ;
  wire \total_value_adc2_reg[4]_i_1_n_2 ;
  wire \total_value_adc2_reg[4]_i_1_n_3 ;
  wire \total_value_adc2_reg[4]_i_1_n_4 ;
  wire \total_value_adc2_reg[4]_i_1_n_5 ;
  wire \total_value_adc2_reg[4]_i_1_n_6 ;
  wire \total_value_adc2_reg[4]_i_1_n_7 ;
  wire \total_value_adc2_reg[8]_i_10_n_0 ;
  wire \total_value_adc2_reg[8]_i_10_n_1 ;
  wire \total_value_adc2_reg[8]_i_10_n_2 ;
  wire \total_value_adc2_reg[8]_i_10_n_3 ;
  wire \total_value_adc2_reg[8]_i_1_n_0 ;
  wire \total_value_adc2_reg[8]_i_1_n_1 ;
  wire \total_value_adc2_reg[8]_i_1_n_2 ;
  wire \total_value_adc2_reg[8]_i_1_n_3 ;
  wire \total_value_adc2_reg[8]_i_1_n_4 ;
  wire \total_value_adc2_reg[8]_i_1_n_5 ;
  wire \total_value_adc2_reg[8]_i_1_n_6 ;
  wire \total_value_adc2_reg[8]_i_1_n_7 ;
  wire \total_value_adc2_reg_n_0_[0] ;
  wire \total_value_adc2_reg_n_0_[1] ;
  wire \total_value_adc2_reg_n_0_[2] ;
  wire \total_value_adc2_reg_n_0_[3] ;
  wire \total_value_adc2_reg_n_0_[4] ;
  wire \total_value_adc2_reg_n_0_[5] ;
  wire [3:3]NLW_counter0_carry__1_CO_UNCONNECTED;
  wire [3:1]\NLW_total_value_adc1_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_total_value_adc1_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_total_value_adc1_reg[16]_i_4_CO_UNCONNECTED ;
  wire [3:1]\NLW_total_value_adc1_reg[16]_i_4_O_UNCONNECTED ;
  wire [3:1]\NLW_total_value_adc2_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_total_value_adc2_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_total_value_adc2_reg[16]_i_4_CO_UNCONNECTED ;
  wire [3:1]\NLW_total_value_adc2_reg[16]_i_4_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_astate[0]_i_1 
       (.I0(astate__0[0]),
        .I1(astate__0[2]),
        .O(nastate__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_sequential_astate[1]_i_1 
       (.I0(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I1(astate__0[1]),
        .I2(astate__0[0]),
        .O(nastate__0[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \FSM_sequential_astate[1]_i_2 
       (.I0(\sample_counter[8]_i_4_n_0 ),
        .I1(sample_counter_reg[8]),
        .I2(sample_counter_reg[1]),
        .I3(sample_counter_reg[7]),
        .I4(\FSM_sequential_astate[1]_i_3_n_0 ),
        .O(\FSM_sequential_astate[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_sequential_astate[1]_i_3 
       (.I0(astate__0[2]),
        .I1(astate__0[1]),
        .I2(astate__0[0]),
        .O(\FSM_sequential_astate[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEFEFFFEFEFEF)) 
    \FSM_sequential_astate[2]_i_1 
       (.I0(astate[2]),
        .I1(astate[1]),
        .I2(astate[0]),
        .I3(\bit_count_reg_n_0_[0] ),
        .I4(\bit_count_reg_n_0_[3] ),
        .I5(\FSM_sequential_astate[2]_i_3_n_0 ),
        .O(\FSM_sequential_astate[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h31C0)) 
    \FSM_sequential_astate[2]_i_2 
       (.I0(\FSM_sequential_astate[2]_i_4_n_0 ),
        .I1(astate__0[2]),
        .I2(astate__0[0]),
        .I3(astate__0[1]),
        .O(nastate__0[2]));
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_astate[2]_i_3 
       (.I0(\bit_count_reg_n_0_[1] ),
        .I1(\bit_count_reg_n_0_[2] ),
        .O(\FSM_sequential_astate[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_astate[2]_i_4 
       (.I0(sample_counter_reg[7]),
        .I1(sample_counter_reg[1]),
        .I2(sample_counter_reg[8]),
        .I3(\sample_counter[8]_i_4_n_0 ),
        .O(\FSM_sequential_astate[2]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "AIDLE:000,SAMPLE:001,CHECK_SAMPLE_COUNT:010,WAIT_2:100,DONE:110,COMP_AVERAGE:101,WAIT_1:011" *) 
  FDCE \FSM_sequential_astate_reg[0] 
       (.C(clk),
        .CE(\FSM_sequential_astate[2]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(nastate__0[0]),
        .Q(astate__0[0]));
  (* FSM_ENCODED_STATES = "AIDLE:000,SAMPLE:001,CHECK_SAMPLE_COUNT:010,WAIT_2:100,DONE:110,COMP_AVERAGE:101,WAIT_1:011" *) 
  FDCE \FSM_sequential_astate_reg[1] 
       (.C(clk),
        .CE(\FSM_sequential_astate[2]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(nastate__0[1]),
        .Q(astate__0[1]));
  (* FSM_ENCODED_STATES = "AIDLE:000,SAMPLE:001,CHECK_SAMPLE_COUNT:010,WAIT_2:100,DONE:110,COMP_AVERAGE:101,WAIT_1:011" *) 
  FDCE \FSM_sequential_astate_reg[2] 
       (.C(clk),
        .CE(\FSM_sequential_astate[2]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(nastate__0[2]),
        .Q(astate__0[2]));
  FDCE \adc1_data_reg[0] 
       (.C(clk),
        .CE(adc1_data),
        .CLR(clk_1K_i_2_n_0),
        .D(din1),
        .Q(\adc1_data_reg_n_0_[0] ));
  FDCE \adc1_data_reg[10] 
       (.C(clk),
        .CE(adc1_data),
        .CLR(clk_1K_i_2_n_0),
        .D(\adc1_data_reg_n_0_[9] ),
        .Q(\adc1_data_reg_n_0_[10] ));
  FDCE \adc1_data_reg[11] 
       (.C(clk),
        .CE(adc1_data),
        .CLR(clk_1K_i_2_n_0),
        .D(\adc1_data_reg_n_0_[10] ),
        .Q(\adc1_data_reg_n_0_[11] ));
  FDCE \adc1_data_reg[1] 
       (.C(clk),
        .CE(adc1_data),
        .CLR(clk_1K_i_2_n_0),
        .D(\adc1_data_reg_n_0_[0] ),
        .Q(\adc1_data_reg_n_0_[1] ));
  FDCE \adc1_data_reg[2] 
       (.C(clk),
        .CE(adc1_data),
        .CLR(clk_1K_i_2_n_0),
        .D(\adc1_data_reg_n_0_[1] ),
        .Q(\adc1_data_reg_n_0_[2] ));
  FDCE \adc1_data_reg[3] 
       (.C(clk),
        .CE(adc1_data),
        .CLR(clk_1K_i_2_n_0),
        .D(\adc1_data_reg_n_0_[2] ),
        .Q(\adc1_data_reg_n_0_[3] ));
  FDCE \adc1_data_reg[4] 
       (.C(clk),
        .CE(adc1_data),
        .CLR(clk_1K_i_2_n_0),
        .D(\adc1_data_reg_n_0_[3] ),
        .Q(\adc1_data_reg_n_0_[4] ));
  FDCE \adc1_data_reg[5] 
       (.C(clk),
        .CE(adc1_data),
        .CLR(clk_1K_i_2_n_0),
        .D(\adc1_data_reg_n_0_[4] ),
        .Q(\adc1_data_reg_n_0_[5] ));
  FDCE \adc1_data_reg[6] 
       (.C(clk),
        .CE(adc1_data),
        .CLR(clk_1K_i_2_n_0),
        .D(\adc1_data_reg_n_0_[5] ),
        .Q(\adc1_data_reg_n_0_[6] ));
  FDCE \adc1_data_reg[7] 
       (.C(clk),
        .CE(adc1_data),
        .CLR(clk_1K_i_2_n_0),
        .D(\adc1_data_reg_n_0_[6] ),
        .Q(\adc1_data_reg_n_0_[7] ));
  FDCE \adc1_data_reg[8] 
       (.C(clk),
        .CE(adc1_data),
        .CLR(clk_1K_i_2_n_0),
        .D(\adc1_data_reg_n_0_[7] ),
        .Q(\adc1_data_reg_n_0_[8] ));
  FDCE \adc1_data_reg[9] 
       (.C(clk),
        .CE(adc1_data),
        .CLR(clk_1K_i_2_n_0),
        .D(\adc1_data_reg_n_0_[8] ),
        .Q(\adc1_data_reg_n_0_[9] ));
  LUT3 #(
    .INIT(8'h04)) 
    \adc2_data[11]_i_1 
       (.I0(astate__0[1]),
        .I1(astate__0[0]),
        .I2(astate__0[2]),
        .O(adc1_data));
  FDCE \adc2_data_reg[0] 
       (.C(clk),
        .CE(adc1_data),
        .CLR(clk_1K_i_2_n_0),
        .D(din2),
        .Q(\adc2_data_reg_n_0_[0] ));
  FDCE \adc2_data_reg[10] 
       (.C(clk),
        .CE(adc1_data),
        .CLR(clk_1K_i_2_n_0),
        .D(\adc2_data_reg_n_0_[9] ),
        .Q(\adc2_data_reg_n_0_[10] ));
  FDCE \adc2_data_reg[11] 
       (.C(clk),
        .CE(adc1_data),
        .CLR(clk_1K_i_2_n_0),
        .D(\adc2_data_reg_n_0_[10] ),
        .Q(\adc2_data_reg_n_0_[11] ));
  FDCE \adc2_data_reg[1] 
       (.C(clk),
        .CE(adc1_data),
        .CLR(clk_1K_i_2_n_0),
        .D(\adc2_data_reg_n_0_[0] ),
        .Q(\adc2_data_reg_n_0_[1] ));
  FDCE \adc2_data_reg[2] 
       (.C(clk),
        .CE(adc1_data),
        .CLR(clk_1K_i_2_n_0),
        .D(\adc2_data_reg_n_0_[1] ),
        .Q(\adc2_data_reg_n_0_[2] ));
  FDCE \adc2_data_reg[3] 
       (.C(clk),
        .CE(adc1_data),
        .CLR(clk_1K_i_2_n_0),
        .D(\adc2_data_reg_n_0_[2] ),
        .Q(\adc2_data_reg_n_0_[3] ));
  FDCE \adc2_data_reg[4] 
       (.C(clk),
        .CE(adc1_data),
        .CLR(clk_1K_i_2_n_0),
        .D(\adc2_data_reg_n_0_[3] ),
        .Q(\adc2_data_reg_n_0_[4] ));
  FDCE \adc2_data_reg[5] 
       (.C(clk),
        .CE(adc1_data),
        .CLR(clk_1K_i_2_n_0),
        .D(\adc2_data_reg_n_0_[4] ),
        .Q(\adc2_data_reg_n_0_[5] ));
  FDCE \adc2_data_reg[6] 
       (.C(clk),
        .CE(adc1_data),
        .CLR(clk_1K_i_2_n_0),
        .D(\adc2_data_reg_n_0_[5] ),
        .Q(\adc2_data_reg_n_0_[6] ));
  FDCE \adc2_data_reg[7] 
       (.C(clk),
        .CE(adc1_data),
        .CLR(clk_1K_i_2_n_0),
        .D(\adc2_data_reg_n_0_[6] ),
        .Q(\adc2_data_reg_n_0_[7] ));
  FDCE \adc2_data_reg[8] 
       (.C(clk),
        .CE(adc1_data),
        .CLR(clk_1K_i_2_n_0),
        .D(\adc2_data_reg_n_0_[7] ),
        .Q(\adc2_data_reg_n_0_[8] ));
  FDCE \adc2_data_reg[9] 
       (.C(clk),
        .CE(adc1_data),
        .CLR(clk_1K_i_2_n_0),
        .D(\adc2_data_reg_n_0_[8] ),
        .Q(\adc2_data_reg_n_0_[9] ));
  LUT2 #(
    .INIT(4'h1)) 
    \astate[0]_i_1 
       (.I0(astate[0]),
        .I1(astate[2]),
        .O(nastate[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h02F0)) 
    \astate[1]_i_1 
       (.I0(\FSM_sequential_astate[2]_i_4_n_0 ),
        .I1(astate[2]),
        .I2(astate[0]),
        .I3(astate[1]),
        .O(nastate[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0AB0)) 
    \astate[2]_i_1 
       (.I0(astate[0]),
        .I1(\FSM_sequential_astate[2]_i_4_n_0 ),
        .I2(astate[1]),
        .I3(astate[2]),
        .O(nastate[2]));
  FDCE \astate_reg[0] 
       (.C(clk),
        .CE(\FSM_sequential_astate[2]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(nastate[0]),
        .Q(astate[0]));
  FDCE \astate_reg[1] 
       (.C(clk),
        .CE(\FSM_sequential_astate[2]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(nastate[1]),
        .Q(astate[1]));
  FDCE \astate_reg[2] 
       (.C(clk),
        .CE(\FSM_sequential_astate[2]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(nastate[2]),
        .Q(astate[2]));
  FDCE \average_value_adc1_reg[0] 
       (.C(clk),
        .CE(average_value_adc1_1),
        .CLR(clk_1K_i_2_n_0),
        .D(total_value_adc1_reg[6]),
        .Q(average_value_adc1[0]));
  FDCE \average_value_adc1_reg[10] 
       (.C(clk),
        .CE(average_value_adc1_1),
        .CLR(clk_1K_i_2_n_0),
        .D(total_value_adc1_reg[16]),
        .Q(average_value_adc1[10]));
  FDCE \average_value_adc1_reg[11] 
       (.C(clk),
        .CE(average_value_adc1_1),
        .CLR(clk_1K_i_2_n_0),
        .D(total_value_adc1_reg[17]),
        .Q(average_value_adc1[11]));
  FDCE \average_value_adc1_reg[1] 
       (.C(clk),
        .CE(average_value_adc1_1),
        .CLR(clk_1K_i_2_n_0),
        .D(total_value_adc1_reg[7]),
        .Q(average_value_adc1[1]));
  FDCE \average_value_adc1_reg[2] 
       (.C(clk),
        .CE(average_value_adc1_1),
        .CLR(clk_1K_i_2_n_0),
        .D(total_value_adc1_reg[8]),
        .Q(average_value_adc1[2]));
  FDCE \average_value_adc1_reg[3] 
       (.C(clk),
        .CE(average_value_adc1_1),
        .CLR(clk_1K_i_2_n_0),
        .D(total_value_adc1_reg[9]),
        .Q(average_value_adc1[3]));
  FDCE \average_value_adc1_reg[4] 
       (.C(clk),
        .CE(average_value_adc1_1),
        .CLR(clk_1K_i_2_n_0),
        .D(total_value_adc1_reg[10]),
        .Q(average_value_adc1[4]));
  FDCE \average_value_adc1_reg[5] 
       (.C(clk),
        .CE(average_value_adc1_1),
        .CLR(clk_1K_i_2_n_0),
        .D(total_value_adc1_reg[11]),
        .Q(average_value_adc1[5]));
  FDCE \average_value_adc1_reg[6] 
       (.C(clk),
        .CE(average_value_adc1_1),
        .CLR(clk_1K_i_2_n_0),
        .D(total_value_adc1_reg[12]),
        .Q(average_value_adc1[6]));
  FDCE \average_value_adc1_reg[7] 
       (.C(clk),
        .CE(average_value_adc1_1),
        .CLR(clk_1K_i_2_n_0),
        .D(total_value_adc1_reg[13]),
        .Q(average_value_adc1[7]));
  FDCE \average_value_adc1_reg[8] 
       (.C(clk),
        .CE(average_value_adc1_1),
        .CLR(clk_1K_i_2_n_0),
        .D(total_value_adc1_reg[14]),
        .Q(average_value_adc1[8]));
  FDCE \average_value_adc1_reg[9] 
       (.C(clk),
        .CE(average_value_adc1_1),
        .CLR(clk_1K_i_2_n_0),
        .D(total_value_adc1_reg[15]),
        .Q(average_value_adc1[9]));
  LUT3 #(
    .INIT(8'h40)) 
    \average_value_adc2[11]_i_1 
       (.I0(astate__0[1]),
        .I1(astate__0[0]),
        .I2(astate__0[2]),
        .O(average_value_adc1_1));
  FDCE \average_value_adc2_reg[0] 
       (.C(clk),
        .CE(average_value_adc1_1),
        .CLR(clk_1K_i_2_n_0),
        .D(p_0_in[0]),
        .Q(average_value_adc2[0]));
  FDCE \average_value_adc2_reg[10] 
       (.C(clk),
        .CE(average_value_adc1_1),
        .CLR(clk_1K_i_2_n_0),
        .D(p_0_in[10]),
        .Q(average_value_adc2[10]));
  FDCE \average_value_adc2_reg[11] 
       (.C(clk),
        .CE(average_value_adc1_1),
        .CLR(clk_1K_i_2_n_0),
        .D(p_0_in[11]),
        .Q(average_value_adc2[11]));
  FDCE \average_value_adc2_reg[1] 
       (.C(clk),
        .CE(average_value_adc1_1),
        .CLR(clk_1K_i_2_n_0),
        .D(p_0_in[1]),
        .Q(average_value_adc2[1]));
  FDCE \average_value_adc2_reg[2] 
       (.C(clk),
        .CE(average_value_adc1_1),
        .CLR(clk_1K_i_2_n_0),
        .D(p_0_in[2]),
        .Q(average_value_adc2[2]));
  FDCE \average_value_adc2_reg[3] 
       (.C(clk),
        .CE(average_value_adc1_1),
        .CLR(clk_1K_i_2_n_0),
        .D(p_0_in[3]),
        .Q(average_value_adc2[3]));
  FDCE \average_value_adc2_reg[4] 
       (.C(clk),
        .CE(average_value_adc1_1),
        .CLR(clk_1K_i_2_n_0),
        .D(p_0_in[4]),
        .Q(average_value_adc2[4]));
  FDCE \average_value_adc2_reg[5] 
       (.C(clk),
        .CE(average_value_adc1_1),
        .CLR(clk_1K_i_2_n_0),
        .D(p_0_in[5]),
        .Q(average_value_adc2[5]));
  FDCE \average_value_adc2_reg[6] 
       (.C(clk),
        .CE(average_value_adc1_1),
        .CLR(clk_1K_i_2_n_0),
        .D(p_0_in[6]),
        .Q(average_value_adc2[6]));
  FDCE \average_value_adc2_reg[7] 
       (.C(clk),
        .CE(average_value_adc1_1),
        .CLR(clk_1K_i_2_n_0),
        .D(p_0_in[7]),
        .Q(average_value_adc2[7]));
  FDCE \average_value_adc2_reg[8] 
       (.C(clk),
        .CE(average_value_adc1_1),
        .CLR(clk_1K_i_2_n_0),
        .D(p_0_in[8]),
        .Q(average_value_adc2[8]));
  FDCE \average_value_adc2_reg[9] 
       (.C(clk),
        .CE(average_value_adc1_1),
        .CLR(clk_1K_i_2_n_0),
        .D(p_0_in[9]),
        .Q(average_value_adc2[9]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \bit_count[0]_i_1 
       (.I0(astate__0[2]),
        .I1(astate__0[0]),
        .I2(astate__0[1]),
        .I3(\bit_count_reg_n_0_[0] ),
        .O(\bit_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00040400)) 
    \bit_count[1]_i_1 
       (.I0(astate__0[1]),
        .I1(astate__0[0]),
        .I2(astate__0[2]),
        .I3(\bit_count_reg_n_0_[0] ),
        .I4(\bit_count_reg_n_0_[1] ),
        .O(\bit_count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000060000000C00)) 
    \bit_count[2]_i_1 
       (.I0(\bit_count_reg_n_0_[1] ),
        .I1(\bit_count_reg_n_0_[2] ),
        .I2(astate__0[2]),
        .I3(astate__0[0]),
        .I4(astate__0[1]),
        .I5(\bit_count_reg_n_0_[0] ),
        .O(\bit_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7800F000)) 
    \bit_count[3]_i_1 
       (.I0(\bit_count_reg_n_0_[1] ),
        .I1(\bit_count_reg_n_0_[2] ),
        .I2(\bit_count_reg_n_0_[3] ),
        .I3(adc1_data),
        .I4(\bit_count_reg_n_0_[0] ),
        .O(\bit_count[3]_i_1_n_0 ));
  FDCE \bit_count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_1K_i_2_n_0),
        .D(\bit_count[0]_i_1_n_0 ),
        .Q(\bit_count_reg_n_0_[0] ));
  FDCE \bit_count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_1K_i_2_n_0),
        .D(\bit_count[1]_i_1_n_0 ),
        .Q(\bit_count_reg_n_0_[1] ));
  FDCE \bit_count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_1K_i_2_n_0),
        .D(\bit_count[2]_i_1_n_0 ),
        .Q(\bit_count_reg_n_0_[2] ));
  FDCE \bit_count_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_1K_i_2_n_0),
        .D(\bit_count[3]_i_1_n_0 ),
        .Q(\bit_count_reg_n_0_[3] ));
  LUT6 #(
    .INIT(64'hFFDFFFFF00200000)) 
    clk_1K_i_1
       (.I0(clk_1K_i_3_n_0),
        .I1(clk_1K_i_4_n_0),
        .I2(counter[7]),
        .I3(counter[0]),
        .I4(counter[8]),
        .I5(clk_1K_reg_0),
        .O(clk_1K_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    clk_1K_i_2
       (.I0(rst_n),
        .O(clk_1K_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    clk_1K_i_3
       (.I0(counter[12]),
        .I1(counter[9]),
        .I2(counter[1]),
        .I3(counter[4]),
        .I4(counter[10]),
        .I5(counter[3]),
        .O(clk_1K_i_3_n_0));
  LUT4 #(
    .INIT(16'hDFFF)) 
    clk_1K_i_4
       (.I0(counter[11]),
        .I1(counter[5]),
        .I2(counter[6]),
        .I3(counter[2]),
        .O(clk_1K_i_4_n_0));
  FDCE clk_1K_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_1K_i_2_n_0),
        .D(clk_1K_i_1_n_0),
        .Q(clk_1K_reg_0));
  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3}),
        .CYINIT(counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(counter[4:1]));
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(counter[8:5]));
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({NLW_counter0_carry__1_CO_UNCONNECTED[3],counter0_carry__1_n_1,counter0_carry__1_n_2,counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(counter[12:9]));
  LUT5 #(
    .INIT(32'h00DF00FF)) 
    \counter[0]_i_1 
       (.I0(clk_1K_i_3_n_0),
        .I1(clk_1K_i_4_n_0),
        .I2(counter[7]),
        .I3(counter[0]),
        .I4(counter[8]),
        .O(counter_0[0]));
  LUT6 #(
    .INIT(64'hFFDFFFFF00000000)) 
    \counter[10]_i_1 
       (.I0(clk_1K_i_3_n_0),
        .I1(clk_1K_i_4_n_0),
        .I2(counter[7]),
        .I3(counter[0]),
        .I4(counter[8]),
        .I5(data0[10]),
        .O(counter_0[10]));
  LUT6 #(
    .INIT(64'hFFDFFFFF00000000)) 
    \counter[11]_i_1 
       (.I0(clk_1K_i_3_n_0),
        .I1(clk_1K_i_4_n_0),
        .I2(counter[7]),
        .I3(counter[0]),
        .I4(counter[8]),
        .I5(data0[11]),
        .O(counter_0[11]));
  LUT6 #(
    .INIT(64'hFFDFFFFF00000000)) 
    \counter[12]_i_1 
       (.I0(clk_1K_i_3_n_0),
        .I1(clk_1K_i_4_n_0),
        .I2(counter[7]),
        .I3(counter[0]),
        .I4(counter[8]),
        .I5(data0[12]),
        .O(counter_0[12]));
  LUT6 #(
    .INIT(64'hFFDFFFFF00000000)) 
    \counter[1]_i_1 
       (.I0(clk_1K_i_3_n_0),
        .I1(clk_1K_i_4_n_0),
        .I2(counter[7]),
        .I3(counter[0]),
        .I4(counter[8]),
        .I5(data0[1]),
        .O(counter_0[1]));
  LUT6 #(
    .INIT(64'hFFDFFFFF00000000)) 
    \counter[2]_i_1 
       (.I0(clk_1K_i_3_n_0),
        .I1(clk_1K_i_4_n_0),
        .I2(counter[7]),
        .I3(counter[0]),
        .I4(counter[8]),
        .I5(data0[2]),
        .O(counter_0[2]));
  LUT6 #(
    .INIT(64'hFFDFFFFF00000000)) 
    \counter[3]_i_1 
       (.I0(clk_1K_i_3_n_0),
        .I1(clk_1K_i_4_n_0),
        .I2(counter[7]),
        .I3(counter[0]),
        .I4(counter[8]),
        .I5(data0[3]),
        .O(counter_0[3]));
  LUT6 #(
    .INIT(64'hFFDFFFFF00000000)) 
    \counter[4]_i_1 
       (.I0(clk_1K_i_3_n_0),
        .I1(clk_1K_i_4_n_0),
        .I2(counter[7]),
        .I3(counter[0]),
        .I4(counter[8]),
        .I5(data0[4]),
        .O(counter_0[4]));
  LUT6 #(
    .INIT(64'hFFDFFFFF00000000)) 
    \counter[5]_i_1 
       (.I0(clk_1K_i_3_n_0),
        .I1(clk_1K_i_4_n_0),
        .I2(counter[7]),
        .I3(counter[0]),
        .I4(counter[8]),
        .I5(data0[5]),
        .O(counter_0[5]));
  LUT6 #(
    .INIT(64'hFFDFFFFF00000000)) 
    \counter[6]_i_1 
       (.I0(clk_1K_i_3_n_0),
        .I1(clk_1K_i_4_n_0),
        .I2(counter[7]),
        .I3(counter[0]),
        .I4(counter[8]),
        .I5(data0[6]),
        .O(counter_0[6]));
  LUT6 #(
    .INIT(64'hFFDFFFFF00000000)) 
    \counter[7]_i_1 
       (.I0(clk_1K_i_3_n_0),
        .I1(clk_1K_i_4_n_0),
        .I2(counter[7]),
        .I3(counter[0]),
        .I4(counter[8]),
        .I5(data0[7]),
        .O(counter_0[7]));
  LUT6 #(
    .INIT(64'hFFDFFFFF00000000)) 
    \counter[8]_i_1 
       (.I0(clk_1K_i_3_n_0),
        .I1(clk_1K_i_4_n_0),
        .I2(counter[7]),
        .I3(counter[0]),
        .I4(counter[8]),
        .I5(data0[8]),
        .O(counter_0[8]));
  LUT6 #(
    .INIT(64'hFFDFFFFF00000000)) 
    \counter[9]_i_1 
       (.I0(clk_1K_i_3_n_0),
        .I1(clk_1K_i_4_n_0),
        .I2(counter[7]),
        .I3(counter[0]),
        .I4(counter[8]),
        .I5(data0[9]),
        .O(counter_0[9]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_1K_i_2_n_0),
        .D(counter_0[0]),
        .Q(counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_1K_i_2_n_0),
        .D(counter_0[10]),
        .Q(counter[10]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_1K_i_2_n_0),
        .D(counter_0[11]),
        .Q(counter[11]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_1K_i_2_n_0),
        .D(counter_0[12]),
        .Q(counter[12]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_1K_i_2_n_0),
        .D(counter_0[1]),
        .Q(counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_1K_i_2_n_0),
        .D(counter_0[2]),
        .Q(counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_1K_i_2_n_0),
        .D(counter_0[3]),
        .Q(counter[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_1K_i_2_n_0),
        .D(counter_0[4]),
        .Q(counter[4]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_1K_i_2_n_0),
        .D(counter_0[5]),
        .Q(counter[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_1K_i_2_n_0),
        .D(counter_0[6]),
        .Q(counter[6]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_1K_i_2_n_0),
        .D(counter_0[7]),
        .Q(counter[7]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_1K_i_2_n_0),
        .D(counter_0[8]),
        .Q(counter[8]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_1K_i_2_n_0),
        .D(counter_0[9]),
        .Q(counter[9]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h7D)) 
    cs_n_INST_0
       (.I0(astate__0[0]),
        .I1(astate__0[1]),
        .I2(astate__0[2]),
        .O(cs_n));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[10]_INST_0 
       (.I0(average_value_adc1[2]),
        .I1(clk_1K_reg_0),
        .I2(average_value_adc2[2]),
        .O(data_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[11]_INST_0 
       (.I0(average_value_adc1[3]),
        .I1(clk_1K_reg_0),
        .I2(average_value_adc2[3]),
        .O(data_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[12]_INST_0 
       (.I0(average_value_adc1[4]),
        .I1(clk_1K_reg_0),
        .I2(average_value_adc2[4]),
        .O(data_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[13]_INST_0 
       (.I0(average_value_adc1[5]),
        .I1(clk_1K_reg_0),
        .I2(average_value_adc2[5]),
        .O(data_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[14]_INST_0 
       (.I0(average_value_adc1[6]),
        .I1(clk_1K_reg_0),
        .I2(average_value_adc2[6]),
        .O(data_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[15]_INST_0 
       (.I0(average_value_adc1[7]),
        .I1(clk_1K_reg_0),
        .I2(average_value_adc2[7]),
        .O(data_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[16]_INST_0 
       (.I0(average_value_adc1[8]),
        .I1(clk_1K_reg_0),
        .I2(average_value_adc2[8]),
        .O(data_out[9]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[17]_INST_0 
       (.I0(average_value_adc1[9]),
        .I1(clk_1K_reg_0),
        .I2(average_value_adc2[9]),
        .O(data_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[18]_INST_0 
       (.I0(average_value_adc1[10]),
        .I1(clk_1K_reg_0),
        .I2(average_value_adc2[10]),
        .O(data_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[19]_INST_0 
       (.I0(average_value_adc1[11]),
        .I1(clk_1K_reg_0),
        .I2(average_value_adc2[11]),
        .O(data_out[12]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[1]_INST_0 
       (.I0(clk_1K_reg_0),
        .O(data_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[8]_INST_0 
       (.I0(average_value_adc1[0]),
        .I1(clk_1K_reg_0),
        .I2(average_value_adc2[0]),
        .O(data_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[9]_INST_0 
       (.I0(average_value_adc1[1]),
        .I1(clk_1K_reg_0),
        .I2(average_value_adc2[1]),
        .O(data_out[2]));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \sample_counter[0]_i_1 
       (.I0(adc1_data),
        .I1(\bit_count_reg_n_0_[0] ),
        .I2(\bit_count_reg_n_0_[3] ),
        .I3(\bit_count_reg_n_0_[2] ),
        .I4(\bit_count_reg_n_0_[1] ),
        .I5(sample_counter_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \sample_counter[1]_i_1 
       (.I0(sample_counter_reg[0]),
        .I1(\sample_counter[8]_i_3_n_0 ),
        .I2(sample_counter_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h48C0)) 
    \sample_counter[2]_i_1 
       (.I0(sample_counter_reg[1]),
        .I1(\sample_counter[8]_i_3_n_0 ),
        .I2(sample_counter_reg[2]),
        .I3(sample_counter_reg[0]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7800F000)) 
    \sample_counter[3]_i_1 
       (.I0(sample_counter_reg[0]),
        .I1(sample_counter_reg[2]),
        .I2(sample_counter_reg[3]),
        .I3(\sample_counter[8]_i_3_n_0 ),
        .I4(sample_counter_reg[1]),
        .O(p_0_in__0[3]));
  LUT6 #(
    .INIT(64'h7F800000FF000000)) 
    \sample_counter[4]_i_1 
       (.I0(sample_counter_reg[2]),
        .I1(sample_counter_reg[0]),
        .I2(sample_counter_reg[3]),
        .I3(sample_counter_reg[4]),
        .I4(\sample_counter[8]_i_3_n_0 ),
        .I5(sample_counter_reg[1]),
        .O(p_0_in__0[4]));
  LUT5 #(
    .INIT(32'hB400F000)) 
    \sample_counter[5]_i_1 
       (.I0(\sample_counter[6]_i_2_n_0 ),
        .I1(sample_counter_reg[4]),
        .I2(sample_counter_reg[5]),
        .I3(\sample_counter[8]_i_3_n_0 ),
        .I4(sample_counter_reg[1]),
        .O(p_0_in__0[5]));
  LUT6 #(
    .INIT(64'hDF200000FF000000)) 
    \sample_counter[6]_i_1 
       (.I0(sample_counter_reg[4]),
        .I1(\sample_counter[6]_i_2_n_0 ),
        .I2(sample_counter_reg[5]),
        .I3(sample_counter_reg[6]),
        .I4(\sample_counter[8]_i_3_n_0 ),
        .I5(sample_counter_reg[1]),
        .O(p_0_in__0[6]));
  LUT3 #(
    .INIT(8'h7F)) 
    \sample_counter[6]_i_2 
       (.I0(sample_counter_reg[2]),
        .I1(sample_counter_reg[0]),
        .I2(sample_counter_reg[3]),
        .O(\sample_counter[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hA208)) 
    \sample_counter[7]_i_1 
       (.I0(\sample_counter[8]_i_3_n_0 ),
        .I1(sample_counter_reg[1]),
        .I2(\sample_counter[8]_i_4_n_0 ),
        .I3(sample_counter_reg[7]),
        .O(p_0_in__0[7]));
  LUT4 #(
    .INIT(16'hFF40)) 
    \sample_counter[8]_i_1 
       (.I0(astate__0[0]),
        .I1(astate__0[1]),
        .I2(astate__0[2]),
        .I3(\sample_counter[8]_i_3_n_0 ),
        .O(\sample_counter[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hC6CC0000)) 
    \sample_counter[8]_i_2 
       (.I0(sample_counter_reg[7]),
        .I1(sample_counter_reg[8]),
        .I2(\sample_counter[8]_i_4_n_0 ),
        .I3(sample_counter_reg[1]),
        .I4(\sample_counter[8]_i_3_n_0 ),
        .O(p_0_in__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \sample_counter[8]_i_3 
       (.I0(\bit_count_reg_n_0_[1] ),
        .I1(\bit_count_reg_n_0_[2] ),
        .I2(\bit_count_reg_n_0_[3] ),
        .I3(\bit_count_reg_n_0_[0] ),
        .I4(adc1_data),
        .O(\sample_counter[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \sample_counter[8]_i_4 
       (.I0(sample_counter_reg[5]),
        .I1(sample_counter_reg[3]),
        .I2(sample_counter_reg[0]),
        .I3(sample_counter_reg[2]),
        .I4(sample_counter_reg[4]),
        .I5(sample_counter_reg[6]),
        .O(\sample_counter[8]_i_4_n_0 ));
  FDCE \sample_counter_reg[0] 
       (.C(clk),
        .CE(\sample_counter[8]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(p_0_in__0[0]),
        .Q(sample_counter_reg[0]));
  FDCE \sample_counter_reg[1] 
       (.C(clk),
        .CE(\sample_counter[8]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(p_0_in__0[1]),
        .Q(sample_counter_reg[1]));
  FDCE \sample_counter_reg[2] 
       (.C(clk),
        .CE(\sample_counter[8]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(p_0_in__0[2]),
        .Q(sample_counter_reg[2]));
  FDCE \sample_counter_reg[3] 
       (.C(clk),
        .CE(\sample_counter[8]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(p_0_in__0[3]),
        .Q(sample_counter_reg[3]));
  FDCE \sample_counter_reg[4] 
       (.C(clk),
        .CE(\sample_counter[8]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(p_0_in__0[4]),
        .Q(sample_counter_reg[4]));
  FDCE \sample_counter_reg[5] 
       (.C(clk),
        .CE(\sample_counter[8]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(p_0_in__0[5]),
        .Q(sample_counter_reg[5]));
  FDCE \sample_counter_reg[6] 
       (.C(clk),
        .CE(\sample_counter[8]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(p_0_in__0[6]),
        .Q(sample_counter_reg[6]));
  FDCE \sample_counter_reg[7] 
       (.C(clk),
        .CE(\sample_counter[8]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(p_0_in__0[7]),
        .Q(sample_counter_reg[7]));
  FDCE \sample_counter_reg[8] 
       (.C(clk),
        .CE(\sample_counter[8]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(p_0_in__0[8]),
        .Q(sample_counter_reg[8]));
  LUT2 #(
    .INIT(4'h6)) 
    \total_value_adc1[0]_i_11 
       (.I0(total_value_adc1_reg__0[4]),
        .I1(\adc1_data_reg_n_0_[2] ),
        .O(\total_value_adc1[0]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \total_value_adc1[0]_i_12 
       (.I0(total_value_adc1_reg__0[3]),
        .I1(\adc1_data_reg_n_0_[1] ),
        .O(\total_value_adc1[0]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \total_value_adc1[0]_i_13 
       (.I0(total_value_adc1_reg__0[2]),
        .I1(\adc1_data_reg_n_0_[0] ),
        .O(\total_value_adc1[0]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \total_value_adc1[0]_i_2 
       (.I0(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I1(\adc1_data_reg_n_0_[3] ),
        .O(\total_value_adc1[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \total_value_adc1[0]_i_3 
       (.I0(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I1(\adc1_data_reg_n_0_[2] ),
        .O(\total_value_adc1[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \total_value_adc1[0]_i_4 
       (.I0(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I1(\adc1_data_reg_n_0_[1] ),
        .O(\total_value_adc1[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \total_value_adc1[0]_i_5 
       (.I0(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I1(\adc1_data_reg_n_0_[0] ),
        .O(\total_value_adc1[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h55C06AC0)) 
    \total_value_adc1[0]_i_6 
       (.I0(\adc1_data_reg_n_0_[3] ),
        .I1(\total_value_adc2[0]_i_15_n_0 ),
        .I2(total_value_adc10[3]),
        .I3(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I4(total_value_adc1_reg__0[3]),
        .O(\total_value_adc1[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h55C06AC0)) 
    \total_value_adc1[0]_i_7 
       (.I0(\adc1_data_reg_n_0_[2] ),
        .I1(\total_value_adc2[0]_i_15_n_0 ),
        .I2(total_value_adc10[2]),
        .I3(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I4(total_value_adc1_reg__0[2]),
        .O(\total_value_adc1[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h55C06AC0)) 
    \total_value_adc1[0]_i_8 
       (.I0(\adc1_data_reg_n_0_[1] ),
        .I1(\total_value_adc2[0]_i_15_n_0 ),
        .I2(total_value_adc10[1]),
        .I3(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I4(total_value_adc1_reg__0[1]),
        .O(\total_value_adc1[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888788888)) 
    \total_value_adc1[0]_i_9 
       (.I0(\adc1_data_reg_n_0_[0] ),
        .I1(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I2(total_value_adc1_reg__0[0]),
        .I3(astate__0[2]),
        .I4(astate__0[1]),
        .I5(astate__0[0]),
        .O(\total_value_adc1[0]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \total_value_adc1[12]_i_2 
       (.I0(total_value_adc1_reg[15]),
        .I1(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I2(total_value_adc10[15]),
        .I3(\total_value_adc2[0]_i_15_n_0 ),
        .O(\total_value_adc1[12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \total_value_adc1[12]_i_3 
       (.I0(total_value_adc1_reg[14]),
        .I1(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I2(total_value_adc10[14]),
        .I3(\total_value_adc2[0]_i_15_n_0 ),
        .O(\total_value_adc1[12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \total_value_adc1[12]_i_4 
       (.I0(total_value_adc1_reg[13]),
        .I1(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I2(total_value_adc10[13]),
        .I3(\total_value_adc2[0]_i_15_n_0 ),
        .O(\total_value_adc1[12]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \total_value_adc1[12]_i_5 
       (.I0(total_value_adc1_reg[12]),
        .I1(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I2(total_value_adc10[12]),
        .I3(\total_value_adc2[0]_i_15_n_0 ),
        .O(\total_value_adc1[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \total_value_adc1[12]_i_7 
       (.I0(total_value_adc1_reg[13]),
        .I1(\adc1_data_reg_n_0_[11] ),
        .O(\total_value_adc1[12]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \total_value_adc1[16]_i_2 
       (.I0(total_value_adc1_reg[17]),
        .I1(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I2(total_value_adc10[17]),
        .I3(\total_value_adc2[0]_i_15_n_0 ),
        .O(\total_value_adc1[16]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \total_value_adc1[16]_i_3 
       (.I0(total_value_adc1_reg[16]),
        .I1(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I2(total_value_adc10[16]),
        .I3(\total_value_adc2[0]_i_15_n_0 ),
        .O(\total_value_adc1[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \total_value_adc1[4]_i_11 
       (.I0(total_value_adc1_reg[8]),
        .I1(\adc1_data_reg_n_0_[6] ),
        .O(\total_value_adc1[4]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \total_value_adc1[4]_i_12 
       (.I0(total_value_adc1_reg[7]),
        .I1(\adc1_data_reg_n_0_[5] ),
        .O(\total_value_adc1[4]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \total_value_adc1[4]_i_13 
       (.I0(total_value_adc1_reg[6]),
        .I1(\adc1_data_reg_n_0_[4] ),
        .O(\total_value_adc1[4]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \total_value_adc1[4]_i_14 
       (.I0(total_value_adc1_reg__0[5]),
        .I1(\adc1_data_reg_n_0_[3] ),
        .O(\total_value_adc1[4]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \total_value_adc1[4]_i_2 
       (.I0(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I1(\adc1_data_reg_n_0_[7] ),
        .O(\total_value_adc1[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \total_value_adc1[4]_i_3 
       (.I0(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I1(\adc1_data_reg_n_0_[6] ),
        .O(\total_value_adc1[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \total_value_adc1[4]_i_4 
       (.I0(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I1(\adc1_data_reg_n_0_[5] ),
        .O(\total_value_adc1[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \total_value_adc1[4]_i_5 
       (.I0(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I1(\adc1_data_reg_n_0_[4] ),
        .O(\total_value_adc1[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h55C06AC0)) 
    \total_value_adc1[4]_i_6 
       (.I0(\adc1_data_reg_n_0_[7] ),
        .I1(\total_value_adc2[0]_i_15_n_0 ),
        .I2(total_value_adc10[7]),
        .I3(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I4(total_value_adc1_reg[7]),
        .O(\total_value_adc1[4]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h55C06AC0)) 
    \total_value_adc1[4]_i_7 
       (.I0(\adc1_data_reg_n_0_[6] ),
        .I1(\total_value_adc2[0]_i_15_n_0 ),
        .I2(total_value_adc10[6]),
        .I3(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I4(total_value_adc1_reg[6]),
        .O(\total_value_adc1[4]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h55C06AC0)) 
    \total_value_adc1[4]_i_8 
       (.I0(\adc1_data_reg_n_0_[5] ),
        .I1(\total_value_adc2[0]_i_15_n_0 ),
        .I2(total_value_adc10[5]),
        .I3(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I4(total_value_adc1_reg__0[5]),
        .O(\total_value_adc1[4]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h55C06AC0)) 
    \total_value_adc1[4]_i_9 
       (.I0(\adc1_data_reg_n_0_[4] ),
        .I1(\total_value_adc2[0]_i_15_n_0 ),
        .I2(total_value_adc10[4]),
        .I3(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I4(total_value_adc1_reg__0[4]),
        .O(\total_value_adc1[4]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \total_value_adc1[8]_i_11 
       (.I0(total_value_adc1_reg[12]),
        .I1(\adc1_data_reg_n_0_[10] ),
        .O(\total_value_adc1[8]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \total_value_adc1[8]_i_12 
       (.I0(total_value_adc1_reg[11]),
        .I1(\adc1_data_reg_n_0_[9] ),
        .O(\total_value_adc1[8]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \total_value_adc1[8]_i_13 
       (.I0(total_value_adc1_reg[10]),
        .I1(\adc1_data_reg_n_0_[8] ),
        .O(\total_value_adc1[8]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \total_value_adc1[8]_i_14 
       (.I0(total_value_adc1_reg[9]),
        .I1(\adc1_data_reg_n_0_[7] ),
        .O(\total_value_adc1[8]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \total_value_adc1[8]_i_2 
       (.I0(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I1(\adc1_data_reg_n_0_[11] ),
        .O(\total_value_adc1[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \total_value_adc1[8]_i_3 
       (.I0(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I1(\adc1_data_reg_n_0_[10] ),
        .O(\total_value_adc1[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \total_value_adc1[8]_i_4 
       (.I0(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I1(\adc1_data_reg_n_0_[9] ),
        .O(\total_value_adc1[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \total_value_adc1[8]_i_5 
       (.I0(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I1(\adc1_data_reg_n_0_[8] ),
        .O(\total_value_adc1[8]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h55C06AC0)) 
    \total_value_adc1[8]_i_6 
       (.I0(\adc1_data_reg_n_0_[11] ),
        .I1(\total_value_adc2[0]_i_15_n_0 ),
        .I2(total_value_adc10[11]),
        .I3(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I4(total_value_adc1_reg[11]),
        .O(\total_value_adc1[8]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h55C06AC0)) 
    \total_value_adc1[8]_i_7 
       (.I0(\adc1_data_reg_n_0_[10] ),
        .I1(\total_value_adc2[0]_i_15_n_0 ),
        .I2(total_value_adc10[10]),
        .I3(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I4(total_value_adc1_reg[10]),
        .O(\total_value_adc1[8]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h55C06AC0)) 
    \total_value_adc1[8]_i_8 
       (.I0(\adc1_data_reg_n_0_[9] ),
        .I1(\total_value_adc2[0]_i_15_n_0 ),
        .I2(total_value_adc10[9]),
        .I3(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I4(total_value_adc1_reg[9]),
        .O(\total_value_adc1[8]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h55C06AC0)) 
    \total_value_adc1[8]_i_9 
       (.I0(\adc1_data_reg_n_0_[8] ),
        .I1(\total_value_adc2[0]_i_15_n_0 ),
        .I2(total_value_adc10[8]),
        .I3(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I4(total_value_adc1_reg[8]),
        .O(\total_value_adc1[8]_i_9_n_0 ));
  FDCE \total_value_adc1_reg[0] 
       (.C(clk),
        .CE(\total_value_adc2[0]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(\total_value_adc1_reg[0]_i_1_n_7 ),
        .Q(total_value_adc1_reg__0[0]));
  CARRY4 \total_value_adc1_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\total_value_adc1_reg[0]_i_1_n_0 ,\total_value_adc1_reg[0]_i_1_n_1 ,\total_value_adc1_reg[0]_i_1_n_2 ,\total_value_adc1_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\total_value_adc1[0]_i_2_n_0 ,\total_value_adc1[0]_i_3_n_0 ,\total_value_adc1[0]_i_4_n_0 ,\total_value_adc1[0]_i_5_n_0 }),
        .O({\total_value_adc1_reg[0]_i_1_n_4 ,\total_value_adc1_reg[0]_i_1_n_5 ,\total_value_adc1_reg[0]_i_1_n_6 ,\total_value_adc1_reg[0]_i_1_n_7 }),
        .S({\total_value_adc1[0]_i_6_n_0 ,\total_value_adc1[0]_i_7_n_0 ,\total_value_adc1[0]_i_8_n_0 ,\total_value_adc1[0]_i_9_n_0 }));
  CARRY4 \total_value_adc1_reg[0]_i_10 
       (.CI(1'b0),
        .CO({\total_value_adc1_reg[0]_i_10_n_0 ,\total_value_adc1_reg[0]_i_10_n_1 ,\total_value_adc1_reg[0]_i_10_n_2 ,\total_value_adc1_reg[0]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({total_value_adc1_reg__0[4:2],1'b0}),
        .O(total_value_adc10[4:1]),
        .S({\total_value_adc1[0]_i_11_n_0 ,\total_value_adc1[0]_i_12_n_0 ,\total_value_adc1[0]_i_13_n_0 ,total_value_adc1_reg__0[1]}));
  FDCE \total_value_adc1_reg[10] 
       (.C(clk),
        .CE(\total_value_adc2[0]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(\total_value_adc1_reg[8]_i_1_n_5 ),
        .Q(total_value_adc1_reg[10]));
  FDCE \total_value_adc1_reg[11] 
       (.C(clk),
        .CE(\total_value_adc2[0]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(\total_value_adc1_reg[8]_i_1_n_4 ),
        .Q(total_value_adc1_reg[11]));
  FDCE \total_value_adc1_reg[12] 
       (.C(clk),
        .CE(\total_value_adc2[0]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(\total_value_adc1_reg[12]_i_1_n_7 ),
        .Q(total_value_adc1_reg[12]));
  CARRY4 \total_value_adc1_reg[12]_i_1 
       (.CI(\total_value_adc1_reg[8]_i_1_n_0 ),
        .CO({\total_value_adc1_reg[12]_i_1_n_0 ,\total_value_adc1_reg[12]_i_1_n_1 ,\total_value_adc1_reg[12]_i_1_n_2 ,\total_value_adc1_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\total_value_adc1_reg[12]_i_1_n_4 ,\total_value_adc1_reg[12]_i_1_n_5 ,\total_value_adc1_reg[12]_i_1_n_6 ,\total_value_adc1_reg[12]_i_1_n_7 }),
        .S({\total_value_adc1[12]_i_2_n_0 ,\total_value_adc1[12]_i_3_n_0 ,\total_value_adc1[12]_i_4_n_0 ,\total_value_adc1[12]_i_5_n_0 }));
  CARRY4 \total_value_adc1_reg[12]_i_6 
       (.CI(\total_value_adc1_reg[8]_i_10_n_0 ),
        .CO({\total_value_adc1_reg[12]_i_6_n_0 ,\total_value_adc1_reg[12]_i_6_n_1 ,\total_value_adc1_reg[12]_i_6_n_2 ,\total_value_adc1_reg[12]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,total_value_adc1_reg[13]}),
        .O(total_value_adc10[16:13]),
        .S({total_value_adc1_reg[16:14],\total_value_adc1[12]_i_7_n_0 }));
  FDCE \total_value_adc1_reg[13] 
       (.C(clk),
        .CE(\total_value_adc2[0]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(\total_value_adc1_reg[12]_i_1_n_6 ),
        .Q(total_value_adc1_reg[13]));
  FDCE \total_value_adc1_reg[14] 
       (.C(clk),
        .CE(\total_value_adc2[0]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(\total_value_adc1_reg[12]_i_1_n_5 ),
        .Q(total_value_adc1_reg[14]));
  FDCE \total_value_adc1_reg[15] 
       (.C(clk),
        .CE(\total_value_adc2[0]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(\total_value_adc1_reg[12]_i_1_n_4 ),
        .Q(total_value_adc1_reg[15]));
  FDCE \total_value_adc1_reg[16] 
       (.C(clk),
        .CE(\total_value_adc2[0]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(\total_value_adc1_reg[16]_i_1_n_7 ),
        .Q(total_value_adc1_reg[16]));
  CARRY4 \total_value_adc1_reg[16]_i_1 
       (.CI(\total_value_adc1_reg[12]_i_1_n_0 ),
        .CO({\NLW_total_value_adc1_reg[16]_i_1_CO_UNCONNECTED [3:1],\total_value_adc1_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_total_value_adc1_reg[16]_i_1_O_UNCONNECTED [3:2],\total_value_adc1_reg[16]_i_1_n_6 ,\total_value_adc1_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,\total_value_adc1[16]_i_2_n_0 ,\total_value_adc1[16]_i_3_n_0 }));
  CARRY4 \total_value_adc1_reg[16]_i_4 
       (.CI(\total_value_adc1_reg[12]_i_6_n_0 ),
        .CO(\NLW_total_value_adc1_reg[16]_i_4_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_total_value_adc1_reg[16]_i_4_O_UNCONNECTED [3:1],total_value_adc10[17]}),
        .S({1'b0,1'b0,1'b0,total_value_adc1_reg[17]}));
  FDCE \total_value_adc1_reg[17] 
       (.C(clk),
        .CE(\total_value_adc2[0]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(\total_value_adc1_reg[16]_i_1_n_6 ),
        .Q(total_value_adc1_reg[17]));
  FDCE \total_value_adc1_reg[1] 
       (.C(clk),
        .CE(\total_value_adc2[0]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(\total_value_adc1_reg[0]_i_1_n_6 ),
        .Q(total_value_adc1_reg__0[1]));
  FDCE \total_value_adc1_reg[2] 
       (.C(clk),
        .CE(\total_value_adc2[0]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(\total_value_adc1_reg[0]_i_1_n_5 ),
        .Q(total_value_adc1_reg__0[2]));
  FDCE \total_value_adc1_reg[3] 
       (.C(clk),
        .CE(\total_value_adc2[0]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(\total_value_adc1_reg[0]_i_1_n_4 ),
        .Q(total_value_adc1_reg__0[3]));
  FDCE \total_value_adc1_reg[4] 
       (.C(clk),
        .CE(\total_value_adc2[0]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(\total_value_adc1_reg[4]_i_1_n_7 ),
        .Q(total_value_adc1_reg__0[4]));
  CARRY4 \total_value_adc1_reg[4]_i_1 
       (.CI(\total_value_adc1_reg[0]_i_1_n_0 ),
        .CO({\total_value_adc1_reg[4]_i_1_n_0 ,\total_value_adc1_reg[4]_i_1_n_1 ,\total_value_adc1_reg[4]_i_1_n_2 ,\total_value_adc1_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\total_value_adc1[4]_i_2_n_0 ,\total_value_adc1[4]_i_3_n_0 ,\total_value_adc1[4]_i_4_n_0 ,\total_value_adc1[4]_i_5_n_0 }),
        .O({\total_value_adc1_reg[4]_i_1_n_4 ,\total_value_adc1_reg[4]_i_1_n_5 ,\total_value_adc1_reg[4]_i_1_n_6 ,\total_value_adc1_reg[4]_i_1_n_7 }),
        .S({\total_value_adc1[4]_i_6_n_0 ,\total_value_adc1[4]_i_7_n_0 ,\total_value_adc1[4]_i_8_n_0 ,\total_value_adc1[4]_i_9_n_0 }));
  CARRY4 \total_value_adc1_reg[4]_i_10 
       (.CI(\total_value_adc1_reg[0]_i_10_n_0 ),
        .CO({\total_value_adc1_reg[4]_i_10_n_0 ,\total_value_adc1_reg[4]_i_10_n_1 ,\total_value_adc1_reg[4]_i_10_n_2 ,\total_value_adc1_reg[4]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({total_value_adc1_reg[8:6],total_value_adc1_reg__0[5]}),
        .O(total_value_adc10[8:5]),
        .S({\total_value_adc1[4]_i_11_n_0 ,\total_value_adc1[4]_i_12_n_0 ,\total_value_adc1[4]_i_13_n_0 ,\total_value_adc1[4]_i_14_n_0 }));
  FDCE \total_value_adc1_reg[5] 
       (.C(clk),
        .CE(\total_value_adc2[0]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(\total_value_adc1_reg[4]_i_1_n_6 ),
        .Q(total_value_adc1_reg__0[5]));
  FDCE \total_value_adc1_reg[6] 
       (.C(clk),
        .CE(\total_value_adc2[0]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(\total_value_adc1_reg[4]_i_1_n_5 ),
        .Q(total_value_adc1_reg[6]));
  FDCE \total_value_adc1_reg[7] 
       (.C(clk),
        .CE(\total_value_adc2[0]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(\total_value_adc1_reg[4]_i_1_n_4 ),
        .Q(total_value_adc1_reg[7]));
  FDCE \total_value_adc1_reg[8] 
       (.C(clk),
        .CE(\total_value_adc2[0]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(\total_value_adc1_reg[8]_i_1_n_7 ),
        .Q(total_value_adc1_reg[8]));
  CARRY4 \total_value_adc1_reg[8]_i_1 
       (.CI(\total_value_adc1_reg[4]_i_1_n_0 ),
        .CO({\total_value_adc1_reg[8]_i_1_n_0 ,\total_value_adc1_reg[8]_i_1_n_1 ,\total_value_adc1_reg[8]_i_1_n_2 ,\total_value_adc1_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\total_value_adc1[8]_i_2_n_0 ,\total_value_adc1[8]_i_3_n_0 ,\total_value_adc1[8]_i_4_n_0 ,\total_value_adc1[8]_i_5_n_0 }),
        .O({\total_value_adc1_reg[8]_i_1_n_4 ,\total_value_adc1_reg[8]_i_1_n_5 ,\total_value_adc1_reg[8]_i_1_n_6 ,\total_value_adc1_reg[8]_i_1_n_7 }),
        .S({\total_value_adc1[8]_i_6_n_0 ,\total_value_adc1[8]_i_7_n_0 ,\total_value_adc1[8]_i_8_n_0 ,\total_value_adc1[8]_i_9_n_0 }));
  CARRY4 \total_value_adc1_reg[8]_i_10 
       (.CI(\total_value_adc1_reg[4]_i_10_n_0 ),
        .CO({\total_value_adc1_reg[8]_i_10_n_0 ,\total_value_adc1_reg[8]_i_10_n_1 ,\total_value_adc1_reg[8]_i_10_n_2 ,\total_value_adc1_reg[8]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI(total_value_adc1_reg[12:9]),
        .O(total_value_adc10[12:9]),
        .S({\total_value_adc1[8]_i_11_n_0 ,\total_value_adc1[8]_i_12_n_0 ,\total_value_adc1[8]_i_13_n_0 ,\total_value_adc1[8]_i_14_n_0 }));
  FDCE \total_value_adc1_reg[9] 
       (.C(clk),
        .CE(\total_value_adc2[0]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(\total_value_adc1_reg[8]_i_1_n_6 ),
        .Q(total_value_adc1_reg[9]));
  LUT5 #(
    .INIT(32'h00F000E0)) 
    \total_value_adc2[0]_i_1 
       (.I0(sel),
        .I1(astate__0[2]),
        .I2(astate__0[1]),
        .I3(astate__0[0]),
        .I4(total_value_adc12),
        .O(\total_value_adc2[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h55C06AC0)) 
    \total_value_adc2[0]_i_10 
       (.I0(\adc2_data_reg_n_0_[2] ),
        .I1(\total_value_adc2[0]_i_15_n_0 ),
        .I2(total_value_adc20[2]),
        .I3(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I4(\total_value_adc2_reg_n_0_[2] ),
        .O(\total_value_adc2[0]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h55C06AC0)) 
    \total_value_adc2[0]_i_11 
       (.I0(\adc2_data_reg_n_0_[1] ),
        .I1(\total_value_adc2[0]_i_15_n_0 ),
        .I2(total_value_adc20[1]),
        .I3(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I4(\total_value_adc2_reg_n_0_[1] ),
        .O(\total_value_adc2[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888788888)) 
    \total_value_adc2[0]_i_12 
       (.I0(\adc2_data_reg_n_0_[0] ),
        .I1(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I2(\total_value_adc2_reg_n_0_[0] ),
        .I3(astate__0[2]),
        .I4(astate__0[1]),
        .I5(astate__0[0]),
        .O(\total_value_adc2[0]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \total_value_adc2[0]_i_13 
       (.I0(sample_counter_reg[3]),
        .I1(sample_counter_reg[0]),
        .I2(sample_counter_reg[2]),
        .I3(sample_counter_reg[5]),
        .I4(sample_counter_reg[4]),
        .O(\total_value_adc2[0]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \total_value_adc2[0]_i_14 
       (.I0(sample_counter_reg[2]),
        .I1(sample_counter_reg[3]),
        .I2(sample_counter_reg[0]),
        .I3(sample_counter_reg[5]),
        .O(\total_value_adc2[0]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \total_value_adc2[0]_i_15 
       (.I0(\FSM_sequential_astate[1]_i_3_n_0 ),
        .I1(\sample_counter[8]_i_4_n_0 ),
        .I2(sample_counter_reg[8]),
        .I3(sample_counter_reg[1]),
        .I4(sample_counter_reg[7]),
        .O(\total_value_adc2[0]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \total_value_adc2[0]_i_17 
       (.I0(\total_value_adc2_reg_n_0_[4] ),
        .I1(\adc2_data_reg_n_0_[2] ),
        .O(\total_value_adc2[0]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \total_value_adc2[0]_i_18 
       (.I0(\total_value_adc2_reg_n_0_[3] ),
        .I1(\adc2_data_reg_n_0_[1] ),
        .O(\total_value_adc2[0]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \total_value_adc2[0]_i_19 
       (.I0(\total_value_adc2_reg_n_0_[2] ),
        .I1(\adc2_data_reg_n_0_[0] ),
        .O(\total_value_adc2[0]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFDF)) 
    \total_value_adc2[0]_i_3 
       (.I0(\total_value_adc2[0]_i_13_n_0 ),
        .I1(sample_counter_reg[1]),
        .I2(sample_counter_reg[6]),
        .I3(sample_counter_reg[8]),
        .I4(sample_counter_reg[7]),
        .O(sel));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \total_value_adc2[0]_i_4 
       (.I0(sample_counter_reg[7]),
        .I1(\total_value_adc2[0]_i_14_n_0 ),
        .I2(sample_counter_reg[1]),
        .I3(sample_counter_reg[8]),
        .I4(sample_counter_reg[4]),
        .I5(sample_counter_reg[6]),
        .O(total_value_adc12));
  LUT2 #(
    .INIT(4'h8)) 
    \total_value_adc2[0]_i_5 
       (.I0(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I1(\adc2_data_reg_n_0_[3] ),
        .O(\total_value_adc2[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \total_value_adc2[0]_i_6 
       (.I0(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I1(\adc2_data_reg_n_0_[2] ),
        .O(\total_value_adc2[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \total_value_adc2[0]_i_7 
       (.I0(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I1(\adc2_data_reg_n_0_[1] ),
        .O(\total_value_adc2[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \total_value_adc2[0]_i_8 
       (.I0(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I1(\adc2_data_reg_n_0_[0] ),
        .O(\total_value_adc2[0]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h55C06AC0)) 
    \total_value_adc2[0]_i_9 
       (.I0(\adc2_data_reg_n_0_[3] ),
        .I1(\total_value_adc2[0]_i_15_n_0 ),
        .I2(total_value_adc20[3]),
        .I3(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I4(\total_value_adc2_reg_n_0_[3] ),
        .O(\total_value_adc2[0]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \total_value_adc2[12]_i_2 
       (.I0(p_0_in[9]),
        .I1(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I2(total_value_adc20[15]),
        .I3(\total_value_adc2[0]_i_15_n_0 ),
        .O(\total_value_adc2[12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \total_value_adc2[12]_i_3 
       (.I0(p_0_in[8]),
        .I1(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I2(total_value_adc20[14]),
        .I3(\total_value_adc2[0]_i_15_n_0 ),
        .O(\total_value_adc2[12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \total_value_adc2[12]_i_4 
       (.I0(p_0_in[7]),
        .I1(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I2(total_value_adc20[13]),
        .I3(\total_value_adc2[0]_i_15_n_0 ),
        .O(\total_value_adc2[12]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \total_value_adc2[12]_i_5 
       (.I0(p_0_in[6]),
        .I1(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I2(total_value_adc20[12]),
        .I3(\total_value_adc2[0]_i_15_n_0 ),
        .O(\total_value_adc2[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \total_value_adc2[12]_i_7 
       (.I0(p_0_in[7]),
        .I1(\adc2_data_reg_n_0_[11] ),
        .O(\total_value_adc2[12]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \total_value_adc2[16]_i_2 
       (.I0(p_0_in[11]),
        .I1(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I2(total_value_adc20[17]),
        .I3(\total_value_adc2[0]_i_15_n_0 ),
        .O(\total_value_adc2[16]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \total_value_adc2[16]_i_3 
       (.I0(p_0_in[10]),
        .I1(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I2(total_value_adc20[16]),
        .I3(\total_value_adc2[0]_i_15_n_0 ),
        .O(\total_value_adc2[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \total_value_adc2[4]_i_11 
       (.I0(p_0_in[2]),
        .I1(\adc2_data_reg_n_0_[6] ),
        .O(\total_value_adc2[4]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \total_value_adc2[4]_i_12 
       (.I0(p_0_in[1]),
        .I1(\adc2_data_reg_n_0_[5] ),
        .O(\total_value_adc2[4]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \total_value_adc2[4]_i_13 
       (.I0(p_0_in[0]),
        .I1(\adc2_data_reg_n_0_[4] ),
        .O(\total_value_adc2[4]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \total_value_adc2[4]_i_14 
       (.I0(\total_value_adc2_reg_n_0_[5] ),
        .I1(\adc2_data_reg_n_0_[3] ),
        .O(\total_value_adc2[4]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \total_value_adc2[4]_i_2 
       (.I0(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I1(\adc2_data_reg_n_0_[7] ),
        .O(\total_value_adc2[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \total_value_adc2[4]_i_3 
       (.I0(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I1(\adc2_data_reg_n_0_[6] ),
        .O(\total_value_adc2[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \total_value_adc2[4]_i_4 
       (.I0(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I1(\adc2_data_reg_n_0_[5] ),
        .O(\total_value_adc2[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \total_value_adc2[4]_i_5 
       (.I0(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I1(\adc2_data_reg_n_0_[4] ),
        .O(\total_value_adc2[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h55C06AC0)) 
    \total_value_adc2[4]_i_6 
       (.I0(\adc2_data_reg_n_0_[7] ),
        .I1(\total_value_adc2[0]_i_15_n_0 ),
        .I2(total_value_adc20[7]),
        .I3(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I4(p_0_in[1]),
        .O(\total_value_adc2[4]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h55C06AC0)) 
    \total_value_adc2[4]_i_7 
       (.I0(\adc2_data_reg_n_0_[6] ),
        .I1(\total_value_adc2[0]_i_15_n_0 ),
        .I2(total_value_adc20[6]),
        .I3(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I4(p_0_in[0]),
        .O(\total_value_adc2[4]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h55C06AC0)) 
    \total_value_adc2[4]_i_8 
       (.I0(\adc2_data_reg_n_0_[5] ),
        .I1(\total_value_adc2[0]_i_15_n_0 ),
        .I2(total_value_adc20[5]),
        .I3(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I4(\total_value_adc2_reg_n_0_[5] ),
        .O(\total_value_adc2[4]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h55C06AC0)) 
    \total_value_adc2[4]_i_9 
       (.I0(\adc2_data_reg_n_0_[4] ),
        .I1(\total_value_adc2[0]_i_15_n_0 ),
        .I2(total_value_adc20[4]),
        .I3(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I4(\total_value_adc2_reg_n_0_[4] ),
        .O(\total_value_adc2[4]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \total_value_adc2[8]_i_11 
       (.I0(p_0_in[6]),
        .I1(\adc2_data_reg_n_0_[10] ),
        .O(\total_value_adc2[8]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \total_value_adc2[8]_i_12 
       (.I0(p_0_in[5]),
        .I1(\adc2_data_reg_n_0_[9] ),
        .O(\total_value_adc2[8]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \total_value_adc2[8]_i_13 
       (.I0(p_0_in[4]),
        .I1(\adc2_data_reg_n_0_[8] ),
        .O(\total_value_adc2[8]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \total_value_adc2[8]_i_14 
       (.I0(p_0_in[3]),
        .I1(\adc2_data_reg_n_0_[7] ),
        .O(\total_value_adc2[8]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \total_value_adc2[8]_i_2 
       (.I0(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I1(\adc2_data_reg_n_0_[11] ),
        .O(\total_value_adc2[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \total_value_adc2[8]_i_3 
       (.I0(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I1(\adc2_data_reg_n_0_[10] ),
        .O(\total_value_adc2[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \total_value_adc2[8]_i_4 
       (.I0(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I1(\adc2_data_reg_n_0_[9] ),
        .O(\total_value_adc2[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \total_value_adc2[8]_i_5 
       (.I0(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I1(\adc2_data_reg_n_0_[8] ),
        .O(\total_value_adc2[8]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h55C06AC0)) 
    \total_value_adc2[8]_i_6 
       (.I0(\adc2_data_reg_n_0_[11] ),
        .I1(\total_value_adc2[0]_i_15_n_0 ),
        .I2(total_value_adc20[11]),
        .I3(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I4(p_0_in[5]),
        .O(\total_value_adc2[8]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h55C06AC0)) 
    \total_value_adc2[8]_i_7 
       (.I0(\adc2_data_reg_n_0_[10] ),
        .I1(\total_value_adc2[0]_i_15_n_0 ),
        .I2(total_value_adc20[10]),
        .I3(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I4(p_0_in[4]),
        .O(\total_value_adc2[8]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h55C06AC0)) 
    \total_value_adc2[8]_i_8 
       (.I0(\adc2_data_reg_n_0_[9] ),
        .I1(\total_value_adc2[0]_i_15_n_0 ),
        .I2(total_value_adc20[9]),
        .I3(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I4(p_0_in[3]),
        .O(\total_value_adc2[8]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h55C06AC0)) 
    \total_value_adc2[8]_i_9 
       (.I0(\adc2_data_reg_n_0_[8] ),
        .I1(\total_value_adc2[0]_i_15_n_0 ),
        .I2(total_value_adc20[8]),
        .I3(\FSM_sequential_astate[1]_i_2_n_0 ),
        .I4(p_0_in[2]),
        .O(\total_value_adc2[8]_i_9_n_0 ));
  FDCE \total_value_adc2_reg[0] 
       (.C(clk),
        .CE(\total_value_adc2[0]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(\total_value_adc2_reg[0]_i_2_n_7 ),
        .Q(\total_value_adc2_reg_n_0_[0] ));
  CARRY4 \total_value_adc2_reg[0]_i_16 
       (.CI(1'b0),
        .CO({\total_value_adc2_reg[0]_i_16_n_0 ,\total_value_adc2_reg[0]_i_16_n_1 ,\total_value_adc2_reg[0]_i_16_n_2 ,\total_value_adc2_reg[0]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\total_value_adc2_reg_n_0_[4] ,\total_value_adc2_reg_n_0_[3] ,\total_value_adc2_reg_n_0_[2] ,1'b0}),
        .O(total_value_adc20[4:1]),
        .S({\total_value_adc2[0]_i_17_n_0 ,\total_value_adc2[0]_i_18_n_0 ,\total_value_adc2[0]_i_19_n_0 ,\total_value_adc2_reg_n_0_[1] }));
  CARRY4 \total_value_adc2_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\total_value_adc2_reg[0]_i_2_n_0 ,\total_value_adc2_reg[0]_i_2_n_1 ,\total_value_adc2_reg[0]_i_2_n_2 ,\total_value_adc2_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\total_value_adc2[0]_i_5_n_0 ,\total_value_adc2[0]_i_6_n_0 ,\total_value_adc2[0]_i_7_n_0 ,\total_value_adc2[0]_i_8_n_0 }),
        .O({\total_value_adc2_reg[0]_i_2_n_4 ,\total_value_adc2_reg[0]_i_2_n_5 ,\total_value_adc2_reg[0]_i_2_n_6 ,\total_value_adc2_reg[0]_i_2_n_7 }),
        .S({\total_value_adc2[0]_i_9_n_0 ,\total_value_adc2[0]_i_10_n_0 ,\total_value_adc2[0]_i_11_n_0 ,\total_value_adc2[0]_i_12_n_0 }));
  FDCE \total_value_adc2_reg[10] 
       (.C(clk),
        .CE(\total_value_adc2[0]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(\total_value_adc2_reg[8]_i_1_n_5 ),
        .Q(p_0_in[4]));
  FDCE \total_value_adc2_reg[11] 
       (.C(clk),
        .CE(\total_value_adc2[0]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(\total_value_adc2_reg[8]_i_1_n_4 ),
        .Q(p_0_in[5]));
  FDCE \total_value_adc2_reg[12] 
       (.C(clk),
        .CE(\total_value_adc2[0]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(\total_value_adc2_reg[12]_i_1_n_7 ),
        .Q(p_0_in[6]));
  CARRY4 \total_value_adc2_reg[12]_i_1 
       (.CI(\total_value_adc2_reg[8]_i_1_n_0 ),
        .CO({\total_value_adc2_reg[12]_i_1_n_0 ,\total_value_adc2_reg[12]_i_1_n_1 ,\total_value_adc2_reg[12]_i_1_n_2 ,\total_value_adc2_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\total_value_adc2_reg[12]_i_1_n_4 ,\total_value_adc2_reg[12]_i_1_n_5 ,\total_value_adc2_reg[12]_i_1_n_6 ,\total_value_adc2_reg[12]_i_1_n_7 }),
        .S({\total_value_adc2[12]_i_2_n_0 ,\total_value_adc2[12]_i_3_n_0 ,\total_value_adc2[12]_i_4_n_0 ,\total_value_adc2[12]_i_5_n_0 }));
  CARRY4 \total_value_adc2_reg[12]_i_6 
       (.CI(\total_value_adc2_reg[8]_i_10_n_0 ),
        .CO({\total_value_adc2_reg[12]_i_6_n_0 ,\total_value_adc2_reg[12]_i_6_n_1 ,\total_value_adc2_reg[12]_i_6_n_2 ,\total_value_adc2_reg[12]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_0_in[7]}),
        .O(total_value_adc20[16:13]),
        .S({p_0_in[10:8],\total_value_adc2[12]_i_7_n_0 }));
  FDCE \total_value_adc2_reg[13] 
       (.C(clk),
        .CE(\total_value_adc2[0]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(\total_value_adc2_reg[12]_i_1_n_6 ),
        .Q(p_0_in[7]));
  FDCE \total_value_adc2_reg[14] 
       (.C(clk),
        .CE(\total_value_adc2[0]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(\total_value_adc2_reg[12]_i_1_n_5 ),
        .Q(p_0_in[8]));
  FDCE \total_value_adc2_reg[15] 
       (.C(clk),
        .CE(\total_value_adc2[0]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(\total_value_adc2_reg[12]_i_1_n_4 ),
        .Q(p_0_in[9]));
  FDCE \total_value_adc2_reg[16] 
       (.C(clk),
        .CE(\total_value_adc2[0]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(\total_value_adc2_reg[16]_i_1_n_7 ),
        .Q(p_0_in[10]));
  CARRY4 \total_value_adc2_reg[16]_i_1 
       (.CI(\total_value_adc2_reg[12]_i_1_n_0 ),
        .CO({\NLW_total_value_adc2_reg[16]_i_1_CO_UNCONNECTED [3:1],\total_value_adc2_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_total_value_adc2_reg[16]_i_1_O_UNCONNECTED [3:2],\total_value_adc2_reg[16]_i_1_n_6 ,\total_value_adc2_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,\total_value_adc2[16]_i_2_n_0 ,\total_value_adc2[16]_i_3_n_0 }));
  CARRY4 \total_value_adc2_reg[16]_i_4 
       (.CI(\total_value_adc2_reg[12]_i_6_n_0 ),
        .CO(\NLW_total_value_adc2_reg[16]_i_4_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_total_value_adc2_reg[16]_i_4_O_UNCONNECTED [3:1],total_value_adc20[17]}),
        .S({1'b0,1'b0,1'b0,p_0_in[11]}));
  FDCE \total_value_adc2_reg[17] 
       (.C(clk),
        .CE(\total_value_adc2[0]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(\total_value_adc2_reg[16]_i_1_n_6 ),
        .Q(p_0_in[11]));
  FDCE \total_value_adc2_reg[1] 
       (.C(clk),
        .CE(\total_value_adc2[0]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(\total_value_adc2_reg[0]_i_2_n_6 ),
        .Q(\total_value_adc2_reg_n_0_[1] ));
  FDCE \total_value_adc2_reg[2] 
       (.C(clk),
        .CE(\total_value_adc2[0]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(\total_value_adc2_reg[0]_i_2_n_5 ),
        .Q(\total_value_adc2_reg_n_0_[2] ));
  FDCE \total_value_adc2_reg[3] 
       (.C(clk),
        .CE(\total_value_adc2[0]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(\total_value_adc2_reg[0]_i_2_n_4 ),
        .Q(\total_value_adc2_reg_n_0_[3] ));
  FDCE \total_value_adc2_reg[4] 
       (.C(clk),
        .CE(\total_value_adc2[0]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(\total_value_adc2_reg[4]_i_1_n_7 ),
        .Q(\total_value_adc2_reg_n_0_[4] ));
  CARRY4 \total_value_adc2_reg[4]_i_1 
       (.CI(\total_value_adc2_reg[0]_i_2_n_0 ),
        .CO({\total_value_adc2_reg[4]_i_1_n_0 ,\total_value_adc2_reg[4]_i_1_n_1 ,\total_value_adc2_reg[4]_i_1_n_2 ,\total_value_adc2_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\total_value_adc2[4]_i_2_n_0 ,\total_value_adc2[4]_i_3_n_0 ,\total_value_adc2[4]_i_4_n_0 ,\total_value_adc2[4]_i_5_n_0 }),
        .O({\total_value_adc2_reg[4]_i_1_n_4 ,\total_value_adc2_reg[4]_i_1_n_5 ,\total_value_adc2_reg[4]_i_1_n_6 ,\total_value_adc2_reg[4]_i_1_n_7 }),
        .S({\total_value_adc2[4]_i_6_n_0 ,\total_value_adc2[4]_i_7_n_0 ,\total_value_adc2[4]_i_8_n_0 ,\total_value_adc2[4]_i_9_n_0 }));
  CARRY4 \total_value_adc2_reg[4]_i_10 
       (.CI(\total_value_adc2_reg[0]_i_16_n_0 ),
        .CO({\total_value_adc2_reg[4]_i_10_n_0 ,\total_value_adc2_reg[4]_i_10_n_1 ,\total_value_adc2_reg[4]_i_10_n_2 ,\total_value_adc2_reg[4]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({p_0_in[2:0],\total_value_adc2_reg_n_0_[5] }),
        .O(total_value_adc20[8:5]),
        .S({\total_value_adc2[4]_i_11_n_0 ,\total_value_adc2[4]_i_12_n_0 ,\total_value_adc2[4]_i_13_n_0 ,\total_value_adc2[4]_i_14_n_0 }));
  FDCE \total_value_adc2_reg[5] 
       (.C(clk),
        .CE(\total_value_adc2[0]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(\total_value_adc2_reg[4]_i_1_n_6 ),
        .Q(\total_value_adc2_reg_n_0_[5] ));
  FDCE \total_value_adc2_reg[6] 
       (.C(clk),
        .CE(\total_value_adc2[0]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(\total_value_adc2_reg[4]_i_1_n_5 ),
        .Q(p_0_in[0]));
  FDCE \total_value_adc2_reg[7] 
       (.C(clk),
        .CE(\total_value_adc2[0]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(\total_value_adc2_reg[4]_i_1_n_4 ),
        .Q(p_0_in[1]));
  FDCE \total_value_adc2_reg[8] 
       (.C(clk),
        .CE(\total_value_adc2[0]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(\total_value_adc2_reg[8]_i_1_n_7 ),
        .Q(p_0_in[2]));
  CARRY4 \total_value_adc2_reg[8]_i_1 
       (.CI(\total_value_adc2_reg[4]_i_1_n_0 ),
        .CO({\total_value_adc2_reg[8]_i_1_n_0 ,\total_value_adc2_reg[8]_i_1_n_1 ,\total_value_adc2_reg[8]_i_1_n_2 ,\total_value_adc2_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\total_value_adc2[8]_i_2_n_0 ,\total_value_adc2[8]_i_3_n_0 ,\total_value_adc2[8]_i_4_n_0 ,\total_value_adc2[8]_i_5_n_0 }),
        .O({\total_value_adc2_reg[8]_i_1_n_4 ,\total_value_adc2_reg[8]_i_1_n_5 ,\total_value_adc2_reg[8]_i_1_n_6 ,\total_value_adc2_reg[8]_i_1_n_7 }),
        .S({\total_value_adc2[8]_i_6_n_0 ,\total_value_adc2[8]_i_7_n_0 ,\total_value_adc2[8]_i_8_n_0 ,\total_value_adc2[8]_i_9_n_0 }));
  CARRY4 \total_value_adc2_reg[8]_i_10 
       (.CI(\total_value_adc2_reg[4]_i_10_n_0 ),
        .CO({\total_value_adc2_reg[8]_i_10_n_0 ,\total_value_adc2_reg[8]_i_10_n_1 ,\total_value_adc2_reg[8]_i_10_n_2 ,\total_value_adc2_reg[8]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI(p_0_in[6:3]),
        .O(total_value_adc20[12:9]),
        .S({\total_value_adc2[8]_i_11_n_0 ,\total_value_adc2[8]_i_12_n_0 ,\total_value_adc2[8]_i_13_n_0 ,\total_value_adc2[8]_i_14_n_0 }));
  FDCE \total_value_adc2_reg[9] 
       (.C(clk),
        .CE(\total_value_adc2[0]_i_1_n_0 ),
        .CLR(clk_1K_i_2_n_0),
        .D(\total_value_adc2_reg[8]_i_1_n_6 ),
        .Q(p_0_in[3]));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_adc_sampler_0_0,adc_sampler,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "adc_sampler,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst_n,
    din1,
    din2,
    cs_n,
    clk_5_12M,
    intr_sw,
    data_out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 5000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input din1;
  input din2;
  output cs_n;
  output clk_5_12M;
  output [1:0]intr_sw;
  output [31:0]data_out;

  wire \<const0> ;
  wire \<const1> ;
  wire clk;
  wire cs_n;
  wire [19:0]\^data_out ;
  wire din1;
  wire din2;
  wire [0:0]\^intr_sw ;
  wire rst_n;

  assign clk_5_12M = clk;
  assign data_out[31] = \<const0> ;
  assign data_out[30] = \<const0> ;
  assign data_out[29] = \<const1> ;
  assign data_out[28] = \<const0> ;
  assign data_out[27] = \<const0> ;
  assign data_out[26] = \<const0> ;
  assign data_out[25] = \<const0> ;
  assign data_out[24] = \<const0> ;
  assign data_out[23] = \<const0> ;
  assign data_out[22] = \<const0> ;
  assign data_out[21] = \<const0> ;
  assign data_out[20] = \<const0> ;
  assign data_out[19:8] = \^data_out [19:8];
  assign data_out[7] = \<const0> ;
  assign data_out[6] = \<const0> ;
  assign data_out[5] = \<const1> ;
  assign data_out[4] = \<const1> ;
  assign data_out[3] = \<const0> ;
  assign data_out[2] = \<const0> ;
  assign data_out[1] = \^intr_sw [0];
  assign data_out[0] = \^data_out [0];
  assign intr_sw[1] = \^data_out [0];
  assign intr_sw[0] = \^intr_sw [0];
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc_sampler inst
       (.clk(clk),
        .clk_1K_reg_0(\^data_out [0]),
        .cs_n(cs_n),
        .data_out({\^data_out [19:8],\^intr_sw }),
        .din1(din1),
        .din2(din2),
        .rst_n(rst_n));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
