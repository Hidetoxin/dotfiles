{pkgs, ...}: with pkgs;

rec {

  na = [
    yabai  #  `bspm` like tiling window for `macos`
    aerospace # `i3` like tiling window manager for `macos`
    sketchybar  # customizable status bar for `macos`
    jankyborders  #  highlight the current active window
    karabiner-elements  # utility for keyboard customization 
    sketchybar-app-font  # font to show icons in sketchybar
  ];

  cli = [
    mas  # `appstore` application manager
    nowplaying-cli  #  retrieves currently playing media
    switchaudio-osx  # change macos audio source
  ];  # clis

  tui = [
  ];  # tuis

  dmn = [
    skhd  #  hotkey daemon for `macos`
  ];  # dmns


  gui = [
    keycastr  # show your key presses
    alt-tab-macos  # `windows` like window switching
  ];  # guis

  all = cli ++ tui ++ gui; 

}  # rec
