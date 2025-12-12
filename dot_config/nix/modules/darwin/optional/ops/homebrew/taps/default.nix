rec {

  na = [
  ];  # na

  cli = [
    "epilande/tap"  # `codegrab`
    "env0/terratag"  # `terrratag` 
  ];  #cli

  tui = [
    "dhth/tap"  # `kplay`
  ];  # tui

  gui = [
  ];  # gui

  dmn = [
  ];  # dmn

  brew = [
  ];  # brew

  all = cli ++ gui ++ tui ++ dmn ++ brew;

}

# vim: et ts=2 sts=2 sw=2 syntax=nix
