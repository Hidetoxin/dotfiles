local confs = require("confs")

-- Padding item required because of bracket
sbar.add("item", "cal.right_padding", {
	width = 5,
	position = "right",
})

-- Add the current `time` item
local time = sbar.add("item", "time", {
	position = "right",
	update_freq = 5,
	padding_left = 2,
	padding_right = 8,

	icon = {
		string = confs.icons.text.calendar.time,
		color = confs.colors.red,
		highlight = true,
		padding_left = 8,
		padding_right = 2,
	},

	label = {
		highlight = true,
		padding_left = 2,
		padding_right = 8,
	},

	background = {
		color = confs.colors.red,
		height = 24,
		border_width = 0,
		corner_radius = 6,
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
	padding_left = 8,
	padding_right = 2,

	icon = {
		color = confs.colors.red,
		string = confs.icons.text.calendar.date,
		padding_left = 8,
		padding_right = 2,
	},

	label = {
		color = confs.colors.red,
		padding_left = 2,
		padding_right = 8,
	},

	background = {
		height = 24,
		border_width = 0,
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
sbar.add("bracket", "cal.bracket", { date.name, time.name }, {
	background = {
		color = confs.colors.background,
		height = 40,
		border_width = 2,
		border_color = confs.colors.red,
		corner_radius = 12,
	},
})
