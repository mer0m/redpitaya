
################################################################
# This is a generated script based on design: double_iq_pid_vco
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
set scripts_vivado_version 2019.2
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
# source double_iq_pid_vco_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z010clg400-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name double_iq_pid_vco

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
  variable design_name

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

  set phys_interface_0 [ create_bd_intf_port -mode Slave -vlnv ggm:interface:redpitaya_converters_if_rtl:1.0 phys_interface_0 ]


  # Create ports

  # Create instance: adc1_offset, and set properties
  set adc1_offset [ create_bd_cell -type ip -vlnv ggm:cogen:add_constReal:1.0 adc1_offset ]
  set_property -dict [ list \
   CONFIG.DATA_IN_SIZE {14} \
   CONFIG.DATA_OUT_SIZE {14} \
 ] $adc1_offset

  # Create instance: adc2_offset, and set properties
  set adc2_offset [ create_bd_cell -type ip -vlnv ggm:cogen:add_constReal:1.0 adc2_offset ]
  set_property -dict [ list \
   CONFIG.DATA_IN_SIZE {14} \
   CONFIG.DATA_OUT_SIZE {14} \
 ] $adc2_offset

  # Create instance: convertComplexToReal_0, and set properties
  set convertComplexToReal_0 [ create_bd_cell -type ip -vlnv ggm:cogen:convertComplexToReal:1.0 convertComplexToReal_0 ]
  set_property -dict [ list \
   CONFIG.DATA_SIZE {14} \
 ] $convertComplexToReal_0

  # Create instance: convertComplexToReal_1, and set properties
  set convertComplexToReal_1 [ create_bd_cell -type ip -vlnv ggm:cogen:convertComplexToReal:1.0 convertComplexToReal_1 ]
  set_property -dict [ list \
   CONFIG.DATA_SIZE {14} \
 ] $convertComplexToReal_1

  # Create instance: convertComplexToReal_4, and set properties
  set convertComplexToReal_4 [ create_bd_cell -type ip -vlnv ggm:cogen:convertComplexToReal:1.0 convertComplexToReal_4 ]
  set_property -dict [ list \
   CONFIG.DATA_SIZE {14} \
 ] $convertComplexToReal_4

  # Create instance: convertComplexToReal_5, and set properties
  set convertComplexToReal_5 [ create_bd_cell -type ip -vlnv ggm:cogen:convertComplexToReal:1.0 convertComplexToReal_5 ]
  set_property -dict [ list \
   CONFIG.DATA_SIZE {14} \
 ] $convertComplexToReal_5

  # Create instance: dataReal_to_ram_fast, and set properties
  set dataReal_to_ram_fast [ create_bd_cell -type ip -vlnv ggm:cogen:dataReal_to_ram:1.0 dataReal_to_ram_fast ]
  set_property -dict [ list \
   CONFIG.DATA_SIZE {64} \
   CONFIG.NB_INPUT {2} \
   CONFIG.NB_SAMPLE {1024} \
 ] $dataReal_to_ram_fast

  # Create instance: dataReal_to_ram_slow, and set properties
  set dataReal_to_ram_slow [ create_bd_cell -type ip -vlnv ggm:cogen:dataReal_to_ram:1.0 dataReal_to_ram_slow ]
  set_property -dict [ list \
   CONFIG.DATA_SIZE {64} \
   CONFIG.NB_INPUT {2} \
   CONFIG.NB_SAMPLE {2048} \
 ] $dataReal_to_ram_slow

  # Create instance: dds1_f0, and set properties
  set dds1_f0 [ create_bd_cell -type ip -vlnv ggm:cogen:add_constReal:1.0 dds1_f0 ]
  set_property -dict [ list \
   CONFIG.DATA_IN_SIZE {40} \
   CONFIG.DATA_OUT_SIZE {40} \
   CONFIG.format {unsigned} \
 ] $dds1_f0

  # Create instance: dds1_nco, and set properties
  set dds1_nco [ create_bd_cell -type ip -vlnv ggm:cogen:nco_counter:1.0 dds1_nco ]
  set_property -dict [ list \
   CONFIG.COUNTER_SIZE {40} \
   CONFIG.DATA_SIZE {16} \
   CONFIG.LUT_SIZE {12} \
 ] $dds1_nco

  # Create instance: dds1_offset, and set properties
  set dds1_offset [ create_bd_cell -type ip -vlnv ggm:cogen:add_constReal:1.0 dds1_offset ]
  set_property -dict [ list \
   CONFIG.DATA_IN_SIZE {14} \
   CONFIG.DATA_OUT_SIZE {14} \
   CONFIG.format {signed} \
 ] $dds1_offset

  # Create instance: dds2_f0, and set properties
  set dds2_f0 [ create_bd_cell -type ip -vlnv ggm:cogen:add_constReal:1.0 dds2_f0 ]
  set_property -dict [ list \
   CONFIG.DATA_IN_SIZE {40} \
   CONFIG.DATA_OUT_SIZE {40} \
   CONFIG.format {unsigned} \
 ] $dds2_f0

  # Create instance: dds2_nco, and set properties
  set dds2_nco [ create_bd_cell -type ip -vlnv ggm:cogen:nco_counter:1.0 dds2_nco ]
  set_property -dict [ list \
   CONFIG.COUNTER_SIZE {40} \
   CONFIG.DATA_SIZE {16} \
   CONFIG.LUT_SIZE {12} \
 ] $dds2_nco

  # Create instance: dds2_offset, and set properties
  set dds2_offset [ create_bd_cell -type ip -vlnv ggm:cogen:add_constReal:1.0 dds2_offset ]
  set_property -dict [ list \
   CONFIG.DATA_IN_SIZE {14} \
   CONFIG.DATA_OUT_SIZE {14} \
   CONFIG.format {signed} \
 ] $dds2_offset

  # Create instance: dds_ampl, and set properties
  set dds_ampl [ create_bd_cell -type ip -vlnv ggm:cogen:axi_to_dac:1.0 dds_ampl ]
  set_property -dict [ list \
   CONFIG.DATA_SIZE {14} \
   CONFIG.SYNCHRONIZE_CHAN {false} \
 ] $dds_ampl

  # Create instance: dds_range, and set properties
  set dds_range [ create_bd_cell -type ip -vlnv ggm:cogen:axi_to_dac:1.0 dds_range ]
  set_property -dict [ list \
   CONFIG.DATA_SIZE {14} \
   CONFIG.SYNCHRONIZE_CHAN {false} \
 ] $dds_range

  # Create instance: demod1_nco, and set properties
  set demod1_nco [ create_bd_cell -type ip -vlnv ggm:cogen:nco_counter:1.0 demod1_nco ]
  set_property -dict [ list \
   CONFIG.COUNTER_SIZE {40} \
   CONFIG.DATA_SIZE {16} \
   CONFIG.LUT_SIZE {12} \
 ] $demod1_nco

  # Create instance: demod2_nco, and set properties
  set demod2_nco [ create_bd_cell -type ip -vlnv ggm:cogen:nco_counter:1.0 demod2_nco ]
  set_property -dict [ list \
   CONFIG.COUNTER_SIZE {40} \
   CONFIG.DATA_SIZE {16} \
   CONFIG.LUT_SIZE {12} \
 ] $demod2_nco

  # Create instance: dupplReal_0, and set properties
  set dupplReal_0 [ create_bd_cell -type ip -vlnv ggm:cogen:dupplReal:1.0 dupplReal_0 ]
  set_property -dict [ list \
   CONFIG.DATA_SIZE {40} \
   CONFIG.NB_OUTPUT {3} \
 ] $dupplReal_0

  # Create instance: dupplReal_1, and set properties
  set dupplReal_1 [ create_bd_cell -type ip -vlnv ggm:cogen:dupplReal:1.0 dupplReal_1 ]
  set_property -dict [ list \
   CONFIG.DATA_SIZE {40} \
   CONFIG.NB_OUTPUT {3} \
 ] $dupplReal_1

  # Create instance: expanderReal_2, and set properties
  set expanderReal_2 [ create_bd_cell -type ip -vlnv ggm:cogen:expanderReal:1.0 expanderReal_2 ]
  set_property -dict [ list \
   CONFIG.DATA_IN_SIZE {14} \
   CONFIG.DATA_OUT_SIZE {19} \
 ] $expanderReal_2

  # Create instance: expanderReal_3, and set properties
  set expanderReal_3 [ create_bd_cell -type ip -vlnv ggm:cogen:expanderReal:1.0 expanderReal_3 ]
  set_property -dict [ list \
   CONFIG.DATA_IN_SIZE {14} \
   CONFIG.DATA_OUT_SIZE {19} \
 ] $expanderReal_3

  # Create instance: firReal_0, and set properties
  set firReal_0 [ create_bd_cell -type ip -vlnv ggm:cogen:firReal:1.0 firReal_0 ]
  set_property -dict [ list \
   CONFIG.DATA_IN_SIZE {14} \
   CONFIG.DATA_OUT_SIZE {32} \
   CONFIG.DECIMATE_FACTOR {1} \
   CONFIG.NB_COEFF {25} \
 ] $firReal_0

  # Create instance: firReal_1, and set properties
  set firReal_1 [ create_bd_cell -type ip -vlnv ggm:cogen:firReal:1.0 firReal_1 ]
  set_property -dict [ list \
   CONFIG.DATA_IN_SIZE {14} \
   CONFIG.DATA_OUT_SIZE {32} \
   CONFIG.DECIMATE_FACTOR {1} \
   CONFIG.NB_COEFF {25} \
 ] $firReal_1

  # Create instance: meanReal_0, and set properties
  set meanReal_0 [ create_bd_cell -type ip -vlnv ggm:cogen:meanReal:1.0 meanReal_0 ]
  set_property -dict [ list \
   CONFIG.DATA_IN_SIZE {40} \
   CONFIG.DATA_OUT_SIZE {64} \
   CONFIG.NB_ACCUM {128} \
   CONFIG.SHIFT {7} \
 ] $meanReal_0

  # Create instance: meanReal_1, and set properties
  set meanReal_1 [ create_bd_cell -type ip -vlnv ggm:cogen:meanReal:1.0 meanReal_1 ]
  set_property -dict [ list \
   CONFIG.DATA_IN_SIZE {40} \
   CONFIG.DATA_OUT_SIZE {64} \
   CONFIG.NB_ACCUM {128} \
   CONFIG.SHIFT {7} \
 ] $meanReal_1

  # Create instance: meanReal_2, and set properties
  set meanReal_2 [ create_bd_cell -type ip -vlnv ggm:cogen:meanReal:1.0 meanReal_2 ]
  set_property -dict [ list \
   CONFIG.DATA_IN_SIZE {40} \
   CONFIG.DATA_OUT_SIZE {64} \
   CONFIG.NB_ACCUM {32768} \
   CONFIG.SHIFT {15} \
 ] $meanReal_2

  # Create instance: meanReal_3, and set properties
  set meanReal_3 [ create_bd_cell -type ip -vlnv ggm:cogen:meanReal:1.0 meanReal_3 ]
  set_property -dict [ list \
   CONFIG.DATA_IN_SIZE {40} \
   CONFIG.DATA_OUT_SIZE {64} \
   CONFIG.NB_ACCUM {32768} \
   CONFIG.SHIFT {15} \
 ] $meanReal_3

  # Create instance: mixer_sin_0, and set properties
  set mixer_sin_0 [ create_bd_cell -type ip -vlnv ggm:cogen:mixer_sin:1.0 mixer_sin_0 ]
  set_property -dict [ list \
   CONFIG.DATA_IN_SIZE {14} \
   CONFIG.DATA_OUT_SIZE {14} \
   CONFIG.NCO_SIZE {16} \
 ] $mixer_sin_0

  # Create instance: mixer_sin_1, and set properties
  set mixer_sin_1 [ create_bd_cell -type ip -vlnv ggm:cogen:mixer_sin:1.0 mixer_sin_1 ]
  set_property -dict [ list \
   CONFIG.DATA_IN_SIZE {14} \
   CONFIG.DATA_OUT_SIZE {14} \
   CONFIG.NCO_SIZE {16} \
 ] $mixer_sin_1

  # Create instance: mixer_sin_2, and set properties
  set mixer_sin_2 [ create_bd_cell -type ip -vlnv ggm:cogen:multiplierReal:1.0 mixer_sin_2 ]
  set_property -dict [ list \
   CONFIG.DATA1_IN_SIZE {14} \
   CONFIG.DATA2_IN_SIZE {14} \
   CONFIG.DATA_OUT_SIZE {14} \
 ] $mixer_sin_2

  # Create instance: mixer_sin_3, and set properties
  set mixer_sin_3 [ create_bd_cell -type ip -vlnv ggm:cogen:multiplierReal:1.0 mixer_sin_3 ]
  set_property -dict [ list \
   CONFIG.DATA1_IN_SIZE {14} \
   CONFIG.DATA2_IN_SIZE {14} \
   CONFIG.DATA_OUT_SIZE {14} \
 ] $mixer_sin_3

  # Create instance: mixer_sin_4, and set properties
  set mixer_sin_4 [ create_bd_cell -type ip -vlnv ggm:cogen:mixer_sin:1.0 mixer_sin_4 ]
  set_property -dict [ list \
   CONFIG.DATA_IN_SIZE {14} \
   CONFIG.DATA_OUT_SIZE {14} \
   CONFIG.NCO_SIZE {16} \
 ] $mixer_sin_4

  # Create instance: mixer_sin_5, and set properties
  set mixer_sin_5 [ create_bd_cell -type ip -vlnv ggm:cogen:mixer_sin:1.0 mixer_sin_5 ]
  set_property -dict [ list \
   CONFIG.DATA_IN_SIZE {14} \
   CONFIG.DATA_OUT_SIZE {14} \
   CONFIG.NCO_SIZE {16} \
 ] $mixer_sin_5

  # Create instance: pidv3_axi_0, and set properties
  set pidv3_axi_0 [ create_bd_cell -type ip -vlnv ggm:cogen:pidv3_axi:1.0 pidv3_axi_0 ]
  set_property -dict [ list \
   CONFIG.DSR {1} \
   CONFIG.ISR {19} \
   CONFIG.I_SIZE {18} \
   CONFIG.PSR {13} \
 ] $pidv3_axi_0

  # Create instance: pidv3_axi_1, and set properties
  set pidv3_axi_1 [ create_bd_cell -type ip -vlnv ggm:cogen:pidv3_axi:1.0 pidv3_axi_1 ]
  set_property -dict [ list \
   CONFIG.DSR {1} \
   CONFIG.ISR {19} \
   CONFIG.I_SIZE {18} \
   CONFIG.PSR {13} \
 ] $pidv3_axi_1

  # Create instance: ps7, and set properties
  set ps7 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 ps7 ]
  set_property -dict [ list \
   CONFIG.PCW_ACT_APU_PERIPHERAL_FREQMHZ {666.666687} \
   CONFIG.PCW_ACT_CAN_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_DCI_PERIPHERAL_FREQMHZ {10.158730} \
   CONFIG.PCW_ACT_ENET0_PERIPHERAL_FREQMHZ {125.000000} \
   CONFIG.PCW_ACT_ENET1_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA0_PERIPHERAL_FREQMHZ {125.000000} \
   CONFIG.PCW_ACT_FPGA1_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA2_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA3_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_PCAP_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_QSPI_PERIPHERAL_FREQMHZ {125.000000} \
   CONFIG.PCW_ACT_SDIO_PERIPHERAL_FREQMHZ {100.000000} \
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
   CONFIG.PCW_CAN0_GRP_CLK_ENABLE {0} \
   CONFIG.PCW_CAN0_PERIPHERAL_CLKSRC {External} \
   CONFIG.PCW_CAN0_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_CAN1_GRP_CLK_ENABLE {0} \
   CONFIG.PCW_CAN1_PERIPHERAL_CLKSRC {External} \
   CONFIG.PCW_CAN1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_CAN_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_CAN_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_CAN_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_CAN_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_CAN_PERIPHERAL_VALID {0} \
   CONFIG.PCW_CLK0_FREQ {125000000} \
   CONFIG.PCW_CLK1_FREQ {10000000} \
   CONFIG.PCW_CLK2_FREQ {10000000} \
   CONFIG.PCW_CLK3_FREQ {10000000} \
   CONFIG.PCW_CPU_CPU_6X4X_MAX_RANGE {667} \
   CONFIG.PCW_CPU_CPU_PLL_FREQMHZ {1333.333} \
   CONFIG.PCW_CPU_PERIPHERAL_CLKSRC {ARM PLL} \
   CONFIG.PCW_CPU_PERIPHERAL_DIVISOR0 {2} \
   CONFIG.PCW_CRYSTAL_PERIPHERAL_FREQMHZ {33.333333} \
   CONFIG.PCW_DCI_PERIPHERAL_CLKSRC {DDR PLL} \
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
   CONFIG.PCW_DDR_RAM_HIGHADDR {0x1FFFFFFF} \
   CONFIG.PCW_DDR_WRITE_TO_CRITICAL_PRIORITY_LEVEL {2} \
   CONFIG.PCW_ENET0_ENET0_IO {MIO 16 .. 27} \
   CONFIG.PCW_ENET0_GRP_MDIO_ENABLE {1} \
   CONFIG.PCW_ENET0_GRP_MDIO_IO {EMIO} \
   CONFIG.PCW_ENET0_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR0 {8} \
   CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_ENET0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_ENET0_PERIPHERAL_FREQMHZ {1000 Mbps} \
   CONFIG.PCW_ENET0_RESET_ENABLE {0} \
   CONFIG.PCW_ENET1_GRP_MDIO_ENABLE {0} \
   CONFIG.PCW_ENET1_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_ENET1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_ENET1_PERIPHERAL_FREQMHZ {1000 Mbps} \
   CONFIG.PCW_ENET1_RESET_ENABLE {0} \
   CONFIG.PCW_ENET_RESET_ENABLE {1} \
   CONFIG.PCW_ENET_RESET_POLARITY {Active Low} \
   CONFIG.PCW_ENET_RESET_SELECT {Share reset pin} \
   CONFIG.PCW_EN_4K_TIMER {0} \
   CONFIG.PCW_EN_CAN0 {0} \
   CONFIG.PCW_EN_CAN1 {0} \
   CONFIG.PCW_EN_CLK0_PORT {1} \
   CONFIG.PCW_EN_CLK1_PORT {0} \
   CONFIG.PCW_EN_CLK2_PORT {0} \
   CONFIG.PCW_EN_CLK3_PORT {0} \
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
   CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK2_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK3_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK_CLK0_BUF {TRUE} \
   CONFIG.PCW_FCLK_CLK1_BUF {FALSE} \
   CONFIG.PCW_FCLK_CLK2_BUF {FALSE} \
   CONFIG.PCW_FCLK_CLK3_BUF {FALSE} \
   CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {125.000000} \
   CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ {250.000000} \
   CONFIG.PCW_FPGA2_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_FPGA3_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_FPGA_FCLK0_ENABLE {1} \
   CONFIG.PCW_FPGA_FCLK1_ENABLE {0} \
   CONFIG.PCW_FPGA_FCLK2_ENABLE {0} \
   CONFIG.PCW_FPGA_FCLK3_ENABLE {0} \
   CONFIG.PCW_GPIO_EMIO_GPIO_ENABLE {0} \
   CONFIG.PCW_GPIO_EMIO_GPIO_WIDTH {64} \
   CONFIG.PCW_GPIO_MIO_GPIO_ENABLE {1} \
   CONFIG.PCW_GPIO_MIO_GPIO_IO {MIO} \
   CONFIG.PCW_GPIO_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_I2C0_GRP_INT_ENABLE {0} \
   CONFIG.PCW_I2C0_I2C0_IO {MIO 50 .. 51} \
   CONFIG.PCW_I2C0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_I2C0_RESET_ENABLE {0} \
   CONFIG.PCW_I2C1_GRP_INT_ENABLE {0} \
   CONFIG.PCW_I2C1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_I2C1_RESET_ENABLE {0} \
   CONFIG.PCW_I2C_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_I2C_RESET_ENABLE {1} \
   CONFIG.PCW_I2C_RESET_POLARITY {Active Low} \
   CONFIG.PCW_I2C_RESET_SELECT {Share reset pin} \
   CONFIG.PCW_IMPORT_BOARD_PRESET {/home/bma/git/github/oscimpDigital/fpga_ip/preset/redpitaya_preset.xml} \
   CONFIG.PCW_IOPLL_CTRL_FBDIV {30} \
   CONFIG.PCW_IO_IO_PLL_FREQMHZ {1000.000} \
   CONFIG.PCW_IRQ_F2P_MODE {DIRECT} \
   CONFIG.PCW_MIO_0_DIRECTION {inout} \
   CONFIG.PCW_MIO_0_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_0_PULLUP {disabled} \
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
   CONFIG.PCW_MIO_19_IOTYPE {out} \
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
   CONFIG.PCW_MIO_28_PULLUP {enabled} \
   CONFIG.PCW_MIO_28_SLEW {fast} \
   CONFIG.PCW_MIO_29_DIRECTION {in} \
   CONFIG.PCW_MIO_29_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_29_PULLUP {enabled} \
   CONFIG.PCW_MIO_29_SLEW {fast} \
   CONFIG.PCW_MIO_2_DIRECTION {inout} \
   CONFIG.PCW_MIO_2_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_2_PULLUP {disabled} \
   CONFIG.PCW_MIO_2_SLEW {slow} \
   CONFIG.PCW_MIO_30_DIRECTION {out} \
   CONFIG.PCW_MIO_30_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_30_PULLUP {enabled} \
   CONFIG.PCW_MIO_30_SLEW {fast} \
   CONFIG.PCW_MIO_31_DIRECTION {in} \
   CONFIG.PCW_MIO_31_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_31_PULLUP {enabled} \
   CONFIG.PCW_MIO_31_SLEW {fast} \
   CONFIG.PCW_MIO_32_DIRECTION {inout} \
   CONFIG.PCW_MIO_32_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_32_PULLUP {enabled} \
   CONFIG.PCW_MIO_32_SLEW {fast} \
   CONFIG.PCW_MIO_33_DIRECTION {inout} \
   CONFIG.PCW_MIO_33_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_33_PULLUP {enabled} \
   CONFIG.PCW_MIO_33_SLEW {fast} \
   CONFIG.PCW_MIO_34_DIRECTION {inout} \
   CONFIG.PCW_MIO_34_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_34_PULLUP {enabled} \
   CONFIG.PCW_MIO_34_SLEW {fast} \
   CONFIG.PCW_MIO_35_DIRECTION {inout} \
   CONFIG.PCW_MIO_35_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_35_PULLUP {enabled} \
   CONFIG.PCW_MIO_35_SLEW {fast} \
   CONFIG.PCW_MIO_36_DIRECTION {in} \
   CONFIG.PCW_MIO_36_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_36_PULLUP {enabled} \
   CONFIG.PCW_MIO_36_SLEW {fast} \
   CONFIG.PCW_MIO_37_DIRECTION {inout} \
   CONFIG.PCW_MIO_37_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_37_PULLUP {enabled} \
   CONFIG.PCW_MIO_37_SLEW {fast} \
   CONFIG.PCW_MIO_38_DIRECTION {inout} \
   CONFIG.PCW_MIO_38_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_38_PULLUP {enabled} \
   CONFIG.PCW_MIO_38_SLEW {fast} \
   CONFIG.PCW_MIO_39_DIRECTION {inout} \
   CONFIG.PCW_MIO_39_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_39_PULLUP {enabled} \
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
   CONFIG.PCW_MIO_52_DIRECTION {inout} \
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
   CONFIG.PCW_MIO_TREE_PERIPHERALS {GPIO#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#GPIO#UART 1#UART 1#SPI 1#SPI 1#SPI 1#SPI 1#UART 0#UART 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#USB Reset#GPIO#I2C 0#I2C 0#GPIO#GPIO} \
   CONFIG.PCW_MIO_TREE_SIGNALS {gpio[0]#qspi0_ss_b#qspi0_io[0]#qspi0_io[1]#qspi0_io[2]#qspi0_io[3]/HOLD_B#qspi0_sclk#gpio[7]#tx#rx#mosi#miso#sclk#ss[0]#rx#tx#tx_clk#txd[0]#txd[1]#txd[2]#txd[3]#tx_ctl#rx_clk#rxd[0]#rxd[1]#rxd[2]#rxd[3]#rx_ctl#data[4]#dir#stp#nxt#data[0]#data[1]#data[2]#data[3]#clk#data[5]#data[6]#data[7]#clk#cmd#data[0]#data[1]#data[2]#data[3]#cd#wp#reset#gpio[49]#scl#sda#gpio[52]#gpio[53]} \
   CONFIG.PCW_NAND_CYCLES_T_AR {1} \
   CONFIG.PCW_NAND_CYCLES_T_CLR {1} \
   CONFIG.PCW_NAND_CYCLES_T_RC {11} \
   CONFIG.PCW_NAND_CYCLES_T_REA {1} \
   CONFIG.PCW_NAND_CYCLES_T_RR {1} \
   CONFIG.PCW_NAND_CYCLES_T_WC {11} \
   CONFIG.PCW_NAND_CYCLES_T_WP {1} \
   CONFIG.PCW_NAND_GRP_D8_ENABLE {0} \
   CONFIG.PCW_NAND_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_NOR_CS0_T_CEOE {1} \
   CONFIG.PCW_NOR_CS0_T_PC {1} \
   CONFIG.PCW_NOR_CS0_T_RC {11} \
   CONFIG.PCW_NOR_CS0_T_TR {1} \
   CONFIG.PCW_NOR_CS0_T_WC {11} \
   CONFIG.PCW_NOR_CS0_T_WP {1} \
   CONFIG.PCW_NOR_CS0_WE_TIME {0} \
   CONFIG.PCW_NOR_CS1_T_CEOE {1} \
   CONFIG.PCW_NOR_CS1_T_PC {1} \
   CONFIG.PCW_NOR_CS1_T_RC {11} \
   CONFIG.PCW_NOR_CS1_T_TR {1} \
   CONFIG.PCW_NOR_CS1_T_WC {11} \
   CONFIG.PCW_NOR_CS1_T_WP {1} \
   CONFIG.PCW_NOR_CS1_WE_TIME {0} \
   CONFIG.PCW_NOR_GRP_A25_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_CS0_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_CS1_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_CS0_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_CS1_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_INT_ENABLE {0} \
   CONFIG.PCW_NOR_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_NOR_SRAM_CS0_T_CEOE {1} \
   CONFIG.PCW_NOR_SRAM_CS0_T_PC {1} \
   CONFIG.PCW_NOR_SRAM_CS0_T_RC {11} \
   CONFIG.PCW_NOR_SRAM_CS0_T_TR {1} \
   CONFIG.PCW_NOR_SRAM_CS0_T_WC {11} \
   CONFIG.PCW_NOR_SRAM_CS0_T_WP {1} \
   CONFIG.PCW_NOR_SRAM_CS0_WE_TIME {0} \
   CONFIG.PCW_NOR_SRAM_CS1_T_CEOE {1} \
   CONFIG.PCW_NOR_SRAM_CS1_T_PC {1} \
   CONFIG.PCW_NOR_SRAM_CS1_T_RC {11} \
   CONFIG.PCW_NOR_SRAM_CS1_T_TR {1} \
   CONFIG.PCW_NOR_SRAM_CS1_T_WC {11} \
   CONFIG.PCW_NOR_SRAM_CS1_T_WP {1} \
   CONFIG.PCW_NOR_SRAM_CS1_WE_TIME {0} \
   CONFIG.PCW_OVERRIDE_BASIC_CLOCK {0} \
   CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY0 {0.080} \
   CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY1 {0.063} \
   CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY2 {0.057} \
   CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY3 {0.068} \
   CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_0 {-0.047} \
   CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_1 {-0.025} \
   CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_2 {-0.006} \
   CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_3 {-0.017} \
   CONFIG.PCW_PCAP_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_PCAP_PERIPHERAL_DIVISOR0 {5} \
   CONFIG.PCW_PCAP_PERIPHERAL_FREQMHZ {200} \
   CONFIG.PCW_PJTAG_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_PLL_BYPASSMODE_ENABLE {0} \
   CONFIG.PCW_PRESET_BANK0_VOLTAGE {LVCMOS 3.3V} \
   CONFIG.PCW_PRESET_BANK1_VOLTAGE {LVCMOS 2.5V} \
   CONFIG.PCW_QSPI_GRP_FBCLK_ENABLE {0} \
   CONFIG.PCW_QSPI_GRP_IO1_ENABLE {0} \
   CONFIG.PCW_QSPI_GRP_SINGLE_SS_ENABLE {1} \
   CONFIG.PCW_QSPI_GRP_SINGLE_SS_IO {MIO 1 .. 6} \
   CONFIG.PCW_QSPI_GRP_SS1_ENABLE {0} \
   CONFIG.PCW_QSPI_INTERNAL_HIGHADDRESS {0xFCFFFFFF} \
   CONFIG.PCW_QSPI_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_QSPI_PERIPHERAL_DIVISOR0 {8} \
   CONFIG.PCW_QSPI_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_QSPI_PERIPHERAL_FREQMHZ {125} \
   CONFIG.PCW_QSPI_QSPI_IO {MIO 1 .. 6} \
   CONFIG.PCW_SD0_GRP_CD_ENABLE {1} \
   CONFIG.PCW_SD0_GRP_CD_IO {MIO 46} \
   CONFIG.PCW_SD0_GRP_POW_ENABLE {0} \
   CONFIG.PCW_SD0_GRP_WP_ENABLE {1} \
   CONFIG.PCW_SD0_GRP_WP_IO {MIO 47} \
   CONFIG.PCW_SD0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_SD0_SD0_IO {MIO 40 .. 45} \
   CONFIG.PCW_SD1_GRP_CD_ENABLE {0} \
   CONFIG.PCW_SD1_GRP_POW_ENABLE {0} \
   CONFIG.PCW_SD1_GRP_WP_ENABLE {0} \
   CONFIG.PCW_SD1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_SDIO_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_SDIO_PERIPHERAL_DIVISOR0 {10} \
   CONFIG.PCW_SDIO_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_SDIO_PERIPHERAL_VALID {1} \
   CONFIG.PCW_SINGLE_QSPI_DATA_MODE {x4} \
   CONFIG.PCW_SMC_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_SMC_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_SMC_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_SMC_PERIPHERAL_VALID {0} \
   CONFIG.PCW_SPI0_GRP_SS0_ENABLE {1} \
   CONFIG.PCW_SPI0_GRP_SS0_IO {EMIO} \
   CONFIG.PCW_SPI0_GRP_SS1_ENABLE {1} \
   CONFIG.PCW_SPI0_GRP_SS1_IO {EMIO} \
   CONFIG.PCW_SPI0_GRP_SS2_ENABLE {1} \
   CONFIG.PCW_SPI0_GRP_SS2_IO {EMIO} \
   CONFIG.PCW_SPI0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_SPI0_SPI0_IO {EMIO} \
   CONFIG.PCW_SPI1_GRP_SS0_ENABLE {1} \
   CONFIG.PCW_SPI1_GRP_SS0_IO {MIO 13} \
   CONFIG.PCW_SPI1_GRP_SS1_ENABLE {0} \
   CONFIG.PCW_SPI1_GRP_SS2_ENABLE {0} \
   CONFIG.PCW_SPI1_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_SPI1_SPI1_IO {MIO 10 .. 15} \
   CONFIG.PCW_SPI_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_SPI_PERIPHERAL_DIVISOR0 {6} \
   CONFIG.PCW_SPI_PERIPHERAL_FREQMHZ {166.666666} \
   CONFIG.PCW_SPI_PERIPHERAL_VALID {1} \
   CONFIG.PCW_S_AXI_HP0_DATA_WIDTH {64} \
   CONFIG.PCW_S_AXI_HP1_DATA_WIDTH {64} \
   CONFIG.PCW_S_AXI_HP2_DATA_WIDTH {64} \
   CONFIG.PCW_S_AXI_HP3_DATA_WIDTH {64} \
   CONFIG.PCW_TPIU_PERIPHERAL_CLKSRC {External} \
   CONFIG.PCW_TPIU_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TPIU_PERIPHERAL_FREQMHZ {200} \
   CONFIG.PCW_TRACE_GRP_16BIT_ENABLE {0} \
   CONFIG.PCW_TRACE_GRP_2BIT_ENABLE {0} \
   CONFIG.PCW_TRACE_GRP_32BIT_ENABLE {0} \
   CONFIG.PCW_TRACE_GRP_4BIT_ENABLE {0} \
   CONFIG.PCW_TRACE_GRP_8BIT_ENABLE {0} \
   CONFIG.PCW_TRACE_INTERNAL_WIDTH {2} \
   CONFIG.PCW_TRACE_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_TTC0_CLK0_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC0_CLK0_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC0_CLK0_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC0_CLK1_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC0_CLK1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC0_CLK1_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC0_CLK2_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC0_CLK2_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC0_CLK2_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_TTC0_TTC0_IO {EMIO} \
   CONFIG.PCW_TTC1_CLK0_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC1_CLK0_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC1_CLK0_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC1_CLK1_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC1_CLK1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC1_CLK1_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC1_CLK2_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC1_CLK2_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC1_CLK2_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_TTC_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_UART0_BAUD_RATE {115200} \
   CONFIG.PCW_UART0_GRP_FULL_ENABLE {0} \
   CONFIG.PCW_UART0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_UART0_UART0_IO {MIO 14 .. 15} \
   CONFIG.PCW_UART1_BAUD_RATE {115200} \
   CONFIG.PCW_UART1_GRP_FULL_ENABLE {0} \
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
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY0 {0.25} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY1 {0.25} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY2 {0.25} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY3 {0.25} \
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
   CONFIG.PCW_UIPARAM_DDR_TRAIN_DATA_EYE {1} \
   CONFIG.PCW_UIPARAM_DDR_TRAIN_READ_GATE {1} \
   CONFIG.PCW_UIPARAM_DDR_TRAIN_WRITE_LEVEL {1} \
   CONFIG.PCW_UIPARAM_DDR_T_FAW {40.0} \
   CONFIG.PCW_UIPARAM_DDR_T_RAS_MIN {35.0} \
   CONFIG.PCW_UIPARAM_DDR_T_RC {48.91} \
   CONFIG.PCW_UIPARAM_DDR_T_RCD {7} \
   CONFIG.PCW_UIPARAM_DDR_T_RP {7} \
   CONFIG.PCW_UIPARAM_DDR_USE_INTERNAL_VREF {0} \
   CONFIG.PCW_USB0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_USB0_PERIPHERAL_FREQMHZ {60} \
   CONFIG.PCW_USB0_RESET_ENABLE {1} \
   CONFIG.PCW_USB0_RESET_IO {MIO 48} \
   CONFIG.PCW_USB0_USB0_IO {MIO 28 .. 39} \
   CONFIG.PCW_USB1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_USB1_PERIPHERAL_FREQMHZ {60} \
   CONFIG.PCW_USB1_RESET_ENABLE {0} \
   CONFIG.PCW_USB_RESET_ENABLE {1} \
   CONFIG.PCW_USB_RESET_POLARITY {Active Low} \
   CONFIG.PCW_USB_RESET_SELECT {Share reset pin} \
   CONFIG.PCW_USE_AXI_NONSECURE {0} \
   CONFIG.PCW_USE_CROSS_TRIGGER {0} \
   CONFIG.PCW_WDT_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_WDT_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_WDT_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_WDT_PERIPHERAL_FREQMHZ {133.333333} \
 ] $ps7

  # Create instance: ps7_axi, and set properties
  set ps7_axi [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 ps7_axi ]
  set_property -dict [ list \
   CONFIG.NUM_MI {20} \
 ] $ps7_axi

  # Create instance: ps7_rst, and set properties
  set ps7_rst [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 ps7_rst ]

  # Create instance: redpitaya_converters_0, and set properties
  set redpitaya_converters_0 [ create_bd_cell -type ip -vlnv ggm:cogen:redpitaya_converters:1.0 redpitaya_converters_0 ]
  set_property -dict [ list \
   CONFIG.CLOCK_DUTY_CYCLE_STABILIZER_EN {false} \
 ] $redpitaya_converters_0

  # Create instance: shifterReal_2, and set properties
  set shifterReal_2 [ create_bd_cell -type ip -vlnv ggm:cogen:shifterReal:1.0 shifterReal_2 ]
  set_property -dict [ list \
   CONFIG.DATA_IN_SIZE {19} \
   CONFIG.DATA_OUT_SIZE {40} \
 ] $shifterReal_2

  # Create instance: shifterReal_3, and set properties
  set shifterReal_3 [ create_bd_cell -type ip -vlnv ggm:cogen:shifterReal:1.0 shifterReal_3 ]
  set_property -dict [ list \
   CONFIG.DATA_IN_SIZE {19} \
   CONFIG.DATA_OUT_SIZE {40} \
 ] $shifterReal_3

  # Create instance: shifterReal_dyn_0, and set properties
  set shifterReal_dyn_0 [ create_bd_cell -type ip -vlnv ggm:cogen:shifterReal_dyn:1.0 shifterReal_dyn_0 ]
  set_property -dict [ list \
   CONFIG.DATA_OUT_SIZE {14} \
 ] $shifterReal_dyn_0

  # Create instance: shifterReal_dyn_1, and set properties
  set shifterReal_dyn_1 [ create_bd_cell -type ip -vlnv ggm:cogen:shifterReal_dyn:1.0 shifterReal_dyn_1 ]
  set_property -dict [ list \
   CONFIG.DATA_OUT_SIZE {14} \
 ] $shifterReal_dyn_1

  # Create interface connections
  connect_bd_intf_net -intf_net adc1_offset_data_out [get_bd_intf_pins adc1_offset/data_out] [get_bd_intf_pins mixer_sin_0/data_in]
  connect_bd_intf_net -intf_net adc2_offset_data_out [get_bd_intf_pins adc2_offset/data_out] [get_bd_intf_pins mixer_sin_1/data_in]
  connect_bd_intf_net -intf_net convertComplexToReal_0_dataI_out [get_bd_intf_pins convertComplexToReal_0/dataI_out] [get_bd_intf_pins firReal_0/data_in]
  connect_bd_intf_net -intf_net convertComplexToReal_1_dataI_out [get_bd_intf_pins convertComplexToReal_1/dataI_out] [get_bd_intf_pins firReal_1/data_in]
  connect_bd_intf_net -intf_net convertComplexToReal_4_dataI_out [get_bd_intf_pins convertComplexToReal_4/dataI_out] [get_bd_intf_pins dds1_offset/data_in]
  connect_bd_intf_net -intf_net convertComplexToReal_5_dataI_out [get_bd_intf_pins convertComplexToReal_5/dataI_out] [get_bd_intf_pins dds2_offset/data_in]
  connect_bd_intf_net -intf_net dds1_f0_data_out [get_bd_intf_pins dds1_f0/data_out] [get_bd_intf_pins dupplReal_0/data_in]
  connect_bd_intf_net -intf_net dds1_nco_sine_out [get_bd_intf_pins dds1_nco/sine_out] [get_bd_intf_pins mixer_sin_4/nco_in]
  connect_bd_intf_net -intf_net dds1_offset_data_out [get_bd_intf_pins dds1_offset/data_out] [get_bd_intf_pins redpitaya_converters_0/dataA_in]
  connect_bd_intf_net -intf_net dds2_f0_data_out [get_bd_intf_pins dds2_f0/data_out] [get_bd_intf_pins dupplReal_1/data_in]
  connect_bd_intf_net -intf_net dds2_nco_sine_out [get_bd_intf_pins dds2_nco/sine_out] [get_bd_intf_pins mixer_sin_5/nco_in]
  connect_bd_intf_net -intf_net dds2_offset_data_out [get_bd_intf_pins dds2_offset/data_out] [get_bd_intf_pins redpitaya_converters_0/dataB_in]
  connect_bd_intf_net -intf_net dds_ampl_dataA_out [get_bd_intf_pins dds_ampl/dataA_out] [get_bd_intf_pins mixer_sin_4/data_in]
  connect_bd_intf_net -intf_net dds_ampl_dataB_out [get_bd_intf_pins dds_ampl/dataB_out] [get_bd_intf_pins mixer_sin_5/data_in]
  connect_bd_intf_net -intf_net dds_range_dataA_out [get_bd_intf_pins dds_range/dataA_out] [get_bd_intf_pins mixer_sin_2/data2_in]
  connect_bd_intf_net -intf_net dds_range_dataB_out [get_bd_intf_pins dds_range/dataB_out] [get_bd_intf_pins mixer_sin_3/data2_in]
  connect_bd_intf_net -intf_net demod1_nco_sine_out [get_bd_intf_pins demod1_nco/sine_out] [get_bd_intf_pins mixer_sin_0/nco_in]
  connect_bd_intf_net -intf_net demod2_nco_sine_out [get_bd_intf_pins demod2_nco/sine_out] [get_bd_intf_pins mixer_sin_1/nco_in]
  connect_bd_intf_net -intf_net dupplReal_0_data1_out [get_bd_intf_pins demod1_nco/pinc_in] [get_bd_intf_pins dupplReal_0/data1_out]
  connect_bd_intf_net -intf_net dupplReal_0_data2_out [get_bd_intf_pins dupplReal_0/data2_out] [get_bd_intf_pins meanReal_0/data_in]
  connect_bd_intf_net -intf_net dupplReal_0_data3_out [get_bd_intf_pins dupplReal_0/data3_out] [get_bd_intf_pins meanReal_2/data_in]
  connect_bd_intf_net -intf_net dupplReal_1_data1_out [get_bd_intf_pins demod2_nco/pinc_in] [get_bd_intf_pins dupplReal_1/data1_out]
  connect_bd_intf_net -intf_net dupplReal_1_data2_out [get_bd_intf_pins dupplReal_1/data2_out] [get_bd_intf_pins meanReal_1/data_in]
  connect_bd_intf_net -intf_net dupplReal_1_data3_out [get_bd_intf_pins dupplReal_1/data3_out] [get_bd_intf_pins meanReal_3/data_in]
  connect_bd_intf_net -intf_net expanderReal_2_data_out [get_bd_intf_pins expanderReal_2/data_out] [get_bd_intf_pins shifterReal_3/data_in]
  connect_bd_intf_net -intf_net expanderReal_3_data_out [get_bd_intf_pins expanderReal_3/data_out] [get_bd_intf_pins shifterReal_2/data_in]
  connect_bd_intf_net -intf_net firReal_0_data_out [get_bd_intf_pins firReal_0/data_out] [get_bd_intf_pins shifterReal_dyn_0/data_in]
  connect_bd_intf_net -intf_net firReal_1_data_out [get_bd_intf_pins firReal_1/data_out] [get_bd_intf_pins shifterReal_dyn_1/data_in]
  connect_bd_intf_net -intf_net meanReal_0_data_out [get_bd_intf_pins dataReal_to_ram_fast/data1_in] [get_bd_intf_pins meanReal_0/data_out]
  connect_bd_intf_net -intf_net meanReal_1_data_out [get_bd_intf_pins dataReal_to_ram_fast/data2_in] [get_bd_intf_pins meanReal_1/data_out]
  connect_bd_intf_net -intf_net meanReal_2_data_out [get_bd_intf_pins dataReal_to_ram_slow/data1_in] [get_bd_intf_pins meanReal_2/data_out]
  connect_bd_intf_net -intf_net meanReal_3_data_out [get_bd_intf_pins dataReal_to_ram_slow/data2_in] [get_bd_intf_pins meanReal_3/data_out]
  connect_bd_intf_net -intf_net mixer_sin_0_data_out [get_bd_intf_pins convertComplexToReal_0/data_in] [get_bd_intf_pins mixer_sin_0/data_out]
  connect_bd_intf_net -intf_net mixer_sin_1_data_out [get_bd_intf_pins convertComplexToReal_1/data_in] [get_bd_intf_pins mixer_sin_1/data_out]
  connect_bd_intf_net -intf_net mixer_sin_2_data_out [get_bd_intf_pins expanderReal_2/data_in] [get_bd_intf_pins mixer_sin_2/data_out]
  connect_bd_intf_net -intf_net mixer_sin_3_data_out [get_bd_intf_pins expanderReal_3/data_in] [get_bd_intf_pins mixer_sin_3/data_out]
  connect_bd_intf_net -intf_net mixer_sin_4_data_out [get_bd_intf_pins convertComplexToReal_4/data_in] [get_bd_intf_pins mixer_sin_4/data_out]
  connect_bd_intf_net -intf_net mixer_sin_5_data_out [get_bd_intf_pins convertComplexToReal_5/data_in] [get_bd_intf_pins mixer_sin_5/data_out]
  connect_bd_intf_net -intf_net phys_interface_0_1 [get_bd_intf_ports phys_interface_0] [get_bd_intf_pins redpitaya_converters_0/phys_interface]
  connect_bd_intf_net -intf_net pidv3_axi_0_data_out [get_bd_intf_pins mixer_sin_2/data1_in] [get_bd_intf_pins pidv3_axi_0/data_out]
  connect_bd_intf_net -intf_net pidv3_axi_1_data_out [get_bd_intf_pins mixer_sin_3/data1_in] [get_bd_intf_pins pidv3_axi_1/data_out]
  connect_bd_intf_net -intf_net ps7_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins ps7/DDR]
  connect_bd_intf_net -intf_net ps7_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins ps7/FIXED_IO]
  connect_bd_intf_net -intf_net ps7_M_AXI_GP0 [get_bd_intf_pins ps7/M_AXI_GP0] [get_bd_intf_pins ps7_axi/S00_AXI]
  connect_bd_intf_net -intf_net ps7_axi_M00_AXI [get_bd_intf_pins adc1_offset/s00_axi] [get_bd_intf_pins ps7_axi/M00_AXI]
  connect_bd_intf_net -intf_net ps7_axi_M01_AXI [get_bd_intf_pins adc2_offset/s00_axi] [get_bd_intf_pins ps7_axi/M01_AXI]
  connect_bd_intf_net -intf_net ps7_axi_M02_AXI [get_bd_intf_pins dataReal_to_ram_fast/s00_axi] [get_bd_intf_pins ps7_axi/M02_AXI]
  connect_bd_intf_net -intf_net ps7_axi_M03_AXI [get_bd_intf_pins dataReal_to_ram_slow/s00_axi] [get_bd_intf_pins ps7_axi/M03_AXI]
  connect_bd_intf_net -intf_net ps7_axi_M04_AXI [get_bd_intf_pins dds1_f0/s00_axi] [get_bd_intf_pins ps7_axi/M04_AXI]
  connect_bd_intf_net -intf_net ps7_axi_M05_AXI [get_bd_intf_pins dds1_nco/s00_axi] [get_bd_intf_pins ps7_axi/M05_AXI]
  connect_bd_intf_net -intf_net ps7_axi_M06_AXI [get_bd_intf_pins dds1_offset/s00_axi] [get_bd_intf_pins ps7_axi/M06_AXI]
  connect_bd_intf_net -intf_net ps7_axi_M07_AXI [get_bd_intf_pins dds2_f0/s00_axi] [get_bd_intf_pins ps7_axi/M07_AXI]
  connect_bd_intf_net -intf_net ps7_axi_M08_AXI [get_bd_intf_pins dds2_nco/s00_axi] [get_bd_intf_pins ps7_axi/M08_AXI]
  connect_bd_intf_net -intf_net ps7_axi_M09_AXI [get_bd_intf_pins dds2_offset/s00_axi] [get_bd_intf_pins ps7_axi/M09_AXI]
  connect_bd_intf_net -intf_net ps7_axi_M10_AXI [get_bd_intf_pins dds_ampl/s00_axi] [get_bd_intf_pins ps7_axi/M10_AXI]
  connect_bd_intf_net -intf_net ps7_axi_M11_AXI [get_bd_intf_pins dds_range/s00_axi] [get_bd_intf_pins ps7_axi/M11_AXI]
  connect_bd_intf_net -intf_net ps7_axi_M12_AXI [get_bd_intf_pins demod1_nco/s00_axi] [get_bd_intf_pins ps7_axi/M12_AXI]
  connect_bd_intf_net -intf_net ps7_axi_M13_AXI [get_bd_intf_pins demod2_nco/s00_axi] [get_bd_intf_pins ps7_axi/M13_AXI]
  connect_bd_intf_net -intf_net ps7_axi_M14_AXI [get_bd_intf_pins firReal_0/s00_axi] [get_bd_intf_pins ps7_axi/M14_AXI]
  connect_bd_intf_net -intf_net ps7_axi_M15_AXI [get_bd_intf_pins firReal_1/s00_axi] [get_bd_intf_pins ps7_axi/M15_AXI]
  connect_bd_intf_net -intf_net ps7_axi_M16_AXI [get_bd_intf_pins pidv3_axi_0/s00_axi] [get_bd_intf_pins ps7_axi/M16_AXI]
  connect_bd_intf_net -intf_net ps7_axi_M17_AXI [get_bd_intf_pins pidv3_axi_1/s00_axi] [get_bd_intf_pins ps7_axi/M17_AXI]
  connect_bd_intf_net -intf_net ps7_axi_M18_AXI [get_bd_intf_pins ps7_axi/M18_AXI] [get_bd_intf_pins shifterReal_dyn_0/s00_axi]
  connect_bd_intf_net -intf_net ps7_axi_M19_AXI [get_bd_intf_pins ps7_axi/M19_AXI] [get_bd_intf_pins shifterReal_dyn_1/s00_axi]
  connect_bd_intf_net -intf_net redpitaya_converters_0_dataA_out [get_bd_intf_pins adc1_offset/data_in] [get_bd_intf_pins redpitaya_converters_0/dataA_out]
  connect_bd_intf_net -intf_net redpitaya_converters_0_dataB_out [get_bd_intf_pins adc2_offset/data_in] [get_bd_intf_pins redpitaya_converters_0/dataB_out]
  connect_bd_intf_net -intf_net shifterReal_2_data_out [get_bd_intf_pins dds2_f0/data_in] [get_bd_intf_pins shifterReal_2/data_out]
  connect_bd_intf_net -intf_net shifterReal_3_data_out [get_bd_intf_pins dds1_f0/data_in] [get_bd_intf_pins shifterReal_3/data_out]
  connect_bd_intf_net -intf_net shifterReal_dyn_0_data_out [get_bd_intf_pins pidv3_axi_0/data_in] [get_bd_intf_pins shifterReal_dyn_0/data_out]
  connect_bd_intf_net -intf_net shifterReal_dyn_1_data_out [get_bd_intf_pins pidv3_axi_1/data_in] [get_bd_intf_pins shifterReal_dyn_1/data_out]

  # Create port connections
  connect_bd_net -net ps7_FCLK_CLK0 [get_bd_pins adc1_offset/s00_axi_aclk] [get_bd_pins adc2_offset/s00_axi_aclk] [get_bd_pins dataReal_to_ram_fast/s00_axi_aclk] [get_bd_pins dataReal_to_ram_slow/s00_axi_aclk] [get_bd_pins dds1_f0/s00_axi_aclk] [get_bd_pins dds1_nco/s00_axi_aclk] [get_bd_pins dds1_offset/s00_axi_aclk] [get_bd_pins dds2_f0/s00_axi_aclk] [get_bd_pins dds2_nco/s00_axi_aclk] [get_bd_pins dds2_offset/s00_axi_aclk] [get_bd_pins dds_ampl/s00_axi_aclk] [get_bd_pins dds_range/s00_axi_aclk] [get_bd_pins demod1_nco/s00_axi_aclk] [get_bd_pins demod2_nco/s00_axi_aclk] [get_bd_pins firReal_0/s00_axi_aclk] [get_bd_pins firReal_1/s00_axi_aclk] [get_bd_pins pidv3_axi_0/s00_axi_aclk] [get_bd_pins pidv3_axi_1/s00_axi_aclk] [get_bd_pins ps7/FCLK_CLK0] [get_bd_pins ps7/M_AXI_GP0_ACLK] [get_bd_pins ps7_axi/ACLK] [get_bd_pins ps7_axi/M00_ACLK] [get_bd_pins ps7_axi/M01_ACLK] [get_bd_pins ps7_axi/M02_ACLK] [get_bd_pins ps7_axi/M03_ACLK] [get_bd_pins ps7_axi/M04_ACLK] [get_bd_pins ps7_axi/M05_ACLK] [get_bd_pins ps7_axi/M06_ACLK] [get_bd_pins ps7_axi/M07_ACLK] [get_bd_pins ps7_axi/M08_ACLK] [get_bd_pins ps7_axi/M09_ACLK] [get_bd_pins ps7_axi/M10_ACLK] [get_bd_pins ps7_axi/M11_ACLK] [get_bd_pins ps7_axi/M12_ACLK] [get_bd_pins ps7_axi/M13_ACLK] [get_bd_pins ps7_axi/M14_ACLK] [get_bd_pins ps7_axi/M15_ACLK] [get_bd_pins ps7_axi/M16_ACLK] [get_bd_pins ps7_axi/M17_ACLK] [get_bd_pins ps7_axi/M18_ACLK] [get_bd_pins ps7_axi/M19_ACLK] [get_bd_pins ps7_axi/S00_ACLK] [get_bd_pins ps7_rst/slowest_sync_clk] [get_bd_pins shifterReal_dyn_0/s00_axi_aclk] [get_bd_pins shifterReal_dyn_1/s00_axi_aclk]
  connect_bd_net -net ps7_FCLK_RESET0_N [get_bd_pins ps7/FCLK_RESET0_N] [get_bd_pins ps7_rst/ext_reset_in]
  connect_bd_net -net ps7_rst_interconnect_aresetn [get_bd_pins ps7_axi/ARESETN] [get_bd_pins ps7_rst/interconnect_aresetn]
  connect_bd_net -net ps7_rst_peripheral_aresetn [get_bd_pins ps7_axi/M00_ARESETN] [get_bd_pins ps7_axi/M01_ARESETN] [get_bd_pins ps7_axi/M02_ARESETN] [get_bd_pins ps7_axi/M03_ARESETN] [get_bd_pins ps7_axi/M04_ARESETN] [get_bd_pins ps7_axi/M05_ARESETN] [get_bd_pins ps7_axi/M06_ARESETN] [get_bd_pins ps7_axi/M07_ARESETN] [get_bd_pins ps7_axi/M08_ARESETN] [get_bd_pins ps7_axi/M09_ARESETN] [get_bd_pins ps7_axi/M10_ARESETN] [get_bd_pins ps7_axi/M11_ARESETN] [get_bd_pins ps7_axi/M12_ARESETN] [get_bd_pins ps7_axi/M13_ARESETN] [get_bd_pins ps7_axi/M14_ARESETN] [get_bd_pins ps7_axi/M15_ARESETN] [get_bd_pins ps7_axi/M16_ARESETN] [get_bd_pins ps7_axi/M17_ARESETN] [get_bd_pins ps7_axi/M18_ARESETN] [get_bd_pins ps7_axi/M19_ARESETN] [get_bd_pins ps7_axi/S00_ARESETN] [get_bd_pins ps7_rst/peripheral_aresetn]
  connect_bd_net -net ps7_rst_peripheral_reset [get_bd_pins adc1_offset/s00_axi_reset] [get_bd_pins adc2_offset/s00_axi_reset] [get_bd_pins dataReal_to_ram_fast/s00_axi_reset] [get_bd_pins dataReal_to_ram_slow/s00_axi_reset] [get_bd_pins dds1_f0/s00_axi_reset] [get_bd_pins dds1_nco/s00_axi_reset] [get_bd_pins dds1_offset/s00_axi_reset] [get_bd_pins dds2_f0/s00_axi_reset] [get_bd_pins dds2_nco/s00_axi_reset] [get_bd_pins dds2_offset/s00_axi_reset] [get_bd_pins dds_ampl/s00_axi_reset] [get_bd_pins dds_range/s00_axi_reset] [get_bd_pins demod1_nco/s00_axi_reset] [get_bd_pins demod2_nco/s00_axi_reset] [get_bd_pins firReal_0/s00_axi_reset] [get_bd_pins firReal_1/s00_axi_reset] [get_bd_pins pidv3_axi_0/s00_axi_reset] [get_bd_pins pidv3_axi_1/s00_axi_reset] [get_bd_pins ps7_rst/peripheral_reset] [get_bd_pins redpitaya_converters_0/adc_rst_i] [get_bd_pins shifterReal_dyn_0/s00_axi_reset] [get_bd_pins shifterReal_dyn_1/s00_axi_reset]
  connect_bd_net -net redpitaya_converters_0_clk_o [get_bd_pins dds1_nco/ref_clk_i] [get_bd_pins dds2_nco/ref_clk_i] [get_bd_pins dds_ampl/ref_clk_i] [get_bd_pins dds_range/ref_clk_i] [get_bd_pins demod1_nco/ref_clk_i] [get_bd_pins demod2_nco/ref_clk_i] [get_bd_pins redpitaya_converters_0/clk_o]
  connect_bd_net -net redpitaya_converters_0_rst_o [get_bd_pins dds1_nco/ref_rst_i] [get_bd_pins dds2_nco/ref_rst_i] [get_bd_pins dds_ampl/ref_rst_i] [get_bd_pins dds_range/ref_rst_i] [get_bd_pins demod1_nco/ref_rst_i] [get_bd_pins demod2_nco/ref_rst_i] [get_bd_pins redpitaya_converters_0/rst_o]

  # Create address segments
  assign_bd_address -offset 0x43C50000 -range 0x00001000 -target_address_space [get_bd_addr_spaces ps7/Data] [get_bd_addr_segs adc1_offset/s00_axi/reg0] -force
  assign_bd_address -offset 0x43C40000 -range 0x00001000 -target_address_space [get_bd_addr_spaces ps7/Data] [get_bd_addr_segs adc2_offset/s00_axi/reg0] -force
  assign_bd_address -offset 0x43C00000 -range 0x00001000 -target_address_space [get_bd_addr_spaces ps7/Data] [get_bd_addr_segs dataReal_to_ram_fast/s00_axi/reg0] -force
  assign_bd_address -offset 0x43CB0000 -range 0x00001000 -target_address_space [get_bd_addr_spaces ps7/Data] [get_bd_addr_segs dataReal_to_ram_slow/s00_axi/reg0] -force
  assign_bd_address -offset 0x43D90000 -range 0x00001000 -target_address_space [get_bd_addr_spaces ps7/Data] [get_bd_addr_segs dds1_f0/s00_axi/reg0] -force
  assign_bd_address -offset 0x43DA0000 -range 0x00001000 -target_address_space [get_bd_addr_spaces ps7/Data] [get_bd_addr_segs dds1_nco/s00_axi/reg0] -force
  assign_bd_address -offset 0x43E00000 -range 0x00001000 -target_address_space [get_bd_addr_spaces ps7/Data] [get_bd_addr_segs dds1_offset/s00_axi/reg0] -force
  assign_bd_address -offset 0x43DB0000 -range 0x00001000 -target_address_space [get_bd_addr_spaces ps7/Data] [get_bd_addr_segs dds2_f0/s00_axi/reg0] -force
  assign_bd_address -offset 0x43DD0000 -range 0x00001000 -target_address_space [get_bd_addr_spaces ps7/Data] [get_bd_addr_segs dds2_nco/s00_axi/reg0] -force
  assign_bd_address -offset 0x43E10000 -range 0x00001000 -target_address_space [get_bd_addr_spaces ps7/Data] [get_bd_addr_segs dds2_offset/s00_axi/reg0] -force
  assign_bd_address -offset 0x43D30000 -range 0x00001000 -target_address_space [get_bd_addr_spaces ps7/Data] [get_bd_addr_segs dds_ampl/s00_axi/reg0] -force
  assign_bd_address -offset 0x43D20000 -range 0x00001000 -target_address_space [get_bd_addr_spaces ps7/Data] [get_bd_addr_segs dds_range/s00_axi/reg0] -force
  assign_bd_address -offset 0x43C60000 -range 0x00001000 -target_address_space [get_bd_addr_spaces ps7/Data] [get_bd_addr_segs demod1_nco/s00_axi/reg0] -force
  assign_bd_address -offset 0x43C70000 -range 0x00001000 -target_address_space [get_bd_addr_spaces ps7/Data] [get_bd_addr_segs demod2_nco/s00_axi/reg0] -force
  assign_bd_address -offset 0x43C80000 -range 0x00001000 -target_address_space [get_bd_addr_spaces ps7/Data] [get_bd_addr_segs firReal_0/s00_axi/reg0] -force
  assign_bd_address -offset 0x43C90000 -range 0x00001000 -target_address_space [get_bd_addr_spaces ps7/Data] [get_bd_addr_segs firReal_1/s00_axi/reg0] -force
  assign_bd_address -offset 0x43C30000 -range 0x00001000 -target_address_space [get_bd_addr_spaces ps7/Data] [get_bd_addr_segs pidv3_axi_0/s00_axi/reg0] -force
  assign_bd_address -offset 0x43D40000 -range 0x00001000 -target_address_space [get_bd_addr_spaces ps7/Data] [get_bd_addr_segs pidv3_axi_1/s00_axi/reg0] -force
  assign_bd_address -offset 0x43C20000 -range 0x00001000 -target_address_space [get_bd_addr_spaces ps7/Data] [get_bd_addr_segs shifterReal_dyn_0/s00_axi/reg0] -force
  assign_bd_address -offset 0x43CA0000 -range 0x00001000 -target_address_space [get_bd_addr_spaces ps7/Data] [get_bd_addr_segs shifterReal_dyn_1/s00_axi/reg0] -force


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""

