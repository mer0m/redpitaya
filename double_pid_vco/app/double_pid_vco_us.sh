CORE_MODULES_DIR=/usr/local/modules
cat ../bitstreams/double_pid_vco_wrapper.bit > /dev/xdevcfg
insmod ../modules/board_double_pid_vco.ko
insmod ${CORE_MODULES_DIR}/add_const_core.ko
insmod ${CORE_MODULES_DIR}/nco_counter_core.ko
