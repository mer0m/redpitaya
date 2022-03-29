set adc_offset_output_size 15
set adc2ram_addr_size 10
set win_coeff_size 16
set win_coeff_addr_size 10
set fft_coeff_size 16
set fft_coeff_addr_size 10
set fft_output_size 16

## Create ports
#  set pwm_o [ create_bd_port -dir O pwm_o ]
#  set pwm_o1 [ create_bd_port -dir O pwm_o1 ]

## Create instance: redpitaya_converters_0, and set properties
add_ip_and_conf redpitaya_converters redpitaya_converters_0 {
	CLOCK_DUTY_CYCLE_STABILIZER_EN false }
connect_to_fpga_pins redpitaya_converters_0 phys_interface phys_interface_0

##########################################
#										 #
# ADCA --> win1 --> fft1 --> mag --> ram #
#										 #
# ADCB --> win2 --> fft2 --> mag --> ram #
#										 #
##########################################

## Create adc1_offset
add_ip_and_conf add_constReal adc1_offset {
	DATA_IN_SIZE 14 \
	DATA_OUT_SIZE $adc_offset_output_size }
connect_proc adc1_offset s00_axi 0x00000
connect_intf redpitaya_converters_0 dataA_out adc1_offset data_in

## Create adc1_dupl
add_ip_and_conf dupplReal adc1_dupl {
	DATA_SIZE $adc_offset_output_size \
	NB_OUTPUT 2 }
connect_intf adc1_offset data_out adc1_dupl data_in

## Create win1
add_ip_and_conf windowReal win1 {
	DATA_SIZE $adc_offset_output_size \
	COEFF_ADDR_SIZE $win_coeff_addr_size \
	COEFF_SIZE $win_coeff_size }
connect_proc win1 s00_axi 0x10000
connect_intf adc1_dupl data1_out win1 data_in

## Create win1_out_dupl
add_ip_and_conf dupplReal win1_out_dupl {
	DATA_SIZE $adc_offset_output_size \
	NB_OUTPUT 2 }
connect_intf win1 data_out win1_out_dupl data_in

## Create fft1
add_ip_and_conf fft fft1 {
	LOG_2_N_FFT $fft_coeff_addr_size \
	SHIFT_VAL $fft_coeff_size \
	DATA_IN_SIZE $adc_offset_output_size \
	DATA_SIZE $fft_output_size \
	USE_EOF true }
connect_proc fft1 s00_axi 0x20000
connect_intf win1_out_dupl data1_out fft1 data_in

## Create mag_fft1
add_ip_and_conf magnitude mag_fft1 {
	DATA_SIZE $fft_output_size }
connect_intf fft1 data_out mag_fft1 data_in

### create mag_expander_fft1
#add_ip_and_conf expanderReal mag_expander_fft1 {
#	DATA_IN_SIZE 64 \
#	DATA_OUT_SIZE 56 }
#connect_intf mag_fft1 data_out mag_expander_fft1 data_in
#
### create mag_shifter_fft1
#add_ip_and_conf shifterReal mag_shifter_fft1 {
#	DATA_IN_SIZE 56 \
#	DATA_OUT_SIZE 32 }
#connect_intf mag_expander_fft1 data_out mag_shifter_fft1 data_in

## Create adc2_offset
add_ip_and_conf add_constReal adc2_offset {
	DATA_IN_SIZE 14 \
	DATA_OUT_SIZE $adc_offset_output_size }
connect_proc adc2_offset s00_axi 0x30000
connect_intf redpitaya_converters_0 dataB_out adc2_offset data_in

## Create adc2_dupl
add_ip_and_conf dupplReal adc2_dupl {
	DATA_SIZE $adc_offset_output_size \
	NB_OUTPUT 2 }
connect_intf adc2_offset data_out adc2_dupl data_in

## Create win2
add_ip_and_conf windowReal win2 {
	DATA_SIZE $adc_offset_output_size \
	COEFF_ADDR_SIZE $win_coeff_addr_size \
	COEFF_SIZE $win_coeff_size }
connect_proc win2 s00_axi 0x40000
connect_intf adc2_dupl data1_out win2 data_in

## Create win2_out_dupl
add_ip_and_conf dupplReal win2_out_dupl {
	DATA_SIZE $adc_offset_output_size \
	NB_OUTPUT 2 }
connect_intf win2 data_out win2_out_dupl data_in

