rec {

  na = [
  "aiws"  # `aws` command line with `ai`
  "kplay" #  `tui` playground for `kafka`
  "surf"  # `grep` for `infrastructure`
  "humanlog"  # pretty logs
  "telophasecli"  #  manages your `aws` organization as `iac`
  ];  # na

  fun = [
  ];  # fun

  cli = [
  "codegrab"  # grab code to feed into an `llm`
  "tfschema"  # schema checker for `terraform`
  "terratag"  # apply tags to `terraform` resources
  "aws-console"  # open `aws` console on a browser
  ];  # cli

  dev = [
  ];  # dev

  dmn = [
  ];  # dmn

  all = fun ++ cli ++ dev ++ dmn;

}
