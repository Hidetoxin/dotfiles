{ pkgs, system, ...}: {

  nixpkgs = {


    # The platform the configuration will be used on.
    # nixpkgs.hostPlatform = "x86_64-darwin";
    hostPlatform = system;

    config = {
      allowUnfree = true;
    };

  };  # nixpkgs

}

# vim: et ts=2 sts=2 sw=2 syntax=nix
