rec {

   na = [
    "kap"  # screen recorder
    "loop"  # window manager
    "trex"  # copy assistant
    "lulu"  # firewall
    "lunar" # control screen brightness
    "battery"  # maintain battery at 80%
    "homerow"  # system wide `vimium` clone
    "monarch"  #  `spotlight` alternative
    "dmenu-mac"  # `dmenu` for macos
    "bleunlock"  # locks and unlocks your `mac` by proximity of your iphone, apple watch, or any other bluetooth low energy device.
    "airbattery"  # check the status of all your `bluetooth` batteries
    "pearcleaner"  # `macos` cleaner
    "jordanbaird-ice"  # menu manager
  ];  # na

  gui = [
    "keyclu"  # aplication shortcuts
    "homerow"  #  `os` wide clone of `vimium`
    "aerospace"  # `i3` alternative window manager
    "eloston-chromium"  # privacy focused fork of `chromium`
    "karabiner-elements"  # utility for keyboard customization
  ];  # gui

  font = [
    "sf-symbols"  # apple developer symbols
    "font-sf-pro"  # apple developer symbols font
    "font-sf-mono"  # apple developer symbols font
    "font-sketchybar-app-font"  # font to show icons in sketchybar
  ]; # font

  all = gui ++ font;

}
