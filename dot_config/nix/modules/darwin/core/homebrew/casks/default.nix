rec {

  cli-pkgs = [
    "dol"  # detect dark/light mode on the `cli` for `macos`
  ];

  gui-pkgs = [
    "viz"  # extract text from images, videos, qr codes, barcodes and colors with a simple snip mechanism
    # "kap"  # screen recorder
    # "loop"  # window manager
    # "trex"  # copy assistant
    # "lulu"  # firewall
    "ovim"  # `macos` system-wide `vim` keybindings and modal editor
    # "lunar" # control screen brightness
    # "thaw"  # fork of `jordanbaird-ice`
    "glide"  # a breezy tiling window manager for `macos`
    "keyclu"  # aplication shortcuts
    # "kunkun"  #`raycast` alternative
    "ghostty"  # fast, native, feature-rich terminal emulator pushing modern features
    "firefox"  # `gecko` web browser
    "pinster"  # `macos` menu bar application for quick access to pinned websites
    # "homerow"  # system wide `vimium` clone
    # "monarch"  #  `spotlight` alternative
    # "battery"  # maintain battery at 80%
    "rustcast"  # keyboard-first productivity launcher
    # "bleunlock"  # locks and unlocks your `mac` by proximity of your iphone, apple watch, or any other bluetooth low energy device.
    # "dmenu-mac"  # `dmenu` for macos
    # "pingplace"  # customize your notification position
    "aerospace"  # `i3` alternative window manager
    # "leader-key"  #`raycast` alternative
    "quakenotch"  # `quake` style terminal
    # "airbattery"  # check the status of all your `bluetooth` batteries
    # "pearcleaner"  # `macos` cleaner
    # "monocle-app"  # uncluterr your desktop
    # "jordanbaird-ice"  # menu manager
    # "karabiner-elements"  # utility for keyboard customization
  ];
  tui-pkgs = [
    "pomo"  # `tui` pomodoro timer
  ];

  font-pkgs = [
    "sf-symbols"  # apple developer symbols
    "font-sf-pro"  # apple developer symbols font
    "font-sf-mono"  # apple developer symbols font
    "font-sketchybar-app-font"  # font to show icons in sketchybar
  ];

  # Add empty arrays for easily commenting the packages that I don't need
  all = []
    ++ cli-pkgs
    ++ gui-pkgs
    ++ tui-pkgs
    ++ font-pkgs
    ++ [];

}

# vim: et ts=2 sts=2 sw=2 syntax=nix
