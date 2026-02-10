rec {

  msg-pkgs = [
    "zoom"  # chat and meeting application
    "slack"  # desktop client for `slack`
    "microsoft-teams"  # `microsoft` chat and meeting application
  ];

  # Add empty arrays for easily commenting the packages that I don't need
  all = []
    # ++ msg-pkgs
    ++ [];

}

# vim: et ts=2 sts=2 sw=2 syntax=nix
