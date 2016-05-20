	component QsysDemo is
		port (
			clk_clk                 : in    std_logic                     := 'X';             -- clk
			reset_reset_n           : in    std_logic                     := 'X';             -- reset_n
			character_lcd_cond_DATA : inout std_logic_vector(7 downto 0)  := (others => 'X'); -- DATA
			character_lcd_cond_ON   : out   std_logic;                                        -- ON
			character_lcd_cond_BLON : out   std_logic;                                        -- BLON
			character_lcd_cond_EN   : out   std_logic;                                        -- EN
			character_lcd_cond_RS   : out   std_logic;                                        -- RS
			character_lcd_cond_RW   : out   std_logic;                                        -- RW
			key_cond_export         : in    std_logic_vector(3 downto 0)  := (others => 'X'); -- export
			ledg_cond_export        : out   std_logic_vector(8 downto 0);                     -- export
			sw_cond_export          : in    std_logic_vector(17 downto 0) := (others => 'X'); -- export
			ledr_cond_export        : out   std_logic_vector(17 downto 0);                    -- export
			seven_seg_cond_export   : out   std_logic_vector(31 downto 0)                     -- export
		);
	end component QsysDemo;

	u0 : component QsysDemo
		port map (
			clk_clk                 => CONNECTED_TO_clk_clk,                 --                clk.clk
			reset_reset_n           => CONNECTED_TO_reset_reset_n,           --              reset.reset_n
			character_lcd_cond_DATA => CONNECTED_TO_character_lcd_cond_DATA, -- character_lcd_cond.DATA
			character_lcd_cond_ON   => CONNECTED_TO_character_lcd_cond_ON,   --                   .ON
			character_lcd_cond_BLON => CONNECTED_TO_character_lcd_cond_BLON, --                   .BLON
			character_lcd_cond_EN   => CONNECTED_TO_character_lcd_cond_EN,   --                   .EN
			character_lcd_cond_RS   => CONNECTED_TO_character_lcd_cond_RS,   --                   .RS
			character_lcd_cond_RW   => CONNECTED_TO_character_lcd_cond_RW,   --                   .RW
			key_cond_export         => CONNECTED_TO_key_cond_export,         --           key_cond.export
			ledg_cond_export        => CONNECTED_TO_ledg_cond_export,        --          ledg_cond.export
			sw_cond_export          => CONNECTED_TO_sw_cond_export,          --            sw_cond.export
			ledr_cond_export        => CONNECTED_TO_ledr_cond_export,        --          ledr_cond.export
			seven_seg_cond_export   => CONNECTED_TO_seven_seg_cond_export    --     seven_seg_cond.export
		);

