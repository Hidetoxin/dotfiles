local settings = require("util.settings")

-- Padding item required because of bracket
sbar.add("item", { width = 5 })

local apple = sbar.add("item", {
	position = "left",
	-- click_script = "$CONFIG_DIR/helpers/menus/bin/menus -s 0",
	padding_left = 8,
	padding_right = 8,

	icon = {
		string = settings.icons.text.apple,
		highlight = true,
		padding_left = 6,
		padding_right = 6,
	},

	label = {
		drawing = false,
	},

	popup = {
		-- color = colors.background,
		height = 32,
		-- border_width = 2,
		-- corner_radius = 12,

		background = {
			color = settings.colors.background,
			border_color = settings.colors.green,
			border_width = 2,
			corner_radius = 12,
		},
	},

	background = {
		color = settings.colors.green,
		height = 24,
		-- border_color = colors.red,
		border_width = 0,
		corner_radius = 6,
	},
})

-- Double border for apple using a single item bracket
sbar.add("bracket", { apple.name }, {
	background = {
		color = settings.colors.background,
		height = 40,
		border_width = 2,
		border_color = settings.colors.green,
		corner_radius = 12,
	},
})

-- Padding item required because of bracket
sbar.add("item", {
	width = 7,
	padding_left = 4,
	padding_right = 4,

	icon = {
		drawing = false,
	},

	label = {
		drawing = false,
	},

	background = { drawing = false },
})

-- vim: ts=2 sts=2 sw=2 et
