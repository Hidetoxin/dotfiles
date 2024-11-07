local defaults <const> = {

	icons = {
		paddings = 6,
		padding_left = 6,
		padding_right = 2,
	},

	labels = {
		paddings = 8,
		padding_left = 2,
		padding_right = 6,
	},

	backgrounds = {

		items = {
			height = 24,
			border_width = 0,
			corner_radius = 6,
		},

		brackets = {
			height = 40,
			border_width = 4,
			corner_radius = 12,
		},
	},

	bar = { -- default configuration for bars
		height = 56,
		margin = 0,
		y_offset = 0,
		padding_left = 8,
		padding_right = 8,
	},

	items = { -- default configuration for items
		height = 32,
		updates = "when_shown",
		scroll_texts = true,
		padding_left = 8,
		padding_right = 8,

		icon = {
			highlight = true,
			padding_left = 6,
			padding_right = 2,
		},

		label = {
			highlight = true,
			padding_left = 2,
			padding_right = 6,
		},

		popup = {
			align = "center",
			blur_radius = 50,
			padding_left = 6,
			padding_right = 6,

			background = {
				border_width = 4,
				corner_radius = 9,

				image = {
					scale = 0.2,
					corner_radius = 9,
				},

				shadow = {
					drawing = false,
				},
			},
		},

		background = {
			height = 24,
			border_width = 0,
			corner_radius = 6,
		},
	},

	graphs = { -- default configuration for graphs
	},

	spaces = { -- default configuration for spaces
	},

	aliases = { -- default configuration for aliases
	},

	sliders = { -- default configuration for sliders
	},

	brackets = { -- default configuration for brackets
		background = {
			height = 40,
			border_width = 4,
			corner_radius = 12,
		},
	},

	paddings = { -- default configuration for brackets used as paddings
		width = 5,
		padding_left = 5,
		padding_right = 5,

		icon = {
			drawing = false,
		},

		label = {
			drawing = false,
		},

		background = {
			drawing = false,
		},
	},
}

return defaults
