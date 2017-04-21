-makelib ies/xil_defaultlib -sv \
  "/data/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies/xpm \
  "/data/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies/processing_system7_bfm_v2_0_5 \
  "../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_wr.v" \
  "../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_rd.v" \
  "../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_wr_4.v" \
  "../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_rd_4.v" \
  "../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_hp2_3.v" \
  "../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_hp0_1.v" \
  "../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_ssw_hp.v" \
  "../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_sparse_mem.v" \
  "../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_reg_map.v" \
  "../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_ocm_mem.v" \
  "../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_intr_wr_mem.v" \
  "../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_intr_rd_mem.v" \
  "../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_fmsw_gp.v" \
  "../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_regc.v" \
  "../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_ocmc.v" \
  "../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_interconnect_model.v" \
  "../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_gen_reset.v" \
  "../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_gen_clock.v" \
  "../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_ddrc.v" \
  "../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_axi_slave.v" \
  "../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_axi_master.v" \
  "../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_afi_slave.v" \
  "../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_processing_system7_bfm.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../../test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ip/test_pound_fironly_v1_processing_system7_0_0/sim/test_pound_fironly_v1_processing_system7_0_0.v" \
-endlib
-makelib ies/lib_cdc_v1_0_2 \
  "../../../ipstatic/lib_cdc_v1_0/hdl/src/vhdl/cdc_sync.vhd" \
-endlib
-makelib ies/proc_sys_reset_v5_0_9 \
  "../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/upcnt_n.vhd" \
  "../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/sequence_psr.vhd" \
  "../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/lpf.vhd" \
  "../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/proc_sys_reset.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../../test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ip/test_pound_fironly_v1_rst_processing_system7_0_125M_0/sim/test_pound_fironly_v1_rst_processing_system7_0_125M_0.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../../test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ipshared/ggm/redpitaya_adc_dac_clk_v1_0/hdl/redpitaya_adc_dac_clk.v" \
  "../../../../test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ip/test_pound_fironly_v1_redpitaya_adc_dac_clk_0_0/sim/test_pound_fironly_v1_redpitaya_adc_dac_clk_0_0.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../../test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ipshared/gwbs/ltc2145_v1_0/hdl/ltc2145_cmos_capture.vhd" \
  "../../../../test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ipshared/gwbs/ltc2145_v1_0/hdl/ltc2145.vhd" \
  "../../../../test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ip/test_pound_fironly_v1_ltc2145_0_0/sim/test_pound_fironly_v1_ltc2145_0_0.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../../test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ipshared/ggm/ad9767_v1_0/hdl/ad9767.v" \
  "../../../../test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ip/test_pound_fironly_v1_ad9767_0_1/sim/test_pound_fironly_v1_ad9767_0_1.v" \
  "../../../../test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/hdl/test_pound_fironly_v1.v" \
-endlib
-makelib ies/generic_baseblocks_v2_1_0 \
  "../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_and.v" \
  "../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_latch_and.v" \
  "../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_latch_or.v" \
  "../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_or.v" \
  "../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry.v" \
  "../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_command_fifo.v" \
  "../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_mask_static.v" \
  "../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_mask.v" \
  "../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_mask_static.v" \
  "../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_mask.v" \
  "../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_static.v" \
  "../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel.v" \
  "../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_static.v" \
  "../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator.v" \
  "../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_mux_enc.v" \
  "../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_mux.v" \
  "../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_nto1_mux.v" \
-endlib
-makelib ies/axi_infrastructure_v1_1_0 \
  "../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog/axi_infrastructure_v1_1_axi2vector.v" \
  "../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog/axi_infrastructure_v1_1_axic_srl_fifo.v" \
  "../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog/axi_infrastructure_v1_1_vector2axi.v" \
-endlib
-makelib ies/axi_register_slice_v2_1_9 \
  "../../../ipstatic/axi_register_slice_v2_1/hdl/verilog/axi_register_slice_v2_1_axic_register_slice.v" \
  "../../../ipstatic/axi_register_slice_v2_1/hdl/verilog/axi_register_slice_v2_1_axi_register_slice.v" \
