CORE_MODULES_DIR=/usr/local/modules
cat ../bitstreams/double_dds_wrapper.bit > /dev/xdevcfg
insmod ../modules/board_double_dds.ko
insmod ${CORE_MODULES_DIR}/add_const_core.ko
insmod ${CORE_MODULES_DIR}/nco_counter_core.ko
