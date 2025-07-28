{pkgs, ...}: with pkgs;

rec {

  na = [
  ];  # na

  cli = [
    slack-cli  # `cli` client for `slack`
    gemini-cli  # `cli` for using `gemini`
    jira-cli-go  # `cli` client for `jira`
    _1password-cli  # `cli` for `1password`
  ];  # cli

  tui = [
  ];  # tui

  gui = [
    _1password-gui  # `gui` for `1password`
  ]; # gui

  all = cli ++ tui ++ gui;

}  # rec
