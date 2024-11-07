local families <const> = {
	sizes = {
		small = 9.0,
		icons = 16.0,
		labels = 14.0,
	},

	names = {
		nerd = "Hack Nerd Font Mono",
		nums = "Hack Nerd Font Mono",
		syms = "Sf Mono",
		sbar = "sketchybar-app-font",
	},

	styles = {
		bold = "Bold",
		heavy = "Heavy",
		black = "Black",
		regular = "Regular",
		semibold = "Semibold",
	},
}

local fonts <const> = {
	text = "Hack Nerd Font Mono", -- Used for text
	numbers = "Hack Nerd Font Mono", -- Used for numbers

	-- icons = function(size)
	-- 	local font = "sketchybar-app-font:Regular"
	-- 	return size and font .. ":" .. size or font .. ":" .. dimens.text.icon
	-- end,

	size = {
		icons = 16.0,
		labels = 12.0,
	},

	styles = {
		bold = "Bold",
		heavy = "Heavy",
		black = "Black",
		regular = "Regular",
		semibold = "Semibold",
	},

	-----------------------------------------------------------

	items = {

		icons = {
			text = {
				size = families.sizes.icons,
				style = families.styles.bold,
				family = families.names.nerd,
			},

			syms = {
				size = families.sizes.icons,
				style = families.styles.bold,
				family = families.names.syms,
			},

			nums = {
				size = families.sizes.icons,
				style = families.styles.bold,
				family = families.names.nerd,
			},

			sbar = {
				size = families.sizes.icons,
				style = families.styles.regular,
				family = families.names.sbar,
			},
		},

		small = {
			text = {
				size = families.sizes.small,
				style = families.styles.regular,
				family = families.names.nerd,
			},

			syms = {
				size = families.sizes.small,
				style = families.styles.regular,
				family = families.names.syms,
			},

			nums = {
				size = families.sizes.small,
				style = families.styles.regular,
				family = families.names.nerd,
			},

			sbar = {
				size = families.sizes.small,
				style = families.styles.regular,
				family = families.names.sbar,
			},
		},

		labels = {
			text = {
				size = families.sizes.labels,
				style = families.styles.regular,
				family = families.names.nerd,
			},

			syms = {
				size = families.sizes.labels,
				style = families.styles.regular,
				family = families.names.syms,
			},

			nums = {
				size = families.sizes.labels,
				style = families.styles.regular,
				family = families.names.nerd,
			},

			sbar = {
				size = families.sizes.labels,
				style = families.styles.regular,
				family = families.names.sbar,
			},
		},
	},
}

return fonts
