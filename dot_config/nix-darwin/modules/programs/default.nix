{ pkgs, ...}: {

  programs = {

    zsh = {
      # Create /etc/zshrc that loads the nix-darwin environment.
      # this is required if you want to use darwin's default shell - zsh
      enable= true;
    };

  };

}
