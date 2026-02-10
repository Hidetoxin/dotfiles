rec {

  ai-pkgs = [
    "aiws"  # `aws` command line with `ai`
    "codegrab"  # grab code to feed into an `llm`
  ];

  aws-pkgs = [
    "r53"  # `cli` tool for `route53` to quickly query values of records
    "surf"  # `grep` for `infrastructure`
    "aws-console"  # open `aws` console on a browser
    "telophasecli"  #  manages your `aws` organization as `iac`
  ];

  cloud-pkgs = [
    "kplay" #  `tui` playground for `kafka`
    "ktea"  # tool designed to simplify and accelerate interactions with `kafka` cluster
    "cloudflare-speed-cli"  # `tui` for displaying network speed test results from `cloudflare`'s speed test
  ];

  container-pkgs= [
    "container"  # `mac` container alternative
    "lazycontainer"  # `mac` alternative for `lazydocker`
  ];  # cli

  databases-pkgs = [
    "boltdbweb"  # `boltdb` web ui
  ];

  terraform-pkgs = [
    "tfschema"  # schema checker for `terraform`
    "terratag"  # apply tags to `terraform` resources
  ];

  kubernetes-pkgs = [
    "kq"  # `cli` tool for querying all your `kubernetes` clusters
  ];

  # Add empty arrays for easily commenting the packages that I don't need
  all = []
    # ++ ai-pkgs
    # ++ aws-pkgs
    # ++ cloud-pkgs
    # ++ container-pkgs
    # ++ databases-pkgs
    # ++ terraform-pkgs
    # ++ kubernetes-pkgs
    ++ [];

}

# vim: et ts=2 sts=2 sw=2 syntax=nix
