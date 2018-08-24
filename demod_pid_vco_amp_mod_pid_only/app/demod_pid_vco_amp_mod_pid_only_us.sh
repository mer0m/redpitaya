CORE_MODULES_DIR=/usr/local/modules
cat ../bitstreams/demod_pid_vco_amp_mod_pid_only_wrapper.bit > /dev/xdevcfg
insmod ../modules/board_demod_pid_vco_amp_mod_pid_only.ko
insmod ${CORE_MODULES_DIR}/add_const_core.ko
insmod ${CORE_MODULES_DIR}/nco_counter_core.ko
insmod ${CORE_MODULES_DIR}/switchComplex_core.ko
insmod ${CORE_MODULES_DIR}/fir16bits_core.ko
