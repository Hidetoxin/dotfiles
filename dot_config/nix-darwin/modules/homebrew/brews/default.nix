rec {

  dev = [  # development tools and utilities

    # "jenv"  # `java` environment manager
    "prs"  # check pull requests
    "mult"  # run a command multiple times
    "revq"  # review `github` pull requests
    "serpl"  #  `tui` for replacing and re-naming
    "sigrs"  # `tui` for `grep` on streaming
    "goenv"  # `go` environment manager
    "diffnav"  # `delta` with a file tree

  ];

  fun = [  # some fun packages

    "arttime"  # clock / timer / pattern-based time manager

  ];


  sbar = [  # sketchybar dependencies

    "lua"  # scripting language
    "sketchybar"  # status bar for `macos`
    "nowplaying-cli"  # retrieves currently playing media
    "switchaudio-osx"  # change macos audio source

  ];

  utils = [  # general utilities
    # "punchout"  # log time in `jira`

    "ks"  #  uses the native `keychain`
    "mas"  # `appstore` application manager
    "wtf"  # check word definitions
    "kusa"  # display `github` contributors graph
    "svim"  # type on any text field using `vim`
    "kanata"  # keyboard re-mapper
    "s-search"  #  web search
    "cocainate"  # prevent `macos` going to sleep
    "eg-examples"  # useful examples 
    "macos-trash"  # send files to `macos` trash

  ];

  devops = [  # devops tools and utilities

    # "aiws"  # `aws` command line with `ai`
    # "surf"  # `grep` for `infrastructure`
    # "humanlog"  # pretty logs
    # "tfschema"  # schema checker for `terraform`
    # "terratag"  # apply tags to `terraform` resources
    # "telophasecli"  #  manages your `aws` organization as `iac`

    "aws-console"  # open `aws` console on a browser

  ];

  browsers = [  # web browsers
  ];

  meetings = [  # meeting programs and utilities 
  ];

  messaging = [  # messaging programs and utilities
  ];

  all = dev ++ fun ++ sbar ++ utils ++ devops ++ browsers ++ meetings ++ messaging;

}