-endlib
-makelib ies/fifo_generator_v13_1_1 \
  "../../../ipstatic/fifo_generator_v13_1/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies/fifo_generator_v13_1_1 \
  "../../../ipstatic/fifo_generator_v13_1/hdl/fifo_generator_v13_1_rfs.vhd" \
-endlib
-makelib ies/fifo_generator_v13_1_1 \
  "../../../ipstatic/fifo_generator_v13_1/hdl/fifo_generator_v13_1_rfs.v" \
-endlib
-makelib ies/axi_data_fifo_v2_1_8 \
  "../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axic_fifo.v" \
  "../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_fifo_gen.v" \
  "../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axic_srl_fifo.v" \
  "../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axic_reg_srl_fifo.v" \
  "../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_ndeep_srl.v" \
  "../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axi_data_fifo.v" \
-endlib
-makelib ies/axi_crossbar_v2_1_10 \
  "../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_addr_arbiter_sasd.v" \
  "../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_addr_arbiter.v" \
  "../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_addr_decoder.v" \
  "../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_arbiter_resp.v" \
  "../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_crossbar_sasd.v" \
  "../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_crossbar.v" \
  "../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_decerr_slave.v" \
  "../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_si_transactor.v" \
  "../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_splitter.v" \
  "../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_wdata_mux.v" \
  "../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_wdata_router.v" \
  "../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_axi_crossbar.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../../test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ip/test_pound_fironly_v1_xbar_0/sim/test_pound_fironly_v1_xbar_0.v" \
-endlib
-makelib ies/axi_lite_ipif_v3_0_4 \
  "../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/ipif_pkg.vhd" \
  "../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/pselect_f.vhd" \
  "../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/address_decoder.vhd" \
  "../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/slave_attachment.vhd" \
  "../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/axi_lite_ipif.vhd" \
-endlib
-makelib ies/interrupt_control_v3_1_4 \
  "../../../ipstatic/interrupt_control_v3_1/hdl/src/vhdl/interrupt_control.vhd" \
