CORE_MODULES_DIR=/home/mynfs/modules/
cat ../bitstreams/test_pound_wrapper.bit > /dev/xdevcfg
insmod ../modules/board_test_pound.ko
insmod ${CORE_MODULES_DIR}/add_const_core.ko
insmod ${CORE_MODULES_DIR}/fir16bits_core.ko
insmod ${CORE_MODULES_DIR}/nco_counter_core.ko
insmod ${CORE_MODULES_DIR}/data16_multi_to_ram_core.ko
insmod ${CORE_MODULES_DIR}/data32Real_multi_to_ram_core.ko
