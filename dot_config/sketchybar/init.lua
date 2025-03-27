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
bar_name = os.getenv("SBAR_POSITION") == "top" and "sketchybar" or "sketchybar2"
sbar.set_bar_name(bar_name)

-- Bundle the entire initial configuration into a single message to sketchybar
require("defaults")
require("items")
sbar.hotload(true)
if bar_name == "sketchybar2" then -- Add event if this is the `bottom` bar
	sbar.add("event", "aerospace_workspace_change")
end
sbar.end_config()

-- Run the event loop of the sketchybar module (without this there will be no
-- callback functions executed in the lua module)
sbar.event_loop()

-- Trigger aerospace if this is the `bottom` bar
if bar_name == "sketchybar2" then
	sbar.trigger("space_windows_change")
	sbar.trigger("aerospace_workspace_change")
end
