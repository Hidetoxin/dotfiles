# Setup by looking at:
#
#   - https://github.com/LnL7/nix-darwin
#   - https://github.com/zhaofengli/nix-homebrew
#   - https://www.youtube.com/watch?v=Z8BL8mdzWHI
#   - https://github.com/ryan4yin/nix-darwin-kickstarter
#   - https://github.com/zmre/mac-nix-simple-example/tree/master
#   - https://github.com/yannbertrand/macos-defaults?tab=readme-ov-file
#   - https://gist.github.com/elliottminns/211ef645ebd484eb9a5228570bb60ec3

# Run this file with the below commnad:
# $ nix run nix-darwin --experimental-features 'nix-command flakes'  -- switch --flake ~/.config/nix-darwin#macbookair
# $ darwin-rebuild switch --flake ~/.config/nix-darwin#macbookair

{
  description = "Nix for macOS configuration";

  ##################################################################################################################
  #
  # Want to know Nix in details? Looking for a beginner-friendly tutorial?
  # Check out https://github.com/ryan4yin/nixos-and-flakes-book !
  #
  ##################################################################################################################

  # the nixConfig here only affects the flake itself, not the system configuration!
  # nixConfig = {
  #   substituters = [
  #     # Query the mirror of USTC first, and then the official cache.
  #     "https://mirrors.ustc.edu.cn/nix-channels/store"
  #     "https://cache.nixos.org"
  #   ];
  # };

  # This is the standard format for flake.nix. `inputs` are the dependencies of the flake,
  # Each item in `inputs` will be passed as a parameter to the `outputs` function after being pulled and built.
  inputs = {
    # nixpkgs-darwin.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    nixpkgs-darwin.url = "github:nixos/nixpkgs/nixpkgs-24.05-darwin";

    darwin = {
      url = "github:lnl7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs-darwin";
    };

    # Installs `brew` declaratively
    nix-homebrew = {
      url = "github:zhaofengli/nix-homebrew";
    };

    # Manages configs links things into your home directory
    # home-manager = {
    #   url = "github:nix-community/home-manager/master";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };

    # homebrew-core = {
    #   url = "github:homebrew/homebrew-core";
    #   flake = false;
    # };

    # homebrew-cask = {
    #   url = "github:homebrew/homebrew-cask";
    #   flake = false;
    # };

  };

  # The `outputs` function will return all the build results of the flake.
  # A flake can have many use cases and different types of outputs,
  # parameters in `outputs` are defined in `inputs` and can be referenced by their names.
  # However, `self` is an exception, this special parameter points to the `outputs` itself (self-reference)
  # The `@` syntax here is used to alias the attribute set of the inputs's parameter, making it convenient to use inside the function.
  outputs = inputs @ {
    self,
    darwin,
    nixpkgs,
    ...
  }: let

    # TODO replace with your own username, system and hostname
    system = "aarch64-darwin"; # aarch64-darwin (apple silicon) or x86_64-darwin
    username = "$USER";
    hostname = "macbookair";

    specialArgs =
      inputs
      // {
        inherit system username hostname;
      };

  in {

    # Build darwin flake using:
    # $ darwin-rebuild build --flake .#hidetoxin
    # darwinConfigurations."hidetoxin" = nix-darwin.lib.darwinSystem {
    #   modules = [
    #     configuration
    #     ./modules/system
    #     ./modules/homebrew
    #     # ./modules/environment
    #     nix-homebrew.darwinModules.nix-homebrew {
    #       nix-homebrew = {
    #         user = "$USER";  #  user owning `homebrew` prefix
    #         enable = true;
    #         autoMigrate = true;
    #         enableRosetta = true;  # for apple silicon
    #       };
    #     }
    #   ];
    # };

    # Expose the package set, including overlays, for convenience.
    # darwinPackages = self.darwinConfigurations."hidetoxin".pkgs;


    darwinConfigurations."${hostname}" = darwin.lib.darwinSystem {
      inherit system specialArgs;
      modules = [
        ./modules/nix
        ./modules/fonts
        ./modules/users
        ./modules/system
        ./modules/nixpkgs
        ./modules/homebrew
        ./modules/programs
        ./modules/security
        ./modules/services
        ./modules/networking
        ./modules/environment
        # ./modules/nix-homebrew
      ];
    };

    # nix code formatter
    formatter.${system} = nixpkgs.legacyPackages.${system}.alejandra;

  };

}
