{pkgs, ...}: with pkgs;

rec {

  # Tooling for working with `ai`
  ai-pkgs = [
    gemini-cli  # `cli` for using `gemini`
  ];

  # Tooling for sending messages
  messaging-pkgs = [
    slack-cli  # `cli` client for `slack`
  ];

  # Tooling for managing passwords
  passwords-pkgs = [
    _1password-cli  # `cli` for `1password`
    _1password-gui  # `gui` for `1password`
  ];

  all = []
    ++ ai-pkgs
    ++ messaging-pkgs
    ++ passwords-pkgs
    ++ [];

}  # rec
