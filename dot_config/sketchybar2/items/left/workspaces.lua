local confs = require("confs")

local spaces = {}

for i = 1, 10, 1 do
	local space = sbar.add("space", "space." .. i, {
		space = i,
		position = "left",
		padding_left = 1,
		padding_right = 1,

		icon = {
			color = confs.colors.white,
			string = i,
			padding_left = 15,
			padding_right = 8,
			highlight_color = confs.colors.black,

			-- font = {
			-- 	family = settings.font.numbers,
			-- },
		},

		label = {
			font = "sketchybar-app-font:Regular:16.0",
			color = confs.colors.yellow,
			y_offset = -1,
			padding_right = 20,
			highlight_color = confs.colors.black,
		},

		popup = {
			background = {
				border_width = 5,
				-- border_color = confs.colors.black,
			},
		},

		background = {
			-- color = confs.colors.background,
			height = 26,
			-- border_color = confs.colors.black,
			border_width = 1,
		},
	})

	spaces[i] = space

	-- Single item bracket for space items to achieve double border on highlight
	local space_bracket = sbar.add("bracket", { space.name }, {
		background = {
			color = confs.colors.black,
			height = 28,
			border_width = 2,
			border_color = confs.colors.green,
		},
	})

	-- Padding space
	sbar.add("space", "space.padding." .. i, {
		space = i,
		width = 5,
		-- width = settings.group_paddings,
		script = "",
	})

	local space_popup = sbar.add("item", {
		position = "popup." .. space.name,
		padding_left = 5,
		padding_right = 0,

		background = {
			drawing = true,
			image = {
				scale = 0.2,
				corner_radius = 9,
			},
		},
	})

	space:subscribe("space_change", function(env)
		local selected = env.SELECTED == "true"
		local color = selected and confs.colors.grey or confs.colors.background
		space:set({
			icon = {
				highlight = selected,
			},

			label = {
				highlight = selected,
			},

			background = {
				border_color = selected and confs.colors.black or confs.colors.background,
			},
		})
		space_bracket:set({
			background = {
				color = selected and confs.colors.green or confs.colors.black,
				border_color = selected and confs.colors.black or confs.colors.green,
			},
		})
	end)

	-- space:subscribe("mouse.clicked", function(env)
	-- 	if env.BUTTON == "other" then
	-- 		space_popup:set({
	-- 			background = {
	-- 				image = "space." .. env.SID,
	-- 			},
	-- 		})
	--
	-- 		space:set({
	-- 			popup = {
	-- 				drawing = "toggle",
	-- 			},
	-- 		})
	-- 	else
	-- 		local op = (env.BUTTON == "right") and "--destroy" or "--focus"
	-- 		sbar.exec("yabai -m space " .. op .. " " .. env.SID)
	-- 	end
	-- end)

	space:subscribe("mouse.exited", function(_)
		space:set({ popup = { drawing = false } })
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
