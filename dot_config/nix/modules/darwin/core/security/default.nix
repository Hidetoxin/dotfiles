{ pkgs, ...}: {

  security = {

    pam = {

      services = {

        sudo_local = {
          # Add ability to used TouchID for sudo authentication
          touchIdAuth = true;
	};  # sufo_local

      };  # services

    };  # pam

  }; # security

}
