local colors = require("util.colors")

-- Equivalent to the --bar domain
-- https://felixkratz.github.io/SketchyBar/config/bar
sbar.bar({
	-- color = colors.transparent,
	color = colors.transparent,
	margin = 0,
	height = 56,
	hotload = true,
	-- topmost = "window",
	y_offset = 0,
	padding_left = 8,
	padding_right = 8,
})
