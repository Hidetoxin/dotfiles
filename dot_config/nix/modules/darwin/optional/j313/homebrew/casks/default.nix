rec {

   na = [
    "docker"  # container manager
    "yattee"  # video viewer for `individuous`
    "kindle-comic-creator"  # `kindle` tools
    "kindle-comic-converter"  # `kindle` tools
  ];  # na

  dev = [  # development tools and utilities
  ];

  gui = [
    "steam"  # game manager
    "signal"  # privacy focused messaging application
    "protonvpn"  # privacy focused `vpn`
    "proton-mail"  # privacy focused `mail`
    "protonmail-bridge"  # privacy focused `mail`
  ];  # gui

  font = [
  ]; # fonts

  all = gui ++ font;

}

# vim: et ts=2 sts=2 sw=2 syntax=nix
