rec {

   na = {
   };  # na

   app = {
   };  # app

   ext = {
     "Okta Extension App" = 1439967473;  # use `okta` authentication
   };

  all = app // ext;

}
