## Create instance: redpitaya_converters_0, and set properties
add_ip_and_conf redpitaya_converters redpitaya_converters_0 {
	CLOCK_DUTY_CYCLE_STABILIZER_EN false }
connect_to_fpga_pins redpitaya_converters_0 phys_interface phys_interface_0

#############################################
#											#
#				*		*					#
# nco1 -> C2R -> fir1 -> DACA  ADCA -> *	#
#											#
#											#
#				*		*			  		#
# nco2 -> C2R -> fir2 -> DACB  ADCB -> *	#
#											#
#############################################

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

## Create instance: shifter_square1, and set properties
add_ip_and_conf shifterReal shifter_square1 {
	DATA_IN_SIZE 1 \
	DATA_OUT_SIZE 16}
connect_intf c2r1 dataI_out shifter_square1 data_in

## Create nco1_duppl
add_ip_and_conf dupplReal nco1_duppl {
	DATA_SIZE 16 \
	NB_OUTPUT 2}

connect_intf shifter_square1 data_out nco1_duppl data_in

## Create instance: fir1, and set properties
add_ip_and_conf firReal fir1 {
	DATA_IN_SIZE 16 \
	DATA_OUT_SIZE 32 \
	DECIMATE_FACTOR 1 \
	NB_COEFF 25 }
connect_proc fir1 s00_axi 0x10000

connect_intf nco1_duppl data1_out fir1 data_in

## Create instance: shifter_fir1, and set properties
add_ip_and_conf shifterReal shifter_fir1 {
	DATA_IN_SIZE 32 \
	DATA_OUT_SIZE 16}
connect_intf fir1 data_out shifter_fir1 data_in

## Create fir1_out_duppl
add_ip_and_conf dupplReal fir1_out_duppl {
	DATA_SIZE 16 \
	NB_OUTPUT 2}

connect_intf shifter_fir1 data_out fir1_out_duppl data_in
#connect_intf fir1_out_duppl data1_out redpitaya_converters_0 dataA_in

########################################################################

## Create nco2
add_ip_and_conf nco_counter nco2 {
	COUNTER_SIZE 40 \
	LUT_SIZE 12 }
connect_proc nco2 s00_axi 0x20000
connect_intf redpitaya_converters_0 clk_o nco2 ref_clk_i
connect_intf redpitaya_converters_0 rst_o nco2 ref_rst_i

## Create C2R2
add_ip_and_conf convertComplexToReal c2r2 {
	DATA_SIZE 16 }
connect_intf nco2 sine_out c2r2 data_in

## Create nco2_duppl
add_ip_and_conf dupplReal nco2_duppl {
	DATA_SIZE 16 \
	NB_OUTPUT 2}

connect_intf c2r2 dataI_out nco2_duppl data_in

## Create instance: fir2, and set properties
add_ip_and_conf firReal fir2 {
	DATA_IN_SIZE 16 \
	DATA_OUT_SIZE 32 \
	DECIMATE_FACTOR 1 \
	NB_COEFF 25 }
connect_proc fir2 s00_axi 0x30000

connect_intf nco2_duppl data1_out fir2 data_in

## Create instance: shifter_fir2, and set properties
add_ip_and_conf shifterReal shifter_fir2 {
	DATA_IN_SIZE 32 \
	DATA_OUT_SIZE 16}
connect_intf fir2 data_out shifter_fir2 data_in

## Create fir2_out_duppl
add_ip_and_conf dupplReal fir2_out_duppl {
	DATA_SIZE 16 \
	NB_OUTPUT 2}

connect_intf shifter_fir2 data_out fir2_out_duppl data_in
#connect_intf fir2_out_duppl data1_out redpitaya_converters_0 dataB_in

########################################################################

## Create instance: data1, and set properties
add_ip_and_conf dataReal_to_ram data1 {
	DATA_SIZE 16 \
	NB_INPUT 3 \
	NB_SAMPLE 8192 }
connect_proc data1 s00_axi 0x40000

connect_intf nco1_duppl data2_out data1 data1_in
connect_intf fir1_out_duppl data2_out data1 data2_in
connect_intf redpitaya_converters_0 dataA_out data1 data3_in

## Create instance: data2, and set properties
add_ip_and_conf dataReal_to_ram data2 {
	DATA_SIZE 16 \
	NB_INPUT 3 \
	NB_SAMPLE 8192 }
connect_proc data2 s00_axi 0x50000

connect_intf nco2_duppl data2_out data2 data1_in
connect_intf fir2_out_duppl data2_out data2 data2_in
connect_intf redpitaya_converters_0 dataB_out data2 data3_in

## ADC reset
connect_proc_rst redpitaya_converters_0 adc_rst_i
