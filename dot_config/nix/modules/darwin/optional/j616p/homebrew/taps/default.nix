rec {

  ai-pkgs = [
    "scalvert/tap/glean-cli"  # `glean-cli`
  ];

  cli-pkgs = [
    "dhth/tap"  # `punchout`
  ];

  # Add empty arrays for easily commenting the packages that I don't need
  all = []
    # ++ ai-pkgs
    # ++ cli-pkgs
    ++ []

}

# vim: et ts=2 sts=2 sw=2 syntax=nix
