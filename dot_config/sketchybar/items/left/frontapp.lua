local confs = require("confs")

local menu_watcher = sbar.add("item", {
	drawing = false,
	updates = false,
})

local space_menu_swap = sbar.add("item", {
	drawing = false,
	updates = true,
})

sbar.add("event", "swap_menus_and_spaces")

local max_items = 15
local menu_items = {}

local primary_color = confs.colors.purple
local secondary_color = confs.colors.cyan
local background_color = confs.colors.black

for i = 1, max_items, 1 do
	local menu = sbar.add("item", "menu." .. i, {

		drawing = false,
		click_script = "$CONFIG_DIR/utils/clang/menus/bin/menus -s " .. i,
		padding_left = 8,
		padding_right = 8,

		icon = {
			drawing = false,
		},

		label = {
			padding_left = confs.defaults.items.label.padding_left + 4,
			padding_right = confs.defaults.items.label.padding_right + 0,
		},

		background = {
			color = primary_color,
		},
	})

	menu_items[i] = menu
end

sbar.add("bracket", { "/menu\\..*/" }, {
	background = {
		color = confs.colors.black,
		height = confs.defaults.backgrounds.brackets.height,
		border_color = confs.colors.purple,
		border_width = confs.defaults.backgrounds.brackets.border_width,
		corner_radius = confs.defaults.backgrounds.brackets.corner_radius,
	},
})

local menu_padding = sbar.add("item", "menu.padding", {
	width = confs.defaults.paddings.width,
	drawing = false,
	position = "left",
	padding_left = confs.defaults.paddings.padding_left,
	padding_right = confs.defaults.paddings.padding_right,
})

local function update_menus(env)
	sbar.exec("$CONFIG_DIR/utils/clang/menus/bin/menus -l", function(menus)
		sbar.set("/menu\\..*/", {
			drawing = false,
		})

		menu_padding:set({
			drawing = true,
		})

		id = 1
		for menu in string.gmatch(menus, "[^\r\n]+") do
			if id < max_items then
				menu_items[id]:set({
					label = menu,
					drawing = true,
				})
			else
				break
			end
			id = id + 1
		end
	end)
end

menu_watcher:subscribe("front_app_switched", update_menus)

space_menu_swap:subscribe("swap_menus_and_spaces", function(env)
	local drawing = menu_items[1]:query().geometry.drawing == "on"
	if drawing then
		menu_watcher:set({
			updates = false,
		})
		sbar.set("/menu\\..*/", {
			drawing = false,
		})
		sbar.set("/space\\..*/", {
			drawing = true,
		})
		sbar.set("front_app", {
			drawing = true,
		})
	else
		menu_watcher:set({
			updates = true,
		})
		sbar.set("/space\\..*/", {
			drawing = false,
		})
		sbar.set("front_app", {
			drawing = false,
		})
		update_menus()
	end
end)

-- local confs = require("confs")

-- local spaces = {}

-- for i = 1, 10, 1 do
-- 	local space = sbar.add("space", "space." .. i, {
--
-- 		space = i,
-- 		padding_left = 1,
-- 		padding_right = 1,
--
-- 		icon = {
-- 			color = confs.colors.white,
-- 			string = i,
-- 			padding_left = 15,
-- 			padding_right = 8,
-- 			-- highlight_color = confs.colors.red,
--
-- 			font = {
-- 				-- family = settings.font.numbers,
-- 			},
-- 		},
--
-- 		label = {
-- 			font = "sketchybar-app-font:Regular:16.0",
-- 			color = confs.colors.grey,
-- 			y_offset = -1,
-- 			padding_right = 20,
-- 			-- highlight_color = confs.colors.white,
-- 		},
--
-- 		popup = {
-- 			background = {
-- 				border_width = 5,
-- 				-- border_color = colors.black,
-- 			},
-- 		},
--
-- 		background = {
-- 			-- color = colors.bg1,
-- 			height = 26,
-- 			border_width = 1,
-- 			-- border_color = colors.black,
-- 		},
-- 	})
--
-- 	spaces[i] = space
--
-- 	-- Single item bracket for space items to achieve double border on highlight
-- 	local space_bracket = sbar.add("bracket", { space.name }, {
-- 		background = {
-- 			color = confs.colors.transparent,
-- 			height = 28,
-- 			border_color = confs.colors.black,
-- 			border_width = 2,
-- 		},
-- 	})
--
-- 	-- Padding space
-- 	sbar.add("space", "space.padding." .. i, {
-- 		space = i,
-- 		-- width = settings.group_paddings,
-- 		width = 5,
-- 		script = "",
-- 	})
--
-- 	local space_popup = sbar.add("item", {
-- 		position = "popup." .. space.name,
-- 		padding_left = 5,
-- 		padding_right = 0,
--
-- 		background = {
-- 			drawing = true,
--
-- 			image = {
-- 				scale = 0.2,
-- 				corner_radius = 9,
-- 			},
-- 		},
-- 	})
--
-- 	space:subscribe("space_change", function(env)
-- 		local selected = env.SELECTED == "true"
-- 		local color = selected and confs.colors.grey or confs.colors.background
-- 		space:set({
--
-- 			icon = {
-- 				highlight = selected,
-- 			},
--
-- 			label = {
-- 				highlight = selected,
-- 			},
--
-- 			background = {
-- 				border_color = selected and confs.colors.black or confs.colors.background,
-- 			},
-- 		})
-- 		space_bracket:set({
-- 			background = {
-- 				border_color = selected and confs.colors.grey or confs.colors.background,
-- 			},
-- 		})
-- 	end)
--
-- 	space:subscribe("mouse.clicked", function(env)
-- 		if env.BUTTON == "other" then
-- 			space_popup:set({
-- 				background = {
-- 					image = "space." .. env.SID,
-- 				},
-- 			})
-- 			space:set({ popup = {
-- 				drawing = "toggle",
-- 			} })
-- 		else
-- 			local op = (env.BUTTON == "right") and "--destroy" or "--focus"
-- 			-- sbar.exec("yabai -m space " .. op .. " " .. env.SID)
-- 		end
-- 	end)
--
-- 	space:subscribe("mouse.exited", function(_)
-- 		space:set({
-- 			popup = {
-- 				drawing = false,
-- 			},
-- 		})
-- 	end)
-- end

