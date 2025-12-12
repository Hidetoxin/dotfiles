rec {

  na = [
  ];  # na

  cli = [
  ];  # cli

  gui = [
    # "zoom"  # chat and meeting application
    # "slack"  # desktop client for `slack`
    # "microsoft-teams"  # `microsoft` chat and meeting application
  ];  # gui

  font = [
  ]; # font

  all = cli ++ gui ++ font;

}

# vim: et ts=2 sts=2 sw=2 syntax=nix
