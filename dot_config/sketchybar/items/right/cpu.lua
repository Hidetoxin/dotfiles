local confs = require("confs")

-- Execute the event provider binary which provides the event "cpu_update" for
-- the cpu load data, which is fired every 2.0 seconds.
sbar.exec("killall cpu_load >/dev/null; $CONFIG_DIR/utils/clang/cpu/bin/cpu_load cpu_update 2.0")

local cpu = sbar.add("graph", "widgets.cpu", 42, {
	position = "right",
	-- padding_right = settings.paddings + 6,
	padding_right = 3 + 6,

	icon = {
		string = confs.icons.text.cpu,
	},

	label = {
		width = 0,
		align = "right",
		string = "cpu ??%",
		y_offset = 4,
		padding_right = 0,

		font = {
			size = 9.0,
			-- style = settings.font.style_map["Bold"],
			-- family = settings.font.numbers,
			style = confs.fonts.styles.bold,
			family = confs.fonts.numbers,
		},
	},

	graph = {
		color = confs.colors.blue,
	},

	background = {
		height = 22,
		drawing = true,

		color = {
			alpha = 0,
		},

		border_color = {
			alpha = 0,
		},
	},
})

cpu:subscribe("cpu_update", function(env)
	-- Also available: env.user_load, env.sys_load
	local load = tonumber(env.total_load)
	cpu:push({ load / 100. })

	local color = confs.colors.blue
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
		graph = { color = color },
		label = "cpu " .. env.total_load .. "%",
	})
end)

cpu:subscribe("mouse.clicked", function(env)
	sbar.exec("open -a 'Activity Monitor'")
end)

-- Background around the cpu item
sbar.add("bracket", "widgets.cpu.bracket", { cpu.name }, {
	background = {
		-- color = confs.colors.background,
		color = confs.colors.black,
		height = 40,
		border_width = 2.5,
		border_color = confs.colors.green,
		corner_radius = 12,
	},
})

-- Background around the cpu item
sbar.add("item", "widgets.cpu.padding", {
	-- width = settings.group_paddings,
	width = 5,
	position = "right",
})
