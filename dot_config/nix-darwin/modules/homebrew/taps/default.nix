rec {

  utils = [  # general utilities
    "ynqa/tap"  # sigrs
    "k3ii/tap"  # revq / conze
    "dhth/tap"  # omm / prs / mult / hours
    "ryu0118/kusa"  # kusa
    "lihaoyun6/tap"  # airbattery
    "dlvhdr/formulae"  # diffnav
    "loteoo/formulas"  # ks
    "nikitabobko/tap"  # aerospace
    "applegamer22/tap"  # cocainate
    "felixkratz/formulae"  # svim
  ];

  devops = [  # devops tools and utilities
    "env0/terratag"  # terratag
    "huseyinbabal/tap"  # aiws
    "isan-rivkin/toolbox"  # surf
    "humanlogio/homebrew-tap"# humanlog
    "santiago-labs/telophasecli"  #telophasecli
  ];

  homebrew = [  # `homebrew` default taps
    "homebrew/core"
    "homebrew/cask"
    "homebrew/bundle"
    "homebrew/services"
  ];

  all = utils ++ devops ++ homebrew;

}
