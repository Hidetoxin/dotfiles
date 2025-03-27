local confs = require("confs")

local highlight_color = confs.colors.white_bright
local background_color = confs.colors.black
local foreground_color = confs.colors.yellow

local spaces = {}

for i = 1, 10, 1 do
	local space = sbar.add("space", "space." .. i, {
		space = i,
		position = "left",
		padding_left = confs.defaults.paddings.padding_left,
		padding_right = confs.defaults.paddings.padding_right,

		icon = {
			font = confs.fonts.items.labels.nums,
			string = i,
			padding_left = confs.defaults.items.icon.padding_left + 0,
			padding_right = confs.defaults.items.icon.padding_right + 4,
		},

		label = {
			font = confs.fonts.items.icons.sbar,
			padding_left = confs.defaults.items.label.padding_left + 4,
			padding_right = confs.defaults.items.label.padding_right + 0,
		},

		popup = {},
	})

	spaces[i] = space

	-- Single item bracket for space items to achieve double border on highlight
	local space_bracket = sbar.add("bracket", { space.name }, {
		background = {
			color = background_color,
			height = confs.defaults.backgrounds.brackets.height,
			border_color = foreground_color,
			border_width = confs.defaults.backgrounds.brackets.border_width,
			corner_radius = confs.defaults.backgrounds.brackets.corner_radius,
		},
	})

	-- Padding space
	sbar.add("space", "space.padding." .. i, {
		space = i,
		width = confs.defaults.paddings.width,
		script = "",
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

	local space_popup = sbar.add("item", {
		position = "popup." .. space.name,

		background = {
			drawing = true,
		},
	})

	space:subscribe("space_change", function(env)
		local selected = env.SELECTED == "true"

		space:set({
			icon = {
				highlight = selected,
			},

			label = {
				highlight = selected,
			},

			background = {},
		})
		space_bracket:set({
			background = {
				color = selected and foreground_color or background_color,
				border_color = selected and highlight_color or foreground_color,
			},
		})
	end)

	space:subscribe("mouse.clicked", function(env)
		if env.BUTTON == "other" then
			space_popup:set({
				background = {
					image = "space." .. env.SID,
				},
			})

			space:set({
				popup = {
					drawing = "toggle",
				},
			})
		else
			local op = (env.BUTTON == "right") and "--destroy" or "--focus"
			-- sbar.exec("yabai -m space " .. op .. " " .. env.SID)
		end
	end)

	space:subscribe("mouse.exited", function(_)
		space:set({
			popup = {
				drawing = false,
			},
		})
	end)
end

local space_window_observer = sbar.add("item", {
	drawing = false,
	updates = true,
})

space_window_observer:subscribe("space_windows_change", function(env)
	local no_app = true
	local icon_line = ""
	for app, count in pairs(env.INFO.apps) do
		no_app = false
		local lookup = confs.icons.apps[app]
		local icon = ((lookup == nil) and confs.icons.apps["default"] or lookup)
		icon_line = icon_line .. " " .. icon
	end

	if no_app then
		icon_line = " —"
	end
	sbar.animate("tanh", 10, function()
		spaces[env.INFO.space]:set({
			label = icon_line,
		})
	end)
end)

-- vim: ts=2 sts=2 sw=2 et
