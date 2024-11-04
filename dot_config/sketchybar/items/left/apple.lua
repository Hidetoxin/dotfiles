local confs = require("confs")

-- Padding item required because of bracket
sbar.add("item", "apple.left_padding", {
	width = 5,
})

local apple = sbar.add("item", "apple", {
	position = "left",
	click_script = "$CONFIG_DIR/utils/clang/menus/bin/menus -s 0",
	padding_left = 8,
	padding_right = 8,

	icon = {
		string = confs.icons.syms.apple,
		highlight = true,
		padding_left = 6,
		padding_right = 6,
	},

	label = {
		drawing = false,
	},

	-- popup = {
	-- color = colors.background,
	-- height = 32,
	-- border_width = 2,
	-- corner_radius = 12,

	-- background = {
	-- 	color = confs.colors.background,
	-- 	border_color = confs.colors.green,
	-- 	border_width = 2,
	-- 	corner_radius = 12,
	-- },
	-- },

	background = {
		color = confs.colors.green,
		height = 24,
		-- border_color = colors.red,
		border_width = 0,
		corner_radius = 6,
	},
})

-- Double border for apple using a single item bracket
sbar.add("bracket", "apple.bracket", { apple.name }, {
	background = {
		color = confs.colors.black,
		height = 40,
		border_width = 2.5,
		border_color = confs.colors.green,
		corner_radius = 12,
	},
})

-- Padding item required because of bracket
sbar.add("item", "apple.right_pading", {
	width = 7,
	padding_left = 4,
	padding_right = 4,

	icon = {
		drawing = false,
	},

	label = {
		drawing = false,
	},

	background = {
		drawing = false,
	},
})

-- vim: ts=2 sts=2 sw=2 et
