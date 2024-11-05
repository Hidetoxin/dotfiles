local confs = require("confs")

local item_order = ""

sbar.exec("aerospace list-workspaces --all", function(spaces)
	for space_name in spaces:gmatch("[^\r\n]+") do
		local space = sbar.add("item", "space." .. space_name, {

			position = "right",
			padding_left = 1,
			padding_right = 1,

			icon = {
				color = confs.colors.white_bright,
				string = space_name,
				padding_left = 7,
				padding_right = 3,
				highlight_color = confs.colors.black,

				-- font = {
				-- 	family = settings.font.numbers,
				-- },
			},

			label = {
				font = "sketchybar-app-font:Regular:16.0",
				color = confs.colors.yellow,
				y_offset = -1,
				padding_right = 12,
				highlight_color = confs.colors.black,
			},

			background = {
				-- color = confs.colors.black,
				height = 26,
				border_width = 1,
				-- border_color = confs.colors.green,
			},
		})

		local space_bracket = sbar.add("bracket", { space.name }, {
			-- padding_left = 10,
			-- padding_right = 10,
			background = {
				color = confs.colors.black,
				height = 28,
				border_width = 1,
				border_color = confs.colors.green,
				highlight_color = confs.colors.green,
			},
		})

		-- Padding space
		local space_padding = sbar.add("item", "space.padding." .. space_name, {
			script = "",
			width = 5,
			-- width = settings.group_paddings,
			-- padding_left = 10,
			-- padding_right = 10,
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
					border_color = selected and confs.colors.black or confs.colors.green,
				},
			})
			space_bracket:set({
				background = {
					color = selected and confs.colors.green or confs.colors.black,
					border_color = selected and confs.colors.black or confs.colors.green,
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
