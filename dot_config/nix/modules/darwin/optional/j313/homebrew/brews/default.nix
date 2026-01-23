rec {

  fun-pkgs = [
  ];

  cli-pkgs = [
  ];

  dev-pkgs = [
  ];

  dmn-pkgs = [
  ];

  # Add empty arrays for easily commenting the packages that I don't need
  all = []
    ++ fun-pkgs
    ++ cli-pkgs
    ++ dev-pkgs
    ++ dmn-pkgs
    ++ [];

}

# vim: et ts=2 sts=2 sw=2 syntax=nix
