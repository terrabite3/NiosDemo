
module QsysDemo (
	clk_clk,
	reset_reset_n,
	character_lcd_cond_DATA,
	character_lcd_cond_ON,
	character_lcd_cond_BLON,
	character_lcd_cond_EN,
	character_lcd_cond_RS,
	character_lcd_cond_RW,
	key_cond_export,
	ledg_cond_export,
	sw_cond_export,
	ledr_cond_export,
	seven_seg_cond_export);	

	input		clk_clk;
	input		reset_reset_n;
	inout	[7:0]	character_lcd_cond_DATA;
	output		character_lcd_cond_ON;
	output		character_lcd_cond_BLON;
	output		character_lcd_cond_EN;
	output		character_lcd_cond_RS;
	output		character_lcd_cond_RW;
	input	[3:0]	key_cond_export;
	output	[8:0]	ledg_cond_export;
	input	[17:0]	sw_cond_export;
	output	[17:0]	ledr_cond_export;
	output	[31:0]	seven_seg_cond_export;
endmodule
