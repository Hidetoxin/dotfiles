# Setup by looking at:
# - https://github.com/LnL7/nix-darwin
# - https://github.com/zhaofengli/nix-homebrew
# - https://www.youtube.com/watch?v=Z8BL8mdzWHI
# - https://gist.github.com/elliottminns/211ef645ebd484eb9a5228570bb60ec3

# Run this file with the below commnad:
# $ nix run nix-darwin --experimental-features 'nix-command flakes'  -- switch --flake ~/.config/nix-darwin#macbookair
# $ darwin-rebuild switch --flake ~/.config/nix-darwin#hidetoxin
{
  description = "Hidetoxin's Darwin system flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:lnl7/nix-darwin";
    nix-homebrew.url = "github:zhaofengli/nix-homebrew";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs@{ self, nix-darwin, nixpkgs, nix-homebrew }:
  let
    configuration = { pkgs, config, ... }: {

      nixpkgs.config.allowUnfree = true;

      # List packages installed in system profile. To search by name, run:
      # $ nix-env -qaP | grep wget
      environment.systemPackages = [ 
        pkgs.mkalias  # package to fix apps not being findable by `spotlight search`
      ];

      # Install al packages defined in here via `homebrew`
      homebrew = {
        enable = true;
        # brews = [
        # ];
        # casks = [
        # ];
        masApps = {
           # Apple store applications
          "Pages" = 409201541;
          "Velja" = 1607635845;
          "Maccy" = 1527619437;
          "Gifski" = 1351639930;
          "Shazam" = 897118787;
          "Numbers" = 409203825;
          "StackOv" = 1511838391;  # open source client
          "Crouton" = 1461650987;
          "Keynote" = 409183694;
          "WhatsApp" = 310633997;
          "Lunatask" = 1583719331;
          "Expenses" = 1492055171;
          "Hyperduck" = 6444667067;
          "Linkeeper" = 6449708232;
          "KakaoTalk" = 869223134;
          "Bitwarden" = 1352778147;
          "ScanTexter" = 1635954549;
          "Super Agent" = 1568262835;
          "Book Tracker" = 1496543317;
          "Subscriptions" = 1577082754;
          # Safari extensions
          "Hush" = 1544743900;
          "LINER" = 1463530746;
          "Vimari" = 1480933944;
          "Vinegar" = 1591303229;
          "PiPifier" = 1160374471;
          "Baking Soda" = 1601151613;
          "SponsorBlock" = 1573461917;
          "Improved Tube" = 1672777754;
          "Sink It for Reddit" = 6449873635;
          "AdGuard for Safari" = 1440147259;
          "Keepa - Price Tracker" = 1533805339;
          "Dark Reader for Safari" = 1438243180;
          "DuckDuckGo Privacy for Safari" = 1482920575;
          "Awesome Screenshot & Recorder" = 1531282066;
        };
        # onActivation.cleanup = "zap";  # cleanup all packages not defined on this configuration
      };

      # Add any required fonts
      fonts.packages = [
      ];

      # Script to fix apps not being findable by `spotlight search`
      system.activationScripts.applications.text = let
        env = pkgs.buildEnv {
          name = "system-applications";
          paths = config.environment.systemPackages;
          pathsToLink = "/Applications";
        };
      in
        pkgs.lib.mkForce ''
        # Set up applications.
        echo "setting up /Applications..." >&2
        rm -rf /Applications/Nix\ Apps
        mkdir -p /Applications/Nix\ Apps
        find ${env}/Applications -maxdepth 1 -type l -exec readlink '{}' + |
        while read src; do
          app_name=$(basename "$src")
          echo "copying $src" >&2
          ${pkgs.mkalias}/bin/mkalias "$src" "/Applications/Nix Apps/$app_name"
        done
            '';

     # Define the default `System Preferences` for your computer
      system.defaults = {  # use the `darwin-help` command to check the available options
        dock.autohide = true;
      };

      # Auto upgrade nix package and the daemon service.
      services.nix-daemon.enable = true;
      # nix.package = pkgs.nix;

      # Necessary for using flakes on this system.
      nix.settings.experimental-features = "nix-command flakes";

      # Create /etc/zshrc that loads the nix-darwin environment.
      programs.zsh.enable = true;  # default shell on catalina
      # programs.fish.enable = true;

      # Set Git commit hash for darwin-version.
      system.configurationRevision = self.rev or self.dirtyRev or null;

      # Used for backwards compatibility, please read the changelog before changing.
      # $ darwin-rebuild changelog
      system.stateVersion = 5;

      # The platform the configuration will be used on.
      # nixpkgs.hostPlatform = "x86_64-darwin";
      nixpkgs.hostPlatform = "aarch64-darwin";  # apple silicon
    };
  in
  {
    # Build darwin flake using:
    # $ darwin-rebuild build --flake .#hidetoxin
    darwinConfigurations."hidetoxin" = nix-darwin.lib.darwinSystem {
      modules = [
        configuration
        nix-homebrew.darwinModules.nix-homebrew {
          nix-homebrew = {
            user = "hdtxn";  #  user owning `homebrew` prefix
            enable = true;
            autoMigrate = true;
            enableRosetta = true;  # for apple silicon
          };
        }
      ];
    };

    # Expose the package set, including overlays, for convenience.
    darwinPackages = self.darwinConfigurations."hidetoxin".pkgs;
  };
}
