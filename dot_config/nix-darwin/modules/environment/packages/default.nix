{pkgs, ...}: with pkgs;
rec {

    # Not available packages
    # mdx  # application for downloading manga from the `mangadex` 
    # gotz  #  timezone info tool
    # kalc  # `cli` advanced calculator
    # tget  # torrent downloader
    # nyaa  # anime torrent `tui`
    # jalm  # generate generate progress bar form `cron` expressions
    # play  # `tui` playground for your favorite programs, such as `grep`, `sed` and `awk`
    # mdtt  # edit `markdown` tables
    # vops  # `vault` cluster management tool
    # flawz  # `tui` for browsing the security vulnerabilities
    # tlock  # store and manage your authentication tokens
    # portr  # expose local `http`, `tcp` or `websocket` connections to the public internet
    # upnup  # generates a license file in the current working directory
    # artty  # `art` for your `tty`
    # avail  # find available times between all your calendars
    # enola  # `sherlock` alternative
    # moulti  # collapse script outputs
    # rucola  # `markdown` note manager
    # basilk  # `tui` manage your tasks with minimal `kanban` logic
    # haylxon  # take screenshots of webpages
    # mintaka  # runs long-running processes in parallel
    # posting  # `postman` like `tui`
    # durdraw  # `tui` `ascii`, `unicode` and `ansi` art editor
    # buttery  # generates continuous `gif` loops
    # toolong  # view, tail, merge, and search log files
    # talecast  # podcast manager
    # carbonyl  # `tui` chromium based browser
    # fogmouth  # `tui` for viewing `markdown`
    # rainfrog  # `tui` for `postgressql` queries
    # llm-term  # generates and executes terminal commands using `openai` language models or local `ollama`
    # packemon  # `tui` tool for generating packets of arbitrary input and monitoring
    # terramaid  # creating mermaid diagrams from `terraform`
    # procfusion  # process manager for your `docker` images
    # rclone-tui  # `tui` for `rclone`
    # beachpatrol  # launch a browser which can be controlled externally through `playwright`
    # tinycare-tui  # `tui` dashboard
    # config-file-validator  # validate different configuration file types

  py = [  # python utilities
    # python312Packages.howdoi  # coding answers in the terminal
  ];

  dev = [  # development tools and utilities
    # kitty  # terminal emulator with graphic support
    # vscodium  # `vscode` without telemetry

    wezterm  # `gpu` accelerated terminal emulator

    # bash  # bourne again shell
    # pipx  # `python` isolated script runner
    # bandit  # security oriented static analyser for `python`
    # mkdocs  # documentation with `markdown`
    # nodenv  # `node` environment manager
    # pyright  # `python` type checker
    # gitmoji-cli # using emojis on commit messages
    # bash-language-server  # `bash` language server

    atac  # `postman` like `tui`
    hugo  # a static website generator
    pyenv  # `python`` manager
    pandoc  # document file converter
    ltex-ls  # `latex` language server
    codespell  # spell linter
    commitizen  # create comitting rules
    lazydocker  # `docker` tui
    lua-language-server  # `lua` language server
    yaml-language-server # `yaml` language server
  ];

  fun = [  # fun utilities
    # nsnake  # snake game
    # cmatrix  # simulates the matrix theme
    # asciiquarium  # render aquarium in `acii`

    neo  # simulates the matrix theme
    lavat  # lava lamp simulation 
    krabby  # print pokemon sprites in your terminal
    sssnake  # snake game that plays itself
    typioca  # cozy typing speed tester in terminal
    charasay  #  `cowsay` alternative
    ghfetch  #  `github` fetch information
    onefetch  # `git` repo summary
    pipes-rs  # animated pipes screensaver
    fastfetch  # `neofetch` alternative
    pokemonsay  # `cowsay` alternative
    gambit-chess  # play chess
    asciiquarium-transparent  # render aquarium in `ascii`
    dwt1-shell-color-scripts  # collection of `shell` color scripts collected by `dt`
  ];

  games = [  # games and game management programs
    # steam  # game manager
    # retroarch  # game emulator
  ];

  media = [  # media maanagement applications
    # freetube  # `youtube` privacy frontend
    # yacreader  # comicbook reader

    calibre  # `ebook` management

    # cava  # `tui` audio visualizer
    # jp2a  # convert `jpg` images to `ascii`
    # digikam  # photo manager
    # graphviz  # graph vizualization tools

    mpd  # `daemon` por playing music
    mpv  # `cli` media player
    timg  # terminal image and video viewer
    ytfzf  # `youtube` video finder
    yt-dlp  # `youtube` downloader
    mangal  # `cli` manga downloader
    catimg  # `cli` image printing
    ani-cli  # browse and watch anime
    ncmpcpp  # `tui` client for `mpd`
    invidtui  # `tui` for `invidious`
    twitch-dl  # `cli` tool for downloading videos from `twitch`
    twitch-tui # `twitch` chat in the terminal
    imagemagick  # edit images on the `cli`
    youtube-tui  #  `tui` for `youtube`
    jellyfin-ffmpeg  # video convertion tool
  ];

  utils = [  # general utilities
    # rar  # un-archiver
    # krita  # painting application
    # standardnotes  # privacy focused notes application

    espanso  # text expander
    cryptomator  # file encryption

    # nb `cli` note taker
    # tt  # typing test
    # air  # `live reload of `go` applications
    # gtt  # `tui` for translation
    # pet `cli` snippets manager
    # prs  # `pass` alternative
    # w3m  # `cli` browser
    # wtf  # `tui` dashboard
    # xsv  # `cli` for `csv` files
    # epy  # ebook reader
    # buku  # `cli` bookmark manager
    # khal  #  `cli` calendar application
    # qrcp  # transfer files via `qr` by `wifi`
    # ttyd  # share terminal over the web
    # atuin  # `history` alternative
    # docfd  # `tui` multiline fuzzy document finder
    # dooit  # `tui` todo manager
    # helix  # `vim` inspired text editor
    # runme  # run commands inside your documents
    # aichat # `cli` ai assistant
    # slides  # `cli` for creating slides
    # zellij  # `tmux` alternative
    # calcure  # `tui` calendar
    # the-way  #  `cli` snipet manager
    # youplot  # `cli` for drawing plots
    # neverest  # sync, backup and restore emails
    # visidata  # exploring and arranging tabular data 
    # himalaya  # cli email manager
    # sherlock  # hunt down social media accounts by username across social networks
    # bluetuith  # `tui` bluetooth connection manager
    # watchexec  # `entr` alternative
    # bitwarden-cli  # `cli` for `bitwarden`

    fd  # `find` command alternative
    fq  # `jq` for binaries
    fx  # terminal json viewr
    jq  # `json` processor
    sd  # `sed`alternative
    sl  # `ls` mispelled for fun
    up  # `tui` for pipes
    xh  # tool for `http` requests

    bat  # `cat` alternative
    dua  # tool for disk usage of directories
    duf  # disk usage / free utility
    eza  # `ls` command alternative
    fzf  # fuzzy finder
    ghq  # git repo manager
    git  # version control manager
    grc  # text colourizer
    ijq  # `tui` for `jq`
    jnv  #  `tui` for `jq`
    jqp  # `tui` for `jq`
    lua  # scripting language
    nap  # `tui` for code snippets
    tig  # `tui` for `git`
    vhs  # generate terminal `gif`
    viu  # `imgcat` alternative
    zsh  # the zshell

    dust  # `du` command alternative
    ddgr  # `ddg` for `cli`
    entr  # run arbitrary commands
    glow  # render `markdown on the cli`
    gron  # make `json` greppable
    halp  # get help for the `cli`
    just  # save and run project specific commands
    lnav  # log viewer
    mods  # `ai` on the `cli`
    navi  # interactive cheatsheet
    nmap  # network discovery and security
    pass  # `cli` password manager
    sesh  # session manager for `tmux`
    smug  # `tmux` session manager
    sttr  # apply operations on strings
    tmux  # terminal multiplexer
    wget  # retrieve files via `https`
    yank  # yank terminal output
    yazi  # `tui` file manager

    cheat  # `tldr` alternative
    dasel  # `jq` alternative for `csv`, `xml` `json`, `yaml` and `toml`
    delta  # syntax-highlighting pager for git
    gnupg  # privacy guard
    gopls  # `go` language server
    gping  # `ping alternative`
    jless  # pager for `json`
    kondo  # clean project files
    p7zip  # `zip` alternative
    procs  # `ps` alternative`
    pueue  # daemon for managing long running commands
    rsync  # sync local files
    tokei  # check code quickly
    ugrep  # `grep` alternative
    viddy  # `watch` alternative
    vivid  # `LS_COLORS` generator
    zinit  # `zinit` plugin manager

    tshark  # `cli` for `wireshark`
    gowall # convert a image's color scheme or palette
    gh-cal  # `github` contributions calender terminal viewer
    bottom  # `ps` alternative
    direnv  # environment manage
    gnused  # `gnu`version of sed 
    go-2fa  # `cli` for 2fa
    jobber  # `cron` alternative
    neovim  # `vim` alternative
    nomino  # `rename` alternative
    rclone  # sync files across clouds
    rdfind  # find duplicate files bases on content
    rename  # file re-namer
    restic  # backup tool
    rmlint  # rm linter
    zoxide  # `cd` alternative

    chezmoi  # dotfiles manager
    erdtree  # file-tree visualizer and disk usage analyzer
    gitlint  # `git` linter
    gnumake  # generation of files from source
    gpg-tui  # `tui` for `gpg`
    lazygit  # `git` tui
    lazysql  # `sql` tui
    mkalias  # package to fix apps not being findable by `spotlight search`
    pdfgrep  # `grep` for `pdf` files
    ripgrep  # `grep` alternative
    sampler  # `tui for `shell` commands
    termscp  # feature rich terminal file transfer
    thefuck  # corrects mispelled commands

    tealdeer  # `tldr` alternative
    tomato-c  # pomodoro timer
    treefmt2  # one `cli` to format the code tree

    gowitness  # website screenshot utility
    mcfly-fzf # `history` alternative 
    xdg-ninja  # check your home for `xdg` format

    difftastic  # syntax-aware diff

    cmd-wrapped  # view your `shell` history stats
    projectable # `tui` manager for projects
    ripgrep-all  # `ripgrep` alternative

    tidy-viewer  # `csv` printer
    tree-sitter  #  incremental parser library

    code-minimap  # minimap renderer
    taskwarrior3  # `cli` for managing todo lists

    speedtest-cli  # check your internet spedd

    universal-ctags  # fast source code browsing

    bat-extras.prettybat  # helper scripts for `bat`
  ];

  macos = [  # packages only for `macos`
    # motrix  # download manager

    iina  # media player for `macos`
    keka  # `macos` archiver
    skhd  #  hotkey daemon for `macos`
    yabai  #  `bspm` inspired tiling window for `macos`
    skimpdf  # `pdf` reader
    keycastr  # show your key presses
    shortcat # system wide `vimium` clone
    sketchybar  # customizable status bar for `macos`
    jankyborders  #  highlight the current active window
    transmission  # torrent client
    alt-tab-macos  # `windos` like window switching
    net-news-wire  # `rss` reader
    sketchybar-app-font  # font to show icons in sketchybar
  ];

  github = [  # github-cli extensions
    gh  # `github` cli
    gh-f  # `fzf` extension
    gh-s  # `fzf` extension
    gh-eco  # explore the ecosystem
    gh-dash  # display dashboar with requests and issues
    gh-notify  # display `github` notifications
    gh-markdown-preview  # `markdown` preview
    # $ gh extension install mintarchit/gh-contribs
    # gh extension install kawarimidoll/gh-q
    # gh extension install chelnak/gh-changelog
    # gh extension install redraw/gh-install
    # gh extension install korosuke613/gh-user-stars
    # gh changelog	chelnak/gh-changelog	v0.8.0
    # gh contrib	mislav/gh-contrib	9bdc5700
    # gh contribs	mintarchit/gh-contribs	020e01a3
    # gh graph	kawarimidoll/gh-graph	30a1fa20
    # gh i	gennaro-tedesco/gh-i	v0.0.6
    # gh install	redraw/gh-install	cffe5802
    # gh q	kawarimidoll/gh-q	5dc627f3
    # gh user-stars	korosuke613/gh-user-stars	1829ccdb
    # gh userfetch	sheepla/gh-userfetch	9c90b188
  ];

  devops = [  # devops tools and utilities
    # aiws  ai for `aws`
    # sops  # simple and flexible tool for managing secrets
    # tenv # `terraform` manager
    # ttop  # `top` like system monitoring tool
    # damon  # `tui` for `nomad`
    # vault  # tool for managing secrets
    # s-tui  # stress-terminal `tui` monitoring tool
    # s5cmd  # parallel `s3` and local filesystem execution tool
    # tfsec  # `terraform` security linter
    # thokr  # typing `tui` with visualized results and historical logging
    # trivy  # vulnerability scanner for containers
    # tsung  # benchmark framework for various protocols
    # packer  # create computer images
    # tflint  # `terraform` linter
    # wander  # `tui` for `nomad`
    # ollama  # run language models locally
    # ansible  # simple automation
    # awscli2  # `aws` `cli`
    # kubectx  # tool to switch between contexts
    # vagrant  # build complete development environments
    # molecule  # `ansible` test framework
    # sniffnet  # monitor your Internet traffic
    # aws-vault  # get `aws` credentials
    # infracost  # cloud cost estimates for `terraform`
    # terramate  # code generation, stacks, orchestration, change detection, data sharing and more to `terraform`
    # terrascan  #  `terraform` security linter
    # vault-env  # run processes with secrets from `vault`
    # opensnitch # application firewall
    # ripsecrets  # tool to prevent committing secret keys
    # openapi-tui  #  browse and run `apis` defined with `openapi`
    # noseyparker  # secret finder
    # terracognita  # `terraform` state importer
    # terraform-ls  # `terraform` language server
    # vault-medusa # tool for importing and exporting `vault` secrets
    # terraform-docs  # `terraform` document generator
    # ansible-language-server  # `ansible` language server

    k9s # `tui` for `k8s`
    mtr  # combines the functionality of the `traceroute` and `ping`
    bmon  # network bandwith monitor
    btop  # `top` alternative
    eget  # install pre-built binaries from `github`
    sshs # `tui` for ssh
    dogdns  # `dig` alternative
    vegeta  # versatile `http` load testing tool
    kubectl  # `cli` for `k8s`
    unbound  # validating, recursive, caching `dns` resolver
    sshpass  # `ssh` non-interactive authentication
    gitleaks  # scan `git` repos for secrets
    hadolint  # `docker` file linter
    aws-gate  # `aws` client manager fort `ssm`
    minikube # run `k8s` locally
    hyperfine  # `cli` benchmark tools
    termshark  # `tui` for `wireshark-cli`
    osv-scanner # `osv` for scanning vulnerabilities
    ansible-lint  # `ansible` linter
    bfg-repo-cleaner  # `git` repository cleaner
    git-repo-updater  # update multiple `git` repositories
    certificate-ripper  # `cli` tool to extract server certificates
  ];

  browsers = [  # web browsers
    # floorp  # privacy focused firefox fork
    # firefox  # web browser
    # tor-browser  # anonymous browser fork of firefox
    # onionshare-gui  # anonymously send and receive files
    # ungoogled-chromium  # privacy focused fork of chromium
  ];

  meetings = [  # meeting programs and utilities
    # teams  # microsoft chat application
    # zoom-us  # video conference application
    # jitsi-meet  # video conference application
  ];

  messaging = [
    # signal-desktop  # privacy focused messaging application

    # whatsgo  # `whatsapp` client `tui`
    # discordo  # `tui` for `discord`

    signal-cli  # `cli` for `signal`
  ];

  all = py ++ dev ++ macos ++ github ++ devops ++ browsers ++ meetings ++ messaging;

}
