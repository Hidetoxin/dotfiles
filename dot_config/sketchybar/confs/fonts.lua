return {
	text = "Hack Nerd Font Mono", -- Used for text
	numbers = "Hack Nerd Font Mono", -- Used for numbers

	icons = function(size)
		local font = "sketchybar-app-font:Regular"
		return size and font .. ":" .. size or font .. ":" .. dimens.text.icon
	end,

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
}
