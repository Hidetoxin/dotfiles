rec {

  msg_pkgs = [
    "signal"  # privacy focused messaging application
  ];

  font_pkgs = [
  ];

  game_pkgs = [
    "steam"  # game manager
  ];

  comic_pkgs = [
    "kindle-comic-creator"  # `kindle` tools
    "kindle-comic-converter"  # `kindle` tools
  ];

  video_pkgs = [
    # "yattee"  # video viewer for `individuous`
  ];

  proton_pkgs = [
    "protonvpn"  # privacy focused `vpn`
    "proton-mail"  # privacy focused `mail`
    "protonmail-bridge"  # privacy focused `mail`
  ];

  # Add empty arrays for easily commenting the packages that I don't need
  all = []
    ++ msg_pkgs
    ++ font_pkgs
    ++ game_pkgs
    ++ comic_pkgs
    ++ video_pkgs
    ++ proton_pkgs
    ++ [];

}

# vim: et ts=2 sts=2 sw=2 syntax=nix
