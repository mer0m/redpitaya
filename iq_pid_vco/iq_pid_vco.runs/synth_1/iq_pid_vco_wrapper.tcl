# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z010clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/bma/git/fpga_design/redpitaya/iq_pid_vco/iq_pid_vco.cache/wt [current_project]
set_property parent.project_path /home/bma/git/fpga_design/redpitaya/iq_pid_vco/iq_pid_vco.xpr [current_project]
set_property XPM_LIBRARIES XPM_CDC [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part em.avnet.com:redpitaya:part0:1.0 [current_project]
set_property ip_repo_paths /home/bma/git/gitlab/oimp/fpga_ip [current_project]
set_property ip_output_repo /home/bma/git/fpga_design/redpitaya/iq_pid_vco/iq_pid_vco.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files /home/bma/git/fpga_design/redpitaya/iq_pid_vco/iq_pid_vco.srcs/sources_1/bd/iq_pid_vco_wrapper/iq_pid_vco_wrapper.bd
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/iq_pid_vco/iq_pid_vco.srcs/sources_1/bd/iq_pid_vco_wrapper/ip/iq_pid_vco_wrapper_adc1_offset_0/add_const_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/iq_pid_vco/iq_pid_vco.srcs/sources_1/bd/iq_pid_vco_wrapper/ip/iq_pid_vco_wrapper_xbar_0/iq_pid_vco_wrapper_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/iq_pid_vco/iq_pid_vco.srcs/sources_1/bd/iq_pid_vco_wrapper/ip/iq_pid_vco_wrapper_dac1_offset_0/add_const_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/iq_pid_vco/iq_pid_vco.srcs/sources_1/bd/iq_pid_vco_wrapper/ip/iq_pid_vco_wrapper_dds_ampl_0/add_const_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/iq_pid_vco/iq_pid_vco.srcs/sources_1/bd/iq_pid_vco_wrapper/ip/iq_pid_vco_wrapper_dds_f0_0/add_const_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/iq_pid_vco/iq_pid_vco.srcs/sources_1/bd/iq_pid_vco_wrapper/ip/iq_pid_vco_wrapper_dds_nco_0/nco_counter_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/iq_pid_vco/iq_pid_vco.srcs/sources_1/bd/iq_pid_vco_wrapper/ip/iq_pid_vco_wrapper_dds_offset_0/add_const_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/iq_pid_vco/iq_pid_vco.srcs/sources_1/bd/iq_pid_vco_wrapper/ip/iq_pid_vco_wrapper_dds_range_0/add_const_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/iq_pid_vco/iq_pid_vco.srcs/sources_1/bd/iq_pid_vco_wrapper/ip/iq_pid_vco_wrapper_pid_kd_0/add_const_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/iq_pid_vco/iq_pid_vco.srcs/sources_1/bd/iq_pid_vco_wrapper/ip/iq_pid_vco_wrapper_pid_ki_0/add_const_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/iq_pid_vco/iq_pid_vco.srcs/sources_1/bd/iq_pid_vco_wrapper/ip/iq_pid_vco_wrapper_pid_kp_0/add_const_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/iq_pid_vco/iq_pid_vco.srcs/sources_1/bd/iq_pid_vco_wrapper/ip/iq_pid_vco_wrapper_pid_rst_int_0/add_const_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/iq_pid_vco/iq_pid_vco.srcs/sources_1/bd/iq_pid_vco_wrapper/ip/iq_pid_vco_wrapper_pid_setpoint_0/add_const_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/iq_pid_vco/iq_pid_vco.srcs/sources_1/bd/iq_pid_vco_wrapper/ip/iq_pid_vco_wrapper_pid_sign_0/add_const_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/iq_pid_vco/iq_pid_vco.srcs/sources_1/bd/iq_pid_vco_wrapper/ip/iq_pid_vco_wrapper_proc_sys_reset_0_0/iq_pid_vco_wrapper_proc_sys_reset_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/iq_pid_vco/iq_pid_vco.srcs/sources_1/bd/iq_pid_vco_wrapper/ip/iq_pid_vco_wrapper_proc_sys_reset_0_0/iq_pid_vco_wrapper_proc_sys_reset_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/iq_pid_vco/iq_pid_vco.srcs/sources_1/bd/iq_pid_vco_wrapper/ip/iq_pid_vco_wrapper_proc_sys_reset_0_0/iq_pid_vco_wrapper_proc_sys_reset_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/iq_pid_vco/iq_pid_vco.srcs/sources_1/bd/iq_pid_vco_wrapper/ip/iq_pid_vco_wrapper_processing_system7_0_0/iq_pid_vco_wrapper_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/iq_pid_vco/iq_pid_vco.srcs/sources_1/bd/iq_pid_vco_wrapper/ip/iq_pid_vco_wrapper_redpitaya_adc_dac_clk_0_0/adc_dac_clk_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/iq_pid_vco/iq_pid_vco.srcs/sources_1/bd/iq_pid_vco_wrapper/ip/iq_pid_vco_wrapper_dds_nco_1/nco_counter_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/iq_pid_vco/iq_pid_vco.srcs/sources_1/bd/iq_pid_vco_wrapper/ip/iq_pid_vco_wrapper_auto_pc_0/iq_pid_vco_wrapper_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/iq_pid_vco/iq_pid_vco.srcs/sources_1/bd/iq_pid_vco_wrapper/iq_pid_vco_wrapper_ooc.xdc]
set_property is_locked true [get_files /home/bma/git/fpga_design/redpitaya/iq_pid_vco/iq_pid_vco.srcs/sources_1/bd/iq_pid_vco_wrapper/iq_pid_vco_wrapper.bd]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/bma/git/fpga_design/redpitaya/iq_pid_vco/iq_pid_vco.srcs/constrs_1/imports/fpga_ip/ad9767/ad9767.xdc
set_property used_in_implementation false [get_files /home/bma/git/fpga_design/redpitaya/iq_pid_vco/iq_pid_vco.srcs/constrs_1/imports/fpga_ip/ad9767/ad9767.xdc]

read_xdc /home/bma/git/fpga_design/redpitaya/iq_pid_vco/iq_pid_vco.srcs/constrs_1/imports/fpga_ip/ltc2145/ltc2145-redpy.xdc
set_property used_in_implementation false [get_files /home/bma/git/fpga_design/redpitaya/iq_pid_vco/iq_pid_vco.srcs/constrs_1/imports/fpga_ip/ltc2145/ltc2145-redpy.xdc]

read_xdc /home/bma/git/fpga_design/redpitaya/iq_pid_vco/iq_pid_vco.srcs/constrs_1/imports/fpga_ip/redpitaya_adc_dac_clk/redpitaya_clk_pin.xdc
set_property used_in_implementation false [get_files /home/bma/git/fpga_design/redpitaya/iq_pid_vco/iq_pid_vco.srcs/constrs_1/imports/fpga_ip/redpitaya_adc_dac_clk/redpitaya_clk_pin.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top iq_pid_vco_wrapper -part xc7z010clg400-1


write_checkpoint -force -noxdef iq_pid_vco_wrapper.dcp

catch { report_utilization -file iq_pid_vco_wrapper_utilization_synth.rpt -pb iq_pid_vco_wrapper_utilization_synth.pb }