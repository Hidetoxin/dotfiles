{ pkgs, ...}: let

  # Modularize all the `nix-pkgs` applications to have a cleaner and shorter file.
  # https://www.reddit.com/r/NixOS/comments/vmlw54/split_packages_into_groups/
  packages = import ./packages {
    inherit pkgs;
  };

in {

  environment = {

    ##########################################################################
    #
    #  Install all apps and packages here.
    #
    #  NOTE: Your can find all available options in:
    #    https://daiderd.com/nix-darwin/manual/index.html
    #
    # TODO Fell free to modify this file to fit your needs.
    #
    ##########################################################################

    # Install packages from nix's official package repository.
    #
    # The packages installed here are available to all users, and are reproducible across machines, and are rollbackable.
    # But on macOS, it's less stable than homebrew.
    #
    # Related Discussion: https://discourse.nixos.org/t/darwin-again/29331
    # systemPackages = with pkgs; packages;
    # List packages installed in system profile. To search by name, run:
    # $ nix-env -qaP | grep wget
    systemPackages = with packages; all;
    # systemPackages = with pkgs; [
    #   git
    # ];
  };
}
