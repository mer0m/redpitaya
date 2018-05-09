CORE_MODULES_DIR=/usr/local/modules
cp ../bitstreams/pid_vco_amp_mod_pid_only_wrapper.bit.bin /lib/firmware
echo "pid_vco_amp_mod_pid_only_wrapper.bit.bin" > /sys/class/fpga_manager/fpga0/firmware 
insmod ../modules/board_pid_vco_amp_mod_pid_only.ko
insmod ${CORE_MODULES_DIR}/add_const_core.ko
insmod ${CORE_MODULES_DIR}/nco_counter_core.ko
insmod ${CORE_MODULES_DIR}/switchComplex_core.ko
