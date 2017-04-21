module redpitaya_adc_dac
(
	// ADC user interface
	output				adc_data_a_en_o,
	output				adc_data_a_clk_o,
	output [ 14-1: 0]	adc_data_a_o,
	output				adc_data_b_en_o,
	output				adc_data_b_clk_o,
	output [ 14-1: 0]	adc_data_b_o,
	
	// DAC user interface
	input				dac_dat_a_en_i,
	input				dac_dat_a_clk_i,
	input [ 14-1: 0]	dac_dat_a_i,
	input				dac_dat_b_en_i,
	input				dac_dat_b_clk_i,
	input [ 14-1: 0]	dac_dat_b_i,

	// physical part
	// adc_clk in
	input             	adc_clk_p_i,  //!< ADC IC clock P connection
	input             	adc_clk_n_i,  //!< ADC IC clock N connection
	// ADC
	input [14-1: 0]		phys_adc_data_a_i,
	input [14-1: 0]		phys_adc_data_b_i,
	output 				phys_adc_clk_o,
	output 				phys_adc_clk_cdcs,
	// DAC IC
	output [ 14-1: 0]	phys_dac_data_o,
	output				phys_dac_wrt_o,
	output				phys_dac_sel_o,
	output				phys_dac_clk_o,
	output				phys_dac_rst_o,
  	// misc and clk for other blocks
  	output				dac_clk_o,
  	output          	adc_clk_o,  //!< ADC clock
  	input           	adc_rst_i,  //!< ADC reset - active low
  	input 				clk_i,
  	output          	ser_clk_o //!< fast serial clock
);

wire dac_clk_s;
wire dac_2clk_s;
wire dac_2ph_s;
wire dac_locked_s;
assign dac_clk_o = dac_clk_s;

wire adc_clk_s;
assign adc_clk_o = adc_clk_s;
assign adc_data_a_clk_o = adc_clk_s;
assign adc_data_b_clk_o = adc_clk_s;

redpitaya_adc_dac_clk adc_dac_clk (
	.adc_clk_p_i 	(adc_clk_p_i),
	.adc_clk_n_i 	(adc_clk_n_i),
	.dac_clk_o 		(dac_clk_s),
	.dac_2clk_o 	(dac_2clk_s),
	.dac_2ph_o 		(dac_2ph_s),
	.dac_locked_o 	(dac_locked_s),
	.adc_clk_o 		(adc_clk_s), 
	.adc_rst_i 		(adc_rst_i),  
	.clk_i 			(clk_i),
	.ser_clk_o 		(ser_clk_o)         
);

ad9767 dac (
	// DAC clks
	.dac_clk_i		(dac_clk_s),
	.dac_2clk_i		(dac_2clk_s),
	.dac_2ph_i		(dac_2ph_s),
	.dac_locked_i 	(dac_locked_s),

	// DAC IC
	.dac_dat_o		(phys_dac_data_o),
	.dac_wrt_o		(phys_dac_wrt_o),
	.dac_sel_o		(phys_dac_sel_o),
	.dac_clk_o		(phys_dac_clk_o),
	.dac_rst_o		(phys_dac_rst_o),
  
	.dac_dat_a_en_i	(dac_dat_a_en_i),
	.dac_dat_a_clk_i	(dac_dat_a_clk_i),
	.dac_dat_a_i 	(dac_dat_a_i),
	.dac_dat_b_en_i (dac_dat_b_en_i),
	.dac_dat_b_clk_i	(dac_dat_b_clk_i),
	.dac_dat_b_i 	(dac_dat_b_i)
);

ltc2145 adc (
	.clk_in_i 		(adc_clk_s),
	.clk_cdcs		(phys_adc_clk_cdcs),
	.adc_data_a_i 	(phys_adc_data_a_i),
	.adc_data_b_i 	(phys_adc_data_b_i),
	.adc_clk_o    	(phys_adc_clk_o),
	.adc_data_a_en 	(adc_data_a_en_o),
	.adc_data_a		(adc_data_a_o),
	.adc_data_b_en 	(adc_data_b_en_o),
	.adc_data_b 	(adc_data_b_o)
);
endmodule

