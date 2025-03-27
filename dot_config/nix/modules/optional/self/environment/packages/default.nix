{pkgs, ...}: with pkgs;

rec {

  np = [
    curd  # whatch anime form the `cli`
    yt-x  # `tui` for `youtube`
    lib-x  # `tui` for `calibre`
    fastanime  # `cli` for watching anime
  ];  # np

  na = [
    tt  # typing test
    epy  # ebook reader
    mpd  # `daemon` por playing music
    mpv  # `cli` media player
    cava  # `tui` audio visualizer
    jp2a  # convert `jpg` images to `ascii`
    thokr  # typing `tui` with visualized results and historical logging
    ncmpcpp  # `tui` client for `mpd`
    whatsgo  # `whatsapp` client `tui`
    discordo  # `tui` for `discord`
    himalaya  # cli email manager
    sherlock  # hunt down social media accounts by username across social networks
    signal-cli  # `cli` for `signal`
    rebels-in-the-sky  # `tui` p2p game
  ];  # na

  cli = [
    mangal  #  `cli` for downloading manga
    ani-cli  # `cli` for watching anime
    twitch-dl  # `cli` tool for downloading videos from `twitch`
    jellyfin-ffmpeg  # video convertion tool
  ];  # cli

  tui = [
    jellyfin-tui  # `tui` for `jellyfin`
  ];  # tui

  gui = [
    calibre # `ebook` manager
    cryptomator  # encrypting tool
    net-news-wire  # `rss` feed reader
  ]; # gui

  all = cli ++ tui ++ gui;

}  # rec
