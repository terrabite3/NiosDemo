module NiosDemo_top (
    // 50 MHz clock source
    input  wire CLOCK_50,
    // 18 slide switches
    input  wire [17:0] SW,
    // 4 push buttons, normally high
    input  wire [3:0] KEY,
    // 18 red LEDs above the switches
    output wire [17:0] LEDR,
    // 8 green LEDS above the keys, 1 between HEXes 
    output wire [8:0] LEDG,
    // 8 seven-segment displays
    output wire [7:0] HEX0,
    output wire [7:0] HEX1,
    output wire [7:0] HEX2,
    output wire [7:0] HEX3,
    output wire [7:0] HEX4,
    output wire [7:0] HEX5,
    output wire [7:0] HEX6,
    output wire [7:0] HEX7,
    // Character LCD
    output wire [7:0] LCD_DATA,
    output wire LCD_BLON,
    output wire LCD_EN,
    output wire LCD_RW,
    output wire LCD_RS,
    output wire LCD_ON
);

wire [31:0] seven_seg_wire;

QsysDemo u0 (
    .clk_clk                 (CLOCK_50),                 //                clk.clk
    .reset_reset_n           (1'b1),           //              reset.reset_n
    .character_lcd_cond_DATA (LCD_DATA), // character_lcd_cond.DATA
    .character_lcd_cond_ON   (LCD_ON),   //                   .ON
    .character_lcd_cond_BLON (LCD_BLON), //                   .BLON
    .character_lcd_cond_EN   (LCD_EN),   //                   .EN
    .character_lcd_cond_RS   (LCD_RS),   //                   .RS
    .character_lcd_cond_RW   (LCD_RW),   //                   .RW
    .key_cond_export         (KEY),         //           key_cond.export
    .ledg_cond_export        (LEDG),        //          ledg_cond.export
    .sw_cond_export          (SW),          //            sw_cond.export
    .ledr_cond_export        (LEDR),        //          ledr_cond.export
    .seven_seg_cond_export   (seven_seg_wire)    //     seven_seg_cond.export
);

Hex7Seg s0 (
    .number         (seven_seg_wire[3:0]),
    .seven_seg      (HEX0),
    .enable         (1'b1)
);
Hex7Seg s1 (
    .number         (seven_seg_wire[7:4]),
    .seven_seg      (HEX1),
    .enable         (1'b1)
);
Hex7Seg s2 (
    .number         (seven_seg_wire[11:8]),
    .seven_seg      (HEX2),
    .enable         (1'b1)
);
Hex7Seg s3 (
    .number         (seven_seg_wire[15:12]),
    .seven_seg      (HEX3),
    .enable         (1'b1)
);
Hex7Seg s4 (
    .number         (seven_seg_wire[19:16]),
    .seven_seg      (HEX4),
    .enable         (1'b1)
);
Hex7Seg s5 (
    .number         (seven_seg_wire[23:20]),
    .seven_seg      (HEX5),
    .enable         (1'b1)
);
Hex7Seg s6 (
    .number         (seven_seg_wire[27:24]),
    .seven_seg      (HEX6),
    .enable         (1'b1)
);
Hex7Seg s7 (
    .number         (seven_seg_wire[31:28]),
    .seven_seg      (HEX7),
    .enable         (1'b1)
);


endmodule