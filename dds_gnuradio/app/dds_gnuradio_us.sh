CORE_MODULES_DIR=/usr/local/modules
cat ../bitstreams/dds_gnuradio_wrapper.bit > /dev/xdevcfg
insmod ../modules/board_dds_gnuradio.ko
insmod ${CORE_MODULES_DIR}/data16_multi_to_ram_core.ko
insmod ${CORE_MODULES_DIR}/add_const_core.ko
insmod ${CORE_MODULES_DIR}/nco_counter_core.ko
