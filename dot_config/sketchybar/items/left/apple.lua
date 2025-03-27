local confs = require("confs")

local primary_color = confs.colors.green
local background_color = confs.colors.black

-- Padding item required because of bracket
sbar.add("item", "apple.left_padding", {
	width = confs.defaults.paddings.width,
	position = "left",
	padding_left = confs.defaults.paddings.padding_left,
	padding_right = confs.defaults.paddings.padding_right,

	icon = {
		drawing = confs.defaults.paddings.icon.drawing,
	},

	label = {
		drawing = confs.defaults.paddings.label.drawing,
	},

	background = {
		drawing = confs.defaults.paddings.background.drawing,
	},
})

local apple = sbar.add("item", "apple", {
	position = "left",
	click_script = "$CONFIG_DIR/utils/clang/menus/bin/menus -s 0",

	icon = {
		string = confs.icons.syms.apple,
		padding_left = confs.defaults.items.icon.padding_left + 0,
		padding_right = confs.defaults.items.icon.padding_right + 4,
	},

	label = {
		drawing = false,
	},

	popup = {
		drawing = false,
	},

	background = {
		color = primary_color,
	},
})

-- Double border for apple using a single item bracket
sbar.add("bracket", "apple.bracket", { apple.name }, {
	background = {
		color = background_color,
		height = confs.defaults.backgrounds.brackets.height,
		border_color = primary_color,
		border_width = confs.defaults.backgrounds.brackets.border_width,
		corner_radius = confs.defaults.backgrounds.brackets.corner_radius,
	},
})

-- Padding item required because of bracket
sbar.add("item", "apple.right_padding", {
	width = confs.defaults.paddings.width,
	position = "left",
	padding_left = confs.defaults.paddings.padding_left,
	padding_right = confs.defaults.paddings.padding_right,

	icon = {
		drawing = confs.defaults.paddings.icon.drawing,
	},

	label = {
		drawing = confs.defaults.paddings.label.drawing,
	},

	background = {
		drawing = confs.defaults.paddings.background.drawing,
	},
})

-- vim: ts=2 sts=2 sw=2 et
