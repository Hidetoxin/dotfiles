rec {

   dev = {  # development tools and utilities
     "StackOv" = 1511838391;  # open source client
   };

   fun = {  # some fun packages
   };

   games = {
   };

   media = {
     "Shazam" = 897118787;  # music identification
   };

   utils = {  # general utilities
     # "Maccy" = 1527619437;  # clipboard manager
     # "Gifski" = 1351639930;  # gif encoder
     # "Lunatask" = 1583719331;  # habit tracking
     # "Hyperduck" = 6444667067;  # `airdrop` alternative
     # "ScanTexter" = 1635954549;  # image to text ocr

     "Pages" = 409201541;  # text editor
     "Numbers" = 409203825;  # spreadsheet application
     "Crouton" = 1461650987;  # recipe manager
     "Keynote" = 409183694;  # presentation application
     "Upscayl" = 6468265473;  # `ai` image upscaler
     "Expenses" = 1492055171;  # track expenses
     "Linkeeper" = 6449708232;  # bookmark manager
     "Bitwarden" = 1352778147;  # password manager
     "Book Tracker" = 1496543317;  # book reading list manager
     "Subscriptions" = 1577082754;  # Subscription manager
   };

   devops = {  # devops tools and utilities
   };

   safari = {  # extensions for safari
     "Noir" = 1592917505;  # dark mode foor `safari` with themes
     "Hush" = 1544743900;  # no more accept `cookie` banners
     "LINER" = 1463530746;  # summarize, translate and write
     "Vimari" = 1480933944;  #  `vim` like keybindings for `safari`
     "Vinegar" = 1591303229;  # replaces `youtube` player with minimal `html`
     "PiPifier" = 1160374471;  # let's you use `pip`
     "Baking Soda" = 1601151613;  # replaces custom players with minimal `html`
     "Super Agent" = 1568262835;  # fills `cookies` acording to your preferences
     "SponsorBlock" = 1573461917;  # blocks sponsors inside `youtube` videos
     "Improved Tube" = 1672777754;  # enhances `youtube`
     "Sink It for Reddit" = 6449873635;  # make `redit` more useful
     "AdGuard for Safari" = 1440147259;  # adblocker
     "Keepa - Price Tracker" = 1533805339;  # price tracke
     "Dark Reader for Safari" = 1438243180;  # dark mode foor `safari`
     "DuckDuckGo Privacy for Safari" = 1482920575;  # privacy respecting search engine
     "Awesome Screenshot & Recorder" = 1531282066;  # better screenshots
   };

   browsers = {  # web browsers
     "Velja" = 1607635845;  # browser picker
   };

   meetings = {  # meeting programs and utilities 
   };

   messaging = {  # messaging programs and utilities
     # "KakaoTalk" = 869223134;  # messaging application
     "WhatsApp" = 310633997;  # messaging application
   };

  all = dev // fun // games // media // utils // devops // safari  // browsers // meetings // messaging;

}
