CORE_MODULES_DIR=/usr/local/modules
cat ../bitstreams/pid_only_wrapper.bit > /dev/xdevcfg
insmod ../modules/board_pid_only.ko
insmod ${CORE_MODULES_DIR}/add_const_core.ko
