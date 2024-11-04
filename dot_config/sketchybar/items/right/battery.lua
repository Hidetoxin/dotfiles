local confs = require("confs")

local battery = sbar.add("item", "battery", {
	position = "right",
	update_freq = 180,
	padding_left = 8,
	padding_right = 8,

	icon = {
		highlight = true,
		padding_left = 6,
		padding_right = 6,

		font = {
			-- size = 19.0,
			-- style = settings.font.style_map["Regular"],
			size = confs.fonts.size.icons,
			style = confs.fonts.styles.regular,
		},
	},

	label = {
		highlight = true,
		padding_left = 6,
		padding_right = 6,

		font = {
			-- family = settings.font.numbers,
			family = confs.fonts.numbers,
		},
	},

	popup = {
		align = "center",
	},

	background = {
		color = confs.colors.green,
		height = 24,
		-- border_color = colors.red,
		border_width = 0,
		corner_radius = 6,
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

	background = {
		color = confs.colors.black,
		-- height = 24,
		-- border_color = colors.g,
		border_width = 2.5,
		corner_radius = 6,
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

		local color = confs.colors.green
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
				color = confs.colors.yellow
			elseif found and charge > 20 then
				icon = confs.icons.text.battery._25
				color = confs.colors.orange
			else
				icon = confs.icons.text.battery._0
				color = confs.colors.red
			end
		end

		local lead = ""
		if found and charge < 10 then
			lead = "0"
		end

		battery:set({
			icon = {
				-- color = color,
				string = icon,
			},

			label = {
				string = lead .. label,
			},

			background = {
				color = color,
				border_color = color,
				border_width = 0,
				corner_radius = 6,
			},
		})

		remaining_time:set({
			icon = {
				color = color,
			},

			label = {
				color = color,
			},

			background = {
				border_color = color,
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
			remaining_time:set({ label = label })
		end)
	end
end)

sbar.add("bracket", "battery.bracket", { battery.name }, {
	background = {
		-- color = confs.colors.background,
		color = confs.colors.black,
		height = 40,
		border_width = 2.5,
		border_color = confs.colors.green,
		corner_radius = 12,
	},
})

sbar.add("item", "battery.padding", {
	-- width = settings.group_paddings,
	width = 5,
	position = "right",
})
