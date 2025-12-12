rec {

  na = [
    "there"  # keep track of people's timezones
  ];  # na

  fun = [
  ];  # fun

  cli = [
    "punchout"  # log time in `jira`
  ];  # cli

  dev = [
  ];  # dev

  dmn = [
  ];  # dmn

  all = fun ++ cli ++ dev ++ dmn;

}

# vim: et ts=2 sts=2 sw=2 syntax=nix
