{...}: {  # mbpm4p

  imports = [
    ../../../modules/core  # common configs for all systems
    ../../../modules/darwin/core  # common configs for `darwin` systems
    ../../../modules/optional/ops  # install `devops` tooling
    ../../../modules/optional/j616p  # specific tooling for `j616p`
    ../../../modules/darwin/optional/ops  # install `devops` tooling for `darwin`
  ];

}
