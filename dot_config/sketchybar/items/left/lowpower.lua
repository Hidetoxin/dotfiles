local confs = require("confs")

local primary_color = confs.colors.orange
local secondary_color = confs.colors.red
local tertiary_color = confs.colors.yellow
local background_color = confs.colors.black

local item_color = primary_color

local label = confs.icons.syms.error
local modeValue = 0

local lowpower = sbar.add("item", "lowpower", {
	position = "left",

	icon = {
		string = label,
		padding_left = confs.defaults.items.icon.padding_left + 0,
		padding_right = confs.defaults.items.icon.padding_right + 4,
	},

	label = {
		drawing = false,
	},

	popup = {
		drawing = false,
	},

	background = {
		color = item_color,
	},
})

local lowpower_bracket = sbar.add("bracket", "lowpower.bracket", { lowpower.name }, {
	background = {
		color = background_color,
		height = confs.defaults.backgrounds.brackets.height,
		border_color = item_color,
		border_width = confs.defaults.backgrounds.brackets.border_width,
		corner_radius = confs.defaults.backgrounds.brackets.corner_radius,
	},
})

local function setModeValue(v)
	modeValue = v
	if v == 1 then
		label = confs.icons.syms.slow
		item_color = tertiary_color
		sbar.exec("sudo pmset -a lowpower 1")
	else
		label = confs.icons.syms.fast
		item_color = secondary_color
		sbar.exec("sudo pmset -a lowpower 0")
	end

	lowpower:set({
		icon = {
			string = label,
			background_color = item_color,
		},

		background = {
			color = item_color,
		},
	})

	lowpower_bracket:set({
		background = {
			border_color = item_color,
		},
	})
end

lowpower:subscribe({ "power_source_change", "system_woke" }, function()
	sbar.exec("pmset -g |grep lowpower", function(mode_info)
		local found, _, enabled = mode_info:find("(%d+)")
		if found then
			setModeValue(tonumber(enabled))
		end
	end)
end)

lowpower:subscribe("mouse.clicked", function()
	if modeValue == 0 then
		setModeValue(1)
	else
		setModeValue(0)
	end
end)

sbar.add("item", "lowpower.right_padding", {
	width = confs.defaults.paddings.width,
	position = "left",
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

-- vim: ts=2 sts=2 sw=2 et
