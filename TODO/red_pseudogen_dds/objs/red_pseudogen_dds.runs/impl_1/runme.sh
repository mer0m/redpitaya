#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=//home/toolchains/Xilinx/SDK/2016.2/bin://home/toolchains/Xilinx/Vivado/2016.2/ids_lite/ISE/bin/lin64://home/toolchains/Xilinx/Vivado/2016.2/bin
else
  PATH=//home/toolchains/Xilinx/SDK/2016.2/bin://home/toolchains/Xilinx/Vivado/2016.2/ids_lite/ISE/bin/lin64://home/toolchains/Xilinx/Vivado/2016.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=//home/toolchains/Xilinx/Vivado/2016.2/ids_lite/ISE/lib/lin64
else
  LD_LIBRARY_PATH=//home/toolchains/Xilinx/Vivado/2016.2/ids_lite/ISE/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/gwe/projets/oscimp/fpga_dev/redpitaya/red_pseudogen_dds/objs/red_pseudogen_dds.runs/impl_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

# pre-commands:
/bin/touch .init_design.begin.rst
EAStep vivado -log top_red_pseudogen_dds.vdi -applog -m64 -messageDb vivado.pb -mode batch -source top_red_pseudogen_dds.tcl -notrace


