local confs = require("confs")

local primary_color = confs.colors.red
local background_color = confs.colors.black

-- Padding item required because of bracket
sbar.add("item", "cal.right_padding", {
	width = confs.defaults.paddings.width,
	position = "right",
	padding_left = confs.defaults.paddings.padding_left,
	padding_right = confs.defaults.paddings.padding_right,

	icon = {
		drawing = confs.defaults.paddings.icon.drawing,
	},

	label = {
		drawing = confs.defaults.paddings.label.drawing,
	},

	background = {
		drawing = confs.defaults.paddings.background.drawing,
	},
})

-- Add the current `time` item
local time = sbar.add("item", "time", {
	position = "right",
	update_freq = 5,

	icon = {
		color = primary_color,
		string = confs.icons.text.calendar.time,
		padding_left = confs.defaults.items.icon.padding_left + 0,
		padding_right = confs.defaults.items.icon.padding_right + 4,
	},

	label = {
		padding_left = confs.defaults.items.label.padding_left + 4,
		padding_right = confs.defaults.items.label.padding_right + 0,
	},

	background = {
		color = primary_color,
	},
})

-- Display the current time on the `time` item label
time:subscribe({ "forced", "routine", "system_woke" }, function(env)
	time:set({
		label = os.date("%H:%M"),
	})
end)

-- Open the `Clock` app when clicking the `time` item
time:subscribe("mouse.clicked", function(env)
	sbar.exec("open -a 'Clock'")
end)

-- Add the current `date` item
local date = sbar.add("item", "date", {
	position = "right",
	update_freq = 60,

	icon = {
		color = primary_color,
		string = confs.icons.text.calendar.date,
		padding_left = confs.defaults.items.icon.padding_left + 0,
		padding_right = confs.defaults.items.icon.padding_right + 4,
	},

	label = {
		color = primary_color,
		padding_left = confs.defaults.items.label.padding_left + 4,
		padding_right = confs.defaults.items.label.padding_right + 0,
	},
})

-- Display the current date on the `date` item label
date:subscribe({ "forced", "routine", "system_woke" }, function(env)
	date:set({
		label = os.date("%a %b %d"),
	})
end)

-- Open the `Calendar` app when clicking the `date` item
date:subscribe("mouse.clicked", function(env)
	sbar.exec("open -a 'Calendar'")
end)

-- Double border for apple using a single item bracket
sbar.add("bracket", "cal.bracket", {
	date.name,
	time.name,
}, {
	background = {
		color = background_color,
		height = confs.defaults.backgrounds.brackets.height,
		border_color = primary_color,
		border_width = confs.defaults.backgrounds.brackets.border_width,
		corner_radius = confs.defaults.backgrounds.brackets.corner_radius,
	},
})

-- vim: ts=2 sts=2 sw=2 et
