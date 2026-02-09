local wezterm = require('wezterm')
local config = {}

config.term = 'xterm-256color'

config.font = wezterm.font('Hack Nerd Font Mono')
config.font_size = 15
config.cell_width = 1.0
config.color_scheme = 'GruvboxDark'

config.window_background_image = os.getenv('HOME') .. '/Cloud/iCloud/Wallpapers/Terminal/Gruvbox/background.jpg'
config.window_background_opacity = 0.96

config.automatically_reload_config = true
config.hide_tab_bar_if_only_one_tab = true
config.allow_square_glyphs_to_overflow_width = 'Never'
config.treat_east_asian_ambiguous_width_as_wide = false

return config
