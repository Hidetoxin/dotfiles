{pkgs, ...}: with pkgs;

rec {

  # Tooling for watching, downloading and streaming anime
  anime-pkgs = [
    anup  # anime tracker for `anilist` featuring a `tui`
    ani-cli  # `cli` for watching anime
  ];

  # Tooling for audio
  audio-pkgs = [
    mpv  # `cli` media player
    # mpd  # `daemon` por playing music
    # cava  # `tui` audio visualizer
    # rmpc  # `tui` music player client for `mpd` with album art support via `kitty` image protocol
    # ncmpcpp  # `tui` client for `mpd`
    talecast  # podcast manager
    # termusic  # terminal music player `tui` written in `rust`
  ];

  # Tooling for watching and downloading manga
  manga-pkgs = [
    nyaa  # anime torrent `tui`
    mangal  #  `cli` for downloading manga
  ];

  # Tooling for playing games
  gaming-pkgs = [
    steamcmd  # `steam` command-line tools
    steam-tui  # `tui` client for `steamcmd`
    rebels-in-the-sky  # `tui` p2p game
  ];

  # Tooling for using social media
  social-pkgs = [
    tut  # `tui` for `mastodon` with `vim` inspired keys
    nostui  # `tui` client for `nostr`
    reddix  # `reddit`, refined for the terminal `tui`
    tuisky  # `tui` client for `bluesky`
    sherlock  # hunt down social media accounts by username across social networks
    reddit-tui  # `tui` for `reddit`
  ];

  # Tooling for practicing typing
  typing-pkgs = [
    tt  # typing test
    # vial  # a `qmk` fork
    thokr  # typing `tui` with visualized results and historical logging
    ngrrram  # `tui` tool to help you type faster and learn new layouts. includes a free cat
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

  # Tolling for streaming media
  streaming-pkgs = [
    jftui  # `tui` for `jellyfin`
    jellyfin  # media system
    jellyfin-tui  # `tui` for `jellyfin`
    jellyfin-ffmpeg  # video convertion tool
  ];

  # Tooling for encrypting documents
  encrypting-pkgs = [
    cryptomator  # encrypting tool `gui`
  ];

  # Tooling for downloading `torrent` files
  torrenting-packages = [
    stig  # `tui` and `cli` for `transmission`
    rustmission  # `tui` for the `transmission` daemon
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
    ++ encrypting-pkgs
    ++ torrenting-pkgs
    ++ [];

}  # rec
