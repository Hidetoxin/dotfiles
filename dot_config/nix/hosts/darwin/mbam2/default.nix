{...}: {  # mbam2

  imports = [
    ../../../modules/core  # common configs for all systems
    ../../../modules/darwin/core  # common configs for `darwin` systems
    ../../../modules/optional/ops  # install `devops` tooling
    ../../../modules/optional/j413  # specific tooling for `j413`
    ../../../modules/darwin/optional/ops  # install `devops` tooling for `darwin`
    ../../../modules/darwin/optional/j413  # specific tooling for `j413` for `darwin`
  ];

}
