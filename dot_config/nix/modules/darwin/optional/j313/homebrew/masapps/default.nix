rec {

  app-pkgs = {
    "Anybox"  = 1593408455;  # application to save links, videos, notes, etc.
    "Crouton" = 1461650987;  # recipe manager
    "Upscayl" = 6468265473;  # `ai` image upscaler
    "Expenses" = 1492055171;  # track expenses
    "GoodLinks" = 1474335294;  # read it later application
    #"Linkeeper" = 6449708232;  # bookmark manager
    "Book Tracker" = 1496543317;  # book reading list manager
    "Subscriptions" = 1577082754;  # Subscription manager
  };

  msg-pkgs = {
    "WhatsApp" = 310633997;  # messaging application
    "KakaoTalk" = 869223134;  # messaging application
  };

  doc-pkgs = {
    "Pages" = 409201541;  # text editor
    "Numbers" = 409203825;  # spreadsheet application
    "Keynote" = 409183694;  # presentation application
  };

  music-pkgs = {
    "Shazam" = 897118787;  # music identification
  };

  safari-pkgs = {
    "Keepa - Price Tracker" = 1533805339;  # price tracke
  };

 # Add empty dictionaries for easily commenting the packages that I don't need
  all = {}
    // app-pkgs
    // msg-pkgs
    // doc-pkgs
    // music-pkgs
    // safari-pkgs
    // {};

}

# vim: et ts=2 sts=2 sw=2 syntax=nix
