rec {

  na = [
  ];  # na

  cli = [
  ];  #cli

  gui = [
  ];  # gui

  dmn = [
  ];  # dmn

  brew = [  # `homebrew` default taps
  ];  # brew


  # devops = [
  #   "env0/terratag"  # `terratag`
  #   "huseyinbabal/tap"  # `aiws`
  #   "isan-rivkin/toolbox"  # `surf`
  #   "humanlogio/homebrew-tap" . # `humanlog`
  #   "santiago-labs/telophasecli"  # `telophasecli`
  # ];  # devops

  all = cli ++ gui ++ dmn ++ brew;

}
