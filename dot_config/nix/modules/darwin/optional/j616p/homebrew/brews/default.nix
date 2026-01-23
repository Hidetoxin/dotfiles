rec {

  ai-pkgs = [
    "glean-cli"  # `cli` tool for `glean` ai
  ];

  cli-pkgs = [
    "punchout"  # log time in `jira`
  ];

  # Add empty arrays for easily commenting the packages that I don't need
  all = []
    # ++ ai-pkgs
    # ++ cli-pkgs
    ++ [];

}

# vim: et ts=2 sts=2 sw=2 syntax=nix
