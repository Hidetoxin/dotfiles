local confs = require("confs")

local primary_color = confs.colors.blue_bright
local background_color = confs.colors.black

--  sketchybar --query default_menu_items
-- local docker = sbar.add("alias", "Docker Desktop,Item-0", {})
-- local espanso = sbar.add("alias", "Espanso,Item-0", {})
-- local adguard = sbar.add("alias", "Adguard For Safari,Item-0", {})
-- local shortcat = sbar.add("alias", "Shortcat,Item-0", {})
-- local protonvpn = sbar.add("alias", "Proton VPN,Item-0", {})
-- local protonmail = sbar.add("alias", "Proton Mail Bridge,Item-0", {})

-- local monarch = sbar.add("alias", "Monarch,Item-0", {
-- 	width = confs.defaults.aliases.width,
-- 	position = "left",
-- 	update_freq = confs.defaults.aliases.update_freq,
-- })

local aerospace = sbar.add("alias", "AeroSpace,Item-0", {
	width = confs.defaults.aliases.width,
	position = "left",
	update_freq = confs.defaults.aliases.update_freq,

	icon = {
		string = confs.icons.syms.apple,
		padding_left = confs.defaults.items.icon.padding_left + 0,
		padding_right = confs.defaults.items.icon.padding_right + 4,
	},
})

-- Padding item required because of bracket
sbar.add("item", "aliases.left_padding", {
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

sbar.add("bracket", "aliases.bracket", {
	-- docker.name,
	-- espanso.name,
	-- monarch.name,
	-- adguard.name,
	-- shortcat.name,
	aerospace.name,
	-- protonvpn.name,
	-- protonmail.name,
}, {
	background = {
		color = background_color,
		height = confs.defaults.backgrounds.brackets.height,
		border_color = primary_color,
		border_width = confs.defaults.backgrounds.brackets.border_width,
		corner_radius = confs.defaults.backgrounds.brackets.corner_radius,
	},
})
