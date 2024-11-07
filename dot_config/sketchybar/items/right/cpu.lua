local confs = require("confs")

-- Execute the event provider binary which provides the event "cpu_update" for
-- the cpu load data, which is fired every 2.0 seconds.
sbar.exec("killall cpu_load >/dev/null; $CONFIG_DIR/utils/clang/cpu/bin/cpu_load cpu_update 2.0")

local primary_color = confs.colors.blue
local background_color = confs.colors.black

local cpu = sbar.add("graph", "widgets.cpu", 42, {
	position = "right",
	padding_right = 3 + 6,

	icon = {
		string = confs.icons.text.cpu,
		padding_left = confs.defaults.items.icon.padding_left + 0,
		padding_right = confs.defaults.items.icon.padding_right + 4,
	},

	label = {
		font = confs.fonts.items.small.nums,
		width = 0,
		align = "right",
		string = "cpu ??%",
		y_offset = 4,
		padding_left = confs.defaults.items.label.padding_left + 4,
		padding_right = confs.defaults.items.label.padding_right + 0,
	},

	graph = {
		color = primary_color,
	},

	background = {
		color = primary_color,
	},
})

cpu:subscribe("cpu_update", function(env)
	-- Also available: env.user_load, env.sys_load
	local load = tonumber(env.total_load)
	cpu:push({ load / 100. })

	local color = confs.colors.white_bright
	if load > 30 then
		if load < 60 then
			color = confs.colors.yellow
		elseif load < 80 then
			color = confs.colors.orange
		else
			color = confs.colors.red
		end
	end

	cpu:set({
		graph = {
			color = color,
		},
		label = "cpu " .. env.total_load .. "%",
	})
end)

cpu:subscribe("mouse.clicked", function(env)
	sbar.exec("open -a 'Activity Monitor'")
end)

-- Background around the cpu item
sbar.add("bracket", "widgets.cpu.bracket", { cpu.name }, {
	background = {
		color = background_color,
		height = confs.defaults.backgrounds.brackets.height,
		border_color = primary_color,
		border_width = confs.defaults.backgrounds.brackets.border_width,
		corner_radius = confs.defaults.backgrounds.brackets.corner_radius,
	},
})

-- Background around the cpu item
sbar.add("item", "widgets.cpu.padding", {
	-- width = settings.group_paddings,
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
