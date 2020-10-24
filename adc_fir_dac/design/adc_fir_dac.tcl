## Create ports
#  set pwm_o [ create_bd_port -dir O pwm_o ]
#  set pwm_o1 [ create_bd_port -dir O pwm_o1 ]

## Create instance: redpitaya_converters_0, and set properties
add_ip_and_conf redpitaya_converters redpitaya_converters_0 {
	CLOCK_DUTY_CYCLE_STABILIZER_EN false }
connect_to_fpga_pins redpitaya_converters_0 phys_interface phys_interface_0

#########################
#                       #
# ADCA -> fir1 -> DACA  #
#                       #
# ADCA -> fir2 -> DACB  #
#                       #
#########################

## Create adc1_duppl
add_ip_and_conf dupplReal adc1_duppl {
    DATA_SIZE 14 \
    NB_OUTPUT 2}

connect_intf redpitaya_converters_0 dataA_out adc1_duppl data_in

## Create instance: fir1, and set properties
add_ip_and_conf firReal fir1 {
	DATA_IN_SIZE 14 \
	DATA_OUT_SIZE 14 \
	DECIMATE_FACTOR 1 \
	NB_COEFF 25 }
connect_proc fir1 s00_axi 0x00000

connect_intf adc1_duppl data1_out fir1 data_in

## Create fir1_out_duppl
add_ip_and_conf dupplReal fir1_out_duppl {
    DATA_SIZE 14 \
    NB_OUTPUT 2}

connect_intf fir1 data_out fir1_out_duppl data_in
connect_intf fir1_out_duppl data1_out redpitaya_converters_0 dataA_in

## Create instance: data1, and set properties
add_ip_and_conf dataReal_to_ram data1 {
	DATA_SIZE 14 \
	NB_INPUT 2 \
	NB_SAMPLE 8192 }
connect_proc data1 s00_axi 0x10000

connect_intf adc1_duppl data2_out data1 data1_in
connect_intf fir1_out_duppl data2_out data1 data2_in

## Create adc2_duppl
add_ip_and_conf dupplReal adc2_duppl {
    DATA_SIZE 14 \
    NB_OUTPUT 2}

connect_intf redpitaya_converters_0 dataB_out adc2_duppl data_in

## Create instance: fir2, and set properties
add_ip_and_conf firReal fir2 {
	DATA_IN_SIZE 14 \
	DATA_OUT_SIZE 14 \
	DECIMATE_FACTOR 1 \
	NB_COEFF 25 }
connect_proc fir2 s00_axi 0x20000

connect_intf adc2_duppl data1_out fir2 data_in

## Create fir2_out_duppl
add_ip_and_conf dupplReal fir2_out_duppl {
    DATA_SIZE 14 \
    NB_OUTPUT 2}

connect_intf fir2 data_out fir2_out_duppl data_in
connect_intf fir2_out_duppl data1_out redpitaya_converters_0 dataB_in

## Create instance: data2, and set properties
add_ip_and_conf dataReal_to_ram data2 {
	DATA_SIZE 14 \
	NB_INPUT 2 \
	NB_SAMPLE 8192 }
connect_proc data2 s00_axi 0x30000

connect_intf adc2_duppl data2_out data2 data1_in
connect_intf fir2_out_duppl data2_out data2 data2_in



connect_proc_rst redpitaya_converters_0 adc_rst_i
