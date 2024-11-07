local confs = require("confs")

local highlight_color = confs.colors.white_bright
local background_color = confs.colors.black
local foreground_color = confs.colors.green

local item_order = ""

sbar.exec("aerospace list-workspaces --all", function(spaces)
	for space_name in spaces:gmatch("[^\r\n]+") do
		local space = sbar.add("item", "space." .. space_name, {

			position = "right",
			padding_left = confs.defaults.paddings.padding_left,
			padding_right = confs.defaults.paddings.padding_right,

			icon = {
				font = confs.fonts.items.labels.nums,
				color = confs.colors.white_bright,
				string = space_name,
				padding_left = confs.defaults.items.icon.padding_left + 0,
				padding_right = confs.defaults.items.icon.padding_right + 4,
			},

			label = {
				font = confs.fonts.items.icons.sbar,
				padding_left = confs.defaults.items.label.padding_left + 4,
				padding_right = confs.defaults.items.label.padding_right + 0,
			},

			popup = {},

			background = {},
		})

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
		local space_padding = sbar.add("item", "space.padding." .. space_name, {
			script = "",
			width = confs.defaults.paddings.width,
			position = "right",
			padding_left = confs.defaults.paddings.padding_left,
			padding_right = confs.defaults.paddings.padding_right,
		})

		space:subscribe("aerospace_workspace_change", function(env)
			local selected = env.FOCUSED_WORKSPACE == space_name
			-- local color = selected and confs.colors.green or confs.colors.green
			space:set({

				icon = {
					highlight = selected,
				},

				label = {
					highlight = selected,
				},

				background = {
					border_color = selected and foreground_color or background_color,
				},
			})

			space_bracket:set({
				background = {
					color = selected and foreground_color or background_color,
					border_color = selected and highlight_color or foreground_color,
				},
			})
		end)

		space:subscribe("mouse.clicked", function()
			sbar.exec("aerospace workspace " .. space_name)
		end)

		space:subscribe("space_windows_change", function()
			sbar.exec("aerospace list-windows --format %{app-name} --workspace " .. space_name, function(windows)
				local no_app = true
				local icon_line = ""
				for app in windows:gmatch("[^\r\n]+") do
					no_app = false
					local lookup = confs.icons.apps[app]
					local icon = ((lookup == nil) and confs.icons.apps["default"] or lookup)
					icon_line = icon_line .. " " .. icon
				end

				if no_app then
					icon_line = " —"
				end
				sbar.animate("tanh", 10, function()
					space:set({
						label = icon_line,
					})
				end)
			end)
		end)

		item_order = item_order .. " " .. space.name .. " " .. space_padding.name
		-- item_order = string.reverse(item_order)
		-- table.sort(item_order, function(a, b)
		-- 	return a > b
		-- end)
	end
	-- sbar.exec("sketchybar --reorder apple " .. item_order .. " front_app")
end)
