local confs = require("confs")

-- Execute the event provider binary which provides the event "network_update"
-- for the network interface "en0", which is fired every 2.0 seconds.
sbar.exec("killall network_load >/dev/null; $CONFIG_DIR/utils/clang/network/bin/network_load en0 network_update 2.0")

local popup_width = 250

local wifi_up = sbar.add("item", "widgets.wifi1", {
	width = 0,
	position = "right",
	y_offset = 4,
	padding_left = -5,

	icon = {
		string = confs.icons.text.wifi.upload,
		padding_right = 0,

		font = {
			size = 9.0,
			-- style = settings.font.style_map["Bold"],
			style = confs.fonts.styles.bold,
		},
	},

	label = {
		color = confs.colors.red,
		string = "??? Bps",

		font = {
			size = 9.0,
			-- style = settings.font.style_map["Bold"],
			-- family = settings.font.numbers,
			style = confs.fonts.styles.bold,
			family = confs.fonts.numbers,
		},
	},
})

local wifi_down = sbar.add("item", "widgets.wifi2", {
	position = "right",
	y_offset = -4,
	padding_left = -5,

	icon = {
		string = confs.icons.text.wifi.download,
		padding_right = 0,

		font = {
			size = 9.0,
			-- style = settings.font.style_map["Bold"],
			style = confs.fonts.styles.bold,
		},
	},

	label = {
		color = confs.colors.blue,
		string = "??? Bps",

		font = {
			size = 9.0,
			-- style = settings.font.style_map["Bold"],
			-- family = settings.font.numbers,
			style = confs.fonts.styles.bold,
			family = confs.fonts.numbers,
		},
	},
})

local wifi = sbar.add("item", "widgets.wifi.padding", {
	position = "right",

	label = {
		drawing = false,
	},
})

-- Background around the item
local wifi_bracket = sbar.add("bracket", "widgets.wifi.bracket", {
	wifi.name,
	wifi_up.name,
	wifi_down.name,
}, {
	popup = {
		align = "center",
		height = 30,
	},

	background = {
		color = confs.colors.black,
		-- color = confs.colors.black,
		height = 40,
		border_width = 2.5,
		border_color = confs.colors.green,
		corner_radius = 12,
	},
})

local ssid = sbar.add("item", {
	width = popup_width,
	align = "center",
	position = "popup." .. wifi_bracket.name,

	icon = {
		string = confs.icons.text.wifi.router,
		font = {
			-- style = settings.font.style_map["Bold"],
			style = confs.fonts.styles.bold,
		},
	},

	label = {
		string = "????????????",
		max_chars = 18,
		font = {
			size = 15,
			-- style = settings.font.style_map["Bold"],
			style = confs.fonts.styles.bold,
		},
	},

	background = {
		color = confs.colors.grey,
		height = 2,
		y_offset = -15,
	},
})

local hostname = sbar.add("item", {
	position = "popup." .. wifi_bracket.name,

	icon = {
		align = "left",
		string = "Hostname:",
		width = popup_width / 2,
	},

	label = {
		width = popup_width / 2,
		align = "right",
		string = "????????????",
		max_chars = 20,
	},
})

local ip = sbar.add("item", {
	position = "popup." .. wifi_bracket.name,

	icon = {
		align = "left",
		width = popup_width / 2,
		string = "IP:",
	},

	label = {
		align = "right",
		width = popup_width / 2,
		string = "???.???.???.???",
	},
})

local mask = sbar.add("item", {
	position = "popup." .. wifi_bracket.name,

	icon = {
		align = "left",
		width = popup_width / 2,
		string = "Subnet mask:",
	},

	label = {
		align = "right",
		width = popup_width / 2,
		string = "???.???.???.???",
	},
})

local router = sbar.add("item", {
	position = "popup." .. wifi_bracket.name,

	icon = {
		align = "left",
		width = popup_width / 2,
		string = "Router:",
	},

	label = {
		align = "right",
		width = popup_width / 2,
		string = "???.???.???.???",
	},
})

sbar.add("item", {
	-- width = settings.group_paddings,
	width = 5,
	position = "right",
})

wifi_up:subscribe("network_update", function(env)
	local up_color = (env.upload == "000 Bps") and confs.colors.grey or confs.colors.red
	local down_color = (env.download == "000 Bps") and confs.colors.grey or confs.colors.blue

	wifi_up:set({
		icon = {
			color = up_color,
		},

		label = {
			color = up_color,
			string = env.upload,
		},
	})

	wifi_down:set({
		icon = {
			color = down_color,
		},

		label = {
			color = down_color,
			string = env.download,
		},
	})
end)

wifi:subscribe({ "wifi_change", "system_woke" }, function(env)
	sbar.exec("ipconfig getifaddr en0", function(ip)
		local connected = not (ip == "")
		wifi:set({
			icon = {
				string = connected and confs.icons.text.wifi.connected or confs.icons.text.wifi.disconnected,
				color = connected and confs.colors.white or confs.colors.red,
			},
		})
	end)
end)

local function hide_details()
	wifi_bracket:set({
		popup = {
			drawing = false,
		},
	})
end

local function toggle_details()
	local should_draw = wifi_bracket:query().popup.drawing == "off"
	if should_draw then
		wifi_bracket:set({
			popup = {
				drawing = true,
			},
		})

		sbar.exec("networksetup -getcomputername", function(result)
			hostname:set({ label = result })
		end)

		sbar.exec("ipconfig getifaddr en0", function(result)
			ip:set({
				label = result,
			})
		end)

		sbar.exec("ipconfig getsummary en0 | awk -F ' SSID : '  '/ SSID : / {print $2}'", function(result)
			ssid:set({
				label = result,
			})
		end)

		sbar.exec("networksetup -getinfo Wi-Fi | awk -F 'Subnet mask: ' '/^Subnet mask: / {print $2}'", function(result)
			mask:set({
				label = result,
			})
		end)

		sbar.exec("networksetup -getinfo Wi-Fi | awk -F 'Router: ' '/^Router: / {print $2}'", function(result)
			router:set({
				label = result,
			})
		end)
	else
		hide_details()
	end
end

wifi_up:subscribe("mouse.clicked", toggle_details)
wifi_down:subscribe("mouse.clicked", toggle_details)
wifi:subscribe("mouse.clicked", toggle_details)
wifi:subscribe("mouse.exited.global", hide_details)

local function copy_label_to_clipboard(env)
	local label = sbar.query(env.NAME).label.value
	sbar.exec('echo "' .. label .. '" | pbcopy')
	sbar.set(env.NAME, {

		label = {
			align = "center",
			string = confs.icons.text.clipboard,
		},
	})
	sbar.delay(1, function()
		sbar.set(env.NAME, {

			label = {
				align = "right",
				string = label,
			},
		})
	end)
end

ssid:subscribe("mouse.clicked", copy_label_to_clipboard)
hostname:subscribe("mouse.clicked", copy_label_to_clipboard)
ip:subscribe("mouse.clicked", copy_label_to_clipboard)
mask:subscribe("mouse.clicked", copy_label_to_clipboard)
router:subscribe("mouse.clicked", copy_label_to_clipboard)
