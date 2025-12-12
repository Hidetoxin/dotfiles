{...}: {

  imports = [
    ../../modules/core/nix  # setup `nix` preferences
    ../../modules/core/fonts  # setup system fonts
    ../../modules/core/nixpkgs  # setup packages preferences
    ../../modules/core/programs  #  setup program specific configs e.g. `zsh`
    ../../modules/core/services  # setup system's `daemons`
    ../../modules/core/networking  # setup system's networking
    ../../modules/core/environment  # setup system's environment and packages 
  ];

}

# vim: et ts=2 sts=2 sw=2 syntax=nix
