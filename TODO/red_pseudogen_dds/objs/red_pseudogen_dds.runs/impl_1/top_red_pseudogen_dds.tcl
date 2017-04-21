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
set_msg_config  -ruleid {1}  -id {DRC 23-20}  -string {{WARNING: [DRC 23-20] Rule violation (PLIO-7) Placement Constraints Check for IO constraints - An IO Bus redpitaya_axi_wrapper00_FIXED_IO_mio[53:0] with more than one IO standard is found. Components associated with this bus are: LVCMOS25 (redpitaya_axi_wrapper00_FIXED_IO_mio[53], redpitaya_axi_wrapper00_FIXED_IO_mio[52], redpitaya_axi_wrapper00_FIXED_IO_mio[51], redpitaya_axi_wrapper00_FIXED_IO_mio[50], redpitaya_axi_wrapper00_FIXED_IO_mio[49], redpitaya_axi_wrapper00_FIXED_IO_mio[48], redpitaya_axi_wrapper00_FIXED_IO_mio[47], redpitaya_axi_wrapper00_FIXED_IO_mio[46], redpitaya_axi_wrapper00_FIXED_IO_mio[45], redpitaya_axi_wrapper00_FIXED_IO_mio[44], redpitaya_axi_wrapper00_FIXED_IO_mio[43], redpitaya_axi_wrapper00_FIXED_IO_mio[42], redpitaya_axi_wrapper00_FIXED_IO_mio[41], redpitaya_axi_wrapper00_FIXED_IO_mio[40], redpitaya_axi_wrapper00_FIXED_IO_mio[39] (the first 15 of 38 listed)); LVCMOS33 (redpitaya_axi_wrapper00_FIXED_IO_mio[15], redpitaya_axi_wrapper00_FIXED_IO_mio[14], redpitaya_axi_wrapper00_FIXED_IO_mio[13], redpitaya_axi_wrapper00_FIXED_IO_mio[12], redpitaya_axi_wrapper00_FIXED_IO_mio[11], redpitaya_axi_wrapper00_FIXED_IO_mio[10], redpitaya_axi_wrapper00_FIXED_IO_mio[9], redpitaya_axi_wrapper00_FIXED_IO_mio[8], redpitaya_axi_wrapper00_FIXED_IO_mio[7], redpitaya_axi_wrapper00_FIXED_IO_mio[6], redpitaya_axi_wrapper00_FIXED_IO_mio[5], redpitaya_axi_wrapper00_FIXED_IO_mio[4], redpitaya_axi_wrapper00_FIXED_IO_mio[3], redpitaya_axi_wrapper00_FIXED_IO_mio[2], redpitaya_axi_wrapper00_FIXED_IO_mio[1] (the first 15 of 16 listed));}}  -suppress 
set_msg_config  -ruleid {10}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design redpitaya_axi_wrapper00_axim has unconnected port redpitaya_axi_wrapper00_M00_AXI_awaddr[0]}}  -suppress 
set_msg_config  -ruleid {100}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_arlen[3]}}  -suppress 
set_msg_config  -ruleid {101}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_arlen[2]}}  -suppress 
set_msg_config  -ruleid {102}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_arlen[1]}}  -suppress 
set_msg_config  -ruleid {103}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_arlen[0]}}  -suppress 
set_msg_config  -ruleid {104}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_arsize[2]}}  -suppress 
set_msg_config  -ruleid {105}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_arsize[1]}}  -suppress 
set_msg_config  -ruleid {106}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_arsize[0]}}  -suppress 
set_msg_config  -ruleid {107}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_arburst[1]}}  -suppress 
set_msg_config  -ruleid {108}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_arburst[0]}}  -suppress 
set_msg_config  -ruleid {109}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_arlock[0]}}  -suppress 
set_msg_config  -ruleid {11}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design pseudoGenReal_handComm has unconnected port S_AXI_AWPROT[2]}}  -suppress 
set_msg_config  -ruleid {110}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_arcache[3]}}  -suppress 
set_msg_config  -ruleid {111}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_arcache[2]}}  -suppress 
set_msg_config  -ruleid {112}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_arcache[1]}}  -suppress 
set_msg_config  -ruleid {113}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_arcache[0]}}  -suppress 
set_msg_config  -ruleid {114}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_arregion[3]}}  -suppress 
set_msg_config  -ruleid {115}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_arregion[2]}}  -suppress 
set_msg_config  -ruleid {116}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_arregion[1]}}  -suppress 
set_msg_config  -ruleid {117}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_arregion[0]}}  -suppress 
set_msg_config  -ruleid {118}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_arqos[3]}}  -suppress 
set_msg_config  -ruleid {119}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_arqos[2]}}  -suppress 
set_msg_config  -ruleid {12}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design pseudoGenReal_handComm has unconnected port S_AXI_AWPROT[1]}}  -suppress 
set_msg_config  -ruleid {120}  -id {Place 30-12}  -string {{WARNING: [Place 30-12] An IO Bus redpitaya_axi_wrapper00_FIXED_IO_mio with more than one IO standard is found. Components associated with this bus are: 
	redpitaya_axi_wrapper00_FIXED_IO_mio[53] of IOStandard LVCMOS25
	 redpitaya_axi_wrapper00_FIXED_IO_mio[52] of IOStandard LVCMOS25
	 redpitaya_axi_wrapper00_FIXED_IO_mio[51] of IOStandard LVCMOS25
	 redpitaya_axi_wrapper00_FIXED_IO_mio[50] of IOStandard LVCMOS25
	 redpitaya_axi_wrapper00_FIXED_IO_mio[49] of IOStandard LVCMOS25
	 redpitaya_axi_wrapper00_FIXED_IO_mio[48] of IOStandard LVCMOS25
	 redpitaya_axi_wrapper00_FIXED_IO_mio[47] of IOStandard LVCMOS25
	 redpitaya_axi_wrapper00_FIXED_IO_mio[46] of IOStandard LVCMOS25
	 redpitaya_axi_wrapper00_FIXED_IO_mio[45] of IOStandard LVCMOS25
	 redpitaya_axi_wrapper00_FIXED_IO_mio[44] of IOStandard LVCMOS25
	 redpitaya_axi_wrapper00_FIXED_IO_mio[43] of IOStandard LVCMOS25
	 redpitaya_axi_wrapper00_FIXED_IO_mio[42] of IOStandard LVCMOS25
	 redpitaya_axi_wrapper00_FIXED_IO_mio[41] of IOStandard LVCMOS25
	 redpitaya_axi_wrapper00_FIXED_IO_mio[40] of IOStandard LVCMOS25
	 redpitaya_axi_wrapper00_FIXED_IO_mio[39] of IOStandard LVCMOS25
	 redpitaya_axi_wrapper00_FIXED_IO_mio[38] of IOStandard LVCMOS25
	 redpitaya_axi_wrapper00_FIXED_IO_mio[37] of IOStandard LVCMOS25
	 redpitaya_axi_wrapper00_FIXED_IO_mio[36] of IOStandard LVCMOS25
	 redpitaya_axi_wrapper00_FIXED_IO_mio[35] of IOStandard LVCMOS25
	 redpitaya_axi_wrapper00_FIXED_IO_mio[34] of IOStandard LVCMOS25
	 redpitaya_axi_wrapper00_FIXED_IO_mio[33] of IOStandard LVCMOS25
	 redpitaya_axi_wrapper00_FIXED_IO_mio[32] of IOStandard LVCMOS25
	 redpitaya_axi_wrapper00_FIXED_IO_mio[31] of IOStandard LVCMOS25
	 redpitaya_axi_wrapper00_FIXED_IO_mio[30] of IOStandard LVCMOS25
	 redpitaya_axi_wrapper00_FIXED_IO_mio[29] of IOStandard LVCMOS25
	 redpitaya_axi_wrapper00_FIXED_IO_mio[28] of IOStandard LVCMOS25
	 redpitaya_axi_wrapper00_FIXED_IO_mio[27] of IOStandard LVCMOS25
	 redpitaya_axi_wrapper00_FIXED_IO_mio[26] of IOStandard LVCMOS25
	 redpitaya_axi_wrapper00_FIXED_IO_mio[25] of IOStandard LVCMOS25
	 redpitaya_axi_wrapper00_FIXED_IO_mio[24] of IOStandard LVCMOS25
	 redpitaya_axi_wrapper00_FIXED_IO_mio[23] of IOStandard LVCMOS25
	 redpitaya_axi_wrapper00_FIXED_IO_mio[22] of IOStandard LVCMOS25
	 redpitaya_axi_wrapper00_FIXED_IO_mio[21] of IOStandard LVCMOS25
	 redpitaya_axi_wrapper00_FIXED_IO_mio[20] of IOStandard LVCMOS25
	 redpitaya_axi_wrapper00_FIXED_IO_mio[19] of IOStandard LVCMOS25
	 redpitaya_axi_wrapper00_FIXED_IO_mio[18] of IOStandard LVCMOS25
	 redpitaya_axi_wrapper00_FIXED_IO_mio[17] of IOStandard LVCMOS25
	 redpitaya_axi_wrapper00_FIXED_IO_mio[16] of IOStandard LVCMOS25
	 redpitaya_axi_wrapper00_FIXED_IO_mio[15] of IOStandard LVCMOS33
	 redpitaya_axi_wrapper00_FIXED_IO_mio[14] of IOStandard LVCMOS33
	 redpitaya_axi_wrapper00_FIXED_IO_mio[13] of IOStandard LVCMOS33
	 redpitaya_axi_wrapper00_FIXED_IO_mio[12] of IOStandard LVCMOS33
	 redpitaya_axi_wrapper00_FIXED_IO_mio[11] of IOStandard LVCMOS33
	 redpitaya_axi_wrapper00_FIXED_IO_mio[10] of IOStandard LVCMOS33
	 redpitaya_axi_wrapper00_FIXED_IO_mio[9] of IOStandard LVCMOS33
	 redpitaya_axi_wrapper00_FIXED_IO_mio[8] of IOStandard LVCMOS33
	 redpitaya_axi_wrapper00_FIXED_IO_mio[7] of IOStandard LVCMOS33
	 redpitaya_axi_wrapper00_FIXED_IO_mio[6] of IOStandard LVCMOS33
	 redpitaya_axi_wrapper00_FIXED_IO_mio[5] of IOStandard LVCMOS33
	 redpitaya_axi_wrapper00_FIXED_IO_mio[4] of IOStandard LVCMOS33
	 redpitaya_axi_wrapper00_FIXED_IO_mio[3] of IOStandard LVCMOS33
	 redpitaya_axi_wrapper00_FIXED_IO_mio[2] of IOStandard LVCMOS33
	 redpitaya_axi_wrapper00_FIXED_IO_mio[1] of IOStandard LVCMOS33
	 and redpitaya_axi_wrapper00_FIXED_IO_mio[0] of IOStandard LVCMOS33}}  -suppress 
