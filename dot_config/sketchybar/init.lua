-- Configuration built on top of the below repositories:
--
-- + https://github.com/kamyl/.dotfiles
-- + https://github.com/bin101/dotfiles
-- + https://github.com/hbthen3rd/dotfiles
-- + https://github.com/felixkratz/dotfiles
-- + https://github.com/agenttank/dotfiles_macos

-- Load the sketchybar-package and prepare the helper binaries
require("install")

-- Require the sketchybar module
sbar = require("sketchybar")

-- Set the bar name, if you are using another bar instance than sketchybar
sbar.set_bar_name("sketchybar")

-- Bundle the entire initial configuration into a single message to sketchybar
sbar.begin_config()
require("defaults")
require("items")
sbar.hotload(true)
sbar.end_config()

-- Run the event loop of the sketchybar module (without this there will be no
-- callback functions executed in the lua module)
sbar.event_loop()
