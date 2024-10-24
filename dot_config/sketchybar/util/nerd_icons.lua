local settings = require("util.settings")

local icons = {
	sf_symbols = {

		cpu = "􀫥",
		gear = "􀍟",
		plus = "􀅼",
		apple = "􀣺",
		loading = "􀖇",
		clipboard = "􀉄",

		switch = {
			on = "􁏮",
			off = "􁏯",
		},

		volume = {
			_0 = "􀊣",
			_10 = "􀊡",
			_33 = "􀊥",
			_66 = "􀊧",
			_100 = "􀊩",
		},

		battery = {
			_0 = "􀛪",
			_25 = "􀛩",
			_50 = "􀺶",
			_75 = "􀺸",
			_100 = "􀛨",
			charging = "􀢋",
		},

		wifi = {
			router = "􁓤",
			upload = "􀄨",
			download = "􀄩",
			connected = "􀙇",
			disconnected = "􀙈",
		},

		media = {
			back = "􀊊",
			forward = "􀊌",
			play_pause = "􀊈",
		},
	},

	-- Alternative NerdFont icons
	nerdfont = {
		cpu = "",
		gear = "",
		plus = "",
		apple = "",
		loading = "",
		clipboard = "Missing Icon",

		switch = {
			on = "󱨥",
			off = "󱨦",
		},

		volume = {
			_0 = "",
			_10 = "",
			_33 = "",
			_66 = "",
			_100 = "",
		},

		battery = {
			_0 = "",
			_25 = "",
			_50 = "",
			_75 = "",
			_100 = "",
			charging = "",
		},

		wifi = {
			router = "Missing Icon",
			upload = "",
			download = "",
			connected = "󰖩",
			disconnected = "󰖪",
		},

		media = {
			back = "",
			forward = "",
			play_pause = "",
		},
	},
}

if not (settings.icons == "NerdFont") then
	return icons.sf_symbols
else
	return icons.nerdfont
end
