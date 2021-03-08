## Create instance: redpitaya_converters_0, and set properties
add_ip_and_conf redpitaya_converters redpitaya_converters_0 {
	CLOCK_DUTY_CYCLE_STABILIZER_EN false }
connect_to_fpga_pins redpitaya_converters_0 phys_interface phys_interface_0

#####################
#					#
# nco1 -> counter	#
#					#
#####################

## Create nco1
add_ip_and_conf nco_counter nco1 {
	COUNTER_SIZE 40 \
	LUT_SIZE 12 }
connect_proc nco1 s00_axi 0x00000
connect_intf redpitaya_converters_0 clk_o nco1 ref_clk_i
connect_intf redpitaya_converters_0 rst_o nco1 ref_rst_i

## Create C2R1
add_ip_and_conf convertComplexToReal c2r1 {
	DATA_SIZE 1 }
connect_intf nco1 square_out c2r1 data_in

## Create expander
add_ip_and_conf expanderReal exp {
	DATA_IN_SIZE 1 \
	DATA_OUT_SIZE 1}
connect_intf c2r1 dataI_out exp data_in

## Create counter
add_ip_and_conf counter c1 {
	DATA_IN_SIZE 16 \
	COUNTER_SIZE 32 }
connect_proc c1 s00_axi 0x10000
connect_intf exp data_out c1 data_in


## ADC reset
connect_proc_rst redpitaya_converters_0 adc_rst_i
