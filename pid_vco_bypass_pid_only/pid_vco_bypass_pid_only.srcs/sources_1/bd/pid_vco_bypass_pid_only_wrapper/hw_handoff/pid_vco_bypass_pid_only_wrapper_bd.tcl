
################################################################
# This is a generated script based on design: pid_vco_bypass_pid_only_wrapper
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2016.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source pid_vco_bypass_pid_only_wrapper_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z010clg400-1
   set_property BOARD_PART em.avnet.com:redpitaya:part0:1.0 [current_project]
}


# CHANGE DESIGN NAME HERE
set design_name pid_vco_bypass_pid_only_wrapper

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]
  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]

  # Create ports
  set adc_cdcs [ create_bd_port -dir O adc_cdcs ]
  set adc_clk_n_i [ create_bd_port -dir I adc_clk_n_i ]
  set adc_clk_p_i [ create_bd_port -dir I adc_clk_p_i ]
  set adc_data_a_i [ create_bd_port -dir I -from 13 -to 0 adc_data_a_i ]
  set adc_data_b_i [ create_bd_port -dir I -from 13 -to 0 adc_data_b_i ]
  set dac_clk_o [ create_bd_port -dir O dac_clk_o ]
  set dac_dat_o [ create_bd_port -dir O -from 13 -to 0 dac_dat_o ]
  set dac_rst_o [ create_bd_port -dir O dac_rst_o ]
  set dac_sel_o [ create_bd_port -dir O dac_sel_o ]
  set dac_wrt_o [ create_bd_port -dir O dac_wrt_o ]

  # Create instance: ad9767_0, and set properties
  set ad9767_0 [ create_bd_cell -type ip -vlnv ggm:cogen:ad9767:1.0 ad9767_0 ]

  # Create instance: adc1_offset, and set properties
  set adc1_offset [ create_bd_cell -type ip -vlnv ggm:cogen:add_const:1.0 adc1_offset ]
  set_property -dict [ list \
CONFIG.DATA_IN_SIZE {14} \
CONFIG.DATA_OUT_SIZE {14} \
 ] $adc1_offset

  # Create instance: adder_substracter_mod_input_0, and set properties
  set adder_substracter_mod_input_0 [ create_bd_cell -type ip -vlnv ggm:cogen:adder_substracter:1.0 adder_substracter_mod_input_0 ]
  set_property -dict [ list \
CONFIG.DATA_SIZE {14} \
 ] $adder_substracter_mod_input_0

  # Create instance: adder_substracter_mod_out_pid2, and set properties
  set adder_substracter_mod_out_pid2 [ create_bd_cell -type ip -vlnv ggm:cogen:adder_substracter:1.0 adder_substracter_mod_out_pid2 ]
  set_property -dict [ list \
CONFIG.DATA_SIZE {14} \
 ] $adder_substracter_mod_out_pid2

  # Create instance: axi_interconnect_0, and set properties
  set axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0 ]
  set_property -dict [ list \
CONFIG.NUM_MI {25} \
 ] $axi_interconnect_0

  # Create instance: dds1_ampl, and set properties
  set dds1_ampl [ create_bd_cell -type ip -vlnv ggm:cogen:add_const:1.0 dds1_ampl ]
  set_property -dict [ list \
CONFIG.DATA_IN_SIZE {14} \
CONFIG.DATA_OUT_SIZE {14} \
CONFIG.format {unsigned} \
 ] $dds1_ampl

  # Create instance: dds1_f0, and set properties
  set dds1_f0 [ create_bd_cell -type ip -vlnv ggm:cogen:add_const:1.0 dds1_f0 ]
  set_property -dict [ list \
CONFIG.DATA_IN_SIZE {32} \
CONFIG.DATA_OUT_SIZE {32} \
CONFIG.format {unsigned} \
 ] $dds1_f0

  # Create instance: dds1_nco, and set properties
  set dds1_nco [ create_bd_cell -type ip -vlnv user.org:user:nco_counter:1.0 dds1_nco ]
  set_property -dict [ list \
CONFIG.COUNTER_SIZE {32} \
CONFIG.DATA_SIZE {14} \
CONFIG.LUT_SIZE {12} \
 ] $dds1_nco

  # Create instance: dds1_offset, and set properties
  set dds1_offset [ create_bd_cell -type ip -vlnv ggm:cogen:add_const:1.0 dds1_offset ]
  set_property -dict [ list \
CONFIG.DATA_IN_SIZE {14} \
CONFIG.DATA_OUT_SIZE {14} \
 ] $dds1_offset

  # Create instance: dds1_range, and set properties
  set dds1_range [ create_bd_cell -type ip -vlnv ggm:cogen:add_const:1.0 dds1_range ]
  set_property -dict [ list \
CONFIG.DATA_IN_SIZE {14} \
CONFIG.DATA_OUT_SIZE {14} \
CONFIG.format {signed} \
 ] $dds1_range

  # Create instance: dupplReal_1_to_2_0, and set properties
  set dupplReal_1_to_2_0 [ create_bd_cell -type ip -vlnv ggm:cogen:dupplReal_1_to_2:1.0 dupplReal_1_to_2_0 ]
  set_property -dict [ list \
CONFIG.DATA_SIZE {14} \
 ] $dupplReal_1_to_2_0

  # Create instance: dupplReal_1_to_2_1, and set properties
  set dupplReal_1_to_2_1 [ create_bd_cell -type ip -vlnv ggm:cogen:dupplReal_1_to_2:1.0 dupplReal_1_to_2_1 ]
  set_property -dict [ list \
CONFIG.DATA_SIZE {14} \
 ] $dupplReal_1_to_2_1

  # Create instance: dupplReal_1_to_2_2, and set properties
  set dupplReal_1_to_2_2 [ create_bd_cell -type ip -vlnv ggm:cogen:dupplReal_1_to_2:1.0 dupplReal_1_to_2_2 ]
  set_property -dict [ list \
CONFIG.DATA_SIZE {14} \
 ] $dupplReal_1_to_2_2

  # Create instance: expanderReal_0_dds1, and set properties
  set expanderReal_0_dds1 [ create_bd_cell -type ip -vlnv ggm:cogen:expanderReal:1.0 expanderReal_0_dds1 ]
  set_property -dict [ list \
CONFIG.DATA_IN_SIZE {28} \
CONFIG.DATA_OUT_SIZE {32} \
CONFIG.format {signed} \
 ] $expanderReal_0_dds1

  # Create instance: expanderReal_0_ki_pid1, and set properties
  set expanderReal_0_ki_pid1 [ create_bd_cell -type ip -vlnv ggm:cogen:expanderReal:1.0 expanderReal_0_ki_pid1 ]
  set_property -dict [ list \
CONFIG.DATA_IN_SIZE {14} \
CONFIG.DATA_OUT_SIZE {18} \
CONFIG.format {signed} \
 ] $expanderReal_0_ki_pid1

  # Create instance: expanderReal_0_ki_pid2, and set properties
  set expanderReal_0_ki_pid2 [ create_bd_cell -type ip -vlnv ggm:cogen:expanderReal:1.0 expanderReal_0_ki_pid2 ]
  set_property -dict [ list \
CONFIG.DATA_IN_SIZE {14} \
CONFIG.DATA_OUT_SIZE {18} \
CONFIG.format {signed} \
 ] $expanderReal_0_ki_pid2

  # Create instance: ltc2145_0, and set properties
  set ltc2145_0 [ create_bd_cell -type ip -vlnv gwbs:user:ltc2145:1.0 ltc2145_0 ]

  # Create instance: mod_input_ampl, and set properties
  set mod_input_ampl [ create_bd_cell -type ip -vlnv ggm:cogen:add_const:1.0 mod_input_ampl ]
  set_property -dict [ list \
CONFIG.DATA_IN_SIZE {14} \
CONFIG.DATA_OUT_SIZE {14} \
CONFIG.format {unsigned} \
 ] $mod_input_ampl

  # Create instance: mod_input_nco, and set properties
  set mod_input_nco [ create_bd_cell -type ip -vlnv user.org:user:nco_counter:1.0 mod_input_nco ]
  set_property -dict [ list \
CONFIG.COUNTER_SIZE {32} \
CONFIG.DATA_SIZE {14} \
CONFIG.LUT_SIZE {12} \
 ] $mod_input_nco

  # Create instance: mod_out_pid2_ampl, and set properties
  set mod_out_pid2_ampl [ create_bd_cell -type ip -vlnv ggm:cogen:add_const:1.0 mod_out_pid2_ampl ]
  set_property -dict [ list \
CONFIG.DATA_IN_SIZE {14} \
CONFIG.DATA_OUT_SIZE {14} \
CONFIG.format {unsigned} \
 ] $mod_out_pid2_ampl

  # Create instance: mod_out_pid2_nco, and set properties
  set mod_out_pid2_nco [ create_bd_cell -type ip -vlnv user.org:user:nco_counter:1.0 mod_out_pid2_nco ]
  set_property -dict [ list \
CONFIG.COUNTER_SIZE {32} \
CONFIG.DATA_SIZE {14} \
CONFIG.LUT_SIZE {12} \
 ] $mod_out_pid2_nco

  # Create instance: pid1, and set properties
  set pid1 [ create_bd_cell -type ip -vlnv user.org:user:red_pitaya_pidv3:1.0 pid1 ]
  set_property -dict [ list \
CONFIG.DATA_OUT_SIZE {14} \
CONFIG.DSR {0} \
CONFIG.D_SIZE {14} \
CONFIG.ISR {19} \
CONFIG.I_SIZE {18} \
CONFIG.PSR {13} \
CONFIG.P_SIZE {14} \
 ] $pid1

  # Create instance: pid1_kd, and set properties
  set pid1_kd [ create_bd_cell -type ip -vlnv ggm:cogen:add_const:1.0 pid1_kd ]
  set_property -dict [ list \
CONFIG.DATA_IN_SIZE {14} \
CONFIG.DATA_OUT_SIZE {14} \
CONFIG.format {unsigned} \
 ] $pid1_kd

  # Create instance: pid1_ki, and set properties
  set pid1_ki [ create_bd_cell -type ip -vlnv ggm:cogen:add_const:1.0 pid1_ki ]
  set_property -dict [ list \
CONFIG.DATA_IN_SIZE {14} \
CONFIG.DATA_OUT_SIZE {14} \
CONFIG.format {unsigned} \
 ] $pid1_ki

  # Create instance: pid1_kp, and set properties
  set pid1_kp [ create_bd_cell -type ip -vlnv ggm:cogen:add_const:1.0 pid1_kp ]
  set_property -dict [ list \
CONFIG.C_S00_AXI_DATA_WIDTH {32} \
CONFIG.DATA_IN_SIZE {14} \
CONFIG.DATA_OUT_SIZE {14} \
CONFIG.format {unsigned} \
 ] $pid1_kp

  # Create instance: pid1_rst_int, and set properties
  set pid1_rst_int [ create_bd_cell -type ip -vlnv ggm:cogen:add_const:1.0 pid1_rst_int ]
  set_property -dict [ list \
CONFIG.DATA_IN_SIZE {1} \
CONFIG.DATA_OUT_SIZE {1} \
CONFIG.format {unsigned} \
 ] $pid1_rst_int

  # Create instance: pid1_setpoint, and set properties
  set pid1_setpoint [ create_bd_cell -type ip -vlnv ggm:cogen:add_const:1.0 pid1_setpoint ]
  set_property -dict [ list \
CONFIG.DATA_IN_SIZE {14} \
CONFIG.DATA_OUT_SIZE {14} \
CONFIG.format {signed} \
 ] $pid1_setpoint

  # Create instance: pid1_sign, and set properties
  set pid1_sign [ create_bd_cell -type ip -vlnv ggm:cogen:add_const:1.0 pid1_sign ]
  set_property -dict [ list \
CONFIG.DATA_IN_SIZE {1} \
CONFIG.DATA_OUT_SIZE {1} \
CONFIG.format {unsigned} \
 ] $pid1_sign

  # Create instance: pid2, and set properties
  set pid2 [ create_bd_cell -type ip -vlnv user.org:user:red_pitaya_pidv3:1.0 pid2 ]
  set_property -dict [ list \
CONFIG.DATA_OUT_SIZE {14} \
CONFIG.DSR {0} \
CONFIG.D_SIZE {14} \
CONFIG.ISR {19} \
CONFIG.I_SIZE {18} \
CONFIG.PSR {13} \
CONFIG.P_SIZE {14} \
 ] $pid2

  # Create instance: pid2_kd, and set properties
  set pid2_kd [ create_bd_cell -type ip -vlnv ggm:cogen:add_const:1.0 pid2_kd ]
  set_property -dict [ list \
CONFIG.DATA_IN_SIZE {14} \
CONFIG.DATA_OUT_SIZE {14} \
CONFIG.format {unsigned} \
 ] $pid2_kd

  # Create instance: pid2_ki, and set properties
  set pid2_ki [ create_bd_cell -type ip -vlnv ggm:cogen:add_const:1.0 pid2_ki ]
  set_property -dict [ list \
CONFIG.DATA_IN_SIZE {14} \
CONFIG.DATA_OUT_SIZE {14} \
CONFIG.format {unsigned} \
 ] $pid2_ki

  # Create instance: pid2_kp, and set properties
  set pid2_kp [ create_bd_cell -type ip -vlnv ggm:cogen:add_const:1.0 pid2_kp ]
  set_property -dict [ list \
CONFIG.C_S00_AXI_DATA_WIDTH {32} \
CONFIG.DATA_IN_SIZE {14} \
CONFIG.DATA_OUT_SIZE {14} \
CONFIG.format {unsigned} \
 ] $pid2_kp

  # Create instance: pid2_offset, and set properties
  set pid2_offset [ create_bd_cell -type ip -vlnv ggm:cogen:add_const:1.0 pid2_offset ]
  set_property -dict [ list \
CONFIG.DATA_IN_SIZE {14} \
CONFIG.DATA_OUT_SIZE {14} \
 ] $pid2_offset

  # Create instance: pid2_rst_int, and set properties
  set pid2_rst_int [ create_bd_cell -type ip -vlnv ggm:cogen:add_const:1.0 pid2_rst_int ]
  set_property -dict [ list \
CONFIG.DATA_IN_SIZE {1} \
CONFIG.DATA_OUT_SIZE {1} \
CONFIG.format {unsigned} \
 ] $pid2_rst_int

  # Create instance: pid2_setpoint, and set properties
  set pid2_setpoint [ create_bd_cell -type ip -vlnv ggm:cogen:add_const:1.0 pid2_setpoint ]
  set_property -dict [ list \
CONFIG.DATA_IN_SIZE {14} \
CONFIG.DATA_OUT_SIZE {14} \
CONFIG.format {signed} \
 ] $pid2_setpoint

  # Create instance: pid2_sign, and set properties
  set pid2_sign [ create_bd_cell -type ip -vlnv ggm:cogen:add_const:1.0 pid2_sign ]
  set_property -dict [ list \
CONFIG.DATA_IN_SIZE {1} \
CONFIG.DATA_OUT_SIZE {1} \
CONFIG.format {unsigned} \
 ] $pid2_sign

  # Create instance: proc_sys_reset_0, and set properties
  set proc_sys_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_0 ]

  # Create instance: processing_system7_0, and set properties
  set processing_system7_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0 ]
  set_property -dict [ list \
CONFIG.PCW_ACT_APU_PERIPHERAL_FREQMHZ {666.666687} \
CONFIG.PCW_ACT_CAN0_PERIPHERAL_FREQMHZ {23.8095} \
CONFIG.PCW_ACT_CAN1_PERIPHERAL_FREQMHZ {23.8095} \
CONFIG.PCW_ACT_CAN_PERIPHERAL_FREQMHZ {10.000000} \
CONFIG.PCW_ACT_DCI_PERIPHERAL_FREQMHZ {10.158730} \
CONFIG.PCW_ACT_ENET0_PERIPHERAL_FREQMHZ {125.000000} \
CONFIG.PCW_ACT_ENET1_PERIPHERAL_FREQMHZ {10.000000} \
CONFIG.PCW_ACT_FPGA0_PERIPHERAL_FREQMHZ {125.000000} \
CONFIG.PCW_ACT_FPGA1_PERIPHERAL_FREQMHZ {250.000000} \
CONFIG.PCW_ACT_FPGA2_PERIPHERAL_FREQMHZ {50.000000} \
CONFIG.PCW_ACT_FPGA3_PERIPHERAL_FREQMHZ {200.000000} \
CONFIG.PCW_ACT_I2C_PERIPHERAL_FREQMHZ {50} \
CONFIG.PCW_ACT_PCAP_PERIPHERAL_FREQMHZ {200.000000} \
CONFIG.PCW_ACT_QSPI_PERIPHERAL_FREQMHZ {125.000000} \
CONFIG.PCW_ACT_SDIO_PERIPHERAL_FREQMHZ {125.000000} \
CONFIG.PCW_ACT_SMC_PERIPHERAL_FREQMHZ {10.000000} \
CONFIG.PCW_ACT_SPI_PERIPHERAL_FREQMHZ {166.666672} \
CONFIG.PCW_ACT_TPIU_PERIPHERAL_FREQMHZ {200.000000} \
CONFIG.PCW_ACT_TTC0_CLK0_PERIPHERAL_FREQMHZ {111.111115} \
CONFIG.PCW_ACT_TTC0_CLK1_PERIPHERAL_FREQMHZ {111.111115} \
CONFIG.PCW_ACT_TTC0_CLK2_PERIPHERAL_FREQMHZ {111.111115} \
CONFIG.PCW_ACT_TTC1_CLK0_PERIPHERAL_FREQMHZ {111.111115} \
CONFIG.PCW_ACT_TTC1_CLK1_PERIPHERAL_FREQMHZ {111.111115} \
CONFIG.PCW_ACT_TTC1_CLK2_PERIPHERAL_FREQMHZ {111.111115} \
CONFIG.PCW_ACT_TTC_PERIPHERAL_FREQMHZ {50} \
CONFIG.PCW_ACT_UART_PERIPHERAL_FREQMHZ {100.000000} \
CONFIG.PCW_ACT_USB0_PERIPHERAL_FREQMHZ {60} \
CONFIG.PCW_ACT_USB1_PERIPHERAL_FREQMHZ {60} \
CONFIG.PCW_ACT_WDT_PERIPHERAL_FREQMHZ {111.111115} \
CONFIG.PCW_APU_CLK_RATIO_ENABLE {6:2:1} \
CONFIG.PCW_APU_PERIPHERAL_FREQMHZ {666.666666} \
CONFIG.PCW_ARMPLL_CTRL_FBDIV {40} \
CONFIG.PCW_CAN0_BASEADDR {0xE0008000} \
CONFIG.PCW_CAN0_CAN0_IO {<Select>} \
CONFIG.PCW_CAN0_GRP_CLK_ENABLE {0} \
CONFIG.PCW_CAN0_GRP_CLK_IO {<Select>} \
CONFIG.PCW_CAN0_HIGHADDR {0xE0008FFF} \
CONFIG.PCW_CAN0_PERIPHERAL_CLKSRC {External} \
CONFIG.PCW_CAN0_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_CAN0_PERIPHERAL_FREQMHZ {-1} \
CONFIG.PCW_CAN1_BASEADDR {0xE0009000} \
CONFIG.PCW_CAN1_CAN1_IO {<Select>} \
CONFIG.PCW_CAN1_GRP_CLK_ENABLE {0} \
CONFIG.PCW_CAN1_GRP_CLK_IO {<Select>} \
CONFIG.PCW_CAN1_HIGHADDR {0xE0009FFF} \
CONFIG.PCW_CAN1_PERIPHERAL_CLKSRC {External} \
CONFIG.PCW_CAN1_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_CAN1_PERIPHERAL_FREQMHZ {-1} \
CONFIG.PCW_CAN_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_CAN_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_CAN_PERIPHERAL_DIVISOR1 {1} \
CONFIG.PCW_CAN_PERIPHERAL_FREQMHZ {100} \
CONFIG.PCW_CAN_PERIPHERAL_VALID {0} \
CONFIG.PCW_CLK0_FREQ {125000000} \
CONFIG.PCW_CLK1_FREQ {250000000} \
CONFIG.PCW_CLK2_FREQ {50000000} \
CONFIG.PCW_CLK3_FREQ {200000000} \
CONFIG.PCW_CORE0_FIQ_INTR {0} \
CONFIG.PCW_CORE0_IRQ_INTR {0} \
CONFIG.PCW_CORE1_FIQ_INTR {0} \
CONFIG.PCW_CORE1_IRQ_INTR {0} \
CONFIG.PCW_CPU_CPU_6X4X_MAX_RANGE {667} \
CONFIG.PCW_CPU_CPU_PLL_FREQMHZ {1333.333} \
CONFIG.PCW_CPU_PERIPHERAL_CLKSRC {ARM PLL} \
CONFIG.PCW_CPU_PERIPHERAL_DIVISOR0 {2} \
CONFIG.PCW_CRYSTAL_PERIPHERAL_FREQMHZ {33.333333} \
CONFIG.PCW_DCI_PERIPHERAL_CLKSRC {1} \
CONFIG.PCW_DCI_PERIPHERAL_DIVISOR0 {15} \
CONFIG.PCW_DCI_PERIPHERAL_DIVISOR1 {7} \
CONFIG.PCW_DCI_PERIPHERAL_FREQMHZ {10.159} \
CONFIG.PCW_DDRPLL_CTRL_FBDIV {32} \
CONFIG.PCW_DDR_DDR_PLL_FREQMHZ {1066.667} \
CONFIG.PCW_DDR_HPRLPR_QUEUE_PARTITION {HPR(0)/LPR(32)} \
CONFIG.PCW_DDR_HPR_TO_CRITICAL_PRIORITY_LEVEL {15} \
CONFIG.PCW_DDR_LPR_TO_CRITICAL_PRIORITY_LEVEL {2} \
CONFIG.PCW_DDR_PERIPHERAL_CLKSRC {DDR PLL} \
CONFIG.PCW_DDR_PERIPHERAL_DIVISOR0 {2} \
CONFIG.PCW_DDR_PORT0_HPR_ENABLE {0} \
CONFIG.PCW_DDR_PORT1_HPR_ENABLE {0} \
CONFIG.PCW_DDR_PORT2_HPR_ENABLE {0} \
CONFIG.PCW_DDR_PORT3_HPR_ENABLE {0} \
CONFIG.PCW_DDR_PRIORITY_READPORT_0 {<Select>} \
CONFIG.PCW_DDR_PRIORITY_READPORT_1 {<Select>} \
CONFIG.PCW_DDR_PRIORITY_READPORT_2 {<Select>} \
CONFIG.PCW_DDR_PRIORITY_READPORT_3 {<Select>} \
CONFIG.PCW_DDR_PRIORITY_WRITEPORT_0 {<Select>} \
CONFIG.PCW_DDR_PRIORITY_WRITEPORT_1 {<Select>} \
CONFIG.PCW_DDR_PRIORITY_WRITEPORT_2 {<Select>} \
CONFIG.PCW_DDR_PRIORITY_WRITEPORT_3 {<Select>} \
CONFIG.PCW_DDR_RAM_BASEADDR {0x00100000} \
CONFIG.PCW_DDR_RAM_HIGHADDR {0x1FFFFFFF} \
CONFIG.PCW_DDR_WRITE_TO_CRITICAL_PRIORITY_LEVEL {2} \
CONFIG.PCW_DM_WIDTH {4} \
CONFIG.PCW_DQS_WIDTH {4} \
CONFIG.PCW_DQ_WIDTH {32} \
CONFIG.PCW_ENET0_BASEADDR {0xE000B000} \
CONFIG.PCW_ENET0_ENET0_IO {MIO 16 .. 27} \
CONFIG.PCW_ENET0_GRP_MDIO_ENABLE {1} \
CONFIG.PCW_ENET0_GRP_MDIO_IO {MIO 52 .. 53} \
CONFIG.PCW_ENET0_HIGHADDR {0xE000BFFF} \
CONFIG.PCW_ENET0_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR0 {8} \
CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR1 {1} \
CONFIG.PCW_ENET0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_ENET0_PERIPHERAL_FREQMHZ {1000 Mbps} \
CONFIG.PCW_ENET0_RESET_ENABLE {0} \
CONFIG.PCW_ENET0_RESET_IO {<Select>} \
CONFIG.PCW_ENET1_BASEADDR {0xE000C000} \
CONFIG.PCW_ENET1_ENET1_IO {<Select>} \
CONFIG.PCW_ENET1_GRP_MDIO_ENABLE {0} \
CONFIG.PCW_ENET1_GRP_MDIO_IO {<Select>} \
CONFIG.PCW_ENET1_HIGHADDR {0xE000CFFF} \
CONFIG.PCW_ENET1_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR1 {1} \
CONFIG.PCW_ENET1_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_ENET1_PERIPHERAL_FREQMHZ {1000 Mbps} \
CONFIG.PCW_ENET1_RESET_ENABLE {0} \
CONFIG.PCW_ENET1_RESET_IO {<Select>} \
CONFIG.PCW_ENET_RESET_ENABLE {1} \
CONFIG.PCW_ENET_RESET_POLARITY {Active Low} \
CONFIG.PCW_ENET_RESET_SELECT {Share reset pin} \
CONFIG.PCW_EN_4K_TIMER {0} \
CONFIG.PCW_EN_CAN0 {0} \
CONFIG.PCW_EN_CAN1 {0} \
CONFIG.PCW_EN_CLK0_PORT {1} \
CONFIG.PCW_EN_CLK1_PORT {1} \
CONFIG.PCW_EN_CLK2_PORT {1} \
CONFIG.PCW_EN_CLK3_PORT {1} \
CONFIG.PCW_EN_CLKTRIG0_PORT {0} \
CONFIG.PCW_EN_CLKTRIG1_PORT {0} \
CONFIG.PCW_EN_CLKTRIG2_PORT {0} \
CONFIG.PCW_EN_CLKTRIG3_PORT {0} \
CONFIG.PCW_EN_DDR {1} \
CONFIG.PCW_EN_EMIO_CAN0 {0} \
CONFIG.PCW_EN_EMIO_CAN1 {0} \
CONFIG.PCW_EN_EMIO_CD_SDIO0 {0} \
CONFIG.PCW_EN_EMIO_CD_SDIO1 {0} \
CONFIG.PCW_EN_EMIO_ENET0 {0} \
CONFIG.PCW_EN_EMIO_ENET1 {0} \
CONFIG.PCW_EN_EMIO_GPIO {0} \
CONFIG.PCW_EN_EMIO_I2C0 {0} \
CONFIG.PCW_EN_EMIO_I2C1 {0} \
CONFIG.PCW_EN_EMIO_MODEM_UART0 {0} \
CONFIG.PCW_EN_EMIO_MODEM_UART1 {0} \
CONFIG.PCW_EN_EMIO_PJTAG {0} \
CONFIG.PCW_EN_EMIO_SDIO0 {0} \
CONFIG.PCW_EN_EMIO_SDIO1 {0} \
CONFIG.PCW_EN_EMIO_SPI0 {1} \
CONFIG.PCW_EN_EMIO_SPI1 {0} \
CONFIG.PCW_EN_EMIO_SRAM_INT {0} \
CONFIG.PCW_EN_EMIO_TRACE {0} \
CONFIG.PCW_EN_EMIO_TTC0 {1} \
CONFIG.PCW_EN_EMIO_TTC1 {0} \
CONFIG.PCW_EN_EMIO_UART0 {0} \
CONFIG.PCW_EN_EMIO_UART1 {0} \
CONFIG.PCW_EN_EMIO_WDT {0} \
CONFIG.PCW_EN_EMIO_WP_SDIO0 {0} \
CONFIG.PCW_EN_EMIO_WP_SDIO1 {0} \
CONFIG.PCW_EN_ENET0 {1} \
CONFIG.PCW_EN_ENET1 {0} \
CONFIG.PCW_EN_GPIO {1} \
CONFIG.PCW_EN_I2C0 {1} \
CONFIG.PCW_EN_I2C1 {0} \
CONFIG.PCW_EN_MODEM_UART0 {0} \
CONFIG.PCW_EN_MODEM_UART1 {0} \
CONFIG.PCW_EN_PJTAG {0} \
CONFIG.PCW_EN_QSPI {1} \
CONFIG.PCW_EN_RST0_PORT {1} \
CONFIG.PCW_EN_RST1_PORT {1} \
CONFIG.PCW_EN_RST2_PORT {1} \
CONFIG.PCW_EN_RST3_PORT {1} \
CONFIG.PCW_EN_SDIO0 {1} \
CONFIG.PCW_EN_SDIO1 {0} \
CONFIG.PCW_EN_SMC {0} \
CONFIG.PCW_EN_SPI0 {1} \
CONFIG.PCW_EN_SPI1 {1} \
CONFIG.PCW_EN_TRACE {0} \
CONFIG.PCW_EN_TTC0 {1} \
CONFIG.PCW_EN_TTC1 {0} \
CONFIG.PCW_EN_UART0 {1} \
CONFIG.PCW_EN_UART1 {1} \
CONFIG.PCW_EN_USB0 {1} \
CONFIG.PCW_EN_USB1 {0} \
CONFIG.PCW_EN_WDT {0} \
CONFIG.PCW_FCLK0_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR0 {4} \
CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR1 {2} \
CONFIG.PCW_FCLK1_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR0 {2} \
CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR1 {2} \
CONFIG.PCW_FCLK2_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR0 {5} \
CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR1 {4} \
CONFIG.PCW_FCLK3_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR0 {5} \
CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR1 {1} \
CONFIG.PCW_FCLK_CLK0_BUF {TRUE} \
CONFIG.PCW_FCLK_CLK1_BUF {TRUE} \
CONFIG.PCW_FCLK_CLK2_BUF {TRUE} \
CONFIG.PCW_FCLK_CLK3_BUF {TRUE} \
CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {125} \
CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ {250} \
CONFIG.PCW_FPGA2_PERIPHERAL_FREQMHZ {50} \
CONFIG.PCW_FPGA3_PERIPHERAL_FREQMHZ {200} \
CONFIG.PCW_FPGA_FCLK0_ENABLE {1} \
CONFIG.PCW_FPGA_FCLK1_ENABLE {1} \
CONFIG.PCW_FPGA_FCLK2_ENABLE {1} \
CONFIG.PCW_FPGA_FCLK3_ENABLE {1} \
CONFIG.PCW_FTM_CTI_IN0 {<Select>} \
CONFIG.PCW_FTM_CTI_IN1 {<Select>} \
CONFIG.PCW_FTM_CTI_IN2 {<Select>} \
CONFIG.PCW_FTM_CTI_IN3 {<Select>} \
CONFIG.PCW_FTM_CTI_OUT0 {<Select>} \
CONFIG.PCW_FTM_CTI_OUT1 {<Select>} \
CONFIG.PCW_FTM_CTI_OUT2 {<Select>} \
CONFIG.PCW_FTM_CTI_OUT3 {<Select>} \
CONFIG.PCW_GPIO_BASEADDR {0xE000A000} \
CONFIG.PCW_GPIO_EMIO_GPIO_ENABLE {0} \
CONFIG.PCW_GPIO_EMIO_GPIO_IO {<Select>} \
CONFIG.PCW_GPIO_EMIO_GPIO_WIDTH {64} \
CONFIG.PCW_GPIO_HIGHADDR {0xE000AFFF} \
CONFIG.PCW_GPIO_MIO_GPIO_ENABLE {1} \
CONFIG.PCW_GPIO_MIO_GPIO_IO {MIO} \
CONFIG.PCW_GPIO_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_I2C0_BASEADDR {0xE0004000} \
CONFIG.PCW_I2C0_GRP_INT_ENABLE {0} \
CONFIG.PCW_I2C0_GRP_INT_IO {<Select>} \
CONFIG.PCW_I2C0_HIGHADDR {0xE0004FFF} \
CONFIG.PCW_I2C0_I2C0_IO {MIO 50 .. 51} \
CONFIG.PCW_I2C0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_I2C0_RESET_ENABLE {0} \
CONFIG.PCW_I2C0_RESET_IO {<Select>} \
CONFIG.PCW_I2C1_BASEADDR {0xE0005000} \
CONFIG.PCW_I2C1_GRP_INT_ENABLE {0} \
CONFIG.PCW_I2C1_GRP_INT_IO {<Select>} \
CONFIG.PCW_I2C1_HIGHADDR {0xE0005FFF} \
CONFIG.PCW_I2C1_I2C1_IO {<Select>} \
CONFIG.PCW_I2C1_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_I2C1_RESET_ENABLE {0} \
CONFIG.PCW_I2C1_RESET_IO {<Select>} \
CONFIG.PCW_I2C_PERIPHERAL_FREQMHZ {111.111115} \
CONFIG.PCW_I2C_RESET_ENABLE {1} \
CONFIG.PCW_I2C_RESET_POLARITY {Active Low} \
CONFIG.PCW_I2C_RESET_SELECT {Share reset pin} \
CONFIG.PCW_IMPORT_BOARD_PRESET {None} \
CONFIG.PCW_INCLUDE_ACP_TRANS_CHECK {0} \
CONFIG.PCW_INCLUDE_TRACE_BUFFER {0} \
CONFIG.PCW_IOPLL_CTRL_FBDIV {30} \
CONFIG.PCW_IO_IO_PLL_FREQMHZ {1000.000} \
CONFIG.PCW_IRQ_F2P_INTR {1} \
CONFIG.PCW_IRQ_F2P_MODE {REVERSE} \
CONFIG.PCW_MIO_0_DIRECTION {inout} \
CONFIG.PCW_MIO_0_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_0_PULLUP {enabled} \
CONFIG.PCW_MIO_0_SLEW {slow} \
CONFIG.PCW_MIO_10_DIRECTION {inout} \
CONFIG.PCW_MIO_10_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_10_PULLUP {enabled} \
CONFIG.PCW_MIO_10_SLEW {slow} \
CONFIG.PCW_MIO_11_DIRECTION {inout} \
CONFIG.PCW_MIO_11_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_11_PULLUP {enabled} \
CONFIG.PCW_MIO_11_SLEW {slow} \
CONFIG.PCW_MIO_12_DIRECTION {inout} \
CONFIG.PCW_MIO_12_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_12_PULLUP {enabled} \
CONFIG.PCW_MIO_12_SLEW {slow} \
CONFIG.PCW_MIO_13_DIRECTION {inout} \
CONFIG.PCW_MIO_13_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_13_PULLUP {enabled} \
CONFIG.PCW_MIO_13_SLEW {slow} \
CONFIG.PCW_MIO_14_DIRECTION {in} \
CONFIG.PCW_MIO_14_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_14_PULLUP {enabled} \
CONFIG.PCW_MIO_14_SLEW {slow} \
CONFIG.PCW_MIO_15_DIRECTION {out} \
CONFIG.PCW_MIO_15_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_15_PULLUP {enabled} \
CONFIG.PCW_MIO_15_SLEW {slow} \
CONFIG.PCW_MIO_16_DIRECTION {out} \
CONFIG.PCW_MIO_16_IOTYPE {LVCMOS 2.5V} \
CONFIG.PCW_MIO_16_PULLUP {disabled} \
CONFIG.PCW_MIO_16_SLEW {fast} \
CONFIG.PCW_MIO_17_DIRECTION {out} \
CONFIG.PCW_MIO_17_IOTYPE {LVCMOS 2.5V} \
CONFIG.PCW_MIO_17_PULLUP {disabled} \
CONFIG.PCW_MIO_17_SLEW {fast} \
CONFIG.PCW_MIO_18_DIRECTION {out} \
CONFIG.PCW_MIO_18_IOTYPE {LVCMOS 2.5V} \
CONFIG.PCW_MIO_18_PULLUP {disabled} \
CONFIG.PCW_MIO_18_SLEW {fast} \
CONFIG.PCW_MIO_19_DIRECTION {out} \
CONFIG.PCW_MIO_19_IOTYPE {LVCMOS 2.5V} \
CONFIG.PCW_MIO_19_PULLUP {disabled} \
CONFIG.PCW_MIO_19_SLEW {fast} \
CONFIG.PCW_MIO_1_DIRECTION {out} \
CONFIG.PCW_MIO_1_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_1_PULLUP {enabled} \
CONFIG.PCW_MIO_1_SLEW {slow} \
CONFIG.PCW_MIO_20_DIRECTION {out} \
CONFIG.PCW_MIO_20_IOTYPE {LVCMOS 2.5V} \
CONFIG.PCW_MIO_20_PULLUP {disabled} \
CONFIG.PCW_MIO_20_SLEW {fast} \
CONFIG.PCW_MIO_21_DIRECTION {out} \
CONFIG.PCW_MIO_21_IOTYPE {LVCMOS 2.5V} \
CONFIG.PCW_MIO_21_PULLUP {disabled} \
CONFIG.PCW_MIO_21_SLEW {fast} \
CONFIG.PCW_MIO_22_DIRECTION {in} \
CONFIG.PCW_MIO_22_IOTYPE {LVCMOS 2.5V} \
CONFIG.PCW_MIO_22_PULLUP {disabled} \
CONFIG.PCW_MIO_22_SLEW {fast} \
CONFIG.PCW_MIO_23_DIRECTION {in} \
CONFIG.PCW_MIO_23_IOTYPE {LVCMOS 2.5V} \
CONFIG.PCW_MIO_23_PULLUP {disabled} \
CONFIG.PCW_MIO_23_SLEW {fast} \
CONFIG.PCW_MIO_24_DIRECTION {in} \
CONFIG.PCW_MIO_24_IOTYPE {LVCMOS 2.5V} \
CONFIG.PCW_MIO_24_PULLUP {disabled} \
CONFIG.PCW_MIO_24_SLEW {fast} \
CONFIG.PCW_MIO_25_DIRECTION {in} \
CONFIG.PCW_MIO_25_IOTYPE {LVCMOS 2.5V} \
CONFIG.PCW_MIO_25_PULLUP {disabled} \
CONFIG.PCW_MIO_25_SLEW {fast} \
CONFIG.PCW_MIO_26_DIRECTION {in} \
CONFIG.PCW_MIO_26_IOTYPE {LVCMOS 2.5V} \
CONFIG.PCW_MIO_26_PULLUP {disabled} \
CONFIG.PCW_MIO_26_SLEW {fast} \
CONFIG.PCW_MIO_27_DIRECTION {in} \
CONFIG.PCW_MIO_27_IOTYPE {LVCMOS 2.5V} \
CONFIG.PCW_MIO_27_PULLUP {disabled} \
CONFIG.PCW_MIO_27_SLEW {fast} \
CONFIG.PCW_MIO_28_DIRECTION {inout} \
CONFIG.PCW_MIO_28_IOTYPE {LVCMOS 2.5V} \
CONFIG.PCW_MIO_28_PULLUP {disabled} \
CONFIG.PCW_MIO_28_SLEW {fast} \
CONFIG.PCW_MIO_29_DIRECTION {in} \
CONFIG.PCW_MIO_29_IOTYPE {LVCMOS 2.5V} \
CONFIG.PCW_MIO_29_PULLUP {disabled} \
CONFIG.PCW_MIO_29_SLEW {fast} \
CONFIG.PCW_MIO_2_DIRECTION {inout} \
CONFIG.PCW_MIO_2_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_2_PULLUP {disabled} \
CONFIG.PCW_MIO_2_SLEW {slow} \
CONFIG.PCW_MIO_30_DIRECTION {out} \
CONFIG.PCW_MIO_30_IOTYPE {LVCMOS 2.5V} \
CONFIG.PCW_MIO_30_PULLUP {disabled} \
CONFIG.PCW_MIO_30_SLEW {fast} \
CONFIG.PCW_MIO_31_DIRECTION {in} \
CONFIG.PCW_MIO_31_IOTYPE {LVCMOS 2.5V} \
CONFIG.PCW_MIO_31_PULLUP {disabled} \
CONFIG.PCW_MIO_31_SLEW {fast} \
CONFIG.PCW_MIO_32_DIRECTION {inout} \
CONFIG.PCW_MIO_32_IOTYPE {LVCMOS 2.5V} \
CONFIG.PCW_MIO_32_PULLUP {disabled} \
CONFIG.PCW_MIO_32_SLEW {fast} \
CONFIG.PCW_MIO_33_DIRECTION {inout} \
CONFIG.PCW_MIO_33_IOTYPE {LVCMOS 2.5V} \
CONFIG.PCW_MIO_33_PULLUP {disabled} \
CONFIG.PCW_MIO_33_SLEW {fast} \
CONFIG.PCW_MIO_34_DIRECTION {inout} \
CONFIG.PCW_MIO_34_IOTYPE {LVCMOS 2.5V} \
CONFIG.PCW_MIO_34_PULLUP {disabled} \
CONFIG.PCW_MIO_34_SLEW {fast} \
CONFIG.PCW_MIO_35_DIRECTION {inout} \
CONFIG.PCW_MIO_35_IOTYPE {LVCMOS 2.5V} \
CONFIG.PCW_MIO_35_PULLUP {disabled} \
CONFIG.PCW_MIO_35_SLEW {fast} \
CONFIG.PCW_MIO_36_DIRECTION {in} \
CONFIG.PCW_MIO_36_IOTYPE {LVCMOS 2.5V} \
CONFIG.PCW_MIO_36_PULLUP {disabled} \
CONFIG.PCW_MIO_36_SLEW {fast} \
CONFIG.PCW_MIO_37_DIRECTION {inout} \
CONFIG.PCW_MIO_37_IOTYPE {LVCMOS 2.5V} \
CONFIG.PCW_MIO_37_PULLUP {disabled} \
CONFIG.PCW_MIO_37_SLEW {fast} \
CONFIG.PCW_MIO_38_DIRECTION {inout} \
CONFIG.PCW_MIO_38_IOTYPE {LVCMOS 2.5V} \
CONFIG.PCW_MIO_38_PULLUP {disabled} \
CONFIG.PCW_MIO_38_SLEW {fast} \
CONFIG.PCW_MIO_39_DIRECTION {inout} \
CONFIG.PCW_MIO_39_IOTYPE {LVCMOS 2.5V} \
CONFIG.PCW_MIO_39_PULLUP {disabled} \
CONFIG.PCW_MIO_39_SLEW {fast} \
CONFIG.PCW_MIO_3_DIRECTION {inout} \
CONFIG.PCW_MIO_3_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_3_PULLUP {disabled} \
CONFIG.PCW_MIO_3_SLEW {slow} \
CONFIG.PCW_MIO_40_DIRECTION {inout} \
CONFIG.PCW_MIO_40_IOTYPE {LVCMOS 2.5V} \
CONFIG.PCW_MIO_40_PULLUP {enabled} \
CONFIG.PCW_MIO_40_SLEW {slow} \
CONFIG.PCW_MIO_41_DIRECTION {inout} \
CONFIG.PCW_MIO_41_IOTYPE {LVCMOS 2.5V} \
CONFIG.PCW_MIO_41_PULLUP {enabled} \
CONFIG.PCW_MIO_41_SLEW {slow} \
CONFIG.PCW_MIO_42_DIRECTION {inout} \
CONFIG.PCW_MIO_42_IOTYPE {LVCMOS 2.5V} \
CONFIG.PCW_MIO_42_PULLUP {enabled} \
CONFIG.PCW_MIO_42_SLEW {slow} \
CONFIG.PCW_MIO_43_DIRECTION {inout} \
CONFIG.PCW_MIO_43_IOTYPE {LVCMOS 2.5V} \
CONFIG.PCW_MIO_43_PULLUP {enabled} \
CONFIG.PCW_MIO_43_SLEW {slow} \
CONFIG.PCW_MIO_44_DIRECTION {inout} \
CONFIG.PCW_MIO_44_IOTYPE {LVCMOS 2.5V} \
CONFIG.PCW_MIO_44_PULLUP {enabled} \
CONFIG.PCW_MIO_44_SLEW {slow} \
CONFIG.PCW_MIO_45_DIRECTION {inout} \
CONFIG.PCW_MIO_45_IOTYPE {LVCMOS 2.5V} \
CONFIG.PCW_MIO_45_PULLUP {enabled} \
CONFIG.PCW_MIO_45_SLEW {slow} \
CONFIG.PCW_MIO_46_DIRECTION {in} \
CONFIG.PCW_MIO_46_IOTYPE {LVCMOS 2.5V} \
CONFIG.PCW_MIO_46_PULLUP {enabled} \
CONFIG.PCW_MIO_46_SLEW {slow} \
CONFIG.PCW_MIO_47_DIRECTION {in} \
CONFIG.PCW_MIO_47_IOTYPE {LVCMOS 2.5V} \
CONFIG.PCW_MIO_47_PULLUP {enabled} \
CONFIG.PCW_MIO_47_SLEW {slow} \
CONFIG.PCW_MIO_48_DIRECTION {out} \
CONFIG.PCW_MIO_48_IOTYPE {LVCMOS 2.5V} \
CONFIG.PCW_MIO_48_PULLUP {enabled} \
CONFIG.PCW_MIO_48_SLEW {slow} \
CONFIG.PCW_MIO_49_DIRECTION {inout} \
CONFIG.PCW_MIO_49_IOTYPE {LVCMOS 2.5V} \
CONFIG.PCW_MIO_49_PULLUP {enabled} \
CONFIG.PCW_MIO_49_SLEW {slow} \
CONFIG.PCW_MIO_4_DIRECTION {inout} \
CONFIG.PCW_MIO_4_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_4_PULLUP {disabled} \
CONFIG.PCW_MIO_4_SLEW {slow} \
CONFIG.PCW_MIO_50_DIRECTION {inout} \
CONFIG.PCW_MIO_50_IOTYPE {LVCMOS 2.5V} \
CONFIG.PCW_MIO_50_PULLUP {enabled} \
CONFIG.PCW_MIO_50_SLEW {slow} \
CONFIG.PCW_MIO_51_DIRECTION {inout} \
CONFIG.PCW_MIO_51_IOTYPE {LVCMOS 2.5V} \
CONFIG.PCW_MIO_51_PULLUP {enabled} \
CONFIG.PCW_MIO_51_SLEW {slow} \
CONFIG.PCW_MIO_52_DIRECTION {out} \
CONFIG.PCW_MIO_52_IOTYPE {LVCMOS 2.5V} \
CONFIG.PCW_MIO_52_PULLUP {enabled} \
CONFIG.PCW_MIO_52_SLEW {slow} \
CONFIG.PCW_MIO_53_DIRECTION {inout} \
CONFIG.PCW_MIO_53_IOTYPE {LVCMOS 2.5V} \
CONFIG.PCW_MIO_53_PULLUP {enabled} \
CONFIG.PCW_MIO_53_SLEW {slow} \
CONFIG.PCW_MIO_5_DIRECTION {inout} \
CONFIG.PCW_MIO_5_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_5_PULLUP {disabled} \
CONFIG.PCW_MIO_5_SLEW {slow} \
CONFIG.PCW_MIO_6_DIRECTION {out} \
CONFIG.PCW_MIO_6_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_6_PULLUP {disabled} \
CONFIG.PCW_MIO_6_SLEW {slow} \
CONFIG.PCW_MIO_7_DIRECTION {out} \
CONFIG.PCW_MIO_7_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_7_PULLUP {disabled} \
CONFIG.PCW_MIO_7_SLEW {slow} \
CONFIG.PCW_MIO_8_DIRECTION {out} \
CONFIG.PCW_MIO_8_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_8_PULLUP {disabled} \
CONFIG.PCW_MIO_8_SLEW {slow} \
CONFIG.PCW_MIO_9_DIRECTION {in} \
CONFIG.PCW_MIO_9_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_9_PULLUP {enabled} \
CONFIG.PCW_MIO_9_SLEW {slow} \
CONFIG.PCW_MIO_PRIMITIVE {54} \
CONFIG.PCW_MIO_TREE_PERIPHERALS {GPIO#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#GPIO#UART 1#UART 1#SPI 1#SPI 1#SPI 1#SPI 1#UART 0#UART 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#USB Reset#GPIO#I2C 0#I2C 0#Enet 0#Enet 0} \
CONFIG.PCW_MIO_TREE_SIGNALS {gpio[0]#qspi0_ss_b#qspi0_io[0]#qspi0_io[1]#qspi0_io[2]#qspi0_io[3]#qspi0_sclk#gpio[7]#tx#rx#mosi#miso#sclk#ss[0]#rx#tx#tx_clk#txd[0]#txd[1]#txd[2]#txd[3]#tx_ctl#rx_clk#rxd[0]#rxd[1]#rxd[2]#rxd[3]#rx_ctl#data[4]#dir#stp#nxt#data[0]#data[1]#data[2]#data[3]#clk#data[5]#data[6]#data[7]#clk#cmd#data[0]#data[1]#data[2]#data[3]#cd#wp#reset#gpio[49]#scl#sda#mdc#mdio} \
CONFIG.PCW_M_AXI_GP0_ENABLE_STATIC_REMAP {0} \
CONFIG.PCW_M_AXI_GP0_FREQMHZ {125} \
CONFIG.PCW_M_AXI_GP0_ID_WIDTH {12} \
CONFIG.PCW_M_AXI_GP0_SUPPORT_NARROW_BURST {0} \
CONFIG.PCW_M_AXI_GP0_THREAD_ID_WIDTH {12} \
CONFIG.PCW_M_AXI_GP1_ENABLE_STATIC_REMAP {0} \
CONFIG.PCW_M_AXI_GP1_FREQMHZ {10} \
CONFIG.PCW_M_AXI_GP1_ID_WIDTH {12} \
CONFIG.PCW_M_AXI_GP1_SUPPORT_NARROW_BURST {0} \
CONFIG.PCW_M_AXI_GP1_THREAD_ID_WIDTH {12} \
CONFIG.PCW_NAND_CYCLES_T_AR {0} \
CONFIG.PCW_NAND_CYCLES_T_CLR {0} \
CONFIG.PCW_NAND_CYCLES_T_RC {2} \
CONFIG.PCW_NAND_CYCLES_T_REA {1} \
CONFIG.PCW_NAND_CYCLES_T_RR {0} \
CONFIG.PCW_NAND_CYCLES_T_WC {2} \
CONFIG.PCW_NAND_CYCLES_T_WP {1} \
CONFIG.PCW_NAND_GRP_D8_ENABLE {0} \
CONFIG.PCW_NAND_GRP_D8_IO {<Select>} \
CONFIG.PCW_NAND_NAND_IO {<Select>} \
CONFIG.PCW_NAND_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_NOR_CS0_T_CEOE {1} \
CONFIG.PCW_NOR_CS0_T_PC {1} \
CONFIG.PCW_NOR_CS0_T_RC {2} \
CONFIG.PCW_NOR_CS0_T_TR {1} \
CONFIG.PCW_NOR_CS0_T_WC {2} \
CONFIG.PCW_NOR_CS0_T_WP {1} \
CONFIG.PCW_NOR_CS0_WE_TIME {2} \
CONFIG.PCW_NOR_CS1_T_CEOE {1} \
CONFIG.PCW_NOR_CS1_T_PC {1} \
CONFIG.PCW_NOR_CS1_T_RC {2} \
CONFIG.PCW_NOR_CS1_T_TR {1} \
CONFIG.PCW_NOR_CS1_T_WC {2} \
CONFIG.PCW_NOR_CS1_T_WP {1} \
CONFIG.PCW_NOR_CS1_WE_TIME {2} \
CONFIG.PCW_NOR_GRP_A25_ENABLE {0} \
CONFIG.PCW_NOR_GRP_A25_IO {<Select>} \
CONFIG.PCW_NOR_GRP_CS0_ENABLE {0} \
CONFIG.PCW_NOR_GRP_CS0_IO {<Select>} \
CONFIG.PCW_NOR_GRP_CS1_ENABLE {0} \
CONFIG.PCW_NOR_GRP_CS1_IO {<Select>} \
CONFIG.PCW_NOR_GRP_SRAM_CS0_ENABLE {0} \
CONFIG.PCW_NOR_GRP_SRAM_CS0_IO {<Select>} \
CONFIG.PCW_NOR_GRP_SRAM_CS1_ENABLE {0} \
CONFIG.PCW_NOR_GRP_SRAM_CS1_IO {<Select>} \
CONFIG.PCW_NOR_GRP_SRAM_INT_ENABLE {0} \
CONFIG.PCW_NOR_GRP_SRAM_INT_IO {<Select>} \
CONFIG.PCW_NOR_NOR_IO {<Select>} \
CONFIG.PCW_NOR_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_NOR_SRAM_CS0_T_CEOE {1} \
CONFIG.PCW_NOR_SRAM_CS0_T_PC {1} \
CONFIG.PCW_NOR_SRAM_CS0_T_RC {2} \
CONFIG.PCW_NOR_SRAM_CS0_T_TR {1} \
CONFIG.PCW_NOR_SRAM_CS0_T_WC {2} \
CONFIG.PCW_NOR_SRAM_CS0_T_WP {1} \
CONFIG.PCW_NOR_SRAM_CS0_WE_TIME {2} \
CONFIG.PCW_NOR_SRAM_CS1_T_CEOE {1} \
CONFIG.PCW_NOR_SRAM_CS1_T_PC {1} \
CONFIG.PCW_NOR_SRAM_CS1_T_RC {2} \
CONFIG.PCW_NOR_SRAM_CS1_T_TR {1} \
CONFIG.PCW_NOR_SRAM_CS1_T_WC {2} \
CONFIG.PCW_NOR_SRAM_CS1_T_WP {1} \
CONFIG.PCW_NOR_SRAM_CS1_WE_TIME {2} \
CONFIG.PCW_OVERRIDE_BASIC_CLOCK {0} \
CONFIG.PCW_P2F_CAN0_INTR {0} \
CONFIG.PCW_P2F_CAN1_INTR {0} \
CONFIG.PCW_P2F_CTI_INTR {0} \
CONFIG.PCW_P2F_DMAC0_INTR {0} \
CONFIG.PCW_P2F_DMAC1_INTR {0} \
CONFIG.PCW_P2F_DMAC2_INTR {0} \
CONFIG.PCW_P2F_DMAC3_INTR {0} \
CONFIG.PCW_P2F_DMAC4_INTR {0} \
CONFIG.PCW_P2F_DMAC5_INTR {0} \
CONFIG.PCW_P2F_DMAC6_INTR {0} \
CONFIG.PCW_P2F_DMAC7_INTR {0} \
CONFIG.PCW_P2F_DMAC_ABORT_INTR {0} \
CONFIG.PCW_P2F_ENET0_INTR {0} \
CONFIG.PCW_P2F_ENET1_INTR {0} \
CONFIG.PCW_P2F_GPIO_INTR {0} \
CONFIG.PCW_P2F_I2C0_INTR {0} \
CONFIG.PCW_P2F_I2C1_INTR {0} \
CONFIG.PCW_P2F_QSPI_INTR {0} \
CONFIG.PCW_P2F_SDIO0_INTR {0} \
CONFIG.PCW_P2F_SDIO1_INTR {0} \
CONFIG.PCW_P2F_SMC_INTR {0} \
CONFIG.PCW_P2F_SPI0_INTR {0} \
CONFIG.PCW_P2F_SPI1_INTR {0} \
CONFIG.PCW_P2F_UART0_INTR {0} \
CONFIG.PCW_P2F_UART1_INTR {0} \
CONFIG.PCW_P2F_USB0_INTR {0} \
CONFIG.PCW_P2F_USB1_INTR {0} \
CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY0 {0.080} \
CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY1 {0.063} \
CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY2 {0.057} \
CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY3 {0.068} \
CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_0 {-0.047} \
CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_1 {-0.025} \
CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_2 {-0.006} \
CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_3 {-0.017} \
CONFIG.PCW_PACKAGE_NAME {clg400} \
CONFIG.PCW_PCAP_PERIPHERAL_CLKSRC {1} \
CONFIG.PCW_PCAP_PERIPHERAL_DIVISOR0 {5} \
CONFIG.PCW_PCAP_PERIPHERAL_FREQMHZ {200} \
CONFIG.PCW_PERIPHERAL_BOARD_PRESET {part0} \
CONFIG.PCW_PJTAG_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_PJTAG_PJTAG_IO {<Select>} \
CONFIG.PCW_PLL_BYPASSMODE_ENABLE {0} \
CONFIG.PCW_PRESET_BANK0_VOLTAGE {LVCMOS 3.3V} \
CONFIG.PCW_PRESET_BANK1_VOLTAGE {LVCMOS 2.5V} \
CONFIG.PCW_PS7_SI_REV {PRODUCTION} \
CONFIG.PCW_QSPI_GRP_FBCLK_ENABLE {0} \
CONFIG.PCW_QSPI_GRP_FBCLK_IO {<Select>} \
CONFIG.PCW_QSPI_GRP_IO1_ENABLE {0} \
CONFIG.PCW_QSPI_GRP_IO1_IO {<Select>} \
CONFIG.PCW_QSPI_GRP_SINGLE_SS_ENABLE {1} \
CONFIG.PCW_QSPI_GRP_SINGLE_SS_IO {MIO 1 .. 6} \
CONFIG.PCW_QSPI_GRP_SS1_ENABLE {0} \
CONFIG.PCW_QSPI_GRP_SS1_IO {<Select>} \
CONFIG.PCW_QSPI_INTERNAL_HIGHADDRESS {0xFCFFFFFF} \
CONFIG.PCW_QSPI_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_QSPI_PERIPHERAL_DIVISOR0 {8} \
CONFIG.PCW_QSPI_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_QSPI_PERIPHERAL_FREQMHZ {125} \
CONFIG.PCW_QSPI_QSPI_IO {MIO 1 .. 6} \
CONFIG.PCW_SD0_GRP_CD_ENABLE {1} \
CONFIG.PCW_SD0_GRP_CD_IO {MIO 46} \
CONFIG.PCW_SD0_GRP_POW_ENABLE {0} \
CONFIG.PCW_SD0_GRP_POW_IO {<Select>} \
CONFIG.PCW_SD0_GRP_WP_ENABLE {1} \
CONFIG.PCW_SD0_GRP_WP_IO {MIO 47} \
CONFIG.PCW_SD0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_SD0_SD0_IO {MIO 40 .. 45} \
CONFIG.PCW_SD1_GRP_CD_ENABLE {0} \
CONFIG.PCW_SD1_GRP_CD_IO {<Select>} \
CONFIG.PCW_SD1_GRP_POW_ENABLE {0} \
CONFIG.PCW_SD1_GRP_POW_IO {<Select>} \
CONFIG.PCW_SD1_GRP_WP_ENABLE {0} \
CONFIG.PCW_SD1_GRP_WP_IO {<Select>} \
CONFIG.PCW_SD1_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_SD1_SD1_IO {<Select>} \
CONFIG.PCW_SDIO0_BASEADDR {0xE0100000} \
CONFIG.PCW_SDIO0_HIGHADDR {0xE0100FFF} \
CONFIG.PCW_SDIO1_BASEADDR {0xE0101000} \
CONFIG.PCW_SDIO1_HIGHADDR {0xE0101FFF} \
CONFIG.PCW_SDIO_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_SDIO_PERIPHERAL_DIVISOR0 {8} \
CONFIG.PCW_SDIO_PERIPHERAL_FREQMHZ {125} \
CONFIG.PCW_SDIO_PERIPHERAL_VALID {1} \
CONFIG.PCW_SMC_CYCLE_T0 {NA} \
CONFIG.PCW_SMC_CYCLE_T1 {NA} \
CONFIG.PCW_SMC_CYCLE_T2 {NA} \
CONFIG.PCW_SMC_CYCLE_T3 {NA} \
CONFIG.PCW_SMC_CYCLE_T4 {NA} \
CONFIG.PCW_SMC_CYCLE_T5 {NA} \
CONFIG.PCW_SMC_CYCLE_T6 {NA} \
CONFIG.PCW_SMC_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_SMC_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_SMC_PERIPHERAL_FREQMHZ {100} \
CONFIG.PCW_SMC_PERIPHERAL_VALID {0} \
CONFIG.PCW_SPI0_BASEADDR {0xE0006000} \
CONFIG.PCW_SPI0_GRP_SS0_ENABLE {1} \
CONFIG.PCW_SPI0_GRP_SS0_IO {EMIO} \
CONFIG.PCW_SPI0_GRP_SS1_ENABLE {1} \
CONFIG.PCW_SPI0_GRP_SS1_IO {EMIO} \
CONFIG.PCW_SPI0_GRP_SS2_ENABLE {1} \
CONFIG.PCW_SPI0_GRP_SS2_IO {EMIO} \
CONFIG.PCW_SPI0_HIGHADDR {0xE0006FFF} \
CONFIG.PCW_SPI0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_SPI0_SPI0_IO {EMIO} \
CONFIG.PCW_SPI1_BASEADDR {0xE0007000} \
CONFIG.PCW_SPI1_GRP_SS0_ENABLE {1} \
CONFIG.PCW_SPI1_GRP_SS0_IO {MIO 13} \
CONFIG.PCW_SPI1_GRP_SS1_ENABLE {0} \
CONFIG.PCW_SPI1_GRP_SS1_IO {<Select>} \
CONFIG.PCW_SPI1_GRP_SS2_ENABLE {0} \
CONFIG.PCW_SPI1_GRP_SS2_IO {<Select>} \
CONFIG.PCW_SPI1_HIGHADDR {0xE0007FFF} \
CONFIG.PCW_SPI1_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_SPI1_SPI1_IO {MIO 10 .. 15} \
CONFIG.PCW_SPI_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_SPI_PERIPHERAL_DIVISOR0 {6} \
CONFIG.PCW_SPI_PERIPHERAL_FREQMHZ {166.666666} \
CONFIG.PCW_SPI_PERIPHERAL_VALID {1} \
CONFIG.PCW_S_AXI_ACP_ARUSER_VAL {31} \
CONFIG.PCW_S_AXI_ACP_AWUSER_VAL {31} \
CONFIG.PCW_S_AXI_ACP_FREQMHZ {10} \
CONFIG.PCW_S_AXI_ACP_ID_WIDTH {3} \
CONFIG.PCW_S_AXI_GP0_FREQMHZ {10} \
CONFIG.PCW_S_AXI_GP0_ID_WIDTH {6} \
CONFIG.PCW_S_AXI_GP1_FREQMHZ {10} \
CONFIG.PCW_S_AXI_GP1_ID_WIDTH {6} \
CONFIG.PCW_S_AXI_HP0_DATA_WIDTH {64} \
CONFIG.PCW_S_AXI_HP0_FREQMHZ {125} \
CONFIG.PCW_S_AXI_HP0_ID_WIDTH {6} \
CONFIG.PCW_S_AXI_HP1_DATA_WIDTH {64} \
CONFIG.PCW_S_AXI_HP1_FREQMHZ {10} \
CONFIG.PCW_S_AXI_HP1_ID_WIDTH {6} \
CONFIG.PCW_S_AXI_HP2_DATA_WIDTH {64} \
CONFIG.PCW_S_AXI_HP2_FREQMHZ {10} \
CONFIG.PCW_S_AXI_HP2_ID_WIDTH {6} \
CONFIG.PCW_S_AXI_HP3_DATA_WIDTH {64} \
CONFIG.PCW_S_AXI_HP3_FREQMHZ {10} \
CONFIG.PCW_S_AXI_HP3_ID_WIDTH {6} \
CONFIG.PCW_TPIU_PERIPHERAL_CLKSRC {External} \
CONFIG.PCW_TPIU_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_TPIU_PERIPHERAL_FREQMHZ {200} \
CONFIG.PCW_TRACE_BUFFER_CLOCK_DELAY {12} \
CONFIG.PCW_TRACE_BUFFER_FIFO_SIZE {128} \
CONFIG.PCW_TRACE_GRP_16BIT_ENABLE {0} \
CONFIG.PCW_TRACE_GRP_16BIT_IO {<Select>} \
CONFIG.PCW_TRACE_GRP_2BIT_ENABLE {0} \
CONFIG.PCW_TRACE_GRP_2BIT_IO {<Select>} \
CONFIG.PCW_TRACE_GRP_32BIT_ENABLE {0} \
CONFIG.PCW_TRACE_GRP_32BIT_IO {<Select>} \
CONFIG.PCW_TRACE_GRP_4BIT_ENABLE {0} \
CONFIG.PCW_TRACE_GRP_4BIT_IO {<Select>} \
CONFIG.PCW_TRACE_GRP_8BIT_ENABLE {0} \
CONFIG.PCW_TRACE_GRP_8BIT_IO {<Select>} \
CONFIG.PCW_TRACE_INTERNAL_WIDTH {32} \
CONFIG.PCW_TRACE_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_TRACE_PIPELINE_WIDTH {8} \
CONFIG.PCW_TRACE_TRACE_IO {<Select>} \
CONFIG.PCW_TTC0_BASEADDR {0xE0104000} \
CONFIG.PCW_TTC0_CLK0_PERIPHERAL_CLKSRC {CPU_1X} \
CONFIG.PCW_TTC0_CLK0_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_TTC0_CLK0_PERIPHERAL_FREQMHZ {133.333333} \
CONFIG.PCW_TTC0_CLK1_PERIPHERAL_CLKSRC {CPU_1X} \
CONFIG.PCW_TTC0_CLK1_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_TTC0_CLK1_PERIPHERAL_FREQMHZ {133.333333} \
CONFIG.PCW_TTC0_CLK2_PERIPHERAL_CLKSRC {CPU_1X} \
CONFIG.PCW_TTC0_CLK2_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_TTC0_CLK2_PERIPHERAL_FREQMHZ {133.333333} \
CONFIG.PCW_TTC0_HIGHADDR {0xE0104fff} \
CONFIG.PCW_TTC0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_TTC0_TTC0_IO {EMIO} \
CONFIG.PCW_TTC1_BASEADDR {0xE0105000} \
CONFIG.PCW_TTC1_CLK0_PERIPHERAL_CLKSRC {CPU_1X} \
CONFIG.PCW_TTC1_CLK0_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_TTC1_CLK0_PERIPHERAL_FREQMHZ {133.333333} \
CONFIG.PCW_TTC1_CLK1_PERIPHERAL_CLKSRC {CPU_1X} \
CONFIG.PCW_TTC1_CLK1_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_TTC1_CLK1_PERIPHERAL_FREQMHZ {133.333333} \
CONFIG.PCW_TTC1_CLK2_PERIPHERAL_CLKSRC {CPU_1X} \
CONFIG.PCW_TTC1_CLK2_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_TTC1_CLK2_PERIPHERAL_FREQMHZ {133.333333} \
CONFIG.PCW_TTC1_HIGHADDR {0xE0105fff} \
CONFIG.PCW_TTC1_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_TTC1_TTC1_IO {<Select>} \
CONFIG.PCW_TTC_PERIPHERAL_FREQMHZ {50} \
CONFIG.PCW_UART0_BASEADDR {0xE0000000} \
CONFIG.PCW_UART0_BAUD_RATE {115200} \
CONFIG.PCW_UART0_GRP_FULL_ENABLE {0} \
CONFIG.PCW_UART0_GRP_FULL_IO {<Select>} \
CONFIG.PCW_UART0_HIGHADDR {0xE0000FFF} \
CONFIG.PCW_UART0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_UART0_UART0_IO {MIO 14 .. 15} \
CONFIG.PCW_UART1_BASEADDR {0xE0001000} \
CONFIG.PCW_UART1_BAUD_RATE {115200} \
CONFIG.PCW_UART1_GRP_FULL_ENABLE {0} \
CONFIG.PCW_UART1_GRP_FULL_IO {<Select>} \
CONFIG.PCW_UART1_HIGHADDR {0xE0001FFF} \
CONFIG.PCW_UART1_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_UART1_UART1_IO {MIO 8 .. 9} \
CONFIG.PCW_UART_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_UART_PERIPHERAL_DIVISOR0 {10} \
CONFIG.PCW_UART_PERIPHERAL_FREQMHZ {100} \
CONFIG.PCW_UART_PERIPHERAL_VALID {1} \
CONFIG.PCW_UIPARAM_ACT_DDR_FREQ_MHZ {533.333374} \
CONFIG.PCW_UIPARAM_DDR_ADV_ENABLE {0} \
CONFIG.PCW_UIPARAM_DDR_AL {0} \
CONFIG.PCW_UIPARAM_DDR_BANK_ADDR_COUNT {3} \
CONFIG.PCW_UIPARAM_DDR_BL {8} \
CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY0 {0.0} \
CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY1 {0.0} \
CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY2 {0.0} \
CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY3 {0.0} \
CONFIG.PCW_UIPARAM_DDR_BUS_WIDTH {16 Bit} \
CONFIG.PCW_UIPARAM_DDR_CL {7} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_0_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_0_PACKAGE_LENGTH {54.563} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_0_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_1_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_1_PACKAGE_LENGTH {54.563} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_1_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_2_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_2_PACKAGE_LENGTH {54.563} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_2_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_3_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_3_PACKAGE_LENGTH {54.563} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_3_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_STOP_EN {0} \
CONFIG.PCW_UIPARAM_DDR_COL_ADDR_COUNT {10} \
CONFIG.PCW_UIPARAM_DDR_CWL {6} \
CONFIG.PCW_UIPARAM_DDR_DEVICE_CAPACITY {4096 MBits} \
CONFIG.PCW_UIPARAM_DDR_DQS_0_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_DQS_0_PACKAGE_LENGTH {101.239} \
CONFIG.PCW_UIPARAM_DDR_DQS_0_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_DQS_1_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_DQS_1_PACKAGE_LENGTH {79.5025} \
CONFIG.PCW_UIPARAM_DDR_DQS_1_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_DQS_2_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_DQS_2_PACKAGE_LENGTH {60.536} \
CONFIG.PCW_UIPARAM_DDR_DQS_2_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_DQS_3_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_DQS_3_PACKAGE_LENGTH {71.7715} \
CONFIG.PCW_UIPARAM_DDR_DQS_3_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_0 {0.0} \
CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_1 {0.0} \
CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_2 {0.0} \
CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_3 {0.0} \
CONFIG.PCW_UIPARAM_DDR_DQ_0_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_DQ_0_PACKAGE_LENGTH {104.5365} \
CONFIG.PCW_UIPARAM_DDR_DQ_0_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_DQ_1_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_DQ_1_PACKAGE_LENGTH {70.676} \
CONFIG.PCW_UIPARAM_DDR_DQ_1_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_DQ_2_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_DQ_2_PACKAGE_LENGTH {59.1615} \
CONFIG.PCW_UIPARAM_DDR_DQ_2_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_DQ_3_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_DQ_3_PACKAGE_LENGTH {81.319} \
CONFIG.PCW_UIPARAM_DDR_DQ_3_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_DRAM_WIDTH {16 Bits} \
CONFIG.PCW_UIPARAM_DDR_ECC {Disabled} \
CONFIG.PCW_UIPARAM_DDR_ENABLE {1} \
CONFIG.PCW_UIPARAM_DDR_FREQ_MHZ {533.333333} \
CONFIG.PCW_UIPARAM_DDR_HIGH_TEMP {Normal (0-85)} \
CONFIG.PCW_UIPARAM_DDR_MEMORY_TYPE {DDR 3} \
CONFIG.PCW_UIPARAM_DDR_PARTNO {MT41J256M16 RE-125} \
CONFIG.PCW_UIPARAM_DDR_ROW_ADDR_COUNT {15} \
CONFIG.PCW_UIPARAM_DDR_SPEED_BIN {DDR3_1066F} \
CONFIG.PCW_UIPARAM_DDR_TRAIN_DATA_EYE {0} \
CONFIG.PCW_UIPARAM_DDR_TRAIN_READ_GATE {0} \
CONFIG.PCW_UIPARAM_DDR_TRAIN_WRITE_LEVEL {0} \
CONFIG.PCW_UIPARAM_DDR_T_FAW {40.0} \
CONFIG.PCW_UIPARAM_DDR_T_RAS_MIN {35.0} \
CONFIG.PCW_UIPARAM_DDR_T_RC {48.91} \
CONFIG.PCW_UIPARAM_DDR_T_RCD {7} \
CONFIG.PCW_UIPARAM_DDR_T_RP {7} \
CONFIG.PCW_UIPARAM_DDR_USE_INTERNAL_VREF {0} \
CONFIG.PCW_UIPARAM_GENERATE_SUMMARY {NA} \
CONFIG.PCW_USB0_BASEADDR {0xE0102000} \
CONFIG.PCW_USB0_HIGHADDR {0xE0102fff} \
CONFIG.PCW_USB0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_USB0_PERIPHERAL_FREQMHZ {60} \
CONFIG.PCW_USB0_RESET_ENABLE {1} \
CONFIG.PCW_USB0_RESET_IO {MIO 48} \
CONFIG.PCW_USB0_USB0_IO {MIO 28 .. 39} \
CONFIG.PCW_USB1_BASEADDR {0xE0103000} \
CONFIG.PCW_USB1_HIGHADDR {0xE0103fff} \
CONFIG.PCW_USB1_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_USB1_PERIPHERAL_FREQMHZ {60} \
CONFIG.PCW_USB1_RESET_ENABLE {0} \
CONFIG.PCW_USB1_RESET_IO {<Select>} \
CONFIG.PCW_USB1_USB1_IO {<Select>} \
CONFIG.PCW_USB_RESET_ENABLE {1} \
CONFIG.PCW_USB_RESET_POLARITY {Active Low} \
CONFIG.PCW_USB_RESET_SELECT {Share reset pin} \
CONFIG.PCW_USE_AXI_FABRIC_IDLE {0} \
CONFIG.PCW_USE_CORESIGHT {0} \
CONFIG.PCW_USE_CROSS_TRIGGER {0} \
CONFIG.PCW_USE_CR_FABRIC {1} \
CONFIG.PCW_USE_DDR_BYPASS {0} \
CONFIG.PCW_USE_DEBUG {0} \
CONFIG.PCW_USE_DEFAULT_ACP_USER_VAL {0} \
CONFIG.PCW_USE_DMA0 {0} \
CONFIG.PCW_USE_DMA1 {0} \
CONFIG.PCW_USE_DMA2 {0} \
CONFIG.PCW_USE_DMA3 {0} \
CONFIG.PCW_USE_EXPANDED_IOP {0} \
CONFIG.PCW_USE_EXPANDED_PS_SLCR_REGISTERS {0} \
CONFIG.PCW_USE_FABRIC_INTERRUPT {0} \
CONFIG.PCW_USE_HIGH_OCM {0} \
CONFIG.PCW_USE_M_AXI_GP0 {1} \
CONFIG.PCW_USE_M_AXI_GP1 {0} \
CONFIG.PCW_USE_PROC_EVENT_BUS {0} \
CONFIG.PCW_USE_PS_SLCR_REGISTERS {0} \
CONFIG.PCW_USE_S_AXI_ACP {0} \
CONFIG.PCW_USE_S_AXI_GP0 {0} \
CONFIG.PCW_USE_S_AXI_GP1 {0} \
CONFIG.PCW_USE_S_AXI_HP0 {0} \
CONFIG.PCW_USE_S_AXI_HP1 {0} \
CONFIG.PCW_USE_S_AXI_HP2 {0} \
CONFIG.PCW_USE_S_AXI_HP3 {0} \
CONFIG.PCW_USE_TRACE {0} \
CONFIG.PCW_USE_TRACE_DATA_EDGE_DETECTOR {0} \
CONFIG.PCW_VALUE_SILVERSION {3} \
CONFIG.PCW_WDT_PERIPHERAL_CLKSRC {CPU_1X} \
CONFIG.PCW_WDT_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_WDT_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_WDT_PERIPHERAL_FREQMHZ {133.333333} \
CONFIG.PCW_WDT_WDT_IO {<Select>} \
 ] $processing_system7_0

  # Need to retain value_src of defaults
  set_property -dict [ list \
CONFIG.PCW_PLL_BYPASSMODE_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UART_PERIPHERAL_VALID.VALUE_SRC {DEFAULT} \
 ] $processing_system7_0

  # Create instance: redpitaya_adc_dac_clk_0, and set properties
  set redpitaya_adc_dac_clk_0 [ create_bd_cell -type ip -vlnv ggm:cogen:redpitaya_adc_dac_clk:1.0 redpitaya_adc_dac_clk_0 ]

  # Create instance: switchComplex_0, and set properties
  set switchComplex_0 [ create_bd_cell -type ip -vlnv ggm:cogen:switchComplex:1.0 switchComplex_0 ]
  set_property -dict [ list \
CONFIG.DATA_SIZE {14} \
 ] $switchComplex_0

  # Create instance: switchComplex_1, and set properties
  set switchComplex_1 [ create_bd_cell -type ip -vlnv ggm:cogen:switchComplex:1.0 switchComplex_1 ]
  set_property -dict [ list \
CONFIG.DATA_SIZE {14} \
 ] $switchComplex_1

  # Create instance: twoInMult_dds1_ampl, and set properties
  set twoInMult_dds1_ampl [ create_bd_cell -type ip -vlnv ggm:cogen:twoInMult:1.0 twoInMult_dds1_ampl ]
  set_property -dict [ list \
CONFIG.DATA_SIZE {14} \
 ] $twoInMult_dds1_ampl

  # Create instance: twoInMult_dds1_range, and set properties
  set twoInMult_dds1_range [ create_bd_cell -type ip -vlnv ggm:cogen:twoInMult:1.0 twoInMult_dds1_range ]
  set_property -dict [ list \
CONFIG.DATA_SIZE {14} \
CONFIG.format {signed} \
 ] $twoInMult_dds1_range

  # Create instance: twoInMult_mod_input_0, and set properties
  set twoInMult_mod_input_0 [ create_bd_cell -type ip -vlnv ggm:cogen:twoInMult:1.0 twoInMult_mod_input_0 ]
  set_property -dict [ list \
CONFIG.DATA_SIZE {14} \
 ] $twoInMult_mod_input_0

  # Create instance: twoInMult_mod_out_pid2, and set properties
  set twoInMult_mod_out_pid2 [ create_bd_cell -type ip -vlnv ggm:cogen:twoInMult:1.0 twoInMult_mod_out_pid2 ]
  set_property -dict [ list \
CONFIG.DATA_SIZE {14} \
 ] $twoInMult_mod_out_pid2

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
CONFIG.CONST_WIDTH {14} \
 ] $xlconstant_0

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
 ] $xlconstant_1

  # Create instance: xlslice_dds1, and set properties
  set xlslice_dds1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_dds1 ]
  set_property -dict [ list \
CONFIG.DIN_FROM {26} \
CONFIG.DIN_TO {13} \
CONFIG.DIN_WIDTH {28} \
CONFIG.DOUT_WIDTH {14} \
 ] $xlslice_dds1

  # Create instance: xlslice_mod_input_0, and set properties
  set xlslice_mod_input_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_mod_input_0 ]
  set_property -dict [ list \
CONFIG.DIN_FROM {13} \
CONFIG.DIN_TO {0} \
CONFIG.DIN_WIDTH {15} \
CONFIG.DOUT_WIDTH {14} \
 ] $xlslice_mod_input_0

  # Create instance: xlslice_mod_input_1, and set properties
  set xlslice_mod_input_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_mod_input_1 ]
  set_property -dict [ list \
CONFIG.DIN_FROM {26} \
CONFIG.DIN_TO {13} \
CONFIG.DIN_WIDTH {28} \
CONFIG.DOUT_WIDTH {14} \
 ] $xlslice_mod_input_1

  # Create instance: xlslice_mod_out_pid2_0, and set properties
  set xlslice_mod_out_pid2_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_mod_out_pid2_0 ]
  set_property -dict [ list \
CONFIG.DIN_FROM {13} \
CONFIG.DIN_TO {0} \
CONFIG.DIN_WIDTH {15} \
CONFIG.DOUT_WIDTH {14} \
 ] $xlslice_mod_out_pid2_0

  # Create instance: xlslice_mod_out_pid2_1, and set properties
  set xlslice_mod_out_pid2_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_mod_out_pid2_1 ]
  set_property -dict [ list \
CONFIG.DIN_FROM {26} \
CONFIG.DIN_TO {13} \
CONFIG.DIN_WIDTH {28} \
CONFIG.DOUT_WIDTH {14} \
 ] $xlslice_mod_out_pid2_1

  # Create interface connections
  connect_bd_intf_net -intf_net adc1_offset_data_out [get_bd_intf_pins adc1_offset/data_out] [get_bd_intf_pins adder_substracter_mod_input_0/data1]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins axi_interconnect_0/M00_AXI] [get_bd_intf_pins dds1_range/s00_axi]
  connect_bd_intf_net -intf_net axi_interconnect_0_M01_AXI [get_bd_intf_pins adc1_offset/s00_axi] [get_bd_intf_pins axi_interconnect_0/M01_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M02_AXI [get_bd_intf_pins axi_interconnect_0/M02_AXI] [get_bd_intf_pins switchComplex_0/s00_axi]
  connect_bd_intf_net -intf_net axi_interconnect_0_M03_AXI [get_bd_intf_pins axi_interconnect_0/M03_AXI] [get_bd_intf_pins pid1_kp/s00_axi]
  connect_bd_intf_net -intf_net axi_interconnect_0_M04_AXI [get_bd_intf_pins axi_interconnect_0/M04_AXI] [get_bd_intf_pins pid1_ki/s00_axi]
  connect_bd_intf_net -intf_net axi_interconnect_0_M05_AXI [get_bd_intf_pins axi_interconnect_0/M05_AXI] [get_bd_intf_pins pid1_kd/s00_axi]
  connect_bd_intf_net -intf_net axi_interconnect_0_M06_AXI [get_bd_intf_pins axi_interconnect_0/M06_AXI] [get_bd_intf_pins pid1_rst_int/s00_axi]
  connect_bd_intf_net -intf_net axi_interconnect_0_M07_AXI [get_bd_intf_pins axi_interconnect_0/M07_AXI] [get_bd_intf_pins pid1_sign/s00_axi]
  connect_bd_intf_net -intf_net axi_interconnect_0_M08_AXI [get_bd_intf_pins axi_interconnect_0/M08_AXI] [get_bd_intf_pins dds1_ampl/s00_axi]
  connect_bd_intf_net -intf_net axi_interconnect_0_M09_AXI [get_bd_intf_pins axi_interconnect_0/M09_AXI] [get_bd_intf_pins dds1_nco/s00_axi]
  connect_bd_intf_net -intf_net axi_interconnect_0_M10_AXI [get_bd_intf_pins axi_interconnect_0/M10_AXI] [get_bd_intf_pins dds1_offset/s00_axi]
  connect_bd_intf_net -intf_net axi_interconnect_0_M11_AXI [get_bd_intf_pins axi_interconnect_0/M11_AXI] [get_bd_intf_pins dds1_f0/s00_axi]
  connect_bd_intf_net -intf_net axi_interconnect_0_M12_AXI [get_bd_intf_pins axi_interconnect_0/M12_AXI] [get_bd_intf_pins pid1_setpoint/s00_axi]
  connect_bd_intf_net -intf_net axi_interconnect_0_M13_AXI [get_bd_intf_pins axi_interconnect_0/M13_AXI] [get_bd_intf_pins pid2_setpoint/s00_axi]
  connect_bd_intf_net -intf_net axi_interconnect_0_M14_AXI [get_bd_intf_pins axi_interconnect_0/M14_AXI] [get_bd_intf_pins pid2_kp/s00_axi]
  connect_bd_intf_net -intf_net axi_interconnect_0_M15_AXI [get_bd_intf_pins axi_interconnect_0/M15_AXI] [get_bd_intf_pins pid2_ki/s00_axi]
  connect_bd_intf_net -intf_net axi_interconnect_0_M16_AXI [get_bd_intf_pins axi_interconnect_0/M16_AXI] [get_bd_intf_pins pid2_sign/s00_axi]
  connect_bd_intf_net -intf_net axi_interconnect_0_M17_AXI [get_bd_intf_pins axi_interconnect_0/M17_AXI] [get_bd_intf_pins pid2_rst_int/s00_axi]
  connect_bd_intf_net -intf_net axi_interconnect_0_M18_AXI [get_bd_intf_pins axi_interconnect_0/M18_AXI] [get_bd_intf_pins pid2_kd/s00_axi]
  connect_bd_intf_net -intf_net axi_interconnect_0_M19_AXI [get_bd_intf_pins axi_interconnect_0/M19_AXI] [get_bd_intf_pins mod_input_ampl/s00_axi]
  connect_bd_intf_net -intf_net axi_interconnect_0_M20_AXI [get_bd_intf_pins axi_interconnect_0/M20_AXI] [get_bd_intf_pins mod_input_nco/s00_axi]
  connect_bd_intf_net -intf_net axi_interconnect_0_M21_AXI [get_bd_intf_pins axi_interconnect_0/M21_AXI] [get_bd_intf_pins mod_out_pid2_ampl/s00_axi]
  connect_bd_intf_net -intf_net axi_interconnect_0_M22_AXI [get_bd_intf_pins axi_interconnect_0/M22_AXI] [get_bd_intf_pins mod_out_pid2_nco/s00_axi]
  connect_bd_intf_net -intf_net axi_interconnect_0_M23_AXI [get_bd_intf_pins axi_interconnect_0/M23_AXI] [get_bd_intf_pins pid2_offset/s00_axi]
  connect_bd_intf_net -intf_net axi_interconnect_0_M24_AXI [get_bd_intf_pins axi_interconnect_0/M24_AXI] [get_bd_intf_pins switchComplex_1/s00_axi]
  connect_bd_intf_net -intf_net dds2_offset_data_out [get_bd_intf_pins ad9767_0/dataB] [get_bd_intf_pins pid2_offset/data_out]
  connect_bd_intf_net -intf_net dds_ampl_data_out [get_bd_intf_pins dds1_ampl/data_out] [get_bd_intf_pins twoInMult_dds1_ampl/data2]
  connect_bd_intf_net -intf_net dds_ampl_data_out1 [get_bd_intf_pins mod_input_ampl/data_out] [get_bd_intf_pins twoInMult_mod_input_0/data2]
  connect_bd_intf_net -intf_net dds_f0_data_out [get_bd_intf_pins dds1_f0/data_out] [get_bd_intf_pins dds1_nco/pinc_in]
  connect_bd_intf_net -intf_net dds_offset_data_out [get_bd_intf_pins ad9767_0/dataA] [get_bd_intf_pins dds1_offset/data_out]
  connect_bd_intf_net -intf_net dds_range_data_out [get_bd_intf_pins dds1_range/data_out] [get_bd_intf_pins twoInMult_dds1_range/data2]
  connect_bd_intf_net -intf_net dupplReal_1_to_2_0_data1_out [get_bd_intf_pins dupplReal_1_to_2_0/data1_out] [get_bd_intf_pins dupplReal_1_to_2_2/data_in]
  connect_bd_intf_net -intf_net dupplReal_1_to_2_2_data1_out [get_bd_intf_pins dupplReal_1_to_2_2/data1_out] [get_bd_intf_pins pid1/data_in]
  connect_bd_intf_net -intf_net expanderReal_0_data_out [get_bd_intf_pins dds1_f0/data_in] [get_bd_intf_pins expanderReal_0_dds1/data_out]
  connect_bd_intf_net -intf_net mod_input_ampl1_data_out [get_bd_intf_pins mod_out_pid2_ampl/data_out] [get_bd_intf_pins twoInMult_mod_out_pid2/data2]
  connect_bd_intf_net -intf_net pid1_data_out [get_bd_intf_pins dupplReal_1_to_2_1/data_in] [get_bd_intf_pins pid1/data_out]
  connect_bd_intf_net -intf_net pid1_ki_data_out [get_bd_intf_pins expanderReal_0_ki_pid1/data_in] [get_bd_intf_pins pid1_ki/data_out]
  connect_bd_intf_net -intf_net pid2_data_out [get_bd_intf_pins adder_substracter_mod_out_pid2/data1] [get_bd_intf_pins pid2/data_out]
  connect_bd_intf_net -intf_net pid2_ki_data_out [get_bd_intf_pins expanderReal_0_ki_pid2/data_in] [get_bd_intf_pins pid2_ki/data_out]
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins processing_system7_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins processing_system7_0/FIXED_IO]
  connect_bd_intf_net -intf_net processing_system7_0_M_AXI_GP0 [get_bd_intf_pins axi_interconnect_0/S00_AXI] [get_bd_intf_pins processing_system7_0/M_AXI_GP0]

  # Create port connections
  connect_bd_net -net ad9767_0_dac_clk_o [get_bd_ports dac_clk_o] [get_bd_pins ad9767_0/dac_clk_o]
  connect_bd_net -net ad9767_0_dac_dat_o [get_bd_ports dac_dat_o] [get_bd_pins ad9767_0/dac_dat_o]
  connect_bd_net -net ad9767_0_dac_rst_o [get_bd_ports dac_rst_o] [get_bd_pins ad9767_0/dac_rst_o]
  connect_bd_net -net ad9767_0_dac_sel_o [get_bd_ports dac_sel_o] [get_bd_pins ad9767_0/dac_sel_o]
  connect_bd_net -net ad9767_0_dac_wrt_o [get_bd_ports dac_wrt_o] [get_bd_pins ad9767_0/dac_wrt_o]
  connect_bd_net -net adc_clk_n_i_1 [get_bd_ports adc_clk_n_i] [get_bd_pins redpitaya_adc_dac_clk_0/adc_clk_n_i]
  connect_bd_net -net adc_clk_p_i_1 [get_bd_ports adc_clk_p_i] [get_bd_pins redpitaya_adc_dac_clk_0/adc_clk_p_i]
  connect_bd_net -net adc_data_a_i_1 [get_bd_ports adc_data_a_i] [get_bd_pins ltc2145_0/adc_data_a_i]
  connect_bd_net -net adc_data_b_i_1 [get_bd_ports adc_data_b_i] [get_bd_pins ltc2145_0/adc_data_b_i]
  connect_bd_net -net adder_substracter_0_data_clk_o [get_bd_pins adder_substracter_mod_input_0/data_clk_o] [get_bd_pins dupplReal_1_to_2_0/data_clk_i]
  connect_bd_net -net adder_substracter_0_data_en_o [get_bd_pins adder_substracter_mod_input_0/data_en_o] [get_bd_pins dupplReal_1_to_2_0/data_en_i]
  connect_bd_net -net adder_substracter_0_data_o [get_bd_pins adder_substracter_mod_input_0/data_o] [get_bd_pins xlslice_mod_input_0/Din]
  connect_bd_net -net adder_substracter_0_data_rst_o [get_bd_pins adder_substracter_mod_input_0/data_rst_o] [get_bd_pins dupplReal_1_to_2_0/data_rst_i]
  connect_bd_net -net adder_substracter_mod_input_1_data_o [get_bd_pins adder_substracter_mod_out_pid2/data_o] [get_bd_pins xlslice_mod_out_pid2_0/Din]
  connect_bd_net -net adder_substracter_mod_out_pid2_data_clk_o [get_bd_pins adder_substracter_mod_out_pid2/data_clk_o] [get_bd_pins pid2_offset/data_clk_i]
  connect_bd_net -net adder_substracter_mod_out_pid2_data_en_o [get_bd_pins adder_substracter_mod_out_pid2/data_en_o] [get_bd_pins pid2_offset/data_en_i]
  connect_bd_net -net adder_substracter_mod_out_pid2_data_rst_o [get_bd_pins adder_substracter_mod_out_pid2/data_rst_o] [get_bd_pins pid2_offset/data_rst_i]
  connect_bd_net -net dupplReal_1_to_2_0_data2_clk_o [get_bd_pins dupplReal_1_to_2_0/data2_clk_o] [get_bd_pins switchComplex_0/data1_clk_i]
  connect_bd_net -net dupplReal_1_to_2_0_data2_en_o [get_bd_pins dupplReal_1_to_2_0/data2_en_o] [get_bd_pins switchComplex_0/data1_en_i]
  connect_bd_net -net dupplReal_1_to_2_0_data2_o [get_bd_pins dupplReal_1_to_2_0/data2_o] [get_bd_pins switchComplex_0/data1_q_i]
  connect_bd_net -net dupplReal_1_to_2_0_data2_rst_o [get_bd_pins dupplReal_1_to_2_0/data2_rst_o] [get_bd_pins switchComplex_0/data1_rst_i]
  connect_bd_net -net dupplReal_1_to_2_1_data1_o [get_bd_pins dupplReal_1_to_2_1/data1_o] [get_bd_pins twoInMult_dds1_range/data1_i]
  connect_bd_net -net dupplReal_1_to_2_1_data1_rst_o [get_bd_pins dds1_range/data_rst_i] [get_bd_pins dupplReal_1_to_2_1/data1_rst_o] [get_bd_pins expanderReal_0_dds1/data_rst_i]
  connect_bd_net -net dupplReal_1_to_2_1_data2_clk_o [get_bd_pins dupplReal_1_to_2_1/data2_clk_o] [get_bd_pins switchComplex_0/data2_clk_i]
  connect_bd_net -net dupplReal_1_to_2_1_data2_en_o [get_bd_pins dupplReal_1_to_2_1/data2_en_o] [get_bd_pins switchComplex_0/data2_en_i]
  connect_bd_net -net dupplReal_1_to_2_1_data2_o [get_bd_pins dupplReal_1_to_2_1/data2_o] [get_bd_pins switchComplex_0/data2_q_i]
  connect_bd_net -net dupplReal_1_to_2_1_data2_rst_o [get_bd_pins dupplReal_1_to_2_1/data2_rst_o] [get_bd_pins switchComplex_0/data2_rst_i]
  connect_bd_net -net dupplReal_1_to_2_2_data2_clk_o [get_bd_pins dupplReal_1_to_2_2/data2_clk_o] [get_bd_pins switchComplex_1/data2_clk_i]
  connect_bd_net -net dupplReal_1_to_2_2_data2_en_o [get_bd_pins dupplReal_1_to_2_2/data2_en_o] [get_bd_pins switchComplex_1/data2_en_i]
  connect_bd_net -net dupplReal_1_to_2_2_data2_o [get_bd_pins dupplReal_1_to_2_2/data2_o] [get_bd_pins switchComplex_1/data2_q_i]
  connect_bd_net -net dupplReal_1_to_2_2_data2_rst_o [get_bd_pins dupplReal_1_to_2_2/data2_rst_o] [get_bd_pins switchComplex_1/data2_rst_i]
  connect_bd_net -net expanderReal_0_dds2_data_o [get_bd_pins expanderReal_0_ki_pid1/data_o] [get_bd_pins pid1/ki_i]
  connect_bd_net -net expanderReal_0_ki_pid2_data_o [get_bd_pins expanderReal_0_ki_pid2/data_o] [get_bd_pins pid2/ki_i]
  connect_bd_net -net ltc2145_0_adc_cdcs [get_bd_ports adc_cdcs] [get_bd_pins ltc2145_0/adc_cdcs]
  connect_bd_net -net ltc2145_0_adc_clk [get_bd_pins dds1_nco/ref_clk_i] [get_bd_pins ltc2145_0/adc_clk] [get_bd_pins mod_input_nco/ref_clk_i] [get_bd_pins mod_out_pid2_nco/ref_clk_i]
  connect_bd_net -net ltc2145_0_data_a_clk_o [get_bd_pins adc1_offset/data_clk_i] [get_bd_pins ltc2145_0/data_a_clk_o] [get_bd_pins pid1_kd/data_clk_i] [get_bd_pins pid1_ki/data_clk_i] [get_bd_pins pid1_kp/data_clk_i] [get_bd_pins pid1_rst_int/data_clk_i] [get_bd_pins pid1_setpoint/data_clk_i] [get_bd_pins pid1_sign/data_clk_i] [get_bd_pins pid2_kd/data_clk_i] [get_bd_pins pid2_ki/data_clk_i] [get_bd_pins pid2_kp/data_clk_i] [get_bd_pins pid2_rst_int/data_clk_i] [get_bd_pins pid2_setpoint/data_clk_i] [get_bd_pins pid2_sign/data_clk_i]
  connect_bd_net -net ltc2145_0_data_a_en_o [get_bd_pins adc1_offset/data_en_i] [get_bd_pins ltc2145_0/data_a_en_o] [get_bd_pins pid1_kd/data_en_i] [get_bd_pins pid1_ki/data_en_i] [get_bd_pins pid1_kp/data_en_i] [get_bd_pins pid1_rst_int/data_en_i] [get_bd_pins pid1_setpoint/data_en_i] [get_bd_pins pid1_sign/data_en_i] [get_bd_pins pid2_kd/data_en_i] [get_bd_pins pid2_ki/data_en_i] [get_bd_pins pid2_kp/data_en_i] [get_bd_pins pid2_rst_int/data_en_i] [get_bd_pins pid2_setpoint/data_en_i] [get_bd_pins pid2_sign/data_en_i]
  connect_bd_net -net ltc2145_0_data_a_o [get_bd_pins adc1_offset/data_i] [get_bd_pins ltc2145_0/data_a_o]
  connect_bd_net -net ltc2145_0_data_a_rst_o [get_bd_pins adc1_offset/data_rst_i] [get_bd_pins ltc2145_0/data_a_rst_o] [get_bd_pins pid1_kd/data_rst_i] [get_bd_pins pid1_ki/data_rst_i] [get_bd_pins pid1_kp/data_rst_i] [get_bd_pins pid1_rst_int/data_rst_i] [get_bd_pins pid1_setpoint/data_rst_i] [get_bd_pins pid1_sign/data_rst_i] [get_bd_pins pid2_kd/data_rst_i] [get_bd_pins pid2_ki/data_rst_i] [get_bd_pins pid2_kp/data_rst_i] [get_bd_pins pid2_rst_int/data_rst_i] [get_bd_pins pid2_setpoint/data_rst_i] [get_bd_pins pid2_sign/data_rst_i]
  connect_bd_net -net mod_input_nco1_dds_clk_o [get_bd_pins mod_out_pid2_ampl/data_clk_i] [get_bd_pins mod_out_pid2_nco/dds_clk_o] [get_bd_pins twoInMult_mod_out_pid2/data1_clk_i]
  connect_bd_net -net mod_input_nco1_dds_en_o [get_bd_pins mod_out_pid2_ampl/data_en_i] [get_bd_pins mod_out_pid2_nco/dds_en_o] [get_bd_pins twoInMult_mod_out_pid2/data1_en_i]
  connect_bd_net -net mod_input_nco1_dds_rst_o [get_bd_pins adder_substracter_mod_out_pid2/data2_rst_i] [get_bd_pins mod_out_pid2_ampl/data_rst_i] [get_bd_pins mod_out_pid2_nco/dds_rst_o]
  connect_bd_net -net mod_input_nco1_dds_sin_o [get_bd_pins mod_out_pid2_nco/dds_sin_o] [get_bd_pins twoInMult_mod_out_pid2/data1_i]
  connect_bd_net -net mod_input_nco_dds_rst_o [get_bd_pins adder_substracter_mod_input_0/data2_rst_i] [get_bd_pins mod_input_ampl/data_rst_i] [get_bd_pins mod_input_nco/dds_rst_o]
  connect_bd_net -net nco_counter_0_dds_clk_o [get_bd_pins dds1_ampl/data_clk_i] [get_bd_pins dds1_nco/dds_clk_o] [get_bd_pins twoInMult_dds1_ampl/data1_clk_i]
  connect_bd_net -net nco_counter_0_dds_clk_o1 [get_bd_pins mod_input_ampl/data_clk_i] [get_bd_pins mod_input_nco/dds_clk_o] [get_bd_pins twoInMult_mod_input_0/data1_clk_i]
  connect_bd_net -net nco_counter_0_dds_en_o [get_bd_pins dds1_ampl/data_en_i] [get_bd_pins dds1_nco/dds_en_o] [get_bd_pins twoInMult_dds1_ampl/data1_en_i]
  connect_bd_net -net nco_counter_0_dds_en_o1 [get_bd_pins mod_input_ampl/data_en_i] [get_bd_pins mod_input_nco/dds_en_o] [get_bd_pins twoInMult_mod_input_0/data1_en_i]
  connect_bd_net -net nco_counter_0_dds_sin_o [get_bd_pins dds1_nco/dds_sin_o] [get_bd_pins twoInMult_dds1_ampl/data1_i]
  connect_bd_net -net nco_counter_0_dds_sin_o1 [get_bd_pins mod_input_nco/dds_sin_o] [get_bd_pins twoInMult_mod_input_0/data1_i]
  connect_bd_net -net pid2_kd_data_o [get_bd_pins pid2/kd_i] [get_bd_pins pid2_kd/data_o]
  connect_bd_net -net pid2_kp_data_o [get_bd_pins pid2/kp_i] [get_bd_pins pid2_kp/data_o]
  connect_bd_net -net pid2_rst_int_data_o [get_bd_pins pid2/int_rst_i] [get_bd_pins pid2_rst_int/data_o]
  connect_bd_net -net pid2_setpoint_data_o [get_bd_pins pid2/setpoint_i] [get_bd_pins pid2_setpoint/data_o]
  connect_bd_net -net pid2_sign_data_o [get_bd_pins pid2/sign_i] [get_bd_pins pid2_sign/data_o]
  connect_bd_net -net pid_kd_data_o [get_bd_pins pid1/kd_i] [get_bd_pins pid1_kd/data_o]
  connect_bd_net -net pid_kp_data_o [get_bd_pins pid1/kp_i] [get_bd_pins pid1_kp/data_o]
  connect_bd_net -net pid_rst_int_data_o [get_bd_pins pid1/int_rst_i] [get_bd_pins pid1_rst_int/data_o]
  connect_bd_net -net pid_setpoint_data_o [get_bd_pins pid1/setpoint_i] [get_bd_pins pid1_setpoint/data_o]
  connect_bd_net -net pid_sign_data_o [get_bd_pins pid1/sign_i] [get_bd_pins pid1_sign/data_o]
  connect_bd_net -net proc_sys_reset_0_interconnect_aresetn [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins ltc2145_0/resetn] [get_bd_pins proc_sys_reset_0/interconnect_aresetn]
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins axi_interconnect_0/M01_ARESETN] [get_bd_pins axi_interconnect_0/M02_ARESETN] [get_bd_pins axi_interconnect_0/M03_ARESETN] [get_bd_pins axi_interconnect_0/M04_ARESETN] [get_bd_pins axi_interconnect_0/M05_ARESETN] [get_bd_pins axi_interconnect_0/M06_ARESETN] [get_bd_pins axi_interconnect_0/M07_ARESETN] [get_bd_pins axi_interconnect_0/M08_ARESETN] [get_bd_pins axi_interconnect_0/M09_ARESETN] [get_bd_pins axi_interconnect_0/M10_ARESETN] [get_bd_pins axi_interconnect_0/M11_ARESETN] [get_bd_pins axi_interconnect_0/M12_ARESETN] [get_bd_pins axi_interconnect_0/M13_ARESETN] [get_bd_pins axi_interconnect_0/M14_ARESETN] [get_bd_pins axi_interconnect_0/M15_ARESETN] [get_bd_pins axi_interconnect_0/M16_ARESETN] [get_bd_pins axi_interconnect_0/M17_ARESETN] [get_bd_pins axi_interconnect_0/M18_ARESETN] [get_bd_pins axi_interconnect_0/M19_ARESETN] [get_bd_pins axi_interconnect_0/M20_ARESETN] [get_bd_pins axi_interconnect_0/M21_ARESETN] [get_bd_pins axi_interconnect_0/M22_ARESETN] [get_bd_pins axi_interconnect_0/M23_ARESETN] [get_bd_pins axi_interconnect_0/M24_ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN] [get_bd_pins proc_sys_reset_0/peripheral_aresetn]
  connect_bd_net -net proc_sys_reset_0_peripheral_reset [get_bd_pins adc1_offset/s00_axi_reset] [get_bd_pins dds1_ampl/data_rst_i] [get_bd_pins dds1_ampl/s00_axi_reset] [get_bd_pins dds1_f0/s00_axi_reset] [get_bd_pins dds1_nco/ref_rst_i] [get_bd_pins dds1_nco/s00_axi_reset] [get_bd_pins dds1_offset/s00_axi_reset] [get_bd_pins dds1_range/s00_axi_reset] [get_bd_pins ltc2145_0/processing_rst_i] [get_bd_pins mod_input_ampl/s00_axi_reset] [get_bd_pins mod_input_nco/ref_rst_i] [get_bd_pins mod_input_nco/s00_axi_reset] [get_bd_pins mod_out_pid2_ampl/s00_axi_reset] [get_bd_pins mod_out_pid2_nco/ref_rst_i] [get_bd_pins mod_out_pid2_nco/s00_axi_reset] [get_bd_pins pid1_kd/s00_axi_reset] [get_bd_pins pid1_ki/s00_axi_reset] [get_bd_pins pid1_kp/s00_axi_reset] [get_bd_pins pid1_rst_int/s00_axi_reset] [get_bd_pins pid1_setpoint/s00_axi_reset] [get_bd_pins pid1_sign/s00_axi_reset] [get_bd_pins pid2_kd/s00_axi_reset] [get_bd_pins pid2_ki/s00_axi_reset] [get_bd_pins pid2_kp/s00_axi_reset] [get_bd_pins pid2_offset/s00_axi_reset] [get_bd_pins pid2_rst_int/s00_axi_reset] [get_bd_pins pid2_setpoint/s00_axi_reset] [get_bd_pins pid2_sign/s00_axi_reset] [get_bd_pins proc_sys_reset_0/peripheral_reset] [get_bd_pins redpitaya_adc_dac_clk_0/adc_rst_i] [get_bd_pins switchComplex_0/s00_axi_reset] [get_bd_pins switchComplex_1/data1_rst_i] [get_bd_pins switchComplex_1/s00_axi_reset]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins adc1_offset/s00_axi_aclk] [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins axi_interconnect_0/M01_ACLK] [get_bd_pins axi_interconnect_0/M02_ACLK] [get_bd_pins axi_interconnect_0/M03_ACLK] [get_bd_pins axi_interconnect_0/M04_ACLK] [get_bd_pins axi_interconnect_0/M05_ACLK] [get_bd_pins axi_interconnect_0/M06_ACLK] [get_bd_pins axi_interconnect_0/M07_ACLK] [get_bd_pins axi_interconnect_0/M08_ACLK] [get_bd_pins axi_interconnect_0/M09_ACLK] [get_bd_pins axi_interconnect_0/M10_ACLK] [get_bd_pins axi_interconnect_0/M11_ACLK] [get_bd_pins axi_interconnect_0/M12_ACLK] [get_bd_pins axi_interconnect_0/M13_ACLK] [get_bd_pins axi_interconnect_0/M14_ACLK] [get_bd_pins axi_interconnect_0/M15_ACLK] [get_bd_pins axi_interconnect_0/M16_ACLK] [get_bd_pins axi_interconnect_0/M17_ACLK] [get_bd_pins axi_interconnect_0/M18_ACLK] [get_bd_pins axi_interconnect_0/M19_ACLK] [get_bd_pins axi_interconnect_0/M20_ACLK] [get_bd_pins axi_interconnect_0/M21_ACLK] [get_bd_pins axi_interconnect_0/M22_ACLK] [get_bd_pins axi_interconnect_0/M23_ACLK] [get_bd_pins axi_interconnect_0/M24_ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK] [get_bd_pins dds1_ampl/s00_axi_aclk] [get_bd_pins dds1_f0/s00_axi_aclk] [get_bd_pins dds1_nco/s00_axi_aclk] [get_bd_pins dds1_offset/s00_axi_aclk] [get_bd_pins dds1_range/s00_axi_aclk] [get_bd_pins mod_input_ampl/s00_axi_aclk] [get_bd_pins mod_input_nco/s00_axi_aclk] [get_bd_pins mod_out_pid2_ampl/s00_axi_aclk] [get_bd_pins mod_out_pid2_nco/s00_axi_aclk] [get_bd_pins pid1_kd/s00_axi_aclk] [get_bd_pins pid1_ki/s00_axi_aclk] [get_bd_pins pid1_kp/s00_axi_aclk] [get_bd_pins pid1_rst_int/s00_axi_aclk] [get_bd_pins pid1_setpoint/s00_axi_aclk] [get_bd_pins pid1_sign/s00_axi_aclk] [get_bd_pins pid2_kd/s00_axi_aclk] [get_bd_pins pid2_ki/s00_axi_aclk] [get_bd_pins pid2_kp/s00_axi_aclk] [get_bd_pins pid2_offset/s00_axi_aclk] [get_bd_pins pid2_rst_int/s00_axi_aclk] [get_bd_pins pid2_setpoint/s00_axi_aclk] [get_bd_pins pid2_sign/s00_axi_aclk] [get_bd_pins proc_sys_reset_0/slowest_sync_clk] [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins switchComplex_0/s00_axi_aclk] [get_bd_pins switchComplex_1/s00_axi_aclk]
  connect_bd_net -net processing_system7_0_FCLK_RESET0_N [get_bd_pins proc_sys_reset_0/ext_reset_in] [get_bd_pins processing_system7_0/FCLK_RESET0_N]
  connect_bd_net -net red_pitaya_pidv3_0_data_clk_o [get_bd_pins dds1_range/data_clk_i] [get_bd_pins dupplReal_1_to_2_1/data1_clk_o] [get_bd_pins twoInMult_dds1_range/data1_clk_i]
  connect_bd_net -net red_pitaya_pidv3_0_data_en_o [get_bd_pins dds1_range/data_en_i] [get_bd_pins dupplReal_1_to_2_1/data1_en_o] [get_bd_pins twoInMult_dds1_range/data1_en_i]
  connect_bd_net -net redpitaya_adc_dac_clk_0_adc_clk_o [get_bd_pins ltc2145_0/adc_clk_i] [get_bd_pins redpitaya_adc_dac_clk_0/adc_clk_o]
  connect_bd_net -net redpitaya_adc_dac_clk_0_dac_2clk_o [get_bd_pins ad9767_0/dac_2clk_i] [get_bd_pins redpitaya_adc_dac_clk_0/dac_2clk_o]
  connect_bd_net -net redpitaya_adc_dac_clk_0_dac_2ph_o [get_bd_pins ad9767_0/dac_2ph_i] [get_bd_pins redpitaya_adc_dac_clk_0/dac_2ph_o]
  connect_bd_net -net redpitaya_adc_dac_clk_0_dac_clk_o [get_bd_pins ad9767_0/dac_clk_i] [get_bd_pins redpitaya_adc_dac_clk_0/dac_clk_o]
  connect_bd_net -net redpitaya_adc_dac_clk_0_dac_locked_o [get_bd_pins ad9767_0/dac_locked_i] [get_bd_pins redpitaya_adc_dac_clk_0/dac_locked_o]
  connect_bd_net -net switchComplex_0_data_clk_o [get_bd_pins pid2/data_clk_i] [get_bd_pins switchComplex_0/data_clk_o]
  connect_bd_net -net switchComplex_0_data_en_o [get_bd_pins pid2/data_en_i] [get_bd_pins switchComplex_0/data_en_o]
  connect_bd_net -net switchComplex_0_data_q_o [get_bd_pins pid2/data_i] [get_bd_pins switchComplex_0/data_q_o]
  connect_bd_net -net switchComplex_0_data_rst_o [get_bd_pins pid2/data_rst_i] [get_bd_pins switchComplex_0/data_rst_o]
  connect_bd_net -net switchComplex_1_data_clk_o [get_bd_pins dds1_offset/data_clk_i] [get_bd_pins switchComplex_1/data_clk_o]
  connect_bd_net -net switchComplex_1_data_en_o [get_bd_pins dds1_offset/data_en_i] [get_bd_pins switchComplex_1/data_en_o]
  connect_bd_net -net switchComplex_1_data_q_o [get_bd_pins dds1_offset/data_i] [get_bd_pins switchComplex_1/data_q_o]
  connect_bd_net -net switchComplex_1_data_rst_o [get_bd_pins dds1_offset/data_rst_i] [get_bd_pins switchComplex_1/data_rst_o]
  connect_bd_net -net twoInMult_0_data_clk_o [get_bd_pins switchComplex_1/data1_clk_i] [get_bd_pins twoInMult_dds1_ampl/data_clk_o]
  connect_bd_net -net twoInMult_0_data_en_o [get_bd_pins switchComplex_1/data1_en_i] [get_bd_pins twoInMult_dds1_ampl/data_en_o]
  connect_bd_net -net twoInMult_0_data_o [get_bd_pins twoInMult_dds1_ampl/data_o] [get_bd_pins xlslice_dds1/Din]
  connect_bd_net -net twoInMult_0_data_o1 [get_bd_pins twoInMult_mod_input_0/data_o] [get_bd_pins xlslice_mod_input_1/Din]
  connect_bd_net -net twoInMult_dds_range_data_clk_o [get_bd_pins expanderReal_0_dds1/data_clk_i] [get_bd_pins twoInMult_dds1_range/data_clk_o]
  connect_bd_net -net twoInMult_dds_range_data_en_o [get_bd_pins expanderReal_0_dds1/data_en_i] [get_bd_pins twoInMult_dds1_range/data_en_o]
  connect_bd_net -net twoInMult_dds_range_data_o [get_bd_pins expanderReal_0_dds1/data_i] [get_bd_pins twoInMult_dds1_range/data_o]
  connect_bd_net -net twoInMult_mod_input_0_data_clk_o [get_bd_pins adder_substracter_mod_input_0/data2_clk_i] [get_bd_pins twoInMult_mod_input_0/data_clk_o]
  connect_bd_net -net twoInMult_mod_input_0_data_en_o [get_bd_pins adder_substracter_mod_input_0/data2_en_i] [get_bd_pins twoInMult_mod_input_0/data_en_o]
  connect_bd_net -net twoInMult_mod_input_1_data_clk_o [get_bd_pins adder_substracter_mod_out_pid2/data2_clk_i] [get_bd_pins twoInMult_mod_out_pid2/data_clk_o]
  connect_bd_net -net twoInMult_mod_input_1_data_en_o [get_bd_pins adder_substracter_mod_out_pid2/data2_en_i] [get_bd_pins twoInMult_mod_out_pid2/data_en_o]
  connect_bd_net -net twoInMult_mod_input_1_data_o [get_bd_pins twoInMult_mod_out_pid2/data_o] [get_bd_pins xlslice_mod_out_pid2_1/Din]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins dds1_ampl/data_i] [get_bd_pins dds1_range/data_i] [get_bd_pins mod_input_ampl/data_i] [get_bd_pins mod_out_pid2_ampl/data_i] [get_bd_pins pid1_kd/data_i] [get_bd_pins pid1_ki/data_i] [get_bd_pins pid1_kp/data_i] [get_bd_pins pid1_setpoint/data_i] [get_bd_pins pid2_kd/data_i] [get_bd_pins pid2_ki/data_i] [get_bd_pins pid2_kp/data_i] [get_bd_pins pid2_setpoint/data_i] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins pid1_rst_int/data_i] [get_bd_pins pid1_sign/data_i] [get_bd_pins pid2_rst_int/data_i] [get_bd_pins pid2_sign/data_i] [get_bd_pins xlconstant_1/dout]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins switchComplex_1/data1_q_i] [get_bd_pins xlslice_dds1/Dout]
  connect_bd_net -net xlslice_dds2_Dout [get_bd_pins dupplReal_1_to_2_0/data_i] [get_bd_pins xlslice_mod_input_0/Dout]
  connect_bd_net -net xlslice_mod_input_1_Dout [get_bd_pins adder_substracter_mod_input_0/data2_i] [get_bd_pins xlslice_mod_input_1/Dout]
  connect_bd_net -net xlslice_mod_input_2_Dout [get_bd_pins adder_substracter_mod_out_pid2/data2_i] [get_bd_pins xlslice_mod_out_pid2_1/Dout]
  connect_bd_net -net xlslice_mod_out_pid2_Dout [get_bd_pins pid2_offset/data_i] [get_bd_pins xlslice_mod_out_pid2_0/Dout]

  # Create address segments
  create_bd_addr_seg -range 0x00010000 -offset 0x43C00000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs adc1_offset/s00_axi/reg0] SEG_adc1_offset_reg0
  create_bd_addr_seg -range 0x00010000 -offset 0x43C20000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs dds1_ampl/s00_axi/reg0] SEG_dds1_ampl_reg0
  create_bd_addr_seg -range 0x00010000 -offset 0x43C30000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs dds1_f0/s00_axi/reg0] SEG_dds1_f0_reg0
  create_bd_addr_seg -range 0x00010000 -offset 0x43CA0000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs dds1_nco/s00_axi/reg0] SEG_dds1_nco_reg0
  create_bd_addr_seg -range 0x00010000 -offset 0x43C40000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs dds1_offset/s00_axi/reg0] SEG_dds1_offset_reg0
  create_bd_addr_seg -range 0x00010000 -offset 0x43C50000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs dds1_range/s00_axi/reg0] SEG_dds1_range_reg0
  create_bd_addr_seg -range 0x00010000 -offset 0x43D30000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs mod_input_ampl/s00_axi/reg0] SEG_mod_input_ampl_reg0
  create_bd_addr_seg -range 0x00010000 -offset 0x43D40000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs mod_input_nco/s00_axi/reg0] SEG_mod_input_nco_reg0
  create_bd_addr_seg -range 0x00010000 -offset 0x43D50000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs mod_out_pid2_ampl/s00_axi/reg0] SEG_mod_out_pid2_ampl_reg0
  create_bd_addr_seg -range 0x00010000 -offset 0x43D60000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs mod_out_pid2_nco/s00_axi/reg0] SEG_mod_out_pid2_nco_reg0
  create_bd_addr_seg -range 0x00010000 -offset 0x43C80000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs pid1_kd/s00_axi/reg0] SEG_pid1_kd_reg0
  create_bd_addr_seg -range 0x00010000 -offset 0x43C70000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs pid1_ki/s00_axi/reg0] SEG_pid1_ki_reg0
  create_bd_addr_seg -range 0x00010000 -offset 0x43C60000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs pid1_kp/s00_axi/reg0] SEG_pid1_kp_reg0
  create_bd_addr_seg -range 0x00010000 -offset 0x43C90000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs pid1_rst_int/s00_axi/reg0] SEG_pid1_rst_int_reg0
  create_bd_addr_seg -range 0x00010000 -offset 0x43CC0000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs pid1_setpoint/s00_axi/reg0] SEG_pid1_setpoint_reg0
  create_bd_addr_seg -range 0x00010000 -offset 0x43CB0000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs pid1_sign/s00_axi/reg0] SEG_pid1_sign_reg0
  create_bd_addr_seg -range 0x00010000 -offset 0x43D20000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs pid2_kd/s00_axi/reg0] SEG_pid2_kd_reg0
  create_bd_addr_seg -range 0x00010000 -offset 0x43CF0000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs pid2_ki/s00_axi/reg0] SEG_pid2_ki_reg0
  create_bd_addr_seg -range 0x00010000 -offset 0x43CE0000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs pid2_kp/s00_axi/reg0] SEG_pid2_kp_reg0
  create_bd_addr_seg -range 0x00010000 -offset 0x43D70000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs pid2_offset/s00_axi/reg0] SEG_pid2_offset_reg0
  create_bd_addr_seg -range 0x00010000 -offset 0x43D10000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs pid2_rst_int/s00_axi/reg0] SEG_pid2_rst_int_reg0
  create_bd_addr_seg -range 0x00010000 -offset 0x43CD0000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs pid2_setpoint/s00_axi/reg0] SEG_pid2_setpoint_reg0
  create_bd_addr_seg -range 0x00010000 -offset 0x43D00000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs pid2_sign/s00_axi/reg0] SEG_pid2_sign_reg0
  create_bd_addr_seg -range 0x00010000 -offset 0x43C10000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs switchComplex_0/s00_axi/reg0] SEG_switchComplex_0_reg0
  create_bd_addr_seg -range 0x00010000 -offset 0x43D80000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs switchComplex_1/s00_axi/reg0] SEG_switchComplex_1_reg0

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.6.5b  2016-09-06 bk=1.3687 VDI=39 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port DDR -pg 1 -y 2940 -defaultsOSRD
preplace port adc_cdcs -pg 1 -y 2930 -defaultsOSRD
preplace port adc_clk_p_i -pg 1 -y 2720 -defaultsOSRD
preplace port dac_rst_o -pg 1 -y 2570 -defaultsOSRD
preplace port dac_clk_o -pg 1 -y 2550 -defaultsOSRD
preplace port FIXED_IO -pg 1 -y 2950 -defaultsOSRD
preplace port dac_sel_o -pg 1 -y 2530 -defaultsOSRD
preplace port dac_wrt_o -pg 1 -y 2510 -defaultsOSRD
preplace port adc_clk_n_i -pg 1 -y 2740 -defaultsOSRD
preplace portBus adc_data_a_i -pg 1 -y 2620 -defaultsOSRD
preplace portBus adc_data_b_i -pg 1 -y 2640 -defaultsOSRD
preplace portBus dac_dat_o -pg 1 -y 2490 -defaultsOSRD
preplace inst twoInMult_dds1_range -pg 1 -lvl 8 -y 1300 -defaultsOSRD
preplace inst pid1 -pg 1 -lvl 4 -y 3450 -defaultsOSRD
preplace inst mod_out_pid2_nco -pg 1 -lvl 7 -y 2250 -defaultsOSRD
preplace inst expanderReal_0_ki_pid2 -pg 1 -lvl 8 -y 3310 -defaultsOSRD
preplace inst pid2 -pg 1 -lvl 4 -y 2970 -defaultsOSRD
preplace inst mod_out_pid2_ampl -pg 1 -lvl 7 -y 2040 -defaultsOSRD
preplace inst mod_input_nco -pg 1 -lvl 7 -y 1260 -defaultsOSRD
preplace inst xlconstant_0 -pg 1 -lvl 6 -y 3000 -defaultsOSRD
preplace inst redpitaya_adc_dac_clk_0 -pg 1 -lvl 5 -y 2740 -defaultsOSRD
preplace inst pid2_sign -pg 1 -lvl 7 -y 4440 -defaultsOSRD
preplace inst pid1_kp -pg 1 -lvl 7 -y 5910 -defaultsOSRD
preplace inst mod_input_ampl -pg 1 -lvl 7 -y 140 -defaultsOSRD
preplace inst xlconstant_1 -pg 1 -lvl 6 -y 5150 -defaultsOSRD
preplace inst twoInMult_dds1_ampl -pg 1 -lvl 8 -y 4680 -defaultsOSRD
preplace inst pid2_kp -pg 1 -lvl 7 -y 3710 -defaultsOSRD
preplace inst pid1_setpoint -pg 1 -lvl 7 -y 6150 -defaultsOSRD
preplace inst pid1_kd -pg 1 -lvl 7 -y 5470 -defaultsOSRD
preplace inst dds1_ampl -pg 1 -lvl 7 -y 4720 -defaultsOSRD
preplace inst pid2_kd -pg 1 -lvl 7 -y 3070 -defaultsOSRD
preplace inst twoInMult_mod_out_pid2 -pg 1 -lvl 8 -y 2000 -defaultsOSRD
preplace inst proc_sys_reset_0 -pg 1 -lvl 4 -y 3230 -defaultsOSRD
preplace inst pid1_rst_int -pg 1 -lvl 7 -y 4960 -defaultsOSRD
preplace inst dds1_range -pg 1 -lvl 7 -y 1050 -defaultsOSRD
preplace inst adder_substracter_mod_input_0 -pg 1 -lvl 8 -y 1560 -defaultsOSRD
preplace inst xlslice_mod_input_0 -pg 1 -lvl 1 -y 1660 -defaultsOSRD
preplace inst pid2_rst_int -pg 1 -lvl 7 -y 4170 -defaultsOSRD
preplace inst xlslice_mod_input_1 -pg 1 -lvl 7 -y 1490 -defaultsOSRD
preplace inst dds1_f0 -pg 1 -lvl 7 -y 3530 -defaultsOSRD
preplace inst adc1_offset -pg 1 -lvl 7 -y 2740 -defaultsOSRD
preplace inst pid1_ki -pg 1 -lvl 7 -y 5690 -defaultsOSRD
preplace inst ad9767_0 -pg 1 -lvl 8 -y 2530 -defaultsOSRD
preplace inst xlslice_mod_out_pid2_0 -pg 1 -lvl 6 -y 2430 -defaultsOSRD
preplace inst switchComplex_0 -pg 1 -lvl 7 -y 1730 -defaultsOSRD
preplace inst pid2_ki -pg 1 -lvl 7 -y 3310 -defaultsOSRD
preplace inst dupplReal_1_to_2_0 -pg 1 -lvl 2 -y 1660 -defaultsOSRD
preplace inst axi_interconnect_0 -pg 1 -lvl 6 -y 3670 -defaultsOSRD
preplace inst switchComplex_1 -pg 1 -lvl 7 -y 470 -defaultsOSRD
preplace inst xlslice_mod_out_pid2_1 -pg 1 -lvl 4 -y 2510 -defaultsOSRD
preplace inst dupplReal_1_to_2_1 -pg 1 -lvl 5 -y 1860 -defaultsOSRD
preplace inst dds1_offset -pg 1 -lvl 7 -y 830 -defaultsOSRD
preplace inst dds1_nco -pg 1 -lvl 8 -y 4360 -defaultsOSRD
preplace inst dupplReal_1_to_2_2 -pg 1 -lvl 3 -y 1530 -defaultsOSRD
preplace inst xlslice_dds1 -pg 1 -lvl 6 -y 4320 -defaultsOSRD
preplace inst pid2_offset -pg 1 -lvl 7 -y 2500 -defaultsOSRD
preplace inst pid1_sign -pg 1 -lvl 7 -y 5200 -defaultsOSRD
preplace inst ltc2145_0 -pg 1 -lvl 6 -y 2630 -defaultsOSRD
preplace inst expanderReal_0_dds1 -pg 1 -lvl 6 -y 1550 -defaultsOSRD
preplace inst twoInMult_mod_input_0 -pg 1 -lvl 8 -y 100 -defaultsOSRD
preplace inst processing_system7_0 -pg 1 -lvl 5 -y 3090 -defaultsOSRD
preplace inst pid2_setpoint -pg 1 -lvl 7 -y 3930 -defaultsOSRD
preplace inst expanderReal_0_ki_pid1 -pg 1 -lvl 8 -y 5690 -defaultsOSRD
preplace inst adder_substracter_mod_out_pid2 -pg 1 -lvl 5 -y 2520 -defaultsOSRD
preplace netloc axi_interconnect_0_M13_AXI 1 6 1 2380
preplace netloc axi_interconnect_0_M08_AXI 1 6 1 2300
preplace netloc dupplReal_1_to_2_1_data2_clk_o 1 5 2 NJ 1930 2460
preplace netloc adc_data_a_i_1 1 0 6 NJ 2620 NJ 2620 NJ 2620 NJ 2620 NJ 2620 1910J
preplace netloc nco_counter_0_dds_en_o 1 6 3 2770 4600 3290 4500 3580
preplace netloc red_pitaya_pidv3_0_data_en_o 1 5 3 NJ 1790 2320 1920 3200J
preplace netloc axi_interconnect_0_M07_AXI 1 6 1 2290
preplace netloc redpitaya_adc_dac_clk_0_dac_2ph_o 1 5 3 1840J 2510 2590J 2620 3270
preplace netloc adder_substracter_mod_out_pid2_data_en_o 1 5 2 1800 2370 2320J
preplace netloc adc_clk_n_i_1 1 0 5 NJ 2740 NJ 2740 NJ 2740 NJ 2740 NJ
preplace netloc nco_counter_0_dds_sin_o1 1 7 1 3140
preplace netloc twoInMult_mod_input_1_data_en_o 1 4 5 1380 260 NJ 260 NJ 260 NJ 260 3650
preplace netloc dupplReal_1_to_2_1_data1_rst_o 1 5 2 1800 1850 2340
preplace netloc ad9767_0_dac_rst_o 1 8 1 NJ
preplace netloc processing_system7_0_FIXED_IO 1 5 4 1910J 2950 NJ 2950 NJ 2950 NJ
preplace netloc dupplReal_1_to_2_0_data2_clk_o 1 2 5 NJ 1690 NJ 1690 NJ 1690 NJ 1690 N
preplace netloc mod_input_nco_dds_rst_o 1 6 2 2720 1910 3140
preplace netloc pid2_kd_data_o 1 3 5 960 4370 NJ 4370 NJ 4370 2710J 4300 3080
preplace netloc dupplReal_1_to_2_2_data1_out 1 3 1 820
preplace netloc axi_interconnect_0_M24_AXI 1 6 1 2470
preplace netloc axi_interconnect_0_M04_AXI 1 6 1 2320
preplace netloc dupplReal_1_to_2_2_data2_o 1 3 4 800J 490 NJ 490 NJ 490 N
preplace netloc ad9767_0_dac_dat_o 1 8 1 NJ
preplace netloc axi_interconnect_0_M22_AXI 1 6 1 2620
preplace netloc axi_interconnect_0_M18_AXI 1 6 1 2590
preplace netloc proc_sys_reset_0_interconnect_aresetn 1 4 2 1330J 3290 1890
preplace netloc axi_interconnect_0_M12_AXI 1 6 1 2250
preplace netloc adder_substracter_mod_out_pid2_data_clk_o 1 5 2 1830 2490 NJ
preplace netloc pid2_ki_data_out 1 7 1 NJ
preplace netloc pid1_data_out 1 4 1 1340
preplace netloc dds_ampl_data_out1 1 7 1 N
preplace netloc twoInMult_0_data_en_o 1 6 3 2690 3440 NJ 3440 3610
preplace netloc redpitaya_adc_dac_clk_0_dac_clk_o 1 5 3 1860J 2870 NJ 2870 3280
preplace netloc redpitaya_adc_dac_clk_0_adc_clk_o 1 5 1 1870
preplace netloc proc_sys_reset_0_peripheral_reset 1 4 4 1380 4730 1900 4730 2540 5330 3160
preplace netloc twoInMult_mod_input_1_data_o 1 3 6 910 710 NJ 710 NJ 710 NJ 710 NJ 710 3620
preplace netloc dupplReal_1_to_2_1_data1_o 1 5 3 NJ 1810 2330J 1900 3170
preplace netloc adder_substracter_0_data_clk_o 1 1 8 220 690 NJ 690 NJ 690 NJ 690 NJ 690 NJ 690 NJ 690 3630
preplace netloc pid2_sign_data_o 1 3 5 920 4580 NJ 4580 NJ 4580 NJ 4580 3070
preplace netloc axi_interconnect_0_M16_AXI 1 6 1 2270
preplace netloc switchComplex_0_data_rst_o 1 3 5 930 4270 NJ 4270 NJ 4270 2260J 4290 3100
preplace netloc adder_substracter_mod_out_pid2_data_rst_o 1 5 2 1820 2380 2630J
preplace netloc twoInMult_0_data_o1 1 6 3 2750 3190 NJ 3190 3670
preplace netloc mod_input_nco1_dds_en_o 1 6 2 2760 2360 3230
preplace netloc ltc2145_0_data_a_en_o 1 6 1 2390
preplace netloc processing_system7_0_DDR 1 5 4 NJ 2940 NJ 2940 NJ 2940 NJ
preplace netloc axi_interconnect_0_M23_AXI 1 6 1 2640
preplace netloc nco_counter_0_dds_clk_o 1 6 3 2770 4840 3290 4840 3600
preplace netloc expanderReal_0_data_out 1 6 1 2610
preplace netloc axi_interconnect_0_M02_AXI 1 6 1 2450
preplace netloc axi_interconnect_0_M01_AXI 1 6 1 2550
preplace netloc adder_substracter_0_data_rst_o 1 1 8 230 1420 NJ 1420 NJ 1420 NJ 1420 NJ 1420 2660J 1440 NJ 1440 3590
preplace netloc dupplReal_1_to_2_2_data2_en_o 1 3 4 810J 550 NJ 550 NJ 550 N
preplace netloc twoInMult_mod_input_0_data_en_o 1 7 2 3300 210 3620
preplace netloc xlconstant_1_dout 1 6 1 2740
preplace netloc dupplReal_1_to_2_0_data2_en_o 1 2 5 NJ 1650 NJ 1650 NJ 1650 NJ 1650 2330
preplace netloc pid_rst_int_data_o 1 3 5 980 5080 NJ 5080 NJ 5080 NJ 5080 3070
preplace netloc pid2_kp_data_o 1 3 5 880 4570 NJ 4570 NJ 4570 NJ 4570 3110
preplace netloc mod_input_nco1_dds_rst_o 1 4 4 1390 2050 NJ 2050 2640 2380 3070
preplace netloc xlslice_mod_input_1_Dout 1 7 1 3230J
preplace netloc twoInMult_dds_range_data_en_o 1 5 4 1950 700 NJ 700 NJ 700 3580
preplace netloc twoInMult_0_data_clk_o 1 6 3 2700 3430 NJ 3430 3620
preplace netloc axi_interconnect_0_M20_AXI 1 6 1 2510
preplace netloc ltc2145_0_adc_clk 1 6 2 2650 4050 3150
preplace netloc pid2_rst_int_data_o 1 3 5 970 4380 NJ 4380 NJ 4380 2770J 4310 3070
preplace netloc processing_system7_0_FCLK_RESET0_N 1 3 3 910 2790 1390J 2850 1800
preplace netloc ltc2145_0_adc_cdcs 1 6 3 2520J 2930 NJ 2930 NJ
preplace netloc axi_interconnect_0_M19_AXI 1 6 1 2400
preplace netloc axi_interconnect_0_M05_AXI 1 6 1 2310
preplace netloc red_pitaya_pidv3_0_data_clk_o 1 5 3 NJ 1830 2360 2370 3210J
preplace netloc ltc2145_0_data_a_o 1 6 1 2570
preplace netloc switchComplex_0_data_clk_o 1 3 5 930 2800 1370J 2860 NJ 2860 2500J 2920 3110
preplace netloc proc_sys_reset_0_peripheral_aresetn 1 4 2 1320J 3330 1910
preplace netloc nco_counter_0_dds_clk_o1 1 6 2 2730 1370 3150
preplace netloc pid_kp_data_o 1 3 5 900 5350 NJ 5350 NJ 5350 NJ 5350 3080
preplace netloc mod_input_nco1_dds_clk_o 1 6 2 2770 2860 3260
preplace netloc axi_interconnect_0_M09_AXI 1 6 2 2570 3450 3280J
preplace netloc xlslice_mod_out_pid2_Dout 1 6 1 2640J
preplace netloc expanderReal_0_ki_pid2_data_o 1 3 6 900 1460 NJ 1460 NJ 1460 2640J 1550 3190J 1460 3610
preplace netloc adder_substracter_mod_input_1_data_o 1 5 1 1810
preplace netloc dds2_offset_data_out 1 7 1 N
preplace netloc xlslice_0_Dout 1 6 1 2490J
preplace netloc ltc2145_0_data_a_clk_o 1 6 1 2360
preplace netloc ltc2145_0_data_a_rst_o 1 6 1 2340
preplace netloc pid_sign_data_o 1 3 5 950 5320 NJ 5320 NJ 5320 NJ 5320 3070
preplace netloc dupplReal_1_to_2_1_data2_rst_o 1 5 2 NJ 1950 2480
preplace netloc dupplReal_1_to_2_0_data2_rst_o 1 2 5 NJ 1710 NJ 1710 NJ 1710 NJ 1710 N
preplace netloc dupplReal_1_to_2_1_data2_o 1 5 2 NJ 1910 2430
preplace netloc nco_counter_0_dds_en_o1 1 6 2 2710 1560 3160
preplace netloc axi_interconnect_0_M10_AXI 1 6 1 2410
preplace netloc switchComplex_1_data_rst_o 1 6 2 2770 1390 3070
preplace netloc switchComplex_1_data_en_o 1 6 2 2750 1400 3090
preplace netloc processing_system7_0_FCLK_CLK0 1 3 5 940 4770 1400 4770 1820 4770 2530 4590 3230J
preplace netloc expanderReal_0_dds2_data_o 1 3 6 850 1450 NJ 1450 NJ 1450 2660J 1540 3180J 1450 3660
preplace netloc ad9767_0_dac_wrt_o 1 8 1 NJ
preplace netloc axi_interconnect_0_M06_AXI 1 6 1 2350
preplace netloc switchComplex_1_data_q_o 1 6 2 2740 1410 3100
preplace netloc dupplReal_1_to_2_0_data2_o 1 2 5 NJ 1670 NJ 1670 NJ 1670 NJ 1670 2390
preplace netloc twoInMult_dds_range_data_o 1 5 4 1930 10 NJ 10 NJ 10 3640
preplace netloc axi_interconnect_0_M17_AXI 1 6 1 2280
preplace netloc dupplReal_1_to_2_0_data1_out 1 2 1 520
preplace netloc twoInMult_mod_input_1_data_clk_o 1 4 5 1400 2840 1810J 2910 NJ 2910 NJ 2910 3580
preplace netloc twoInMult_dds_range_data_clk_o 1 5 4 1940 680 NJ 680 NJ 680 3590
preplace netloc adder_substracter_0_data_o 1 0 9 20 1400 NJ 1400 NJ 1400 NJ 1400 NJ 1400 NJ 1400 2670J 1430 NJ 1430 3580
preplace netloc dupplReal_1_to_2_2_data2_rst_o 1 3 4 840J 590 NJ 590 NJ 590 N
preplace netloc axi_interconnect_0_M14_AXI 1 6 1 2370
preplace netloc xlslice_dds2_Dout 1 1 1 NJ
preplace netloc ad9767_0_dac_clk_o 1 8 1 NJ
preplace netloc nco_counter_0_dds_sin_o 1 7 2 3300 4470 3590
preplace netloc dds_f0_data_out 1 7 1 3210
preplace netloc adder_substracter_0_data_en_o 1 1 8 240 1390 NJ 1390 NJ 1390 NJ 1390 NJ 1390 2680J 1420 NJ 1420 3600
preplace netloc axi_interconnect_0_M15_AXI 1 6 1 2600
preplace netloc pid_setpoint_data_o 1 3 5 890 5340 NJ 5340 NJ 5340 NJ 5340 3090
preplace netloc mod_input_nco1_dds_sin_o 1 7 1 3220
preplace netloc processing_system7_0_M_AXI_GP0 1 5 1 1840
preplace netloc axi_interconnect_0_M21_AXI 1 6 1 2580
preplace netloc dupplReal_1_to_2_2_data2_clk_o 1 3 4 830J 570 NJ 570 NJ 570 N
preplace netloc xlslice_mod_input_2_Dout 1 4 1 NJ
preplace netloc xlconstant_0_dout 1 6 1 2560
preplace netloc switchComplex_0_data_q_o 1 3 5 970 2810 1360J 2880 NJ 2880 NJ 2880 3120
preplace netloc switchComplex_0_data_en_o 1 3 5 860 4390 NJ 4390 NJ 4390 2720J 4320 3130
preplace netloc adc_clk_p_i_1 1 0 5 NJ 2720 NJ 2720 NJ 2720 NJ 2720 NJ
preplace netloc dupplReal_1_to_2_1_data2_en_o 1 5 2 NJ 1890 2440
preplace netloc pid1_ki_data_out 1 7 1 NJ
preplace netloc mod_input_ampl1_data_out 1 7 1 N
preplace netloc dds_ampl_data_out 1 7 1 N
preplace netloc ad9767_0_dac_sel_o 1 8 1 NJ
preplace netloc redpitaya_adc_dac_clk_0_dac_2clk_o 1 5 3 1850J 2900 NJ 2900 3290
preplace netloc pid2_data_out 1 4 1 1350
preplace netloc dds_offset_data_out 1 7 1 3250
preplace netloc adc1_offset_data_out 1 7 1 3240
preplace netloc twoInMult_mod_input_0_data_clk_o 1 7 2 3290 200 3580
preplace netloc twoInMult_0_data_o 1 5 4 1920 20 NJ 20 3250J 190 3680
preplace netloc redpitaya_adc_dac_clk_0_dac_locked_o 1 5 3 NJ 2750 2320J 2890 3300
preplace netloc adc_data_b_i_1 1 0 6 NJ 2640 NJ 2640 NJ 2640 NJ 2640 NJ 2640 1880J
preplace netloc dds_range_data_out 1 7 1 3260
preplace netloc pid_kd_data_o 1 3 5 910 6030 NJ 6030 NJ 6030 NJ 6030 3070
preplace netloc axi_interconnect_0_M11_AXI 1 6 1 2630
preplace netloc axi_interconnect_0_M03_AXI 1 6 1 2330
preplace netloc axi_interconnect_0_M00_AXI 1 6 1 2420
preplace netloc switchComplex_1_data_clk_o 1 6 2 2760 1380 3080
preplace netloc pid2_setpoint_data_o 1 3 5 870 4560 NJ 4560 NJ 4560 NJ 4560 3090
levelinfo -pg 1 0 120 380 680 1150 1600 2100 2920 3440 3700 -top 0 -bot 6270
",
}

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


