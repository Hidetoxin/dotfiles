rec {

  dev = [  # development tools and utilities
    # "jenv"  # `java` environment manager
    "goenv"  # `go` environment manager
    "mult"  # run a command multiple times
    "revq"  # review `github` pull requests
    "serpl"  #  `tui` for replacing and re-naming
    "sigrs"  # `tui` for `grep` on streaming
    "diffnav"  # `delta` with a file tree
  ];

  fun = [  # some fun packages
    "arttime"  # clock / timer / pattern-based time manager
  ];


  sbar = [  # sketchybar dependencies
    "lua"  # scripting language
    "sf-symbols"  # font for `sf` symbols
    "sketchybar"  # status bar for `macos`
    "font-sf-pro"  # font for `sf` symbols
    "font-sf-mono"  # font for `sf` symbols
    "nowplaying-cli"  # retrieves currently playing media
    "switchaudio-osx"  # change macos audio source
  ];

  utils = [  # general utilities
    # "punchout"  # log time in `jira`

    "mas"  # `appstore` application manager
    "wtf"  # check word definitions
    "kusa"  # display `github` contributors graph
    "svim"  # type on any text field using `vim`
    "cocainate"  # prevent `macos` going to sleep
    "eg-examples"  # useful examples 
    "macos-trash"  # send files to `macos` trash
  ];

  devops = [  # devops tools and utilities
    # "tfschema"  # schema checker for `terraform`

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
