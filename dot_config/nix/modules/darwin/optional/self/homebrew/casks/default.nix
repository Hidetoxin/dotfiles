rec {

   na = [
    "yattee"  # video viewer for `individuous`
    "kindle-comic-creator"  # `kindle` tools
    "kindle-comic-converter"  # `kindle` tools
  ];  # na

  dev = [  # development tools and utilities
    "docker"  # container manager
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
