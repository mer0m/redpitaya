## Create ports
#  set pwm_o [ create_bd_port -dir O pwm_o ]
#  set pwm_o1 [ create_bd_port -dir O pwm_o1 ]

## Create instance: redpitaya_converters_0, and set properties
add_ip_and_conf redpitaya_converters redpitaya_converters_0 {
	CLOCK_DUTY_CYCLE_STABILIZER_EN false }
connect_to_fpga_pins redpitaya_converters_0 phys_interface phys_interface_0

#################################
#                               #
# ADCA -> win1 -> fft1 --> ram  #
#                               #
# ADCA -> win2 -> fft2 --> ram  #
#                               #
#################################

## Create adc1_offset
add_ip_and_conf add_constReal adc1_offset {
	DATA_IN_SIZE 14 \
	DATA_OUT_SIZE 14 }
connect_proc adc1_offset s00_axi 0x00000
connect_intf redpitaya_converters_0 dataA_out adc1_offset data_in

## Create adc1_dupl
add_ip_and_conf dupplReal adc1_dupl {
    DATA_SIZE 14 \
    NB_OUTPUT 2 }
connect_intf adc1_offset data_out adc1_dupl data_in

## Create win1
add_ip_and_conf windowReal win1 {
	DATA_SIZE 14 \
	COEFF_ADDR_SIZE 11 \
	COEFF_SIZE 16 }
connect_proc win1 s00_axi 0x10000
connect_intf adc1_dupl data1_out win1 data_in

## Create win1_out_dupl
add_ip_and_conf dupplReal win1_out_dupl {
    DATA_SIZE 16 \
    NB_OUTPUT 2 }
connect_intf win1 data_out win1_out_dupl data_in

## Create fft1
add_ip_and_conf fft fft1 {
	LOG_2_N_FFT 11 \
	SHIFT_VAL 12 \
    DATA_IN_SIZE 16 \
    DATA_SIZE 32 \
	USE_EOF true }
connect_proc fft1 s00_axi 0x20000
connect_intf win1_out_dupl data1_out fft1 data_in

## Create adc2_offset
add_ip_and_conf add_constReal adc2_offset {
	DATA_IN_SIZE 14 \
	DATA_OUT_SIZE 14 }
connect_proc adc2_offset s00_axi 0x30000
connect_intf redpitaya_converters_0 dataB_out adc2_offset data_in

## Create adc2_dupl
add_ip_and_conf dupplReal adc2_dupl {
    DATA_SIZE 14 \
    NB_OUTPUT 2 }
connect_intf adc2_offset data_out adc2_dupl data_in

## Create win2
add_ip_and_conf windowReal win2 {
	DATA_SIZE 14 \
	COEFF_ADDR_SIZE 11 \
	COEFF_SIZE 16 }
connect_proc win2 s00_axi 0x40000
connect_intf adc2_dupl data1_out win2 data_in

## Create win2_out_dupl
add_ip_and_conf dupplReal win2_out_dupl {
    DATA_SIZE 16 \
    NB_OUTPUT 2 }
connect_intf win2 data_out win2_out_dupl data_in

## Create fft2
add_ip_and_conf fft fft2 {
	LOG_2_N_FFT 11 \
	SHIFT_VAL 12 \
    DATA_IN_SIZE 16 \
    DATA_SIZE 32 \
	USE_EOF true }
connect_proc fft2 s00_axi 0x50000
connect_intf win2_out_dupl data1_out fft2 data_in

## Create data_adc12
add_ip_and_conf dataReal_to_ram data_adc12 {
	USE_EOF false \
	DATA_SIZE 14 \
	NB_INPUT 2 \
	NB_SAMPLE 2048 }
connect_proc data_adc12 s00_axi 0x60000
connect_intf adc1_dupl data2_out data_adc12 data1_in
connect_intf adc2_dupl data2_out data_adc12 data2_in

## Create data_win12
add_ip_and_conf dataReal_to_ram data_win12 {
	USE_EOF true \
	DATA_SIZE 14 \
	NB_INPUT 2 \
	NB_SAMPLE 2048 }
connect_proc data_win12 s00_axi 0x70000
connect_intf win1_out_dupl data2_out data_win12 data1_in
connect_intf win2_out_dupl data2_out data_win12 data2_in

## Create data_fft12
add_ip_and_conf dataComplex_to_ram data_fft12 {
	USE_EOF true \
	DATA_SIZE 32 \
	NB_INPUT 2 \
	NB_SAMPLE 2048 }
connect_proc data_fft12 s00_axi 0x80000
connect_intf fft1 data_out data_fft12 data1_in
connect_intf fft2 data_out data_fft12 data2_in

connect_proc_rst redpitaya_converters_0 adc_rst_i
