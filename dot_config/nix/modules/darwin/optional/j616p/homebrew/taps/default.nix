rec {

  na = [
    "dhth/tap"  # `punchout`
  ];  # na

  cli = [
    "scalvert/tap/glean-cli"  # `glean-cli`
  ];  #cli

  gui = [
  ];  # gui

  dmn = [
  ];  # dmn

  brew = [
  ];  # brew

  all = cli ++ gui ++ dmn ++ brew;

}
