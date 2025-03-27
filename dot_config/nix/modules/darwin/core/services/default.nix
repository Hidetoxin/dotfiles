{ pkgs, ...}: {

  services = {

    skhd = {  #  hotkey daemon for `macos`
      enable = true;
    };

    # aerospace = {  # `i3` like tiling window manager for `macos`
    #     enable = true;
    # };
    #
    # sketchybar = {  # customizable status bar for `macos`
    #   enable = true;
    # };
    #
    # jankyborders = {  #  highlight the current active window
    #   enable = true;
    # };
    #
    # karabiner-elements = {  # utility for keyboard customization 
    #   enable = true;
    # };

    # Auto upgrade nix package and the daemon service.
    nix-daemon = {
      # enable = true;
    };

  };

}
