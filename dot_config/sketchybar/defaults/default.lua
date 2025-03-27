local confs = require("confs")

-- Equivalent to the --default domain
sbar.default({
	height = confs.defaults.items.height,
	updates = confs.defaults.items.updates,
	scroll_texts = confs.defaults.items.scroll_texts,
	padding_left = confs.defaults.items.padding_left,
	padding_right = confs.defaults.items.padding_right,

	icon = {
		font = confs.fonts.items.icons.text,
		color = confs.colors.white,
		highlight = confs.defaults.items.icon.highlight,
		padding_left = confs.defaults.items.icon.padding_left,
		padding_right = confs.defaults.items.icon.padding_right,
		highlight_color = confs.colors.white_bright,

		-- 	-- background = {
		-- 	-- 	image = {
		-- 	-- 		corner_radius = 9,
		-- 	-- 	},
		-- 	-- },
	},

	label = {
		font = confs.fonts.items.labels.text,
		color = confs.colors.white,
		highlight = confs.defaults.items.label.highlight,
		padding_left = confs.defaults.items.label.padding_left,
		padding_right = confs.defaults.items.label.padding_right,
		highlight_color = confs.colors.white_bright,
	},

	popup = {
		align = confs.defaults.items.popup.align,
		height = confs.defaults.items.popup.height,
		blur_radius = confs.defaults.items.popup.blur_radius,
		padding_left = confs.defaults.items.popup.padding_left,
		padding_right = confs.defaults.items.popup.padding_right,

		background = {
			color = confs.colors.black,
			border_width = confs.defaults.items.popup.background.border_width,
			border_color = confs.colors.white,
			corner_radius = confs.defaults.items.popup.background.corner_radius,

			shadow = {
				drawing = confs.defaults.items.popup.background.shadow.drawing,
			},
		},
	},

	background = {
		color = confs.colors.transparent,
		height = confs.defaults.items.background.height,
		border_width = confs.defaults.items.background.border_width,
		border_color = confs.colors.transparent,
		corner_radius = confs.defaults.items.background.corner_radius,

		-- 	-- image = {
		-- 	-- 	border_color = colors.grey,
		-- 	-- 	border_width = 1,
		-- 	-- 	corner_radius = 9,
		-- 	-- },
	},
})
