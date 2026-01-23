{pkgs, ...}: with pkgs;

rec {

  cli-pkgs = [
    # mas  # `appstore` application manager
    nowplaying-cli  #  retrieves currently playing media
    switchaudio-osx  # change macos audio source
  ];  # clis

  gui-pkgs = [
    keycastr  # show your key presses
    alt-tab-macos  # `windows` like window switching
  ];

  dmn-pkgs = [
    skhd  #  hotkey daemon for `macos`
    yabai  #  `bspm` like tiling window for `macos`
    aerospace # `i3` like tiling window manager for `macos`
    sketchybar  # customizable status bar for `macos`
    jankyborders  #  highlight the current active window
    karabiner-elements  # utility for keyboard customization 
  ];

  font-pkgs = [
    sketchybar-app-font  # font to show icons in sketchybar
  ];

  # Add empty arrays for easily commenting the packages that I don't need
  all = []
    ++ cli-pkgs
    ++ gui-pkgs
    # ++ dmn-pkgs
    # ++ font-pkgs
    ++ []; 

}

# vim: et ts=2 sts=2 sw=2 syntax=nix
