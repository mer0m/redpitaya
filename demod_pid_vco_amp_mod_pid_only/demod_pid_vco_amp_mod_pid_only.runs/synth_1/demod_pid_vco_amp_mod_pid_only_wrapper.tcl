# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z010clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.cache/wt [current_project]
set_property parent.project_path /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.xpr [current_project]
set_property XPM_LIBRARIES XPM_CDC [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part em.avnet.com:redpitaya:part0:1.0 [current_project]
set_property ip_repo_paths /home/bma/git/gitlab/oimp/fpga_ip [current_project]
set_property ip_output_repo /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/demod_pid_vco_amp_mod_pid_only_wrapper.bd
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_adc1_offset_0/add_const_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_adc2_offset_0/add_const_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_xbar_0/demod_pid_vco_amp_mod_pid_only_wrapper_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_dds1_ampl_0/add_const_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_dds1_f0_0/add_const_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_dds1_nco_0/nco_counter_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_dds1_offset_0/add_const_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_dds1_range_0/add_const_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0/add_const_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_nco_0/nco_counter_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_mod_input_ampl_0/add_const_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_mod_input_nco_0/nco_counter_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_mod_out_pid2_ampl_0/add_const_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_mod_out_pid2_nco_0/nco_counter_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_pid1_kd_0/add_const_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_pid1_ki_0/add_const_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_pid1_kp_0/add_const_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_pid1_rst_int_0/add_const_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_pid1_setpoint_0/add_const_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_pid1_sign_0/add_const_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_pid2_kd_0/add_const_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_pid2_ki_0/add_const_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_pid2_kp_0/add_const_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_pid2_offset_0/add_const_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_pid2_rst_int_0/add_const_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_pid2_setpoint_0/add_const_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_pid2_sign_0/add_const_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_pid3_kd_0/add_const_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_pid3_ki_0/add_const_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_pid3_kp_0/add_const_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_pid3_rst_int_0/add_const_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_pid3_setpoint_0/add_const_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_pid3_sign_0/add_const_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_proc_sys_reset_0_0/demod_pid_vco_amp_mod_pid_only_wrapper_proc_sys_reset_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_proc_sys_reset_0_0/demod_pid_vco_amp_mod_pid_only_wrapper_proc_sys_reset_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_proc_sys_reset_0_0/demod_pid_vco_amp_mod_pid_only_wrapper_proc_sys_reset_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_processing_system7_0_0/demod_pid_vco_amp_mod_pid_only_wrapper_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_redpitaya_adc_dac_clk_0_0/adc_dac_clk_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_nco_counter_0_0/nco_counter_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_tier2_xbar_0_0/demod_pid_vco_amp_mod_pid_only_wrapper_tier2_xbar_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_tier2_xbar_1_0/demod_pid_vco_amp_mod_pid_only_wrapper_tier2_xbar_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_tier2_xbar_2_0/demod_pid_vco_amp_mod_pid_only_wrapper_tier2_xbar_2_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_tier2_xbar_3_0/demod_pid_vco_amp_mod_pid_only_wrapper_tier2_xbar_3_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_tier2_xbar_4_0/demod_pid_vco_amp_mod_pid_only_wrapper_tier2_xbar_4_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_auto_pc_0/demod_pid_vco_amp_mod_pid_only_wrapper_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/demod_pid_vco_amp_mod_pid_only_wrapper_ooc.xdc]
set_property is_locked true [get_files /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/demod_pid_vco_amp_mod_pid_only_wrapper.bd]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/constrs_1/imports/fpga_ip/ad9767/ad9767.xdc
set_property used_in_implementation false [get_files /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/constrs_1/imports/fpga_ip/ad9767/ad9767.xdc]

read_xdc /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/constrs_1/imports/fpga_ip/ltc2145/ltc2145-redpy.xdc
set_property used_in_implementation false [get_files /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/constrs_1/imports/fpga_ip/ltc2145/ltc2145-redpy.xdc]

read_xdc /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/constrs_1/imports/fpga_ip/redpitaya_adc_dac_clk/redpitaya_clk_pin.xdc
set_property used_in_implementation false [get_files /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/constrs_1/imports/fpga_ip/redpitaya_adc_dac_clk/redpitaya_clk_pin.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top demod_pid_vco_amp_mod_pid_only_wrapper -part xc7z010clg400-1


write_checkpoint -force -noxdef demod_pid_vco_amp_mod_pid_only_wrapper.dcp

catch { report_utilization -file demod_pid_vco_amp_mod_pid_only_wrapper_utilization_synth.rpt -pb demod_pid_vco_amp_mod_pid_only_wrapper_utilization_synth.pb }
