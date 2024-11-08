local confs = require("confs")

local primary_color = confs.colors.blue
local background_color = confs.colors.black

local svim = sbar.add("item", "svim", {
	position = "left",

	icon = {
		font = confs.fonts.items.icons.text,
		string = confs.icons.text.svim.nvim,
		padding_left = confs.defaults.items.icon.padding_left + 0,
		padding_right = confs.defaults.items.icon.padding_right + 4,
	},

	label = {
		font = confs.fonts.items.icons.text,
		string = "[—]",
		padding_left = confs.defaults.items.label.padding_left + 4,
		padding_right = confs.defaults.items.label.padding_right + 0,
	},

	popup = {
		drawing = false,
	},

	background = {
		color = primary_color,
	},
})

svim:subscribe("svim_update", function(env)
	local mode = env.MODE
	local cmdline = env.CMDLINE
	local mode_icon = mode

	if mode == "" then
		mode_icon = "—"
	elseif mode == "I" then
		mode_icon = confs.icons.text.svim.insert
	elseif mode == "N" then
		mode_icon = confs.icons.text.svim.normal
	end

	svim:set({
		label = {
			string = "[" .. mode_icon .. "]",
		},
	})
end)

-- Double border for apple using a single item bracket
sbar.add("bracket", "svim.bracket", { svim.name }, {
	background = {
		color = background_color,
		height = confs.defaults.backgrounds.brackets.height,
		border_color = primary_color,
		border_width = confs.defaults.backgrounds.brackets.border_width,
		corner_radius = confs.defaults.backgrounds.brackets.corner_radius,
	},
})

sbar.add("item", "svim.right_padding", {
	width = confs.defaults.paddings.width,
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

-- vim: ts=2 sts=2 sw=2 et
