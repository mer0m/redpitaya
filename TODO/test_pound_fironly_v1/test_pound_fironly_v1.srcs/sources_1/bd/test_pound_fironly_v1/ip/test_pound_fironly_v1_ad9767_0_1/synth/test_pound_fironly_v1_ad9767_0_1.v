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


// IP VLNV: ggm:cogen:ad9767:1.0
// IP Revision: 6

(* X_CORE_INFO = "ad9767,Vivado 2016.2" *)
(* CHECK_LICENSE_TYPE = "test_pound_fironly_v1_ad9767_0_1,ad9767,{}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module test_pound_fironly_v1_ad9767_0_1 (
  dac_clk_i,
  dac_2clk_i,
  dac_2ph_i,
  dac_locked_i,
  dac_dat_o,
  dac_wrt_o,
  dac_sel_o,
  dac_clk_o,
  dac_rst_o,
  dac_dat_a_en_i,
  dac_dat_a_rst_i,
  dac_dat_a_i,
  dac_dat_b_en_i,
  dac_dat_b_rst_i,
  dac_dat_b_i
);

input wire dac_clk_i;
input wire dac_2clk_i;
input wire dac_2ph_i;
input wire dac_locked_i;
output wire [13 : 0] dac_dat_o;
output wire dac_wrt_o;
output wire dac_sel_o;
output wire dac_clk_o;
output wire dac_rst_o;
(* X_INTERFACE_INFO = "xilinx.com:interface:real:1.0 dataA DATA_EN" *)
input wire dac_dat_a_en_i;
(* X_INTERFACE_INFO = "xilinx.com:interface:real:1.0 dataA DATA_RST" *)
input wire dac_dat_a_rst_i;
(* X_INTERFACE_INFO = "xilinx.com:interface:real:1.0 dataA DATA" *)
input wire [13 : 0] dac_dat_a_i;
(* X_INTERFACE_INFO = "xilinx.com:interface:real:1.0 dataB DATA_EN" *)
input wire dac_dat_b_en_i;
(* X_INTERFACE_INFO = "xilinx.com:interface:real:1.0 dataB DATA_RST" *)
input wire dac_dat_b_rst_i;
(* X_INTERFACE_INFO = "xilinx.com:interface:real:1.0 dataB DATA" *)
input wire [13 : 0] dac_dat_b_i;

  ad9767 inst (
    .dac_clk_i(dac_clk_i),
    .dac_2clk_i(dac_2clk_i),
    .dac_2ph_i(dac_2ph_i),
    .dac_locked_i(dac_locked_i),
    .dac_dat_o(dac_dat_o),
    .dac_wrt_o(dac_wrt_o),
    .dac_sel_o(dac_sel_o),
    .dac_clk_o(dac_clk_o),
    .dac_rst_o(dac_rst_o),
    .dac_dat_a_en_i(dac_dat_a_en_i),
    .dac_dat_a_rst_i(dac_dat_a_rst_i),
    .dac_dat_a_i(dac_dat_a_i),
    .dac_dat_b_en_i(dac_dat_b_en_i),
    .dac_dat_b_rst_i(dac_dat_b_rst_i),
    .dac_dat_b_i(dac_dat_b_i)
  );
endmodule
