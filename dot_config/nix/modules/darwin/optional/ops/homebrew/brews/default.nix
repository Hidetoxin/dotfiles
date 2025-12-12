rec {

  na = [
    "aiws"  # `aws` command line with `ai`
    "surf"  # `grep` for `infrastructure`
    "kplay" #  `tui` playground for `kafka`
    "telophasecli"  #  manages your `aws` organization as `iac`
  ];  # na

  fun = [
  ];  # fun

  cli = [
    "codegrab"  # grab code to feed into an `llm`
    "tfschema"  # schema checker for `terraform`
    "terratag"  # apply tags to `terraform` resources
    "container"  # `mac` container alternative
    "aws-console"  # open `aws` console on a browser
    "lazycontainer"  # `mac` alternative for `lazydocker`
  ];  # cli

  dev = [
  ];  # dev

  dmn = [
  ];  # dmn

  all = fun ++ cli ++ dev ++ dmn;

}

# vim: et ts=2 sts=2 sw=2 syntax=nix
