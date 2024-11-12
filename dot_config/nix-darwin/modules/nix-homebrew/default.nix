{ pkgs, username, ...}: {

  nix-homebrew = {

    user = username;  #  user owning the `homebrew` prefix
    enable = false;
    mutableTaps = false;
    autoMigrate = true;
    enableRosetta = true;    # for apple silicon

    # taps = {
    #    "homebrew/homebrew-core" = inputs.homebrew-core;
    #    "homebrew/homebrew-cask" = inputs.homebrew-cask;
    # };  # taps

  };  # nix-homebrew

}
