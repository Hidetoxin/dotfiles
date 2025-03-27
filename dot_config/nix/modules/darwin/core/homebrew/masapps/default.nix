rec {

   na = {
      # Apps
     "Maccy" = 1527619437;  # clipboard manager
     "Gifski" = 1351639930;  # gif encoder
     "StackOv" = 1511838391;  # open source client
     "Lunatask" = 1583719331;  # habit tracking
     "Linkeeper" = 6449708232;  # bookmark manager
     "Hyperduck" = 6444667067;  # `airdrop` alternative
     "ScanTexter" = 1635954549;  # image to text ocr


     # Extensions
     "LINER" = 1463530746;  # summarize, translate and write
     "Super Agent" = 1568262835;  # fills `cookies` acording to your preferences
     "Dark Reader for Safari" = 1438243180;  # dark mode foor `safari`
     "Awesome Screenshot & Recorder" = 1531282066;  # better screenshots
   };  # na

   app = {
     "Velja" = 1607635845;  # browser picker
     "Bitwarden" = 1352778147;  # password manager
     "Amphetamine" = 937984704;  # keep your mac from going to sleep
   };  # app

   fun = {
     "Typibara"  = 6701996122;  # cute capibara that types with you
   };  # fun

   ext = {
     "Noir" = 1592917505;  # dark mode foor `safari` with themes
     "Hush" = 1544743900;  # no more accept `cookie` banners
     "Vinegar" = 1591303229;  # replaces `youtube` player with minimal `html`
     "PiPifier" = 1160374471;  # let's you use `pip`
     "Baking Soda" = 1601151613;  # replaces custom players with minimal `html`
     "SponsorBlock" = 1573461917;  # blocks sponsors inside `youtube` videos
     "Improved Tube" = 1672777754;  # enhances `youtube`
     "Sink It for Reddit" = 6449873635;  # make `redit` more useful
     "AdGuard for Safari" = 1440147259;  # adblocker
     "Redirect Web for Safari" = 1571283503;  # re-direct any webpage
     "DuckDuckGo Privacy for Safari" = 1482920575;  # privacy respecting search engine
   };

  all = app // fun // ext;

}
