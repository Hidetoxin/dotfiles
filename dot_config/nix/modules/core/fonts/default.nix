{ pkgs, ...}: {

  fonts = {

    packages = with pkgs.nerd-fonts; [
      hack
    ];  # packages

  };  # fonts

}
