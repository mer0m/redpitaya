## Create ports
#  set pwm_o [ create_bd_port -dir O pwm_o ]
#  set pwm_o1 [ create_bd_port -dir O pwm_o1 ]

## Create instance: redpitaya_converters_0, and set properties
add_ip_and_conf redpitaya_converters redpitaya_converters_0 {
	CLOCK_DUTY_CYCLE_STABILIZER_EN false }
connect_to_fpga_pins redpitaya_converters_0 phys_interface phys_interface_0


##############################################
#                                            #
# nco1--->conv1-----|                        #
#                   X-->offset1--|           #
#              (A)--|            |           #
#     axi_to_dac                 |->data2ram #
#              (B)--|            |           #
#                   X-->offset2--|           #
# nco2--->conv2-----|                        #
#                                            #
##############################################

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

## Create instance: nco_counter_2, and set properties
add_ip_and_conf nco_counter nco_counter_2 {
	COUNTER_SIZE 40 \
	LUT_SIZE 12 }
connect_proc nco_counter_2 s00_axi 0x20000
connect_intf redpitaya_converters_0 clk_o nco_counter_2 ref_clk_i
connect_intf redpitaya_converters_0 rst_o nco_counter_2 ref_rst_i

## Create instance: conv_nco_counter_1, and set properties
add_ip_and_conf convertComplexToReal conv_nco_counter_1 {
	DATA_SIZE 1 }
connect_intf nco_counter_1 square_out conv_nco_counter_1 data_in

## Create instance: shifter_nco_counter_1, and set properties
add_ip_and_conf shifterReal shifter_nco_counter_1 {
	DATA_IN_SIZE 1 \
	DATA_OUT_SIZE 16}
connect_intf conv_nco_counter_1 dataI_out shifter_nco_counter_1 data_in

## Create instance: conv_nco_counter_2, and set properties
add_ip_and_conf convertComplexToReal conv_nco_counter_2 {
	DATA_SIZE 16 }
connect_intf nco_counter_2 sine_out conv_nco_counter_2 data_in

## Create instance: mixer_sin_1, and set properties
add_ip_and_conf multiplierReal mixer_sin_1 {
	DATA1_IN_SIZE 14 \
	DATA2_IN_SIZE 16 \
	DATA_OUT_SIZE 14}
connect_intf dds_ampl dataA_out mixer_sin_1 data1_in
connect_intf shifter_nco_counter_1 data_out mixer_sin_1 data2_in

## Create instance: mixer_sin_2, and set properties
add_ip_and_conf multiplierReal mixer_sin_2 {
	DATA1_IN_SIZE 14 \
	DATA2_IN_SIZE 16 \
	DATA_OUT_SIZE 14}
connect_intf dds_ampl dataB_out mixer_sin_2 data1_in
connect_intf conv_nco_counter_2 dataI_out mixer_sin_2 data2_in

## Create instance: dds1_offset, and set properties
add_ip_and_conf add_constReal dds1_offset {
	DATA_IN_SIZE 14 \
	DATA_OUT_SIZE 14 }
connect_proc dds1_offset s00_axi 0x30000
connect_intf mixer_sin_1 data_out dds1_offset data_in

## Create instance: dds2_offset, and set properties
add_ip_and_conf add_constReal dds2_offset {
	DATA_IN_SIZE 14 \
	DATA_OUT_SIZE 14 }
connect_proc dds2_offset s00_axi 0x40000
connect_intf mixer_sin_2 data_out dds2_offset data_in

## Create instance: dataReal_to_ram, and set properties
add_ip_and_conf dataReal_to_ram data2ram {
	DATA_SIZE 14 \
	NB_INPUT 2 \
	NB_SAMPLE 8192 }
connect_proc data2ram s00_axi 0x50000
connect_intf dds1_offset data_out data2ram data1_in
connect_intf dds2_offset data_out data2ram data2_in


connect_proc_rst redpitaya_converters_0 adc_rst_i
