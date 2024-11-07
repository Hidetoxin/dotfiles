local confs = require("confs")

-- Equivalent to the --bar domain
-- https://felixkratz.github.io/SketchyBar/config/bar
sbar.bar({
	color = confs.colors.transparent,
	margin = confs.defaults.bar.margin,
	height = 56,
	-- height = confs.defaults.bar.height,
	shadow = false,
	topmost = "window",
	y_offset = confs.defaults.bar.y_offset,
	position = os.getenv("SBAR_POSITION"),
	padding_left = confs.defaults.bar.padding_left,
	padding_right = confs.defaults.bar.padding_left,
	font_smoothing = true,
})
