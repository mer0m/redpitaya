module ltc2145 (
	// ltc2145
	input 				clk_in_i,
	output 				clk_cdcs,
	// a/d cmos
	input [14-1: 0]		adc_data_a_i,
	input [14-1: 0]		adc_data_b_i,
	// adc dat
	output 				adc_clk_o,
	output 				adc_data_a_en,
	output [14-1: 0]	adc_data_a,
	output 				adc_data_b_en,
	output [14-1: 0]	adc_data_b
);

reg adc_data_en;
reg [14-1: 0] adc_data_a_s;
reg [14-1: 0] adc_data_b_s;

assign adc_data_a_en = adc_data_en;
assign adc_data_a = adc_data_a_s;

assign adc_data_b_en = adc_data_en;
assign adc_data_b = adc_data_b_s;

assign adc_clk_o = clk_in_i;
assign clk_cdcs = 1'b1;
    
always @(posedge clk_in_i) begin
	adc_data_en <= 1'b1;
	adc_data_a_s <= {adc_data_a_i[13],~adc_data_a_i[12:0]};
	adc_data_b_s <= {adc_data_b_i[13],~adc_data_b_i[12:0]};
end

endmodule
