rec {

  podman-pkgs = [
    "podman"  # program for managing pods, containers and container images
    "podman-tui"  # `tui` for `podman`
  ];

  # Add empty arrays for easily commenting the packages that I don't need
  all = []
    ++ podman-pkgs
    ++ [];

}

# vim: et ts=2 sts=2 sw=2 syntax=nix
