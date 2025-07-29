rec {

  na = [
    "ynqa/tap"  # `sigrs`
    "k3ii/tap"  # `revq` / conze`
    "dhth/tap"  # `omm` / `prs` / `mult` / `hours`
    "ryu0118/kusa"  # `kusa`
    "lihaoyun6/tap"  # `airbattery`
    "loteoo/formulas"  # `ks`
    "koekeishiya/formulae/skhd"  # `skhd`
    "koekeishiya/formulae/yabai"  # `yabai`
  ];  # na

  cli = [
    "hakky54/senzu"  # `senzu`
    "antoniorodr/memo"  # `memo`
    "applegamer22/tap"  # `cocainate`
  ];  #cli

  tui = [
    "magic-jd/tap"  #  `is-fast`
  ];  # tui

  gui = [
    "notwadegrimridge/brew"  # `pingplace`
  ];  # gui

  dmn = [
    "nikitabobko/tap"  # `aerospace`
    "felixkratz/formulae"  # `svim` / `jankyborders` / `sketchybar`
  ];  # dmn

  brew = [  # `homebrew` default taps
    # "homebrew/core"  # not needed anymore
    # "homebrew/cask"  # not needed anymore
    # "homebrew/bundle"  # not needed anymore
    # "homebrew/services"  # not needed anymore
  ];  # brew

  all = cli ++ gui ++ tui ++ dmn ++ brew;

}
