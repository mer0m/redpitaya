CORE_MODULES_DIR=/usr/local/modules
cat ../bitstreams/vco_only_wrapper.bit > /dev/xdevcfg
insmod ../modules/board_vco_only.ko
insmod ${CORE_MODULES_DIR}/add_const_core.ko
insmod ${CORE_MODULES_DIR}/nco_counter_core.ko
