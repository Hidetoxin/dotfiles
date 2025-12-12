{...}: {  # mbpm4m

  imports = [
    ../../../modules/core  # common configs for all systems
    ../../../modules/darwin/core  # common configs for `darwin` systems
    ../../../modules/optional/ops  # install `devops` tooling
    ../../../modules/optional/j616m  # specific tooling for `j616m`
    ../../../modules/darwin/optional/ops  # install `devops` tooling for `darwin`
  ];

}

# vim: et ts=2 sts=2 sw=2 syntax=nix
