{...}: {  # mbam2

  imports = [
    ../../../modules/core  # common configs for all systems
    ../../../modules/darwin/core  # common configs for `darwin` systems
    ../../../modules/optional/ops  # install `devops` tooling
    ../../../modules/optional/atco  # specific tooling for `atco`
    ../../../modules/darwin/optional/ops  # install `devops` tooling for `darwin`
    ../../../modules/darwin/optional/atco  # specific tooling for `atco` for `darwin`
  ];

}
