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
