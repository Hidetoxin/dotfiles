rec {

  na = [
    "ks"  #  uses the native `keychain`
    "wtf"  # check word definitions
    "prs"  # check pull requests
    "mult"  # run a command multiple times
    "kusa"  # display `github` contributors graph
    "jenv"  # `java` environment manager
    "revq"  # review `github` pull requests
    "serpl"  #  `tui` for replacing and re-naming
    "sigrs"  # `tui` for `grep` on streaming
    "kunkun"  #`raycast` alternative
    "kanata"  # keyboard re-mapper
    "pingplace"  # customize your notification position
    "s-search"  #  web search
    "leader-key"  #`raycast` alternative
    "eg-examples"  # useful examples 
  ];  # na

  fun = [
    "arttime"  # clock / timer / pattern-based time manager
  ];  # fun

  cli = [
    "memo"  # control `apple notes` and `apple reminders` from the `cli`
    "senzu"  # get battery on `macos`
    "cocainate"  # prevent `macos` going to sleep
    "macos-trash"  # send files to `macos` trash
    "bitwarden-cli"  # `cli` for `bitwarden`
  ];  # cli

  tui = [
    "is-fast"  # internet search from the terminal
  ];  # tui

  dev = [
    "lua"
    "goenv"  # `go` environment manager
    "posting"  # `postman` alike interface
  ];  # dev

  gui = [
    "pingplace"  # custoize your notification position
  ];  #gui

  dmn = [
    "svim"  # type on any text field using `vim`
    "borders"  #  highlight the current active window
    "sketchybar"  # customizable status bar for `macos`
  ];  # dmn

  all = fun ++ cli ++ tui ++ dev ++ gui ++ dmn;

}
