local confs = require("confs")

local primary_color = confs.colors.green
local secondary_color = confs.colors.yellow
local tertiary_color = confs.colors.orange
local quaternary_color = confs.colors.red
local background_color = confs.colors.black

-- Padding item required because of bracket
sbar.add("item", "battery.right_padding", {
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

local battery = sbar.add("item", "battery", {
	position = "right",
	update_freq = 180,

	icon = {
		font = confs.fonts.items.icons.text,
		padding_left = confs.defaults.items.icon.padding_left + 0,
		padding_right = confs.defaults.items.icon.padding_right + 4,
	},

	label = {
		font = confs.fonts.items.labels.nums,
		padding_left = confs.defaults.items.label.padding_left + 4,
		padding_right = confs.defaults.items.label.padding_right + 0,
	},

	popup = {},

	background = {
		color = primary_color,
	},
})

local remaining_time = sbar.add("item", {
	position = "popup." .. battery.name,

	icon = {
		width = 100,
		align = "left",
		string = "Time remaining:",
		padding_left = 6,
		padding_right = 6,
	},

	label = {
		width = 100,
		align = "right",
		string = "??:??h",
		padding_left = 6,
		padding_right = 6,
	},
})

local battery_bracket = sbar.add("bracket", "battery.bracket", { battery.name }, {
	background = {
		color = confs.colors.black,
		height = confs.defaults.backgrounds.brackets.height,
		border_color = confs.colors.green,
		border_width = confs.defaults.backgrounds.brackets.border_width,
		corner_radius = confs.defaults.backgrounds.brackets.corner_radius,
	},
})

battery:subscribe({ "routine", "power_source_change", "system_woke" }, function()
	sbar.exec("pmset -g batt", function(batt_info)
		local icon = "!"
		local label = "?"

		local found, _, charge = batt_info:find("(%d+)%%")
		if found then
			charge = tonumber(charge)
			label = charge .. "%"
		end

		local color = primary_color
		local charging, _, _ = batt_info:find("AC Power")

		if charging then
			icon = confs.icons.text.battery.charging
		else
			if found and charge > 80 then
				icon = confs.icons.text.battery._100
			elseif found and charge > 60 then
				icon = confs.icons.text.battery._75
			elseif found and charge > 40 then
				icon = confs.icons.text.battery._50
				color = secondary_color
			elseif found and charge > 20 then
				icon = confs.icons.text.battery._25
				color = tertiary_color
			else
				icon = confs.icons.text.battery._0
				color = quaternary_color
			end
		end

		local lead = ""
		if found and charge < 10 then
			lead = "0"
		end

		battery:set({
			icon = {
				string = icon,
			},

			label = {
				string = lead .. label,
			},

			popup = {
				background = {
					border_color = color,
				},
			},

			background = {
				color = color,
			},
		})

		battery_bracket:set({
			background = {
				border_color = color,
			},
		})

		remaining_time:set({
			icon = {
				color = color,
				highlight = false,
			},

			label = {
				color = color,
				highlight = false,
			},
		})
	end)
end)

battery:subscribe("mouse.clicked", function(env)
	local drawing = battery:query().popup.drawing
	battery:set({
		popup = {
			drawing = "toggle",
		},
	})

	if drawing == "off" then
		sbar.exec("pmset -g batt", function(batt_info)
			local found, _, remaining = batt_info:find(" (%d+:%d+) remaining")
			local label = found and remaining .. "h" or "No estimate"
			remaining_time:set({
				label = label,
			})
		end)
	end
end)

sbar.add("item", "battery.left_padding", {
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

-- vim: ts=2 sts=2 sw=2 et
