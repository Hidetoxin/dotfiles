{pkgs, ...}: with pkgs;

rec {

  na = [
  ];  # na

  cli = [
    slack-cli  # `cli` client for `slack`
    jira-cli-go  # `cli` client for `jira`
  ];  # cli

  tui = [
  ];  # tui

  gui = [
  ]; # gui

  all = cli ++ tui ++ gui;

}  # rec
