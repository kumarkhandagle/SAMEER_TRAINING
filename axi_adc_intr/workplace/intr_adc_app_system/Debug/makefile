#
# This file was created by Xilinx Vitis tool.
#


#
# tools
#

RM = rm -f
RMDIR = rm -rf

#
# variables
#

SDCARD_GEN = sdcard_gen
GENERATE_BIF = ::scw::generate_bif

XPFM_PATH = C:/Users/kumar/axi_adc_intr/workplace/intr_adc/export/intr_adc/intr_adc.xpfm
SYS_CONFIG = intr_adc
DOMAINS = standalone_domain
BIF_PATH = C:/Users/kumar/axi_adc_intr/workplace/intr_adc_app_system/Debug/system.bif

BITSTREAM_PATH = C:/Users/kumar/axi_adc_intr/workplace/intr_adc_app/_ide/bitstream/design_1_wrapper.bit
SD_FILES = --elf C:/Users/kumar/axi_adc_intr/workplace/intr_adc_app/Debug/intr_adc_app.elf,ps7_cortexa9_0

#
# primary build targets
#

all: sd_card

sd_card:
	-@echo Generating bif file for the system project
	generate_system_bif.bat 59967 ${XPFM_PATH} ${DOMAINS} ${BIF_PATH}
	${SDCARD_GEN} --xpfm ${XPFM_PATH} --sys_config ${SYS_CONFIG} --bif ${BIF_PATH} --bitstream ${BITSTREAM_PATH} ${SD_FILES}

clean:
	$(RMDIR) ./_sds
	${RMDIR} sd_card
	${RM} system.bif

.PHONY: all sd_card clean


