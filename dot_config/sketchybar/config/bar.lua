local settings = require("util.settings")

-- Equivalent to the --bar domain
-- https://felixkratz.github.io/SketchyBar/config/bar
sbar.bar({
	color = settings.colors.transparent,
	-- color = colors.transparent,
	margin = 0,
	height = 56,
	hotload = true,
	topmost = "window",
	y_offset = 0,
	position = "top",
	padding_left = 8,
	padding_right = 8,
})
