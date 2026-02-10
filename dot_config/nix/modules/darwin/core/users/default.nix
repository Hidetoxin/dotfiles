{ pkgs, username, ...}: {

  users = {

    users = {

      "${username}" = {
        home = "/Users/${username}";
        description = "Home folder for ${username}";
      };

    };  # users

  };  # users

}

# vim: et ts=2 sts=2 sw=2 syntax=nix
