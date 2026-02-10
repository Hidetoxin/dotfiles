{ pkgs, username, ...}: {

  nix = {

    package = pkgs.nix;

    settings = {

      # trusted-users = [
      #   username
      # ];

      # Necessary for using flakes on this system.
      experimental-features = [
        "flakes"
        "nix-command"
      ];

    };  # settings
  };

}

# vim: et ts=2 sts=2 sw=2 syntax=nix
