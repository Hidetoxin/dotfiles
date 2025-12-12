rec {

  na = [
    "k3ii/tap"  # `revq` / conze`
    "dhth/tap"  # `omm` / `prs` / `mult` / `hours`
    "ryu0118/kusa"  # `kusa`
    "lihaoyun6/tap"  # `airbattery`
    "loteoo/formulas"  # `ks`
    "notwadegrimridge/brew"  # `pingplace`
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
  ];  # gui

  dmn = [
    "nikitabobko/tap"  # `aerospace`
    "felixkratz/formulae"  # `svim` / `jankyborders` / `sketchybar`
  ];  # dmn

  brew = [  # `homebrew` default taps
  ];  # brew

  all = cli ++ gui ++ tui ++ dmn ++ brew;

}

# vim: et ts=2 sts=2 sw=2 syntax=nix
