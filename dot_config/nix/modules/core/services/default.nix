{ pkgs, ...}: {

  services = {

    # Auto upgrade nix package and the daemon service.
    nix-daemon = {
      # enable = true;
    };

  };

}

# vim: et ts=2 sts=2 sw=2 syntax=nix
