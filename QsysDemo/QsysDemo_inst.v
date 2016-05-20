	QsysDemo u0 (
		.clk_clk                 (<connected-to-clk_clk>),                 //                clk.clk
		.reset_reset_n           (<connected-to-reset_reset_n>),           //              reset.reset_n
		.character_lcd_cond_DATA (<connected-to-character_lcd_cond_DATA>), // character_lcd_cond.DATA
		.character_lcd_cond_ON   (<connected-to-character_lcd_cond_ON>),   //                   .ON
		.character_lcd_cond_BLON (<connected-to-character_lcd_cond_BLON>), //                   .BLON
		.character_lcd_cond_EN   (<connected-to-character_lcd_cond_EN>),   //                   .EN
		.character_lcd_cond_RS   (<connected-to-character_lcd_cond_RS>),   //                   .RS
		.character_lcd_cond_RW   (<connected-to-character_lcd_cond_RW>),   //                   .RW
		.key_cond_export         (<connected-to-key_cond_export>),         //           key_cond.export
		.ledg_cond_export        (<connected-to-ledg_cond_export>),        //          ledg_cond.export
		.sw_cond_export          (<connected-to-sw_cond_export>),          //            sw_cond.export
		.ledr_cond_export        (<connected-to-ledr_cond_export>),        //          ledr_cond.export
		.seven_seg_cond_export   (<connected-to-seven_seg_cond_export>)    //     seven_seg_cond.export
	);

