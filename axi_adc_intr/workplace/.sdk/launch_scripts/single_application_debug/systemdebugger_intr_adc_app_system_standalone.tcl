connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zybo Z7 210351B0FC6AA" && level==0} -index 1
fpga -file C:/Users/kumar/axi_adc_intr/workplace/intr_adc_app/_ide/bitstream/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Users/kumar/axi_adc_intr/workplace/intr_adc/export/intr_adc/hw/design_1_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/Users/kumar/axi_adc_intr/workplace/intr_adc_app/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/Users/kumar/axi_adc_intr/workplace/intr_adc_app/Debug/intr_adc_app.elf
configparams force-mem-access 0
bpadd -addr &main
