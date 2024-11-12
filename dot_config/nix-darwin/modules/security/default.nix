{ pkgs, ...}: {

  security = {

    pam = {
      # Add ability to used TouchID for sudo authentication
      enableSudoTouchIdAuth = true;
    };

  };

}
