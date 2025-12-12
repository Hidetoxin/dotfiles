{ pkgs, ...}: {

  programs = {

    zsh = {
      # Create /etc/zshrc that loads the nix-darwin environment.
      # this is required if you want to use darwin's default shell - zsh
      enable = true;
    };

  };

}

# vim: et ts=2 sts=2 sw=2 syntax=nix
