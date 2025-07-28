{ self, pkgs, config, username, hostname, ... }:

  ###################################################################################
  #
  #  macOS's System configuration
  #
  #  All the configuration options are documented here:
  #   - https://daiderd.com/nix-darwin/manual/index.html#sec-options
  #   - https://github.com/ryan4yin/nix-darwin-kickstarter/blob/main/rich-demo/modules/system.nix
  #
  ###################################################################################

{

  system = {

    # For multi-user support
    primaryUser = "${username}";

    # Used for backwards compatibility, please read the changelog before changing.
    # $ darwin-rebuild changelog
    stateVersion = 5;

    # Set Git commit hash for darwin-version.
    configurationRevision = self.rev or self.dirtyRev or null;

    defaults = {

      # smb = {
      #   NetBIOSName = hostname;
      # };

      dock = {
        autohide = true;
        show-recents = false;

        # Customize hot corners
        # wvous-bl-corner = 3;  # bottom-left - Application Windows
        # wvous-br-corner = 4;  # bottom-right - Desktop
        # wvous-tl-corner = 2;  # top-left - Mission Control
        # wvous-tr-corner = 13;  # top-right - Lock Screen

        persistent-apps = [
          "/Applications/Safari.app"
          # "${pkgs.wezterm}/Applications/Wezterm.app"
        ];
      };

      finder = {
        ShowPathbar = true;  # show path bar
        QuitMenuItem = true;  # enable quit menu item
        ShowStatusBar = true;  # show status bar
        FXPreferredViewStyle = "clmv";
        AppleShowAllExtensions = true;  # show all file extensions
        _FXShowPosixPathInTitle = true;  # show full path in finder title
        FXEnableExtensionChangeWarning = false;  # disable warning when changing file extension
      };

      # keyboard = {
      #   enableKeyMapping = true;  # enable key mapping so that we can use `option` as `control`
      #
      #   # NOTE: do NOT support remap capslock to both control and escape at the same time
      #   remapCapsLockToEscape  = true;   # remap caps lock to escape, useful for vim users
      #   remapCapsLockToControl = false;  # remap caps lock to control, useful for emac users
      #
      #   # swap left command and left alt 
      #   # so it matches common keyboard layout: `ctrl | command | alt`
      #   #
      #   # disabled, caused only problems!
      #   swapLeftCommandAndLeftAlt = false;  
      # };

      trackpad = {
        Clicking = true;  # enable tap to click
        TrackpadRightClick = true;  # enable two finger right click
        TrackpadThreeFingerDrag = true;  # enable three finger drag
      };

      loginwindow = {
        GuestEnabled = false;
      };

      menuExtraClock = {
        Show24Hour = true;
      };

      NSGlobalDomain = {

        KeyRepeat = 2;  # normal minimum is 2 (30 ms), maximum is 120 (1800 ms)
	_HIHideMenuBar = true;  # hide menu bar
        InitialKeyRepeat = 15;  # normal minimum is 15 (225 ms), maximum is 120 (1800 ms)
        AppleInterfaceStyle = "Dark";
        # AppleKeyboardUIMode = 3;  # mode 3 enables full keyboard control.
        AppleICUForce24HourTime = true;
        # ApplePressAndHoldEnabled = true;  # enable press and hold
        # NSAutomaticCapitalizationEnabled = false;  # disable auto capitalization$自动大写)
        # NSNavPanelExpandedStateForSaveMode = true;  # expand save panel by default
        # NSNavPanelExpandedStateForSaveMode2 = true;
        # NSAutomaticDashSubstitutionEnabled = false;  # disable auto dash substitution
        # NSAutomaticQuoteSubstitutionEnabled = false;  # disable auto quote substitution
        # NSAutomaticPeriodSubstitutionEnabled = false;  # disable auto period substitution
        # NSAutomaticSpellingCorrectionEnabled = false;  # disable auto spelling correction
        # "com.apple.sound.beep.feedback" = 0;  # disable beep sound when pressing volume up/down key
        # "com.apple.swipescrolldirection" = true;  # enable natural scrolling(default to true)

      };

    };  # defaults

    # activationScripts are executed every time you boot the system or run `nixos-rebuild` / `darwin-rebuild`.
    activationScripts = {

      # postUserActivation.text = ''
      #   # activateSettings -u will reload the settings from the database and apply them to the current session,
      #   # so we do not need to logout and login again to make the changes take effect.
      #   /System/Library/PrivateFrameworks/SystemAdministration.framework/Resources/activateSettings -u
      # '';

      # Script to fix apps not being findable by `spotlight search`
      # system.activationScripts.applications.text = let
      #   env = pkgs.buildEnv {
      #     name = "system-applications";
      #     paths = config.environment.systemPackages;
      #     pathsToLink = "/Applications";
      #   };
      # in
      #   pkgs.lib.mkForce ''
      #   # Set up applications.
      #   echo "setting up /Applications..." >&2
      #   rm -rf /Applications/Nix\ Apps
      #   mkdir -p /Applications/Nix\ Apps
      #   find ${env}/Applications -maxdepth 1 -type l -exec readlink '{}' + |
      #   while read -r src; do
      #     app_name=$(basename "$src")
      #     echo "copying $src" >&2
      #     ${pkgs.mkalias}/bin/mkalias "$src" "/Applications/Nix Apps/$app_name"
      #   done
      #   '';

      # Add `ZDOTDIR` and `XDG_CONFIG_HOME` environment variables to avoid having `.zshenv` on my home folder
      addXdgEnvVarsToZshenv.text = ''
      if [[ -z "$(grep -qE "ZDOTDIR|XDG_CONFIG_HOME" /etc/static/zshenv)" ]]; then
        sudo out='/etc/zshenv' sh -c 'cat << EOF >> $out
        if [[ -z "$XDG_CONFIG_HOME" ]]; then
            export XDG_CONFIG_HOME="$HOME/.config"
        fi

        if [[ -d "$XDG_CONFIG_HOME/zsh" ]]; then
            export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
        fi
        EOF
      fi
      '';

    };

  };  #system 

}  # module
