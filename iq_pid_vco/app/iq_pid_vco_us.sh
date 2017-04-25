CORE_MODULES_DIR=/usr/local/modules
cat ../bitstreams/iq_pid_vco_wrapper.bit > /dev/xdevcfg
insmod ../modules/board_iq_pid_vco.ko
insmod ${CORE_MODULES_DIR}/add_const_core.ko
insmod ${CORE_MODULES_DIR}/nco_counter_core.ko
insmod ${CORE_MODULES_DIR}/fir16bits_core.ko
