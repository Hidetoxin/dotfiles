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
