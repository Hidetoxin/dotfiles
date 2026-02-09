rec {

  fun-pkgs = [
    # "arttime"  # clock / timer / pattern-based time manager
  ];

  cli-pkgs = [
    # "ks"  #  uses the native `keychain`
    # "prs"  # check pull requests
    # "wtf"  # check word definitions
    "act3"  # view your last 3 `github` workflow runs
    # "kusa"  # display `github` contributors graph
    "memo"  # control `apple notes` and `apple reminders` from the `cli`
    "mole"  # deep clean and optimize your `mac`
    # "mult"  # run a command multiple times
    # "revq"  # review `github` pull requests
    "dutix"  # managing default application handlers for file types on `macos`
    "muxie"  # `tmux` session manager
    "nvtop"  # `tui` for `gpu` process monitor
    # "leadr"  # customizable `cli` command manager inspired by the leader key concept in `vim`
    "senzu"  # get battery on `macos`
    "macmon"  # `sudoless` performance monitoring for `apple` silicon processors
    # "serpl"  #  `tui` for replacing and re-naming
    "kanata"  # keyboard re-mapper
    "blueutil"  # `cli` for bluetooth on `macos`
    "cocainate"  # prevent `macos` going to sleep
    "git-scope"  # `tui` dashboard to view the git status of all your repositories in one place
    "lazyactions"  # `tui` for `github` workflows
    # "eg-examples"  # useful examples 
    "macos-trash"  # send files to `macos` trash
    "domain-check"  # tool for checking domain availability using `rdap` and `whois` protocols
  ];

  tui-pkgs = [
    "term39"  # terminal multiplexer with classic `ms-dos` aesthetic
    "taproom"  # `tui` for `homebrew`
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