set_msg_config  -ruleid {121}  -id {Synth 8-3917}  -string {{WARNING: [Synth 8-3917] design top_red_pseudogen_dds has port analog_phys_adc_clk_cdcs driven by constant 1}}  -suppress 
set_msg_config  -ruleid {122}  -id {Synth 8-3332}  -string {{WARNING: [Synth 8-3332] Sequential element (nco/handle_comm/axi_bresp_reg[1]) is unused and will be removed from module top_red_pseudogen_dds.}}  -suppress 
set_msg_config  -ruleid {123}  -id {Synth 8-3332}  -string {{WARNING: [Synth 8-3332] Sequential element (nco/handle_comm/axi_bresp_reg[0]) is unused and will be removed from module top_red_pseudogen_dds.}}  -suppress 
set_msg_config  -ruleid {124}  -id {Synth 8-3332}  -string {{WARNING: [Synth 8-3332] Sequential element (nco/handle_comm/axi_rresp_reg[1]) is unused and will be removed from module top_red_pseudogen_dds.}}  -suppress 
set_msg_config  -ruleid {125}  -id {Synth 8-3332}  -string {{WARNING: [Synth 8-3332] Sequential element (nco/handle_comm/axi_rresp_reg[0]) is unused and will be removed from module top_red_pseudogen_dds.}}  -suppress 
set_msg_config  -ruleid {126}  -id {Synth 8-3332}  -string {{WARNING: [Synth 8-3332] Sequential element (gene/pseudoGenRealHandComm/axi_bresp_reg[1]) is unused and will be removed from module top_red_pseudogen_dds.}}  -suppress 
set_msg_config  -ruleid {127}  -id {Synth 8-3332}  -string {{WARNING: [Synth 8-3332] Sequential element (gene/pseudoGenRealHandComm/axi_bresp_reg[0]) is unused and will be removed from module top_red_pseudogen_dds.}}  -suppress 
set_msg_config  -ruleid {128}  -id {Synth 8-3332}  -string {{WARNING: [Synth 8-3332] Sequential element (gene/pseudoGenRealHandComm/axi_rresp_reg[1]) is unused and will be removed from module top_red_pseudogen_dds.}}  -suppress 
set_msg_config  -ruleid {129}  -id {Synth 8-3332}  -string {{WARNING: [Synth 8-3332] Sequential element (gene/pseudoGenRealHandComm/axi_rresp_reg[0]) is unused and will be removed from module top_red_pseudogen_dds.}}  -suppress 
set_msg_config  -ruleid {13}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design pseudoGenReal_handComm has unconnected port S_AXI_AWPROT[0]}}  -suppress 
set_msg_config  -ruleid {130}  -id {Synth 8-3332}  -string {{WARNING: [Synth 8-3332] Sequential element (SEQ/bsr_dec_reg[1]) is unused and will be removed from module proc_sys_reset.}}  -suppress 
set_msg_config  -ruleid {131}  -id {Synth 8-3332}  -string {{WARNING: [Synth 8-3332] Sequential element (SEQ/pr_dec_reg[1]) is unused and will be removed from module proc_sys_reset.}}  -suppress 
set_msg_config  -ruleid {132}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design nco_counter has unconnected port poff_en_i}}  -suppress 
set_msg_config  -ruleid {133}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design nco_counter has unconnected port poff_clk_i}}  -suppress 
set_msg_config  -ruleid {134}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design redpitaya_adc_dac_clk has unconnected port clk_i}}  -suppress 
set_msg_config  -ruleid {135}  -id {Synth 8-3332}  -string {{WARNING: [Synth 8-3332] Sequential element (EXT_LPF/ACTIVE_LOW_EXT.ACT_LO_EXT/GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d5) is unused and will be removed from module proc_sys_reset.}}  -suppress 
set_msg_config  -ruleid {136}  -id {Synth 8-3332}  -string {{WARNING: [Synth 8-3332] Sequential element (EXT_LPF/ACTIVE_LOW_EXT.ACT_LO_EXT/GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d6) is unused and will be removed from module proc_sys_reset.}}  -suppress 
set_msg_config  -ruleid {137}  -id {Synth 8-3332}  -string {{WARNING: [Synth 8-3332] Sequential element (EXT_LPF/ACTIVE_LOW_AUX.ACT_LO_AUX/GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d5) is unused and will be removed from module proc_sys_reset.}}  -suppress 
set_msg_config  -ruleid {138}  -id {Synth 8-3332}  -string {{WARNING: [Synth 8-3332] Sequential element (EXT_LPF/ACTIVE_LOW_AUX.ACT_LO_AUX/GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d6) is unused and will be removed from module proc_sys_reset.}}  -suppress 
set_msg_config  -ruleid {139}  -id {Place 30-879}  -string {{WARNING: [Place 30-879] Found overlapping PBlocks. The use of overlapping PBlocks is not recommended as it may lead to legalization errors or unplaced instances.}}  -suppress 
set_msg_config  -ruleid {14}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design pseudoGenReal_handComm has unconnected port S_AXI_WSTRB[3]}}  -suppress 
set_msg_config  -ruleid {15}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design pseudoGenReal_handComm has unconnected port S_AXI_WSTRB[2]}}  -suppress 
set_msg_config  -ruleid {16}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design pseudoGenReal_handComm has unconnected port S_AXI_WSTRB[1]}}  -suppress 
set_msg_config  -ruleid {17}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design pseudoGenReal_handComm has unconnected port S_AXI_WSTRB[0]}}  -suppress 
set_msg_config  -ruleid {18}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design pseudoGenReal_handComm has unconnected port S_AXI_ARPROT[2]}}  -suppress 
set_msg_config  -ruleid {19}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design pseudoGenReal_handComm has unconnected port S_AXI_ARPROT[1]}}  -suppress 
set_msg_config  -ruleid {2}  -id {DRC 23-20}  -string {{WARNING: [DRC 23-20] Rule violation (REQP-1840) RAMB18 async control check - The RAMB18E1 nco/nco_inst1/rom_inst/data_b_reg has an input control pin nco/nco_inst1/rom_inst/data_b_reg/ADDRARDADDR[10] (net: nco/nco_inst1/rom_inst/ADDRARDADDR[6]) which is driven by a register (gene/pseudoGenRealLogic/data_s_reg[0]) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.}}  -suppress 
set_msg_config  -ruleid {20}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design pseudoGenReal_handComm has unconnected port S_AXI_ARPROT[0]}}  -suppress 
set_msg_config  -ruleid {21}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design wb_pseudoGenReal has unconnected port wbs_writedata[31]}}  -suppress 
set_msg_config  -ruleid {22}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design wb_pseudoGenReal has unconnected port wbs_writedata[30]}}  -suppress 
set_msg_config  -ruleid {23}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design wb_pseudoGenReal has unconnected port wbs_writedata[29]}}  -suppress 
set_msg_config  -ruleid {24}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design wb_pseudoGenReal has unconnected port wbs_writedata[28]}}  -suppress 
set_msg_config  -ruleid {25}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design wb_pseudoGenReal has unconnected port wbs_writedata[27]}}  -suppress 
set_msg_config  -ruleid {26}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design wb_pseudoGenReal has unconnected port wbs_writedata[26]}}  -suppress 
set_msg_config  -ruleid {27}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design wb_pseudoGenReal has unconnected port wbs_writedata[25]}}  -suppress 
set_msg_config  -ruleid {28}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design wb_pseudoGenReal has unconnected port wbs_writedata[24]}}  -suppress 
set_msg_config  -ruleid {29}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design wb_pseudoGenReal has unconnected port wbs_writedata[23]}}  -suppress 
set_msg_config  -ruleid {3}  -id {DRC 23-20}  -string {{WARNING: [DRC 23-20] Rule violation (REQP-1840) RAMB18 async control check - The RAMB18E1 nco/nco_inst1/rom_inst/data_b_reg has an input control pin nco/nco_inst1/rom_inst/data_b_reg/ADDRARDADDR[10] (net: nco/nco_inst1/rom_inst/ADDRARDADDR[6]) which is driven by a register (gene/pseudoGenRealLogic/data_s_reg[1]) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.}}  -suppress 
set_msg_config  -ruleid {30}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design wb_pseudoGenReal has unconnected port wbs_writedata[22]}}  -suppress 
set_msg_config  -ruleid {31}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design wb_pseudoGenReal has unconnected port wbs_writedata[21]}}  -suppress 
set_msg_config  -ruleid {32}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design wb_pseudoGenReal has unconnected port wbs_writedata[20]}}  -suppress 
set_msg_config  -ruleid {33}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design wb_pseudoGenReal has unconnected port wbs_writedata[19]}}  -suppress 
set_msg_config  -ruleid {34}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design wb_pseudoGenReal has unconnected port wbs_writedata[18]}}  -suppress 
set_msg_config  -ruleid {35}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design wb_pseudoGenReal has unconnected port wbs_writedata[17]}}  -suppress 
set_msg_config  -ruleid {36}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design wb_pseudoGenReal has unconnected port wbs_writedata[16]}}  -suppress 
set_msg_config  -ruleid {37}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design nco_counter_handcomm has unconnected port S_AXI_AWPROT[2]}}  -suppress 
set_msg_config  -ruleid {38}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design nco_counter_handcomm has unconnected port S_AXI_AWPROT[1]}}  -suppress 
set_msg_config  -ruleid {39}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design nco_counter_handcomm has unconnected port S_AXI_AWPROT[0]}}  -suppress 
set_msg_config  -ruleid {4}  -id {DRC 23-20}  -string {{WARNING: [DRC 23-20] Rule violation (REQP-1840) RAMB18 async control check - The RAMB18E1 nco/nco_inst1/rom_inst/data_b_reg has an input control pin nco/nco_inst1/rom_inst/data_b_reg/ADDRARDADDR[10] (net: nco/nco_inst1/rom_inst/ADDRARDADDR[6]) which is driven by a register (gene/pseudoGenRealLogic/data_s_reg[2]) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.}}  -suppress 
set_msg_config  -ruleid {40}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design nco_counter_handcomm has unconnected port S_AXI_WSTRB[3]}}  -suppress 
set_msg_config  -ruleid {41}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design nco_counter_handcomm has unconnected port S_AXI_WSTRB[2]}}  -suppress 
set_msg_config  -ruleid {42}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design nco_counter_handcomm has unconnected port S_AXI_WSTRB[1]}}  -suppress 
set_msg_config  -ruleid {43}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design nco_counter_handcomm has unconnected port S_AXI_WSTRB[0]}}  -suppress 
set_msg_config  -ruleid {44}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design nco_counter_handcomm has unconnected port S_AXI_ARPROT[2]}}  -suppress 
set_msg_config  -ruleid {45}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design nco_counter_handcomm has unconnected port S_AXI_ARPROT[1]}}  -suppress 
set_msg_config  -ruleid {46}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design nco_counter_handcomm has unconnected port S_AXI_ARPROT[0]}}  -suppress 
set_msg_config  -ruleid {47}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design nco_counter has unconnected port pinc_en_i}}  -suppress 
set_msg_config  -ruleid {48}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design nco_counter has unconnected port pinc_clk_i}}  -suppress 
set_msg_config  -ruleid {49}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_vector2axi__parameterized0 has unconnected port m_axi_bid[0]}}  -suppress 
set_msg_config  -ruleid {5}  -id {DRC 23-20}  -string {{WARNING: [DRC 23-20] Rule violation (REQP-1840) RAMB18 async control check - The RAMB18E1 nco/nco_inst1/rom_inst/data_b_reg has an input control pin nco/nco_inst1/rom_inst/data_b_reg/ADDRARDADDR[10] (net: nco/nco_inst1/rom_inst/ADDRARDADDR[6]) which is driven by a register (gene/pseudoGenRealLogic/data_s_reg[3]) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.}}  -suppress 
set_msg_config  -ruleid {50}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_vector2axi__parameterized0 has unconnected port m_axi_buser[0]}}  -suppress 
set_msg_config  -ruleid {51}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_vector2axi__parameterized0 has unconnected port m_axi_rid[0]}}  -suppress 
set_msg_config  -ruleid {52}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_vector2axi__parameterized0 has unconnected port m_axi_rlast}}  -suppress 
set_msg_config  -ruleid {53}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_vector2axi__parameterized0 has unconnected port m_axi_ruser[0]}}  -suppress 
set_msg_config  -ruleid {54}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_register_slice_v2_1_9_axic_register_slice__parameterized7 has unconnected port ACLK}}  -suppress 
set_msg_config  -ruleid {55}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_register_slice_v2_1_9_axic_register_slice__parameterized7 has unconnected port ARESET}}  -suppress 
set_msg_config  -ruleid {56}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_register_slice_v2_1_9_axic_register_slice__parameterized6 has unconnected port ACLK}}  -suppress 
set_msg_config  -ruleid {57}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_register_slice_v2_1_9_axic_register_slice__parameterized6 has unconnected port ARESET}}  -suppress 
set_msg_config  -ruleid {58}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_register_slice_v2_1_9_axic_register_slice__parameterized5 has unconnected port ACLK}}  -suppress 
set_msg_config  -ruleid {59}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_register_slice_v2_1_9_axic_register_slice__parameterized5 has unconnected port ARESET}}  -suppress 
set_msg_config  -ruleid {6}  -id {Synth 8-350}  -string {{WARNING: [Synth 8-350] instance 'inst' of module 'processing_system7_v5_5_processing_system7' requires 685 connections, but only 672 given [/home/gwe/projets/oscimp/fpga_dev/redpitaya/red_pseudogen_dds/objs/red_pseudogen_dds.srcs/sources_1/bd/redpitaya_axi_wrapper_bd/ip/redpitaya_axi_wrapper_bd_processing_system7_0_0/synth/redpitaya_axi_wrapper_bd_processing_system7_0_0.v:366]}}  -suppress 
set_msg_config  -ruleid {60}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_register_slice_v2_1_9_axic_register_slice__parameterized4 has unconnected port ACLK}}  -suppress 
set_msg_config  -ruleid {61}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_register_slice_v2_1_9_axic_register_slice__parameterized4 has unconnected port ARESET}}  -suppress 
set_msg_config  -ruleid {62}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_register_slice_v2_1_9_axic_register_slice__parameterized3 has unconnected port ACLK}}  -suppress 
set_msg_config  -ruleid {63}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_register_slice_v2_1_9_axic_register_slice__parameterized3 has unconnected port ARESET}}  -suppress 
set_msg_config  -ruleid {64}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_awid[0]}}  -suppress 
set_msg_config  -ruleid {65}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_awlen[7]}}  -suppress 
set_msg_config  -ruleid {66}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_awlen[6]}}  -suppress 
set_msg_config  -ruleid {67}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_awlen[5]}}  -suppress 
set_msg_config  -ruleid {68}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_awlen[4]}}  -suppress 
set_msg_config  -ruleid {69}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_awlen[3]}}  -suppress 
set_msg_config  -ruleid {7}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design redpitaya_axi_wrapper00_axim has unconnected port redpitaya_axi_wrapper00_M00_AXI_araddr[1]}}  -suppress 
set_msg_config  -ruleid {70}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_awlen[2]}}  -suppress 
set_msg_config  -ruleid {71}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_awlen[1]}}  -suppress 
set_msg_config  -ruleid {72}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_awlen[0]}}  -suppress 
set_msg_config  -ruleid {73}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_awsize[2]}}  -suppress 
set_msg_config  -ruleid {74}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_awsize[1]}}  -suppress 
set_msg_config  -ruleid {75}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_awsize[0]}}  -suppress 
set_msg_config  -ruleid {76}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_awburst[1]}}  -suppress 
set_msg_config  -ruleid {77}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_awburst[0]}}  -suppress 
set_msg_config  -ruleid {78}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_awlock[0]}}  -suppress 
set_msg_config  -ruleid {79}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_awcache[3]}}  -suppress 
set_msg_config  -ruleid {8}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design redpitaya_axi_wrapper00_axim has unconnected port redpitaya_axi_wrapper00_M00_AXI_araddr[0]}}  -suppress 
set_msg_config  -ruleid {80}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_awcache[2]}}  -suppress 
set_msg_config  -ruleid {81}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_awcache[1]}}  -suppress 
set_msg_config  -ruleid {82}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_awcache[0]}}  -suppress 
set_msg_config  -ruleid {83}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_awregion[3]}}  -suppress 
set_msg_config  -ruleid {84}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_awregion[2]}}  -suppress 
set_msg_config  -ruleid {85}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_awregion[1]}}  -suppress 
set_msg_config  -ruleid {86}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_awregion[0]}}  -suppress 
set_msg_config  -ruleid {87}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_awqos[3]}}  -suppress 
set_msg_config  -ruleid {88}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_awqos[2]}}  -suppress 
set_msg_config  -ruleid {89}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_awqos[1]}}  -suppress 
set_msg_config  -ruleid {9}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design redpitaya_axi_wrapper00_axim has unconnected port redpitaya_axi_wrapper00_M00_AXI_awaddr[1]}}  -suppress 
set_msg_config  -ruleid {90}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_awqos[0]}}  -suppress 
set_msg_config  -ruleid {91}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_awuser[0]}}  -suppress 
set_msg_config  -ruleid {92}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_wid[0]}}  -suppress 
set_msg_config  -ruleid {93}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_wlast}}  -suppress 
set_msg_config  -ruleid {94}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_wuser[0]}}  -suppress 
set_msg_config  -ruleid {95}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_arid[0]}}  -suppress 
set_msg_config  -ruleid {96}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_arlen[7]}}  -suppress 
set_msg_config  -ruleid {97}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_arlen[6]}}  -suppress 
set_msg_config  -ruleid {98}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_arlen[5]}}  -suppress 
set_msg_config  -ruleid {99}  -id {Synth 8-3331}  -string {{WARNING: [Synth 8-3331] design axi_infrastructure_v1_1_0_axi2vector__parameterized0 has unconnected port s_axi_arlen[4]}}  -suppress 

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir /home/gwe/projets/oscimp/fpga_dev/redpitaya/red_pseudogen_dds/objs/red_pseudogen_dds.cache/wt [current_project]
  set_property parent.project_path /home/gwe/projets/oscimp/fpga_dev/redpitaya/red_pseudogen_dds/objs/red_pseudogen_dds.xpr [current_project]
  set_property ip_repo_paths /home/gwe/projets/oscimp/fpga_dev/redpitaya/red_pseudogen_dds/objs/red_pseudogen_dds.cache/ip [current_project]
  set_property ip_output_repo /home/gwe/projets/oscimp/fpga_dev/redpitaya/red_pseudogen_dds/objs/red_pseudogen_dds.cache/ip [current_project]
  add_files -quiet /home/gwe/projets/oscimp/fpga_dev/redpitaya/red_pseudogen_dds/objs/red_pseudogen_dds.runs/synth_1/top_red_pseudogen_dds.dcp
  read_xdc -prop_thru_buffers -ref redpitaya_axi_wrapper_bd_proc_sys_reset_0_0 -cells U0 /home/gwe/projets/oscimp/fpga_dev/redpitaya/red_pseudogen_dds/objs/red_pseudogen_dds.srcs/sources_1/bd/redpitaya_axi_wrapper_bd/ip/redpitaya_axi_wrapper_bd_proc_sys_reset_0_0/redpitaya_axi_wrapper_bd_proc_sys_reset_0_0_board.xdc
  set_property processing_order EARLY [get_files /home/gwe/projets/oscimp/fpga_dev/redpitaya/red_pseudogen_dds/objs/red_pseudogen_dds.srcs/sources_1/bd/redpitaya_axi_wrapper_bd/ip/redpitaya_axi_wrapper_bd_proc_sys_reset_0_0/redpitaya_axi_wrapper_bd_proc_sys_reset_0_0_board.xdc]
  read_xdc -ref redpitaya_axi_wrapper_bd_proc_sys_reset_0_0 -cells U0 /home/gwe/projets/oscimp/fpga_dev/redpitaya/red_pseudogen_dds/objs/red_pseudogen_dds.srcs/sources_1/bd/redpitaya_axi_wrapper_bd/ip/redpitaya_axi_wrapper_bd_proc_sys_reset_0_0/redpitaya_axi_wrapper_bd_proc_sys_reset_0_0.xdc
  set_property processing_order EARLY [get_files /home/gwe/projets/oscimp/fpga_dev/redpitaya/red_pseudogen_dds/objs/red_pseudogen_dds.srcs/sources_1/bd/redpitaya_axi_wrapper_bd/ip/redpitaya_axi_wrapper_bd_proc_sys_reset_0_0/redpitaya_axi_wrapper_bd_proc_sys_reset_0_0.xdc]
  read_xdc -ref redpitaya_axi_wrapper_bd_processing_system7_0_0 -cells inst /home/gwe/projets/oscimp/fpga_dev/redpitaya/red_pseudogen_dds/objs/red_pseudogen_dds.srcs/sources_1/bd/redpitaya_axi_wrapper_bd/ip/redpitaya_axi_wrapper_bd_processing_system7_0_0/redpitaya_axi_wrapper_bd_processing_system7_0_0.xdc
  set_property processing_order EARLY [get_files /home/gwe/projets/oscimp/fpga_dev/redpitaya/red_pseudogen_dds/objs/red_pseudogen_dds.srcs/sources_1/bd/redpitaya_axi_wrapper_bd/ip/redpitaya_axi_wrapper_bd_processing_system7_0_0/redpitaya_axi_wrapper_bd_processing_system7_0_0.xdc]
  read_xdc /home/gwe/projets/oscimp/fpga_dev/redpitaya/red_pseudogen_dds/synthesis/red_pseudogen_dds.xdc
  link_design -top top_red_pseudogen_dds -part xc7z010clg400-1
  write_hwdef -file top_red_pseudogen_dds.hwdef
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
  write_checkpoint -force top_red_pseudogen_dds_opt.dcp
  report_drc -file top_red_pseudogen_dds_drc_opted.rpt
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
  write_checkpoint -force top_red_pseudogen_dds_placed.dcp
  report_io -file top_red_pseudogen_dds_io_placed.rpt
  report_utilization -file top_red_pseudogen_dds_utilization_placed.rpt -pb top_red_pseudogen_dds_utilization_placed.pb
  report_control_sets -verbose -file top_red_pseudogen_dds_control_sets_placed.rpt
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
  write_checkpoint -force top_red_pseudogen_dds_routed.dcp
  report_drc -file top_red_pseudogen_dds_drc_routed.rpt -pb top_red_pseudogen_dds_drc_routed.pb
  report_timing_summary -warn_on_violation -max_paths 10 -file top_red_pseudogen_dds_timing_summary_routed.rpt -rpx top_red_pseudogen_dds_timing_summary_routed.rpx
  report_power -file top_red_pseudogen_dds_power_routed.rpt -pb top_red_pseudogen_dds_power_summary_routed.pb -rpx top_red_pseudogen_dds_power_routed.rpx
  report_route_status -file top_red_pseudogen_dds_route_status.rpt -pb top_red_pseudogen_dds_route_status.pb
  report_clock_utilization -file top_red_pseudogen_dds_clock_utilization_routed.rpt
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
  catch { write_mem_info -force top_red_pseudogen_dds.mmi }
  write_bitstream -force top_red_pseudogen_dds.bit -bin_file
  catch { write_sysdef -hwdef top_red_pseudogen_dds.hwdef -bitfile top_red_pseudogen_dds.bit -meminfo top_red_pseudogen_dds.mmi -file top_red_pseudogen_dds.sysdef }
  catch {write_debug_probes -quiet -force debug_nets}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

