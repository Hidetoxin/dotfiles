rec {

   app-pkgs = {
   };

   ext-pkgs = {
   };

 # Add empty dictionaries for easily commenting the packages that I don't need
  all = {}
    // app-pkgs
    // ext-pkgs
    // {};

}

# vim: et ts=2 sts=2 sw=2 syntax=nix
