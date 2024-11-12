{ pkgs, ...}: {

  fonts = {

    packages = [
      (pkgs.nerdfonts.override { fonts = ["Hack"]; })
    ];  # packages

  };  # fonts

}
