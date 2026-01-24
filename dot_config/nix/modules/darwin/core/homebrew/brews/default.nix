rec {

  fun-pkgs = [
    # "arttime"  # clock / timer / pattern-based time manager
  ];

  cli-pkgs = [
    # "ks"  #  uses the native `keychain`
    # "wtf"  # check word definitions
    # "prs"  # check pull requests
    # "kusa"  # display `github` contributors graph
    "memo"  # control `apple notes` and `apple reminders` from the `cli`
    "act3"  # view your last 3 `github` workflow runs
    # "mult"  # run a command multiple times
    # "revq"  # review `github` pull requests
    "senzu"  # get battery on `macos`
    # "serpl"  #  `tui` for replacing and re-naming
    "kanata"  # keyboard re-mapper
    # "s-search"  #  web search
    "cocainate"  # prevent `macos` going to sleep
    "lazyactions"  # `tui` for `github` workflows
    # "eg-examples"  # useful examples 
    "macos-trash"  # send files to `macos` trash
  ];

  tui-pkgs = [
  ];

  dev-pkgs = [
    "lua"
  ];

  dmn-pkgs = [
    # "svim"  # type on any text field using `vim`
    "skhd"  # simple hotkey daemon for `macos`
    "borders"  #  highlight the current active window
    "sketchybar"  # customizable status bar for `macos`
  ];  # dmn

  # Add empty arrays for easily commenting the packages that I don't need
  all = []
    ++ fun-pkgs
    ++ cli-pkgs
    ++ tui-pkgs
    ++ dev-pkgs
    ++ dmn-pkgs
    ++ [];

}

# vim: et ts=2 sts=2 sw=2 syntax=nix
