CORE_MODULES_DIR=/usr/local/modules
cat ../bitstreams/adc2dac_ram_offset_wrapper.bit > /dev/xdevcfg
insmod ../modules/board_adc2dac_ram_offset.ko
insmod ${CORE_MODULES_DIR}/data16_multi_to_ram_core.ko
insmod ${CORE_MODULES_DIR}/add_const_core.ko