local space_window_observer = sbar.add("item", {
	drawing = false,
	updates = true,
})

local spaces_indicator = sbar.add("item", {
	position = "left",

	icon = {
		string = confs.icons.text.switch.on,
		padding_left = confs.defaults.items.icon.padding_left + 0,
		padding_right = confs.defaults.items.icon.padding_right + 4,
	},

	label = {
		drawing = false,
	},

	background = {
		color = secondary_color,
	},
})

-- space_window_observer:subscribe("space_windows_change", function(env)
-- 	local icon_line = ""
-- 	local no_app = true
-- 	for app, count in pairs(env.INFO.apps) do
-- 		no_app = false
-- 		local lookup = confs.icons.apps[app]
-- 		local icon = ((lookup == nil) and confs.icons.apps["default"] or lookup)
-- 		icon_line = icon_line .. " " .. icon
-- 	end
--
-- 	if no_app then
-- 		icon_line = " —"
-- 	end
-- 	sbar.animate("tanh", 10, function()
-- 		spaces[env.INFO.space]:set({
-- 			label = icon_line,
-- 		})
-- 	end)
-- end)

spaces_indicator:subscribe("swap_menus_and_spaces", function(env)
	local currently_on = spaces_indicator:query().icon.value == confs.icons.text.switch.on
	spaces_indicator:set({
		icon = currently_on and confs.icons.text.switch.off or confs.icons.text.switch.on,
	})
end)

-- spaces_indicator:subscribe("mouse.entered", function(env)
-- 	sbar.animate("tanh", 30, function()
-- 		spaces_indicator:set({
--
-- 			icon = {
-- 				color = confs.colors.background,
-- 			},
--
-- 			label = {
-- 				width = "dynamic",
-- 			},
--
-- 			background = {
-- 				color = {
-- 					alpha = 1.0,
-- 				},
--
-- 				border_color = {
-- 					alpha = 1.0,
-- 				},
-- 			},
-- 		})
-- 	end)
-- end)

-- spaces_indicator:subscribe("mouse.exited", function(env)
-- 	sbar.animate("tanh", 30, function()
-- 		spaces_indicator:set({
--
-- 			icon = {
-- 				color = confs.colors.grey,
-- 			},
--
-- 			label = {
-- 				width = 0,
-- 			},
--
-- 			background = {
-- 				color = {
-- 					alpha = 0.0,
-- 				},
--
-- 				border_color = {
-- 					alpha = 0.0,
-- 				},
-- 			},
-- 		})
-- 	end)
-- end)

spaces_indicator:subscribe("mouse.clicked", function(env)
	sbar.trigger("swap_menus_and_spaces")
end)
local confs = require("confs")

local front_app = sbar.add("item", "front_app", {
	display = "active",
	position = "left",

	icon = {
		font = "sketchybar-app-font:Regular:16.0",
		color = secondary_color,
		padding_left = confs.defaults.items.icon.padding_left + 0,
		padding_right = confs.defaults.items.icon.padding_right + 4,
	},

	label = {
		color = secondary_color,
	},
})

sbar.add("bracket", "frontapp.bracket", { spaces_indicator.name, front_app.name }, {
	background = {
		color = confs.colors.black,
		height = confs.defaults.backgrounds.brackets.height,
		border_color = confs.colors.cyan,
		border_width = confs.defaults.backgrounds.brackets.border_width,
		corner_radius = confs.defaults.backgrounds.brackets.corner_radius,
	},
})

front_app:subscribe("front_app_switched", function(env)
	front_app:set({
		icon = {
			string = confs.icons.apps[env.INFO],
		},

		label = {
			string = env.INFO,
		},
	})
end)

front_app:subscribe("mouse.clicked", function(env)
	sbar.trigger("swap_menus_and_spaces")
end)

-- vim: ts=2 sts=2 sw=2 et
