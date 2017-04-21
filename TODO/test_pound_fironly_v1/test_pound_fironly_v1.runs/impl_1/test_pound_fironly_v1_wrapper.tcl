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
set rc [catch {
  create_msg_db init_design.pb
  create_project -in_memory -part xc7z010clg400-1
  set_property board_part em.avnet.com:redpitaya:part0:1.0 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir /home/pyb/git/pyb/fpga/redpitaya/test_pound_fironly_v1/test_pound_fironly_v1.cache/wt [current_project]
  set_property parent.project_path /home/pyb/git/pyb/fpga/redpitaya/test_pound_fironly_v1/test_pound_fironly_v1.xpr [current_project]
  set_property ip_repo_paths {
  /home/pyb/git/pyb/fpga/redpitaya/test_pound_fironly_v1/test_pound_fironly_v1.cache/ip
  /home/pyb/git/oimp/fpga_ip
} [current_project]
  set_property ip_output_repo /home/pyb/git/pyb/fpga/redpitaya/test_pound_fironly_v1/test_pound_fironly_v1.cache/ip [current_project]
  set_property XPM_LIBRARIES XPM_CDC [current_project]
  add_files -quiet /home/pyb/git/pyb/fpga/redpitaya/test_pound_fironly_v1/test_pound_fironly_v1.runs/synth_1/test_pound_fironly_v1_wrapper.dcp
  read_xdc -ref test_pound_fironly_v1_processing_system7_0_0 -cells inst /home/pyb/git/pyb/fpga/redpitaya/test_pound_fironly_v1/test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ip/test_pound_fironly_v1_processing_system7_0_0/test_pound_fironly_v1_processing_system7_0_0.xdc
  set_property processing_order EARLY [get_files /home/pyb/git/pyb/fpga/redpitaya/test_pound_fironly_v1/test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ip/test_pound_fironly_v1_processing_system7_0_0/test_pound_fironly_v1_processing_system7_0_0.xdc]
  read_xdc -prop_thru_buffers -ref test_pound_fironly_v1_rst_processing_system7_0_125M_0 -cells U0 /home/pyb/git/pyb/fpga/redpitaya/test_pound_fironly_v1/test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ip/test_pound_fironly_v1_rst_processing_system7_0_125M_0/test_pound_fironly_v1_rst_processing_system7_0_125M_0_board.xdc
  set_property processing_order EARLY [get_files /home/pyb/git/pyb/fpga/redpitaya/test_pound_fironly_v1/test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ip/test_pound_fironly_v1_rst_processing_system7_0_125M_0/test_pound_fironly_v1_rst_processing_system7_0_125M_0_board.xdc]
  read_xdc -ref test_pound_fironly_v1_rst_processing_system7_0_125M_0 -cells U0 /home/pyb/git/pyb/fpga/redpitaya/test_pound_fironly_v1/test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ip/test_pound_fironly_v1_rst_processing_system7_0_125M_0/test_pound_fironly_v1_rst_processing_system7_0_125M_0.xdc
  set_property processing_order EARLY [get_files /home/pyb/git/pyb/fpga/redpitaya/test_pound_fironly_v1/test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ip/test_pound_fironly_v1_rst_processing_system7_0_125M_0/test_pound_fironly_v1_rst_processing_system7_0_125M_0.xdc]
  read_xdc -ref test_pound_fironly_v1_redpitaya_adc_dac_clk_0_0 -cells inst /home/pyb/git/pyb/fpga/redpitaya/test_pound_fironly_v1/test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ip/test_pound_fironly_v1_redpitaya_adc_dac_clk_0_0/adc_dac_clk_ooc.xdc
  set_property processing_order EARLY [get_files /home/pyb/git/pyb/fpga/redpitaya/test_pound_fironly_v1/test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ip/test_pound_fironly_v1_redpitaya_adc_dac_clk_0_0/adc_dac_clk_ooc.xdc]
  read_xdc -prop_thru_buffers -ref test_pound_fironly_v1_axi_gpio_0_2 -cells U0 /home/pyb/git/pyb/fpga/redpitaya/test_pound_fironly_v1/test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ip/test_pound_fironly_v1_axi_gpio_0_2/test_pound_fironly_v1_axi_gpio_0_2_board.xdc
  set_property processing_order EARLY [get_files /home/pyb/git/pyb/fpga/redpitaya/test_pound_fironly_v1/test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ip/test_pound_fironly_v1_axi_gpio_0_2/test_pound_fironly_v1_axi_gpio_0_2_board.xdc]
  read_xdc -ref test_pound_fironly_v1_axi_gpio_0_2 -cells U0 /home/pyb/git/pyb/fpga/redpitaya/test_pound_fironly_v1/test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ip/test_pound_fironly_v1_axi_gpio_0_2/test_pound_fironly_v1_axi_gpio_0_2.xdc
  set_property processing_order EARLY [get_files /home/pyb/git/pyb/fpga/redpitaya/test_pound_fironly_v1/test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ip/test_pound_fironly_v1_axi_gpio_0_2/test_pound_fironly_v1_axi_gpio_0_2.xdc]
  read_xdc -ref test_pound_fironly_v1_add_const_0_1 -cells U0 /home/pyb/git/pyb/fpga/redpitaya/test_pound_fironly_v1/test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ip/test_pound_fironly_v1_add_const_0_1/add_const_ooc.xdc
  set_property processing_order EARLY [get_files /home/pyb/git/pyb/fpga/redpitaya/test_pound_fironly_v1/test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ip/test_pound_fironly_v1_add_const_0_1/add_const_ooc.xdc]
  read_xdc -ref test_pound_fironly_v1_add_const_0_2 -cells U0 /home/pyb/git/pyb/fpga/redpitaya/test_pound_fironly_v1/test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ip/test_pound_fironly_v1_add_const_0_2/add_const_ooc.xdc
  set_property processing_order EARLY [get_files /home/pyb/git/pyb/fpga/redpitaya/test_pound_fironly_v1/test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ip/test_pound_fironly_v1_add_const_0_2/add_const_ooc.xdc]
  read_xdc -ref test_pound_fironly_v1_data16_multi_to_ram_0_1 -cells U0 /home/pyb/git/pyb/fpga/redpitaya/test_pound_fironly_v1/test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ip/test_pound_fironly_v1_data16_multi_to_ram_0_1/data16_multi_to_ram_ooc.xdc
  set_property processing_order EARLY [get_files /home/pyb/git/pyb/fpga/redpitaya/test_pound_fironly_v1/test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ip/test_pound_fironly_v1_data16_multi_to_ram_0_1/data16_multi_to_ram_ooc.xdc]
  read_xdc -ref test_pound_fironly_v1_data16_multi_to_ram_1_0 -cells U0 /home/pyb/git/pyb/fpga/redpitaya/test_pound_fironly_v1/test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ip/test_pound_fironly_v1_data16_multi_to_ram_1_0/data16_multi_to_ram_ooc.xdc
  set_property processing_order EARLY [get_files /home/pyb/git/pyb/fpga/redpitaya/test_pound_fironly_v1/test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ip/test_pound_fironly_v1_data16_multi_to_ram_1_0/data16_multi_to_ram_ooc.xdc]
  read_xdc /home/pyb/git/pyb/fpga/redpitaya/test_pound_fironly_v1/test_pound_fironly_v1.srcs/constrs_1/imports/ome/pyb/git/oimp/fpga_ip/ad9767/ad9767.xdc
  read_xdc /home/pyb/git/pyb/fpga/redpitaya/test_pound_fironly_v1/test_pound_fironly_v1.srcs/constrs_1/imports/ome/pyb/git/oimp/fpga_ip/ltc2145/ltc2145-redpy.xdc
  read_xdc /home/pyb/git/pyb/fpga/redpitaya/test_pound_fironly_v1/test_pound_fironly_v1.srcs/constrs_1/imports/ome/pyb/git/oimp/fpga_ip/redpitaya_adc_dac_clk/redpitaya_clk_pin.xdc
  read_xdc /home/pyb/git/pyb/fpga/redpitaya/test_pound_fironly_v1/test_pound_fironly_v1.srcs/constrs_1/imports/ome/pyb/git/oimp/fpga_ip/redpitaya_adc_dac_clk/adc_dac_clk_ooc.xdc
  read_xdc /home/pyb/git/pyb/fpga/redpitaya/test_pound_fironly_v1/test_pound_fironly_v1.srcs/constrs_1/imports/av-sys/louloulou/redpitaya2/prog/test_pyb_from_2015-11-05_phaseManip/fpga2015/fpga2015/fpga2015.srcs/constrs_1/new/gpio.xdc
  read_xdc /home/pyb/git/pyb/fpga/redpitaya/test_pound_fironly_v1/test_pound_fironly_v1.srcs/constrs_1/imports/av-sys/louloulou/redpitaya2/prog/test_pyb_from_2015-11-05_phaseManip/fpga2015/fpga2015/fpga2015.srcs/constrs_1/new/spi.xdc
  link_design -top test_pound_fironly_v1_wrapper -part xc7z010clg400-1
  write_hwdef -file test_pound_fironly_v1_wrapper.hwdef
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force test_pound_fironly_v1_wrapper_opt.dcp
  report_drc -file test_pound_fironly_v1_wrapper_drc_opted.rpt
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force test_pound_fironly_v1_wrapper_placed.dcp
  report_io -file test_pound_fironly_v1_wrapper_io_placed.rpt
  report_utilization -file test_pound_fironly_v1_wrapper_utilization_placed.rpt -pb test_pound_fironly_v1_wrapper_utilization_placed.pb
  report_control_sets -verbose -file test_pound_fironly_v1_wrapper_control_sets_placed.rpt
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force test_pound_fironly_v1_wrapper_routed.dcp
  report_drc -file test_pound_fironly_v1_wrapper_drc_routed.rpt -pb test_pound_fironly_v1_wrapper_drc_routed.pb
  report_timing_summary -warn_on_violation -max_paths 10 -file test_pound_fironly_v1_wrapper_timing_summary_routed.rpt -rpx test_pound_fironly_v1_wrapper_timing_summary_routed.rpx
  report_power -file test_pound_fironly_v1_wrapper_power_routed.rpt -pb test_pound_fironly_v1_wrapper_power_summary_routed.pb -rpx test_pound_fironly_v1_wrapper_power_routed.rpx
  report_route_status -file test_pound_fironly_v1_wrapper_route_status.rpt -pb test_pound_fironly_v1_wrapper_route_status.pb
  report_clock_utilization -file test_pound_fironly_v1_wrapper_clock_utilization_routed.rpt
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  catch { write_mem_info -force test_pound_fironly_v1_wrapper.mmi }
  write_bitstream -force test_pound_fironly_v1_wrapper.bit 
  catch { write_sysdef -hwdef test_pound_fironly_v1_wrapper.hwdef -bitfile test_pound_fironly_v1_wrapper.bit -meminfo test_pound_fironly_v1_wrapper.mmi -file test_pound_fironly_v1_wrapper.sysdef }
  catch {write_debug_probes -quiet -force debug_nets}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

