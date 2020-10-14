## Create ports
#  set pwm_o [ create_bd_port -dir O pwm_o ]
#  set pwm_o1 [ create_bd_port -dir O pwm_o1 ]

## Create instance: redpitaya_converters_0, and set properties
add_ip_and_conf redpitaya_converters redpitaya_converters_0 {
	CLOCK_DUTY_CYCLE_STABILIZER_EN false }
connect_to_fpga_pins redpitaya_converters_0 phys_interface phys_interface_0


#######################################
#                                     #
# nco1 -> conv1 ----|                 #
#                    offset -> DAC A  #
#               |---|                 #
#          (A)--|                     #
# axi_to_dac                          #
#          (B)--|                     #
#               |---|                 #
#                    offset -> DAC B  #
# nco2 -> conv2 ----|                 #
#                                     #
#######################################

## Create instance: dds_ampl, and set properties
add_ip_and_conf axi_to_dac dds_ampl
connect_proc dds_ampl s00_axi 0x00000
connect_intf redpitaya_converters_0 clk_o dds_ampl ref_clk_i
connect_intf redpitaya_converters_0 rst_o dds_ampl ref_rst_i

## Create instance: nco_counter_1, and set properties
add_ip_and_conf nco_counter nco_counter_1 {
	COUNTER_SIZE 40 \
	LUT_SIZE 12 }
connect_proc nco_counter_1 s00_axi 0x10000
connect_intf redpitaya_converters_0 clk_o nco_counter_1 ref_clk_i
connect_intf redpitaya_converters_0 rst_o nco_counter_1 ref_rst_i

## Create instance: conv_nco_counter_1, and set properties
add_ip_and_conf convertComplexToReal conv_nco_counter_1 {
	DATA_SIZE 16 }
# nco_counter_1 -> conv_nco_counter_1
connect_intf nco_counter_1 sine_out conv_nco_counter_1 data_in

## Create instance: nco_counter_2, and set properties
add_ip_and_conf nco_counter nco_counter_2 {
	COUNTER_SIZE 40 \
	LUT_SIZE 12}
connect_proc nco_counter_2 s00_axi 0x20000
connect_intf redpitaya_converters_0 clk_o nco_counter_2 ref_clk_i
connect_intf redpitaya_converters_0 rst_o nco_counter_2 ref_rst_i

## Create instance: conv_nco_counter_2, and set properties
add_ip_and_conf convertComplexToReal conv_nco_counter_2 {
	DATA_SIZE 16 }
# nco_counter_2 -> conv_nco_counter_2
connect_intf nco_counter_2 sine_out conv_nco_counter_2 data_in

## Create instance: mixer_sin_1, and set properties
add_ip_and_conf multiplierReal mixer_sin_1 {
	DATA1_IN_SIZE 14 \
	DATA2_IN_SIZE 16 \
	DATA_OUT_SIZE 14}
# dds_ampl(A) -> mixer_sin_1(data1)
connect_intf dds_ampl dataA_out mixer_sin_1 data1_in
# conv_nco_counter_1(I) -> mixer_sin_1(data2)
connect_intf conv_nco_counter_1 dataI_out mixer_sin_1 data2_in

## Create instance: mixer_sin_2, and set properties
add_ip_and_conf multiplierReal mixer_sin_2 {
	DATA1_IN_SIZE 14 \
	DATA2_IN_SIZE 16 \
	DATA_OUT_SIZE 14}
# dds_ampl(B) -> mixer_sin_2(data1)
connect_intf dds_ampl dataB_out mixer_sin_2 data1_in
# conv_nco_counter_2(I) -> mixer_sin_2(data2)
connect_intf conv_nco_counter_2 dataI_out mixer_sin_2 data2_in

## Create instance: dds1_offset, and set properties
add_ip_and_conf add_constReal dds1_offset {
	DATA_IN_SIZE 14 \
	DATA_OUT_SIZE 14 }
connect_proc dds1_offset s00_axi 0x30000
# mixer_sin_1 -> dds1_offset
connect_intf mixer_sin_1 data_out dds1_offset data_in
# dds1_offset -> DAC A
connect_intf dds1_offset data_out redpitaya_converters_0 dataA_in

## Create instance: dds2_offset, and set properties
add_ip_and_conf add_constReal dds2_offset {
	DATA_IN_SIZE 14 \
	DATA_OUT_SIZE 14 }
connect_proc dds2_offset s00_axi 0x40000
# mixer_sin_2 -> dds2_offset
connect_intf mixer_sin_2 data_out dds2_offset data_in
# dds2_offset -> DAC B
connect_intf dds2_offset data_out redpitaya_converters_0 dataB_in


###################################################
#                                                 #
# ADCA -> adc1_offset -|--------------|           #
#                      |              |-data2ram  #
#                      |     |--------|           #
#                      |-----|----|               #
#                        |---|    |---|           #
# ADCB -> adc2_offset ---|            |-dma       #
#                        |------------|           #
#                                                 #
###################################################


## Create instance: adc1_offset, and set properties
add_ip_and_conf add_constReal adc1_offset {
	DATA_IN_SIZE 14 \
	DATA_OUT_SIZE 14 }
connect_proc adc1_offset s00_axi 0x50000
# adcA -> adc1_offset
connect_intf redpitaya_converters_0 dataA_out adc1_offset data_in

## Create instance: adc2_offset, and set properties
add_ip_and_conf add_constReal adc2_offset {
	DATA_IN_SIZE 14 \
	DATA_OUT_SIZE 14 }
connect_proc adc2_offset s00_axi 0x60000
# adcB -> adc2_offset
connect_intf redpitaya_converters_0 dataB_out adc2_offset data_in

## Create adc1_duppl
add_ip_and_conf dupplReal adc1_duppl {
	DATA_SIZE 14 \
	NB_OUTPUT 2}
# adc1_offset -> adc1_duppl
connect_intf adc1_offset data_out adc1_duppl data_in

## Create adc2_duppl
add_ip_and_conf dupplReal adc2_duppl {
	DATA_SIZE 14 \
	NB_OUTPUT 2}
# adc2_offset -> adc2_duppl
connect_intf adc2_offset data_out adc2_duppl data_in

## Create instance: dataReal_to_ram, and set properties
add_ip_and_conf dataReal_to_ram data2ram {
	DATA_SIZE 14 \
	NB_INPUT 2 \
	NB_SAMPLE 8192 }
connect_proc data2ram s00_axi 0x70000
# adc1_duppl -> dataReal_to_ram(data1)
connect_intf adc1_duppl data1_out data2ram data1_in
# adc2_duppl -> dataReal_to_ram(data2)
connect_intf adc2_duppl data1_out data2ram data2_in

### Create instance: dma, and set properties
#add_ip_and_conf dataReal_dma_direct dma {
#	DATA_SIZE 14 \
#	NB_INPUT 2 \
#	NB_SAMPLE 8192 }
#connect_proc dma s00_axi 0x80000
## adc1_duppl -> dataReal_to_ram(data1)
#connect_intf adc1_duppl data2_out dma data1_in
## adc2_duppl -> dataReal_to_ram(data2)
#connect_intf adc2_duppl data2_out dma data2_in


connect_proc_rst redpitaya_converters_0 adc_rst_i
