local confs = require("confs")

-- Equivalent to the --bar domain
-- https://felixkratz.github.io/SketchyBar/config/bar
sbar.bar({
	color = confs.colors.transparent,
	margin = 0,
	height = 56,
	shadow = false,
	topmost = "window",
	y_offset = 0,
	position = os.getenv("SBAR_POSITION"),
	padding_left = confs.defaults.bar.padding_left,
	padding_right = confs.defaults.bar.padding_left,
	font_smoothing = true,
})
