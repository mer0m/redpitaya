CORE_MODULES_DIR=/home/mynfs/modules/
cat ../bitstreams/test_pound_fironly_v1_wrapper.bit > /dev/xdevcfg
#cat ../bitstreams/firv1test.bit > /dev/xdevcfg
#cat ../bitstreams/test_pound_fironly_v1_wrapper.bit > /dev/xdevcfg
insmod ../modules/board_test_pound_fironly_v1.ko
insmod ${CORE_MODULES_DIR}/add_const_core.ko
insmod ${CORE_MODULES_DIR}/fir16bits_core.ko
insmod ${CORE_MODULES_DIR}/nco_counter_core.ko
insmod ${CORE_MODULES_DIR}/data16_multi_to_ram_core.ko
