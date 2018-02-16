proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  create_project -in_memory -part xc7z010clg400-1
  set_property board_part em.avnet.com:redpitaya:part0:1.0 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.cache/wt [current_project]
  set_property parent.project_path /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.xpr [current_project]
  set_property ip_repo_paths /home/bma/git/gitlab/oimp/fpga_ip [current_project]
  set_property ip_output_repo /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.cache/ip [current_project]
  set_property ip_cache_permissions {read write} [current_project]
  set_property XPM_LIBRARIES XPM_CDC [current_project]
  add_files -quiet /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.runs/synth_1/iq_demod_only_wrapper.dcp
  add_files -quiet /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_ad9767_0_0/iq_demod_only_wrapper_ad9767_0_0.dcp
  set_property netlist_only true [get_files /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_ad9767_0_0/iq_demod_only_wrapper_ad9767_0_0.dcp]
  add_files -quiet /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_add_const_0_0/iq_demod_only_wrapper_add_const_0_0.dcp
  set_property netlist_only true [get_files /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_add_const_0_0/iq_demod_only_wrapper_add_const_0_0.dcp]
  add_files -quiet /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_add_const_2_0/iq_demod_only_wrapper_add_const_2_0.dcp
  set_property netlist_only true [get_files /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_add_const_2_0/iq_demod_only_wrapper_add_const_2_0.dcp]
  add_files -quiet /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_add_const_3_0/iq_demod_only_wrapper_add_const_3_0.dcp
  set_property netlist_only true [get_files /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_add_const_3_0/iq_demod_only_wrapper_add_const_3_0.dcp]
  add_files -quiet /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_ltc2145_0_0/iq_demod_only_wrapper_ltc2145_0_0.dcp
  set_property netlist_only true [get_files /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_ltc2145_0_0/iq_demod_only_wrapper_ltc2145_0_0.dcp]
  add_files -quiet /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_mixer_sin_0_0/iq_demod_only_wrapper_mixer_sin_0_0.dcp
  set_property netlist_only true [get_files /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_mixer_sin_0_0/iq_demod_only_wrapper_mixer_sin_0_0.dcp]
  add_files -quiet /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_nco_counter_0_0/iq_demod_only_wrapper_nco_counter_0_0.dcp
  set_property netlist_only true [get_files /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_nco_counter_0_0/iq_demod_only_wrapper_nco_counter_0_0.dcp]
  add_files -quiet /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_nco_counter_1_0/iq_demod_only_wrapper_nco_counter_1_0.dcp
  set_property netlist_only true [get_files /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_nco_counter_1_0/iq_demod_only_wrapper_nco_counter_1_0.dcp]
  add_files -quiet /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_proc_sys_reset_0_0/iq_demod_only_wrapper_proc_sys_reset_0_0.dcp
  set_property netlist_only true [get_files /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_proc_sys_reset_0_0/iq_demod_only_wrapper_proc_sys_reset_0_0.dcp]
  add_files -quiet /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_processing_system7_0_0/iq_demod_only_wrapper_processing_system7_0_0.dcp
  set_property netlist_only true [get_files /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_processing_system7_0_0/iq_demod_only_wrapper_processing_system7_0_0.dcp]
  add_files -quiet /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_xbar_0/iq_demod_only_wrapper_xbar_0.dcp
  set_property netlist_only true [get_files /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_xbar_0/iq_demod_only_wrapper_xbar_0.dcp]
  add_files -quiet /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_redpitaya_adc_dac_clk_0_0/iq_demod_only_wrapper_redpitaya_adc_dac_clk_0_0.dcp
  set_property netlist_only true [get_files /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_redpitaya_adc_dac_clk_0_0/iq_demod_only_wrapper_redpitaya_adc_dac_clk_0_0.dcp]
  add_files -quiet /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_twoInMult_0_0/iq_demod_only_wrapper_twoInMult_0_0.dcp
  set_property netlist_only true [get_files /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_twoInMult_0_0/iq_demod_only_wrapper_twoInMult_0_0.dcp]
  add_files -quiet /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_xlconstant_0_0/iq_demod_only_wrapper_xlconstant_0_0.dcp
  set_property netlist_only true [get_files /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_xlconstant_0_0/iq_demod_only_wrapper_xlconstant_0_0.dcp]
  add_files -quiet /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_xlslice_0_0/iq_demod_only_wrapper_xlslice_0_0.dcp
  set_property netlist_only true [get_files /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_xlslice_0_0/iq_demod_only_wrapper_xlslice_0_0.dcp]
  add_files -quiet /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_fir16RealbitsOneInTwoMult_v1_0_0_0/iq_demod_only_wrapper_fir16RealbitsOneInTwoMult_v1_0_0_0.dcp
  set_property netlist_only true [get_files /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_fir16RealbitsOneInTwoMult_v1_0_0_0/iq_demod_only_wrapper_fir16RealbitsOneInTwoMult_v1_0_0_0.dcp]
  add_files -quiet /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_xlslice_0_1/iq_demod_only_wrapper_xlslice_0_1.dcp
  set_property netlist_only true [get_files /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_xlslice_0_1/iq_demod_only_wrapper_xlslice_0_1.dcp]
  add_files -quiet /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_cordicAtan_0_0/iq_demod_only_wrapper_cordicAtan_0_0.dcp
  set_property netlist_only true [get_files /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_cordicAtan_0_0/iq_demod_only_wrapper_cordicAtan_0_0.dcp]
  add_files -quiet /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_auto_pc_0/iq_demod_only_wrapper_auto_pc_0.dcp
  set_property netlist_only true [get_files /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_auto_pc_0/iq_demod_only_wrapper_auto_pc_0.dcp]
  read_xdc -ref iq_demod_only_wrapper_add_const_0_0 -cells U0 /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_add_const_0_0/add_const_ooc.xdc
  set_property processing_order EARLY [get_files /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_add_const_0_0/add_const_ooc.xdc]
  read_xdc -ref iq_demod_only_wrapper_add_const_2_0 -cells U0 /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_add_const_2_0/add_const_ooc.xdc
  set_property processing_order EARLY [get_files /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_add_const_2_0/add_const_ooc.xdc]
  read_xdc -ref iq_demod_only_wrapper_add_const_3_0 -cells U0 /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_add_const_3_0/add_const_ooc.xdc
  set_property processing_order EARLY [get_files /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_add_const_3_0/add_const_ooc.xdc]
  read_xdc -ref iq_demod_only_wrapper_nco_counter_0_0 -cells U0 /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_nco_counter_0_0/nco_counter_ooc.xdc
  set_property processing_order EARLY [get_files /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_nco_counter_0_0/nco_counter_ooc.xdc]
  read_xdc -ref iq_demod_only_wrapper_nco_counter_1_0 -cells U0 /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_nco_counter_1_0/nco_counter_ooc.xdc
  set_property processing_order EARLY [get_files /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_nco_counter_1_0/nco_counter_ooc.xdc]
  read_xdc -prop_thru_buffers -ref iq_demod_only_wrapper_proc_sys_reset_0_0 -cells U0 /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_proc_sys_reset_0_0/iq_demod_only_wrapper_proc_sys_reset_0_0_board.xdc
  set_property processing_order EARLY [get_files /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_proc_sys_reset_0_0/iq_demod_only_wrapper_proc_sys_reset_0_0_board.xdc]
  read_xdc -ref iq_demod_only_wrapper_proc_sys_reset_0_0 -cells U0 /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_proc_sys_reset_0_0/iq_demod_only_wrapper_proc_sys_reset_0_0.xdc
  set_property processing_order EARLY [get_files /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_proc_sys_reset_0_0/iq_demod_only_wrapper_proc_sys_reset_0_0.xdc]
  read_xdc -ref iq_demod_only_wrapper_processing_system7_0_0 -cells inst /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_processing_system7_0_0/iq_demod_only_wrapper_processing_system7_0_0.xdc
  set_property processing_order EARLY [get_files /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_processing_system7_0_0/iq_demod_only_wrapper_processing_system7_0_0.xdc]
  read_xdc -ref iq_demod_only_wrapper_redpitaya_adc_dac_clk_0_0 -cells inst /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_redpitaya_adc_dac_clk_0_0/adc_dac_clk_ooc.xdc
  set_property processing_order EARLY [get_files /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/ip/iq_demod_only_wrapper_redpitaya_adc_dac_clk_0_0/adc_dac_clk_ooc.xdc]
  read_xdc -mode out_of_context -ref iq_demod_only_wrapper /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/sources_1/bd/iq_demod_only_wrapper/iq_demod_only_wrapper_ooc.xdc
  read_xdc /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/constrs_1/imports/fpga_ip/ad9767/ad9767.xdc
  read_xdc /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/constrs_1/imports/fpga_ip/redpitaya_adc_dac_clk/redpitaya_clk_pin.xdc
  read_xdc /home/bma/git/fpga_design/redpitaya/iq_demod_only/iq_demod_only.srcs/constrs_1/imports/fpga_ip/ltc2145/ltc2145-redpy.xdc
  link_design -top iq_demod_only_wrapper -part xc7z010clg400-1
  write_hwdef -file iq_demod_only_wrapper.hwdef
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
  unset ACTIVE_STEP 
}

