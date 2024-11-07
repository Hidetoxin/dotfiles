local confs = require("confs")

local primary_color = confs.colors.white_bright
local background_color = confs.colors.black

local whitelist = {
	["Music"] = true,
	["Spotify"] = true,
}

local media_cover = sbar.add("item", {
	drawing = false,
	updates = true,
	position = "right",

	icon = {
		drawing = false,
	},

	label = {
		drawing = false,
	},

	popup = {
		align = "center",
		color = primary_color,
		horizontal = true,

		background = {
			color = confs.colors.black,
			blur_radius = 0.9,
			border_width = 2.5,
			border_color = color,
			corner_radius = 12,
		},
	},

	background = {
		color = confs.colors.transparent,

		image = {
			scale = 0.85,
			string = "media.artwork",
		},
	},
})

local media_artist = sbar.add("item", {

	width = 0,
	drawing = false,
	position = "right",
	padding_left = 3,
	padding_right = 0,

	icon = {
		drawing = false,
	},

	label = {
		width = 0,
		-- color = confs.colors.with_alpha(confs.colors.orange, 0.6),
		color = primary_color,
		y_offset = 6,
		max_chars = 18,

		font = {
			size = 9,
		},
	},
})

local media_title = sbar.add("item", {
	drawing = false,
	position = "right",
	padding_left = 3,
	padding_right = 0,

	icon = {
		drawing = false,
	},

	label = {
		width = 0,
		color = primary_color,
		y_offset = -5,
		max_chars = 16,

		font = {
			size = 11,
		},
	},
})

sbar.add("bracket", "media.bracket", {
	media_cover.name,
	media_artist.name,
	media_title.name,
}, {
	background = {
		color = background_color,
		height = confs.defaults.backgrounds.brackets.height,
		border_color = primary_color,
		border_width = confs.defaults.backgrounds.brackets.border_width,
		corner_radius = confs.defaults.backgrounds.brackets.corner_radius,
	},
})

sbar.add("item", {
	position = "popup." .. media_cover.name,
	click_script = "nowplaying-cli previous",

	icon = {
		color = primary_color,
		string = confs.icons.text.media.back,
	},

	label = {
		drawing = false,
	},
})

sbar.add("item", {
	position = "popup." .. media_cover.name,
	click_script = "nowplaying-cli togglePlayPause",

	icon = {
		color = primary_color,
		string = confs.icons.text.media.play_pause,
	},

	label = {
		drawing = false,
	},
})

sbar.add("item", {
	position = "popup." .. media_cover.name,
	click_script = "nowplaying-cli next",

	icon = {
		color = primary_color,
		string = confs.icons.text.media.forward,
	},

	label = {
		drawing = false,
	},
})

local interrupt = 0
local function animate_detail(detail)
	if not detail then
		interrupt = interrupt - 1
	end
	if interrupt > 0 and not detail then
		return
	end

	sbar.animate("tanh", 30, function()
		media_artist:set({
			label = { width = detail and "dynamic" or 0 },
		})

		media_title:set({
			label = { width = detail and "dynamic" or 0 },
		})
	end)
end

media_cover:subscribe("media_change", function(env)
	if whitelist[env.INFO.app] then
		local drawing = (env.INFO.state == "playing")
		media_artist:set({
			label = env.INFO.artist,
			drawing = drawing,
		})
		media_title:set({
			label = env.INFO.title,
			drawing = drawing,
		})
		media_cover:set({
			drawing = drawing,
		})

		if drawing then
			animate_detail(true)
			interrupt = interrupt + 1
			sbar.delay(5, animate_detail)
		else
			media_cover:set({ popup = { drawing = false } })
		end
	end
end)

media_cover:subscribe("mouse.entered", function(env)
	interrupt = interrupt + 1
	animate_detail(true)
end)

media_cover:subscribe("mouse.exited", function(env)
	animate_detail(false)
end)

media_cover:subscribe("mouse.clicked", function(env)
	media_cover:set({
		popup = {
			drawing = "toggle",
		},
	})
end)

media_title:subscribe("mouse.exited.global", function(env)
	media_cover:set({
		popup = {
			drawing = false,
		},
	})
end)
