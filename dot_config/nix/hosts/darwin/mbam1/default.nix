{...}: {

  imports = [
    ../../../modules/core  # common config for all systems
    ../../../modules/darwin/core  # common tooling for `darwin` systems
    ../../../modules/optional/j313  # specific tooling for `j313`
    ../../../modules/darwin/optional/j616m  # install host specific tooling for `darwin`
  ];

}

# vim: et ts=2 sts=2 sw=2 syntax=nix
