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
