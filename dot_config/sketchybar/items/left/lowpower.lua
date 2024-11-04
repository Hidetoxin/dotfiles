local confs = require("confs")

local color = confs.colors.orange
local label = confs.icons.syms.error
local modeValue = 0

local lowpower = sbar.add("item", "lowpower", {
	position = "left",
	padding_left = 8,
	padding_right = 8,

	icon = {
		-- drawing = false,
		font = {
			-- family = settings.font.numbers,
			family = "Sf Mono",
		},
		color = color,
		string = label,
		highlight = true,
		padding_left = 6,
		padding_right = 6,
	},

	label = {
		drawing = false,
		-- font = {
		-- 	-- family = settings.font.numbers,
		-- 	family = "Sf Mono",
		-- },
		-- color = color,
		-- string = label,
		-- padding_left = 6,
		-- padding_right = 6,
	},

	background = {
		color = confs.colors.red,
		height = 24,
		-- border_color = colors.red,
		border_width = 0,
		corner_radius = 6,
	},
})

local lowpower_bracket = sbar.add("bracket", "lowpower.bracket", { lowpower.name }, {
	background = {
		color = confs.colors.black,
		height = 40,
		border_width = 2.5,
		border_color = color,
		corner_radius = 12,
	},
})

local function setModeValue(v)
	modeValue = v
	if v == 1 then
		color = confs.colors.yellow
		label = confs.icons.syms.slow
		sbar.exec("sudo pmset -a lowpower 1")
	else
		color = confs.colors.red
		label = confs.icons.syms.fast
		sbar.exec("sudo pmset -a lowpower 0")
	end

	lowpower:set({
		icon = {
			color = confs.colors.black,
			string = label,
			background_color = confs.colors.red,
		},

		background = {
			color = color,
		},
	})

	lowpower_bracket:set({
		background = {
			border_color = color,
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
	-- width = settings.group_paddings,
	width = 5,
	position = "left",
})

-- vim: ts=2 sts=2 sw=2 et
