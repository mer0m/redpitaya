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
read_ip -quiet /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0/demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0.xci
set_property is_locked true [get_files /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0/demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0.xci]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

set cached_ip [config_ip_cache -export -no_bom -use_project_ipc -dir /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.runs/demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0_synth_1 -new_name demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0 -ip [get_ips demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0]]

if { $cached_ip eq {} } {

synth_design -top demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0 -part xc7z010clg400-1 -mode out_of_context

#---------------------------------------------------------
# Generate Checkpoint/Stub/Simulation Files For IP Cache
#---------------------------------------------------------
catch {
 write_checkpoint -force -noxdef -rename_prefix demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0_ demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0.dcp

 set ipCachedFiles {}
 write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0_stub.v
 lappend ipCachedFiles demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0_stub.v

 write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0_stub.vhdl
 lappend ipCachedFiles demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0_stub.vhdl

 write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0_sim_netlist.v
 lappend ipCachedFiles demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0_sim_netlist.v

 write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0_sim_netlist.vhdl
 lappend ipCachedFiles demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0_sim_netlist.vhdl

 config_ip_cache -add -dcp demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0.dcp -move_files $ipCachedFiles -use_project_ipc -ip [get_ips demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0]
}

rename_ref -prefix_all demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0_

write_checkpoint -force -noxdef demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0.dcp

catch { report_utilization -file demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0_utilization_synth.rpt -pb demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0_utilization_synth.pb }

if { [catch {
  file copy -force /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.runs/demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0_synth_1/demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0.dcp /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0/demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0/demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0/demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0/demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0/demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}


} else {


if { [catch {
  file copy -force /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.runs/demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0_synth_1/demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0.dcp /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0/demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  file rename -force /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.runs/demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0_synth_1/demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0_stub.v /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0/demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.runs/demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0_synth_1/demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0_stub.vhdl /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0/demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.runs/demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0_synth_1/demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0_sim_netlist.v /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0/demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  file rename -force /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.runs/demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0_synth_1/demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0_sim_netlist.vhdl /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0/demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

}; # end if cached_ip 

if {[file isdir /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.ip_user_files/ip/demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0]} {
  catch { 
    file copy -force /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0/demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0_stub.v /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.ip_user_files/ip/demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0
  }
}

if {[file isdir /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.ip_user_files/ip/demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0]} {
  catch { 
    file copy -force /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.srcs/sources_1/bd/demod_pid_vco_amp_mod_pid_only_wrapper/ip/demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0/demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0_stub.vhdl /home/bma/git/fpga_design/redpitaya/demod_pid_vco_amp_mod_pid_only/demod_pid_vco_amp_mod_pid_only.ip_user_files/ip/demod_pid_vco_amp_mod_pid_only_wrapper_mod_amp_dds_ampl_0
  }
}
