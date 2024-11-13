rec {

  dev = [  # development tools and utilities
    "docker"  # container manager
  ];

  fun = [  # some fun packages
  ];

  sbar = [  # sketchybar dependencies
    "sf-symbols"  # apple developer symbols
    "font-sf-pro"  # apple developer symbols font
    "font-sf-mono"  # apple developer symbols font
  ];

  games = [  # games and game management programs
    # "steam"  # game manager
  ];

  media = [  # media management applications
    # "kindle-comic-creator"  # `kindle` tools
    # "kindle-comic-converter"  # `kindle` tools

    "yattee"  # video viewer for `individuous`
  ];

  utils = [  # general utilities
    # "kap"  # screen recorder
    # "loop"  # window manager
    # "trex"  # copy assistant
    # "lulu"  # firewall
    # "battery"  # maintain battery at 80%
    # "homerow"  # system wide `vimium` clone
    # "dmenu-mac"  # `dmenu` for macos
    # "bleunlock"  # locks and unlocks your `mac` by proximity of your iphone, apple watch, or any other bluetooth low energy device.
    # "airbattery"  # check the status of all your `bluetooth` batteries
    # "pearcleaner"  # `macos` cleaner
    # "jordanbaird-ice"  # menu manager

    "lunar" # control screen brightness
    "keyclu"  # aplication shortcuts
    "monarch"  #  `spotlight` alternative
    "aerospace"  # `i3` alternative window manager
    "protonvpn"  # privacy focused `vpn`
    "proton-mail"  # privacy focused `mail`
    "protonmail-bridge"  # privacy focused `mail`
  ];

  devops = [  # devops tools and utilities
    # "sloth"  # `slo` generator for `prometheus `
    # "ollamac"  # desktop app for `ollama`
    # "session-manager-plugin"  # `aws` session manager
  ];

  browsers = [  # web browsers
  ];

  meetings = [  # meeting programs and utilities 
    # "meeting-bar"  # show the next meeting in the system statusbar
  ];

  messaging = [  # messaging programs and utilities
    # "signal"  # privacy focused messaging application
  ];

  all = dev ++ fun ++ sbar ++ games ++ media ++ utils ++ devops ++ browsers ++ meetings ++ messaging;

}
