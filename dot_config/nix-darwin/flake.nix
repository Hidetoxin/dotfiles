# Setup by looking at:
#
#   - https://github.com/lanjoni/snowflake
#   - https://davi.sh/til/nix/nix-macos-setup/
#   - https://github.com/alt-f4-llc/kickstart.nix
#   - https://www.youtube.com/watch?v=Z8BL8mdzWHI
#   - https://github.com/yannbertrand/macos-defaults
#   - https://github.com/zmre/mac-nix-simple-example
#   - https://github.com/ryan4yin/nix-darwin-kickstarter
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

    # Nix packages
    # - https://github.com/nixos/nixpkgs
    nixpkgs = {
      # url = "github:nixos/nixpkgs/nixpkgs-unstable";
      url = "github:nixos/nixpkgs/nixpkgs-24.05-darwin";
    };

    # Nix for `macos`
    # - https://github.com/lnl7/nix-darwin/tree/master
    nix-darwin = {
      url = "github:lnl7/nix-darwin";
      # inputs.nixpkgs.follows = "nixpkgs";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Installs `brew` declaratively
    # - https://github.com/zhaofengli/nix-homebrew
    nix-homebrew = {
      url = "github:zhaofengli/nix-homebrew";
    };

    # Manages configs links things into your home directory
    # - https://github.com/nix-community/home-manager
    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Nix module for `darwin` which fixes a few common problems encountered by users of Nix on Macs
    # - https://github.com/hraban/mac-app-util
    mac-app-util = {
      url = "github:hraban/mac-app-util/master";
    };

  };

  # The `outputs` function will return all the build results of the flake.
  # A flake can have many use cases and different types of outputs,
  # parameters in `outputs` are defined in `inputs` and can be referenced by their names.
  # However, `self` is an exception, this special parameter points to the `outputs` itself (self-reference)
  # The `@` syntax here is used to alias the attribute set of the inputs's parameter, making it convenient to use inside the function.
  outputs = inputs @ {
    self,
    nixpkgs,
    nix-darwin,
    nix-homebrew,
    mac-app-util,
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
    # $ darwin-rebuild build --flake ~/.config/nix-darwin#macbookair
    darwinConfigurations."${hostname}" = nix-darwin.lib.darwinSystem {

      inherit system specialArgs;

      modules = [

        # Load `mac-app-util` module for showing `nix` installed apps on `spotlight` search
        mac-app-util.darwinModules.default

        # Load `nix-homebrew` module for programatically installing `homebrew`
        nix-homebrew.darwinModules.nix-homebrew {
          nix-homebrew = {
            user = "${username}";  #  user owning `homebrew` prefix
            enable = true;
            autoMigrate = true;
            enableRosetta = true;  # for apple silicon
          };
        }

        # Load `home-manager` module for managing the users configurations and preferences
        # home-manager.darwinModules.home-manager {
        #   home-manager = {
        #     useGlobalPkgs = true;
        #     useUserPackages = true;
        #     extraSpecialArgs = { inherit pwnvim; };
        #     users."${username}".imports = [ 
        #       ./modules/home-manager
        #     ];
        #   };
        # }

        # Load my personal configuration
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

      ];

    };

    # Nix code formatter
    formatter.${system} = nixpkgs.legacyPackages.${system}.alejandra;

    # Expose the package set, including overlays, for convenience.
    darwinPackages = self.darwinConfigurations."${hostname}".pkgs;

  };

}
