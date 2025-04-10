{pkgs, ...}: with pkgs;

rec {

  na = [
  ];  # na

  cli = [
  ];  # cli

  tui = [
  ];  # tui

  gui = [
  ]; # gui

  all = cli ++ tui ++ gui;

}  # rec
