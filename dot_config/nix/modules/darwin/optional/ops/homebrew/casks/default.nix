rec {

  ai-pkgs = [
    "ollamac"  # desktop app for `ollama`
  ];  # na

  aws-pkgs = [
    "session-manager-plugin"  # `aws` session manager
  ];

  docker-pkgs = [
    "docker-desktop"  # container manager
  ];

  kubernetes-pkgs = [
    "sloth"  # `slo` generator for `prometheus `
  ];

  # Add empty arrays for easily commenting the packages that I don't need
  all = []
    # ++ ai-pkgs
    # ++ aws-pkgs
    # ++ docker-pkgs
    # ++ kubernetes-pkgs
    ++ [];

}

# vim: et ts=2 sts=2 sw=2 syntax=nix
