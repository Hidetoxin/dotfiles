rec {

  ai-pkgs = [
    "epilande/tap"  # `codegrab`
    "huseyinbabal/tap"  # `aiws`
  ];

  aws-pkgs = [
    "isan-rivkin/toolbox"  # `kq` / `r53` /`surf` / `boltdbweb`
    "santiago-labs/telophasecli"  # `telophasecli`
  ];

  cloud-pkgs = [
    "dhth/tap"  # `kplay`
  ];

  terraform-pkgs = [
    "env0/terratag"  # `terrratag` 
  ];

  all = []
    # ++ aws-pkgs
    # ++ ai-pkgs
    # ++ cloud-pkgs
    # ++ terraform-pkgs
    ++ [];

}

# vim: et ts=2 sts=2 sw=2 syntax=nix
