CORE_MODULES_DIR=/home/mynfs/modules/
cat ../bitstreams/test_pound_FIR_wrapper.bit > /dev/xdevcfg
insmod ../modules/board_test_pound_FIR.ko
insmod ${CORE_MODULES_DIR}/add_const_core.ko
insmod ${CORE_MODULES_DIR}/fir16bits_core.ko
insmod ${CORE_MODULES_DIR}/nco_counter_core.ko
