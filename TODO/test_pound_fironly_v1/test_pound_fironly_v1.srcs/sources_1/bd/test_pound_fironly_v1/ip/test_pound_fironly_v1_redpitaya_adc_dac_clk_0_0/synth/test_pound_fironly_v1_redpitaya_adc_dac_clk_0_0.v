// (c) Copyright 1995-2016 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: ggm:cogen:redpitaya_adc_dac_clk:1.0
// IP Revision: 2

(* X_CORE_INFO = "redpitaya_adc_dac_clk,Vivado 2016.2" *)
(* CHECK_LICENSE_TYPE = "test_pound_fironly_v1_redpitaya_adc_dac_clk_0_0,redpitaya_adc_dac_clk,{}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module test_pound_fironly_v1_redpitaya_adc_dac_clk_0_0 (
  adc_clk_p_i,
  adc_clk_n_i,
  dac_clk_o,
  dac_2clk_o,
  dac_2ph_o,
  dac_locked_o,
  adc_clk_o,
  adc_rst_i,
  ser_clk_o
);

input wire adc_clk_p_i;
input wire adc_clk_n_i;
output wire dac_clk_o;
output wire dac_2clk_o;
output wire dac_2ph_o;
output wire dac_locked_o;
output wire adc_clk_o;
input wire adc_rst_i;
output wire ser_clk_o;

  redpitaya_adc_dac_clk inst (
    .adc_clk_p_i(adc_clk_p_i),
    .adc_clk_n_i(adc_clk_n_i),
    .dac_clk_o(dac_clk_o),
    .dac_2clk_o(dac_2clk_o),
    .dac_2ph_o(dac_2ph_o),
    .dac_locked_o(dac_locked_o),
    .adc_clk_o(adc_clk_o),
    .adc_rst_i(adc_rst_i),
    .ser_clk_o(ser_clk_o)
  );
endmodule
