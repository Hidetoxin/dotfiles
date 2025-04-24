{pkgs, ...}: with pkgs;

rec {

  na = [
    slack  # desktop client for `slack`
    teams  # `microsoft` chat and meeting application
  ];  # na

  cli = [
    slack-cli  # `cli` client for `slack`
    slackdump  # saving `slack` data without admin privileges
  ];  # cli

  tui = [
    slack-term  # `tui` client for slack
  ];  # tui

  gui = [
    # zoom-us  # chat and meeting application
  ]; # gui

  all = cli ++ tui ++ gui;

}  # rec