## Create fft2
add_ip_and_conf fft fft2 {
	LOG_2_N_FFT $fft_coeff_addr_size \
	SHIFT_VAL $fft_coeff_size \
	DATA_IN_SIZE $adc_offset_output_size \
	DATA_SIZE $fft_output_size \
	USE_EOF true }
connect_proc fft2 s00_axi 0x50000
connect_intf win2_out_dupl data1_out fft2 data_in

## Create mag_fft2
add_ip_and_conf magnitude mag_fft2 {
	DATA_SIZE $fft_output_size }
connect_intf fft2 data_out mag_fft2 data_in

### create mag_expander_fft2
#add_ip_and_conf expanderReal mag_expander_fft2 {
#	DATA_IN_SIZE 64 \
#	DATA_OUT_SIZE 56 }
#connect_intf mag_fft2 data_out mag_expander_fft2 data_in
#
### create mag_shifter_fft2
#add_ip_and_conf shifterReal mag_shifter_fft2 {
#	DATA_IN_SIZE 56 \
#	DATA_OUT_SIZE 32 }
#connect_intf mag_expander_fft2 data_out mag_shifter_fft2 data_in

## Create data_adc12
add_ip_and_conf dataReal_to_ram data_adc12 {
	USE_EOF false \
	DATA_SIZE $adc_offset_output_size\
	NB_INPUT 2 \
	NB_SAMPLE [::tcl::mathfunc::pow 2 $adc2ram_addr_size] }
connect_proc data_adc12 s00_axi 0x60000
connect_intf adc1_dupl data2_out data_adc12 data1_in
connect_intf adc2_dupl data2_out data_adc12 data2_in

## Create data_win12
add_ip_and_conf dataReal_to_ram data_win12 {
	USE_EOF true \
	DATA_SIZE $adc_offset_output_size \
	NB_INPUT 2 \
	NB_SAMPLE [::tcl::mathfunc::pow 2 $win_coeff_addr_size] }
connect_proc data_win12 s00_axi 0x70000
connect_intf win1_out_dupl data2_out data_win12 data1_in
connect_intf win2_out_dupl data2_out data_win12 data2_in

## Create data_fft12
add_ip_and_conf dataReal_to_ram data_fft12 {
	USE_EOF true \
	DATA_SIZE [::tcl::mathfunc::floor [expr 2*$fft_output_size]] \
	NB_INPUT 2 \
	NB_SAMPLE [::tcl::mathfunc::pow 2 $fft_coeff_addr_size] }
connect_proc data_fft12 s00_axi 0x80000
connect_intf mag_fft1 data_out data_fft12 data1_in
connect_intf mag_fft2 data_out data_fft12 data2_in

######################################
#									 #
# nco1 -> conv1 ----|				 #
#					offset -> DAC A  #
#			   |---|				 #
#		  (A)--|					 #
# axi_to_dac						 #
#		  (B)--|					 #
#			   |---|				 #
#					offset -> DAC B  #
# nco2 -> conv2 ----|				 #
#									 #
######################################

## Create instance: dds_ampl, and set properties
add_ip_and_conf axi_to_dac dds_ampl
connect_proc dds_ampl s00_axi 0x90000
connect_intf redpitaya_converters_0 clk_o dds_ampl ref_clk_i
connect_intf redpitaya_converters_0 rst_o dds_ampl ref_rst_i

## Create instance: nco_counter_1, and set properties
add_ip_and_conf nco_counter nco_counter_1 {
	COUNTER_SIZE 40 \
	LUT_SIZE 12 }
connect_proc nco_counter_1 s00_axi 0xA0000
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
connect_proc nco_counter_2 s00_axi 0xB0000
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
connect_proc dds1_offset s00_axi 0xC0000
# mixer_sin_1 -> dds1_offset
connect_intf mixer_sin_1 data_out dds1_offset data_in
# dds1_offset -> DAC A
connect_intf dds1_offset data_out redpitaya_converters_0 dataA_in

## Create instance: dds2_offset, and set properties
add_ip_and_conf add_constReal dds2_offset {
	DATA_IN_SIZE 14 \
	DATA_OUT_SIZE 14 }
connect_proc dds2_offset s00_axi 0xD0000
# mixer_sin_2 -> dds2_offset
connect_intf mixer_sin_2 data_out dds2_offset data_in
# dds2_offset -> DAC B
connect_intf dds2_offset data_out redpitaya_converters_0 dataB_in


# reset
connect_proc_rst redpitaya_converters_0 adc_rst_i
