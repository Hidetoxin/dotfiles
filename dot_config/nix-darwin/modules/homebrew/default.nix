{ pkgs, ...}: let

  # Modularize all the `homebrew` applications to have a cleaner and shorter file.
  # https://www.reddit.com/r/nixos/comments/vmlw54/split_packages_into_groups/
  # packages = import ./packages {
  #   inherit pkgs;
  # };
  taps = import ./taps;
  brews = import ./brews;
  casks = import ./casks;
  masapps = import ./masapps;
  whalebrews = import ./whalebrews;

in {

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

  # TODO To make this work, homebrew need to be installed manually, see https://brew.sh
  #
  # The apps installed by homebrew are not managed by nix, and not reproducible!
  # But on macOS, homebrew has a much larger selection of apps than nixpkgs, especially for GUI apps!

  homebrew = {

    enable = true;

    onActivation = {
      upgrade = true;
      cleanup = "none";
      autoUpdate = true;
    };

    # TODO Feel free to add your favorite apps here.
    taps = with taps; all;
    brews = with brews; all;
    casks = with casks; all;
    masApps = masapps;
    whalebrews = with whalebrews; all;

  };

}
