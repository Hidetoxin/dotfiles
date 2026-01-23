rec {

  cli-pkgs = [
    # "k3ii/tap"  # `revq` / conze`
    "dhth/tap"  # `omm` / `prs` / `act3` / `mult` / `hours`
    "nnnkkk7/tap"  # `lazyactions`
    # "ryu0118/kusa"  # `kusa`
    # "lihaoyun6/tap"  # `airbattery`
    "hakky54/senzu"  # `senzu`
    # "loteoo/formulas"  # `ks`
    "antoniorodr/memo"  # `memo`
    "applegamer22/tap"  # `cocainate`
  ];

  tui-pkgs = [
  ];

  gui-pkgs = [
    "tonisives/tap"  # `ovim`
    # "notwadegrimridge/brew"  # `pingplace`
  ];

  dmn-pkgs = [
    "nikitabobko/tap"  # `aerospace`
    "asmvik/formulae"  # `skhd` / `yabai`
    "felixkratz/formulae"  # `svim` / `jankyborders` / `sketchybar`
  ];

  # Add empty arrays for easily commenting the packages that I don't need
  all = []
    ++ cli-pkgs
    ++ gui-pkgs
    ++ tui-pkgs
    ++ dmn-pkgs
    ++ [];

}

# vim: et ts=2 sts=2 sw=2 syntax=nix
