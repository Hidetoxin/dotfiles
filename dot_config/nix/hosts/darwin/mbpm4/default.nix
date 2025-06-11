{...}: {  # mbpm4

  imports = [
    ../../../modules/core  # common configs for all systems
    ../../../modules/darwin/core  # common configs for `darwin` systems
    ../../../modules/optional/ops  # install `devops` tooling
    ../../../modules/optional/j616  # specific tooling for `j616`
    ../../../modules/darwin/optional/ops  # install `devops` tooling for `darwin`
  ];

}
