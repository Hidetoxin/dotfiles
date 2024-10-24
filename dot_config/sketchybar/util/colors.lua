return {

	-- Gruvbox Dark (Hard) Color Palette
	-- https://github.com/morhetz/gruvbox

	-- Dark colors
	red = 0xe0cc241d,
	blue = 0xe0458588,
	cyan = 0xe0689d6a,
	grey = 0xe0928374,
	black = 0xe0282828,
	white = 0xe0a89984,
	green = 0xe098971a,
	purple = 0xe0b16286,
	yellow = 0xe0d79921,
	orange = 0xe0d65d0e,
	magenta = 0xe0b16286,

	-- Bright colors
	red_bright = 0xe0fb4934,
	blue_bright = 0xe083a598,
	cyan_bright = 0xe08ec07c,
	grey_bright = 0xe0a89984,
	black_bright = 0xe0928374,
	white_bright = 0xe0ebdbb2,
	green_bright = 0xe0b8bb26,
	purple_bright = 0xed3869b,
	yellow_bright = 0xe0fabd2f,
	orange_bright = 0xe0fe8019,
	magenta_bright = 0xe0d3869b,

	-- Accent colors
	accent = 0xe0d65d0e,
	background = 0xe01d2021,
	foreground = 0xe0fbf1c7,
	transparent = 0x00000000,
	accent_bright = 0xe0fe8019,

	-- bar = {
	-- 	bg = 0xf02c2e34,
	-- 	border = 0xff2c2e34,
	-- },
	--
	-- popup = {
	-- 	bg = 0xc02c2e34,
	-- 	border = 0xff7f8490,
	-- },
	--
	-- bg1 = 0xff363944,
	-- bg2 = 0xff414550,

	with_alpha = function(color, alpha)
		if alpha > 1.0 or alpha < 0.0 then
			return color
		end
		return (color & 0x00ffffff) | (math.floor(alpha * 255.0) << 24)
	end,
}
