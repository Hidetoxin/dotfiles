{ pkgs, ...}: {

  fonts = {

    packages = with pkgs.nerd-fonts; [
      hack
    ];  # packages

  };  # fonts

}

# vim: et ts=2 sts=2 sw=2 syntax=nix