-endlib
-makelib ies/axi_gpio_v2_0_11 \
  "../../../ipstatic/axi_gpio_v2_0/hdl/src/vhdl/gpio_core.vhd" \
  "../../../ipstatic/axi_gpio_v2_0/hdl/src/vhdl/axi_gpio.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../../test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ip/test_pound_fironly_v1_axi_gpio_0_2/sim/test_pound_fironly_v1_axi_gpio_0_2.vhd" \
  "../../../../test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ipshared/ggm/shifterreal_v1_0/hdl/shifterReal.vhd" \
  "../../../../test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ip/test_pound_fironly_v1_shifterReal_0_2/sim/test_pound_fironly_v1_shifterReal_0_2.vhd" \
  "../../../../test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ipshared/ggm/mixer_sin_v1_0/hdl/mixer_sin.vhd" \
  "../../../../test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ip/test_pound_fironly_v1_mixer_sin_0_0/sim/test_pound_fironly_v1_mixer_sin_0_0.vhd" \
  "../../../../test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ipshared/user.org/red_pitaya_pid_v1_0/hdl/red_pitaya_pid_logic.vhd" \
  "../../../../test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ipshared/user.org/red_pitaya_pid_v1_0/hdl/red_pitaya_pid_handComm.vhd" \
  "../../../../test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ipshared/user.org/red_pitaya_pid_v1_0/hdl/axi_red_pitaya_pid.vhd" \
  "../../../../test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ipshared/user.org/red_pitaya_pid_v1_0/hdl/red_pitaya_pid.vhd" \
  "../../../../test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ip/test_pound_fironly_v1_red_pitaya_pid_0_1/sim/test_pound_fironly_v1_red_pitaya_pid_0_1.vhd" \
  "../../../../test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ip/test_pound_fironly_v1_shifterReal_0_0/sim/test_pound_fironly_v1_shifterReal_0_0.vhd" \
  "../../../../test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ipshared/ggm/dupplreal_1_to_2_v1_0/hdl/dupplReal_1_to_2.vhd" \
  "../../../../test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ip/test_pound_fironly_v1_dupplReal_1_to_2_0_0/sim/test_pound_fironly_v1_dupplReal_1_to_2_0_0.vhd" \
  "../../../../test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ip/test_pound_fironly_v1_shifterReal_0_1/sim/test_pound_fironly_v1_shifterReal_0_1.vhd" \
  "../../../../test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ip/test_pound_fironly_v1_dupplReal_1_to_2_0_3/sim/test_pound_fironly_v1_dupplReal_1_to_2_0_3.vhd" \
  "../../../../test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ipshared/ggm/moyenneurreal_v1_0/hdl/moyenneurReal.vhd" \
  "../../../../test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ip/test_pound_fironly_v1_moyenneurReal_0_0/sim/test_pound_fironly_v1_moyenneurReal_0_0.vhd" \
  "../../../../test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ip/test_pound_fironly_v1_moyenneurReal_0_1/sim/test_pound_fironly_v1_moyenneurReal_0_1.vhd" \
  "../../../../test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ip/test_pound_fironly_v1_moyenneurReal_1_0/sim/test_pound_fironly_v1_moyenneurReal_1_0.vhd" \
  "../../../../test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ipshared/ggm/data16_multi_to_ram_v1_0/hdl/data16_multi_storage.vhd" \
  "../../../../test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ipshared/ggm/data16_multi_to_ram_v1_0/hdl/data16_multi_resizer.vhd" \
  "../../../../test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ipshared/ggm/data16_multi_to_ram_v1_0/hdl/data16_multi_logic.vhd" \
  "../../../../test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ipshared/ggm/data16_multi_to_ram_v1_0/hdl/data16_multi_subtop.vhd" \
  "../../../../test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ipshared/ggm/data16_multi_to_ram_v1_0/hdl/data16_multi_top.vhd" \
  "../../../../test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ipshared/ggm/data16_multi_to_ram_v1_0/hdl/wb_data16_multi.vhd" \
  "../../../../test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ipshared/ggm/data16_multi_to_ram_v1_0/hdl/data16_multi_handCom.vhd" \
  "../../../../test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ipshared/ggm/data16_multi_to_ram_v1_0/hdl/data16_multi_to_ram.vhd" \
  "../../../../test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ip/test_pound_fironly_v1_data16_multi_to_ram_0_1/sim/test_pound_fironly_v1_data16_multi_to_ram_0_1.vhd" \
  "../../../../test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ip/test_pound_fironly_v1_data16_multi_to_ram_1_0/sim/test_pound_fironly_v1_data16_multi_to_ram_1_0.vhd" \
-endlib
-makelib ies/axi_protocol_converter_v2_1_9 \
  "../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_a_axi3_conv.v" \
  "../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_axi3_conv.v" \
  "../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_axilite_conv.v" \
  "../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_r_axi3_conv.v" \
  "../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_w_axi3_conv.v" \
  "../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b_downsizer.v" \
  "../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_decerr_slave.v" \
  "../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_simple_fifo.v" \
  "../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_wrap_cmd.v" \
  "../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_incr_cmd.v" \
  "../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_wr_cmd_fsm.v" \
  "../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_rd_cmd_fsm.v" \
  "../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_cmd_translator.v" \
  "../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_b_channel.v" \
  "../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_r_channel.v" \
  "../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_aw_channel.v" \
  "../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_ar_channel.v" \
  "../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s.v" \
  "../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_axi_protocol_converter.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../../test_pound_fironly_v1.srcs/sources_1/bd/test_pound_fironly_v1/ip/test_pound_fironly_v1_auto_pc_0/sim/test_pound_fironly_v1_auto_pc_0.v" \
-endlib
-makelib ies/xil_defaultlib \
  glbl.v
-endlib

