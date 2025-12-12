rec {

  na = [
    "there"  # keep track of people's timezones
    "punchout"  # log time in `jira`
  ];  # na

  fun = [
  ];  # fun

  cli = [
    "glean-cli"  # `cli` tool for `glean` ai
  ];  # cli

  dev = [
  ];  # dev

  dmn = [
  ];  # dmn

  all = fun ++ cli ++ dev ++ dmn;

}

# vim: et ts=2 sts=2 sw=2 syntax=nix
