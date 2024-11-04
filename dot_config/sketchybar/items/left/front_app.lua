local confs = require("confs")

local front_app = sbar.add("item", "front_app", {
	display = "active",
	updates = true,
	padding_left = 8,
	padding_right = 8,

	icon = {
		font = "sketchybar-app-font:Regular:16.0",
		-- drawing = false,
		-- string = confs.icons.apps[env.INFO],
	},

	label = {
		highlight = true,
		padding_left = 6,
		padding_right = 6,

		font = {
			size = 12.0,
			-- style = settings.font.style_map["Black"],
			-- size = confs.fonts.size.labels,
			-- style = confs.fonts.styles.black,
		},
	},

	background = {
		color = confs.colors.cyan,
		height = 24,
		-- border_color = colors.red,
		border_width = 0,
		corner_radius = 6,
	},
})

front_app:subscribe("front_app_switched", function(env)
	front_app:set({
		icon = {
			string = confs.icons.apps[env.INFO],
		},

		label = {
			string = env.INFO,
		},
	})
end)

front_app:subscribe("mouse.clicked", function(env)
	sbar.trigger("swap_menus_and_spaces")
end)
