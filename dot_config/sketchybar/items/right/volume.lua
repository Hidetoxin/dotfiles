local confs = require("confs")

local popup_width = 250

local primary_color = confs.colors.orange
local highlight_color = confs.colors.orange_bright
local background_color = confs.colors.black

local volume_percent = sbar.add("item", "widgets.volume1", {
	position = "right",

	icon = {
		color = primary_color,
		drawing = false,
		padding_left = confs.defaults.items.icon.padding_left + 0,
		padding_right = confs.defaults.items.icon.padding_right + 4,
	},

	label = {
		font = confs.fonts.items.labels.nums,
		color = primary_color,
		string = "??%",
		padding_left = confs.defaults.items.label.padding_left + 4,
		padding_right = confs.defaults.items.label.padding_right + 0,
	},

	background = {
		color = primary_color,
	},
})

local volume_icon = sbar.add("item", "widgets.volume2", {
	position = "right",
	padding_right = -1,

	icon = {
		width = 0,
		align = "left",
		color = primary_color,
		string = confs.icons.text.volume._100,
		highlight = false,

		font = {
			size = confs.fonts.size.icons,
			style = confs.fonts.styles.regular,
		},
	},

	label = {
		width = 25,
		color = primary_color,
		align = "left",
		highlight = false,

		font = {
			size = confs.fonts.size.icons,
			style = confs.fonts.styles.regular,
		},
	},
})

local volume_bracket = sbar.add("bracket", "widgets.volume.bracket", {
	volume_icon.name,
	volume_percent.name,
}, {
	popup = {
		align = "center",

		background = {
			border_color = primary_color,
		},
	},

	background = {
		color = background_color,
		height = confs.defaults.backgrounds.brackets.height,
		border_color = primary_color,
		border_width = confs.defaults.backgrounds.brackets.border_width,
		corner_radius = confs.defaults.backgrounds.brackets.corner_radius,
	},
})

sbar.add("item", "widgets.volume.padding", {
	-- width = settings.group_paddings,
	width = 5,
	position = "right",
})

local volume_slider = sbar.add("slider", popup_width, {
	position = "popup." .. volume_bracket.name,
	click_script = 'osascript -e "set volume output volume $PERCENTAGE"',

	slider = {
		highlight_color = primary_color,

		knob = {
			color = highlight_color,
			string = "􀀁",
			drawing = true,
		},

		background = {
			height = 6,
			corner_radius = 3,
			color = background_color,
		},
	},

	background = {
		color = background_color,
		height = 2,
		y_offset = -20,
	},
})

volume_percent:subscribe("volume_change", function(env)
	local volume = tonumber(env.INFO)
	local icon = confs.icons.text.volume._0
	if volume > 60 then
		icon = confs.icons.text.volume._100
	elseif volume > 30 then
		icon = confs.icons.text.volume._66
	elseif volume > 10 then
		icon = confs.icons.text.volume._33
	elseif volume > 0 then
		icon = confs.icons.text.volume._10
	end

	local lead = ""
	if volume < 10 then
		lead = "0"
	end

	volume_icon:set({
		label = icon,
	})

	volume_percent:set({
		label = lead .. volume .. "%",
	})

	volume_slider:set({
		slider = {
			percentage = volume,
		},
	})
end)

local function volume_collapse_details()
	local drawing = volume_bracket:query().popup.drawing == "on"
	if not drawing then
		return
	end
	volume_bracket:set({ popup = {
		drawing = false,
	} })
	sbar.remove("/volume.device\\.*/")
end

local current_audio_device = "None"
local function volume_toggle_details(env)
	if env.BUTTON == "right" then
		sbar.exec("open /System/Library/PreferencePanes/Sound.prefpane")
		return
	end

	local should_draw = volume_bracket:query().popup.drawing == "off"
	if should_draw then
		volume_bracket:set({ popup = { drawing = true } })
		sbar.exec("SwitchAudioSource -t output -c", function(result)
			current_audio_device = result:sub(1, -2)
			sbar.exec("SwitchAudioSource -a -t output", function(available)
				current = current_audio_device
				local color = confs.colors.grey
				local counter = 0

				for device in string.gmatch(available, "[^\r\n]+") do
					local color = confs.colors.grey
					if current == device then
						color = confs.colors.white
					end
					sbar.add("item", "volume.device." .. counter, {
						position = "popup." .. volume_bracket.name,
						width = popup_width,
						align = "center",
						label = { string = device, color = color },
						click_script = 'SwitchAudioSource -s "'
							.. device
							.. '" && sketchybar --set /volume.device\\.*/ label.color='
							.. confs.colors.grey
							.. " --set $NAME label.color="
							.. confs.colors.white,
					})
					counter = counter + 1
				end
			end)
		end)
	else
		volume_collapse_details()
	end
end

local function volume_scroll(env)
	local delta = env.SCROLL_DELTA
	sbar.exec('osascript -e "set volume output volume (output volume of (get volume settings) + ' .. delta .. ')"')
end

volume_icon:subscribe("mouse.clicked", volume_toggle_details)
volume_icon:subscribe("mouse.scrolled", volume_scroll)
volume_percent:subscribe("mouse.clicked", volume_toggle_details)
volume_percent:subscribe("mouse.exited.global", volume_collapse_details)
volume_percent:subscribe("mouse.scrolled", volume_scroll)
