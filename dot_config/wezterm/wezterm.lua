local wezterm = require("wezterm")
local config = {}

config.font = wezterm.font("Hack Nerd Font Mono")
config.font_size = 15
config.color_scheme = "GruvboxDark"

config.window_background_image = os.getenv("HOME") .. "/Cloud/iCloud/Wallpapers/Terminal/Gruvbox/background.jpg"
config.window_background_opacity = 0.96

config.hide_tab_bar_if_only_one_tab = true

config.automatically_reload_config = true

return config
