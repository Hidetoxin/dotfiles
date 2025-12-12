rec {

  na = [
    "sloth"  # `slo` generator for `prometheus `
    "ollamac"  # desktop app for `ollama`
    "docker-desktop"  # container manager
  ];  # na

  cli = [
     "session-manager-plugin"  # `aws` session manager
  ];  # cli

  gui = [
  ];  # gui

  font = [
  ]; # font

  all = cli ++ gui ++ font;

}

# vim: et ts=2 sts=2 sw=2 syntax=nix
