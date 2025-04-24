{...}: {

  imports = [
    ../../../modules/core  # common config for all systems
    ../../../modules/darwin/core  # common tooling for `darwin` systems
    ../../../modules/optional/j313  # specific tooling for `j313`
  ];

}