start_step opt_design
set ACTIVE_STEP opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force iq_demod_only_wrapper_opt.dcp
  catch { report_drc -file iq_demod_only_wrapper_drc_opted.rpt }
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
  unset ACTIVE_STEP 
}

start_step place_design
set ACTIVE_STEP place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force iq_demod_only_wrapper_placed.dcp
  catch { report_io -file iq_demod_only_wrapper_io_placed.rpt }
  catch { report_utilization -file iq_demod_only_wrapper_utilization_placed.rpt -pb iq_demod_only_wrapper_utilization_placed.pb }
  catch { report_control_sets -verbose -file iq_demod_only_wrapper_control_sets_placed.rpt }
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force iq_demod_only_wrapper_routed.dcp
  catch { report_drc -file iq_demod_only_wrapper_drc_routed.rpt -pb iq_demod_only_wrapper_drc_routed.pb -rpx iq_demod_only_wrapper_drc_routed.rpx }
  catch { report_methodology -file iq_demod_only_wrapper_methodology_drc_routed.rpt -rpx iq_demod_only_wrapper_methodology_drc_routed.rpx }
  catch { report_timing_summary -warn_on_violation -max_paths 10 -file iq_demod_only_wrapper_timing_summary_routed.rpt -rpx iq_demod_only_wrapper_timing_summary_routed.rpx }
  catch { report_power -file iq_demod_only_wrapper_power_routed.rpt -pb iq_demod_only_wrapper_power_summary_routed.pb -rpx iq_demod_only_wrapper_power_routed.rpx }
  catch { report_route_status -file iq_demod_only_wrapper_route_status.rpt -pb iq_demod_only_wrapper_route_status.pb }
  catch { report_clock_utilization -file iq_demod_only_wrapper_clock_utilization_routed.rpt }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force iq_demod_only_wrapper_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

start_step write_bitstream
set ACTIVE_STEP write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  set_property XPM_LIBRARIES XPM_CDC [current_project]
  catch { write_mem_info -force iq_demod_only_wrapper.mmi }
  write_bitstream -force -no_partial_bitfile iq_demod_only_wrapper.bit 
  catch { write_sysdef -hwdef iq_demod_only_wrapper.hwdef -bitfile iq_demod_only_wrapper.bit -meminfo iq_demod_only_wrapper.mmi -file iq_demod_only_wrapper.sysdef }
  catch {write_debug_probes -quiet -force debug_nets}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
  unset ACTIVE_STEP 
}

