rec {

  na = [
    "sloth"  # `slo` generator for `prometheus `
    "ollamac"  # desktop app for `ollama`
  ];  # na

  cli = [
     "session-manager-plugin"  # `aws` session manager
  ];  # cli

  gui = [
    "docker-desktop"  # container manager
  ];  # gui

  font = [
  ]; # font

  all = cli ++ gui ++ font;

}
