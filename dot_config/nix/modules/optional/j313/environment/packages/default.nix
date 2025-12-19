{pkgs, ...}: with pkgs;

rec {

  # Tooling for watching, downloading and streaming anime
  anime-pkgs = [
    ani-cli  # `cli` for watching anime
  ];

  # Tooling for audio
  audio-pkgs = [
    mpv  # `cli` media player
    mpd  # `daemon` por playing music
    cava  # `tui` audio visualizer
    ncmpcpp  # `tui` client for `mpd`
    talecast  # podcast manager
  ];

  # Tooling for watching and downloading manga
  manga-pkgs = [
    nyaa  # anime torrent `tui`
    mangal  #  `cli` for downloading manga
  ];

  # Tooling for playing games
  gaming-pkgs = [
    rebels-in-the-sky  # `tui` p2p game
  ];

  # Tooling for using social media
  social-pkgs = [
    reddix  # reddit, refined for the terminal `tui`
    sherlock  # hunt down social media accounts by username across social networks
    reddit-tui  # `tui` for `reddit`
  ];

  # Tooling for practicing typing
  typing-pkgs = [
    tt  # typing test
    # vial  # a `qmk` fork
    thokr  # typing `tui` with visualized results and historical logging
  ];

  # Tooling for reading
  reading-pkgs = [
    epy  # ebook reader
    calibre # `ebook` manager `gui`
    net-news-wire  # `rss` feed reader `gui`
  ];

  # Tooling for messaging tools
  messaging-pkgs = [
    # discordo  # `tui` for `discord`
    himalaya  # `cli` email manager
    signal-cli  # `cli` for `signal`
  ];

  streaming-pkgs = [
    jellyfin  # media system
    jellyfin-tui  # `tui` for `jellyfin`
    jellyfin-ffmpeg  # video convertion tool
  ];

  encrypting-pkgs = [
    cryptomator  # encrypting tool `gui`
  ];

  # Add empty arrays for easily commenting the packages that I don't need
  all = []
    ++ anime-pkgs
    ++ audio-pkgs
    ++ manga-pkgs
    ++ typing-pkgs
    ++ social-pkgs
    ++ gaming-pkgs
    ++ messaging-pkgs
    ++ streaming-pkgs
    ++ envrypting-pkgs
    ++ [];

}  # rec
