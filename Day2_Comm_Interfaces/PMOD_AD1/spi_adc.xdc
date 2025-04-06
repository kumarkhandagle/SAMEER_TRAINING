set_property -dict {PACKAGE_PIN K17 IOSTANDARD LVCMOS33} [get_ports clk]
create_clock -period 8.000 -name sys_clk_pin -waveform {0.000 4.000} -add [get_ports clk]


set_property -dict {PACKAGE_PIN G15 IOSTANDARD LVCMOS33} [get_ports reset_n]
set_property -dict {PACKAGE_PIN P15 IOSTANDARD LVCMOS33} [get_ports sample]


set_property -dict {PACKAGE_PIN V15 IOSTANDARD LVCMOS33} [get_ports cs_n]
set_property -dict {PACKAGE_PIN W15 IOSTANDARD LVCMOS33} [get_ports din1]
set_property -dict {PACKAGE_PIN T11 IOSTANDARD LVCMOS33} [get_ports din2]
set_property -dict {PACKAGE_PIN T10 IOSTANDARD LVCMOS33} [get_ports sclk]

set_property -dict {PACKAGE_PIN W14 IOSTANDARD LVCMOS33} [get_ports ready]
set_property -dict {PACKAGE_PIN Y14 IOSTANDARD LVCMOS33} [get_ports done]
#set_property -dict {PACKAGE_PIN T12 IOSTANDARD LVCMOS33} [get_ports adc2_dout]


set_property -dict {PACKAGE_PIN T14 IOSTANDARD LVCMOS33} [get_ports {adc1_dout[0]}]
set_property -dict {PACKAGE_PIN T15 IOSTANDARD LVCMOS33} [get_ports {adc1_dout[1]}]
set_property -dict {PACKAGE_PIN P14 IOSTANDARD LVCMOS33} [get_ports {adc1_dout[2]}]
set_property -dict {PACKAGE_PIN R14 IOSTANDARD LVCMOS33} [get_ports {adc1_dout[3]}]
set_property -dict {PACKAGE_PIN U14 IOSTANDARD LVCMOS33} [get_ports {adc1_dout[4]}]
set_property -dict {PACKAGE_PIN U15 IOSTANDARD LVCMOS33} [get_ports {adc1_dout[5]}]
set_property -dict {PACKAGE_PIN V17 IOSTANDARD LVCMOS33} [get_ports {adc1_dout[6]}]
set_property -dict {PACKAGE_PIN V18 IOSTANDARD LVCMOS33} [get_ports {adc1_dout[7]}]

set_property -dict {PACKAGE_PIN V12 IOSTANDARD LVCMOS33} [get_ports {adc1_dout[8]}]
set_property -dict {PACKAGE_PIN W16 IOSTANDARD LVCMOS33} [get_ports {adc1_dout[9]}]
set_property -dict {PACKAGE_PIN J15 IOSTANDARD LVCMOS33} [get_ports {adc1_dout[10]}]
set_property -dict {PACKAGE_PIN H15 IOSTANDARD LVCMOS33} [get_ports {adc1_dout[11]}]

