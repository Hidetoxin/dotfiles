{pkgs, ...}: with pkgs;

rec {

  np =[
    mdx  # application for downloading manga from the `mangadex` 
    gotz  #  timezone info tool
    kalc  # `cli` advanced calculator
    tget  # torrent downloader
    nyaa  # anime torrent `tui`
    jalm  # generate generate progress bar form `cron` expressions
    play  # `tui` playground for your favorite programs, such as `grep`, `sed` and `awk`
    mdtt  # edit `markdown` tables
    vial  # a `qmk` fork
    vops  # `vault` cluster management tool
    flawz  # `tui` for browsing the security vulnerabilities
    tlock  # store and manage your authentication tokens
    portr  # expose local `http`, `tcp` or `websocket` connections to the public internet
    upnup  # generates a license file in the current working directory
    artty  # `art` for your `tty`
    avail  # find available times between all your calendars
    enola  # `sherlock` alternative
    moulti  # collapse script outputs
    rucola  # `markdown` note manager
    basilk  # `tui` manage your tasks with minimal `kanban` logic
    haylxon  # take screenshots of webpages
    mintaka  # runs long-running processes in parallel
    posting  # `postman` like `tui`
    durdraw  # `tui` `ascii`, `unicode` and `ansi` art editor
    buttery  # generates continuous `gif` loops
    toolong  # view, tail, merge, and search log files
    talecast  # podcast manager
    carbonyl  # `tui` chromium based browser
    rainfrog  # `tui` for `postgressql` queries
    llm-term  # generates and executes terminal commands using `openai` language models or local `ollama`
    opensnitch # application firewall
    packemon  # `tui` tool for generating packets of arbitrary input and monitoring
    terramaid  # creating mermaid diagrams from `terraform`
    procfusion  # process manager for your `docker` images
    rclone-tui  # `tui` for `rclone`
    beachpatrol  # launch a browser which can be controlled externally through `playwright`
    tinycare-tui  # `tui` dashboard
    config-file-validator  # validate different configuration file types

    wut  # explain last command output with `ai`
    bmm  # `buku` alternative
    gust  # `tui` for weather
    qman  # `man` alternative
    keyb  # hotkey cheatsheet
    crib  # hotkey cheatsheet
    volgo  # manage volume from the `cli`
    mynav  # project navigation integrated with `tmux`
    danzo  # `http` downloader
    vectro  # rpn calculator
    termfu  # `tui` for debugging
    toutui  # `tui` for audiobooks
    feather  # `tui` for `youtube` music
    lazyorg  # `tui` for calendars
    parllama  # `tui` for using local or web `ai`
    dotenvhub  #  `tui` for managing `env` files
    tuitorial  #  `tui` for writing tutorials on the terminal
    reddit-tui  # `tui` for `reddit`

    # gh q kawarimidoll/gh-q
    # gh i gennaro-tedesco/gh-i
    # gh contrib mislav/gh-contrib
    # gh install redraw/gh-install
    # gh graph kawarimidoll/gh-graph
    # gh changelog chelnak/gh-changelog
    # gh userfetch sheepla/gh-userfetch
    # gh contribs mintarchit/gh-contribs
    # gh extension install kawarimidoll/gh-q
    # gh user-stars korosuke613/gh-user-stars
    # gh extension install redraw/gh-install
    # gh extension install chelnak/gh-changelog
    # gh extension install mintarchit/gh-contribs
    # gh extension install korosuke613/gh-user-stars
  ];  # np

  na = [
    gtt  # `tui` for translation
    lua  # scripting language
    pet  # `cli` snippets manager
    prs  # `pass` alternative
    w3m  # `cli` browser
    wtf  # `tui` dashboard
    buku  # `cli` bookmark manager
    khal  #  `cli` calendar application
    mods  # `ai` on the `cli`
    pipx  # `python` isolated script runner
    qrcp  # transfer files via `qr` by `wifi`
    sesh  # session manager for `tmux`
    smug  # `tmux` session manager
    ttyd  # share terminal over the web
    yank  # yank terminal output
    atuin  # `history` alternative
    dooit  # `tui` todo manager
    pueue  # daemon for managing long running commands
    pyenv  # `python`` manager
    aichat # `cli` ai assistant
    dogdns  # `dig` alternative
    jobber  # `crk`, `sed`, `cut`, `join`, and `sort` for data formats such as `csv`, `tsv`, `json`, `json lines`, and positionally-indexed.
    nsnake  # snake game
    zellij  # `tmux` alternative
    calcure  # `tui` calendar
    cmatrix  # simulates the matrix theme
    ltex-ls  # `latex` language server
    the-way  #  `cli` snipet manager
    youplot  # `cli` for drawing plots
    neverest  # sync, backup and restore emails
    treefmt2  # one `cli` to format the code tree
    bluetuith  # `tui` bluetooth connection manager
    projectable # `tui` manager for projects
    cmd-wrapped  # view your `shell` history stats
    asciiquarium  # render aquarium in `acii`
    taskwarrior3  # `cli` for managing todo lists
    ungoogled-chromium  # privacy focused fork of `chromium`
    python312Packages.howdoi  # coding answers in the terminal
  ];  # na

  ghe = [  # github-cli extensions
    gh  # `github` cli
    gh-f  # `fzf` extension
    gh-s  # `fzf` extension
    gh-cal  # contributions calender terminal viewer
    gh-eco  # explore the ecosystem
    gh-pos  # safely clean up your local branches
    gh-dash  # display dashboar with requests and issues
    gh-notify  # display `github` notifications
    gh-copilot  # use `copilot` on the `cli`
    gh-markdown-preview  # `markdown` preview
  ];  # gh

  fun = [  # fun utilities
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

  cli = [
    fd  # `find` command alternative
    fq  # `jq` for binaries
    fx  # terminal json viewr
    jq  # `json` processor
    nb # `cli` note taker
    sd  # `sed`alternative
    sl  # `ls` mispelled for fun
    xh  # tool for `http` requests
    yq  # `yaml` processor

    age  # `gpg` alternative
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
    mtr  # combines the functionality of the `traceroute` and `ping`
    nap  # `tui` for code snippets
    vhs  # generate terminal `gif`
    viu  # `imgcat` alternative
    xan  # `cli` for `csv` files
    zsh  # the zshell

    bash  # bourne again shell
    btop  # `top` alternative
    ddgr  # `ddg` for `cli`
    dust  # `du` command alternative
    entr  # run arbitrary commands
    glow  # render `markdown on the cli`
    gron  # make `json` greppable
    halp  # get help for the `cli`
    just  # save and run project specific commands
    navi  # interactive cheatsheet
    nmap  # network discovery and security
    pass  # `cli` password manager
    sttr  # apply operations on strings
    timg  # terminal image and video viewer
    tmux  # terminal multiplexer
    vale  # syntax linter
    wget  # retrieve files via `https`

    cheat  # `tldr` alternative
    dasel  # `jq` alternative for `csv`, `xml` `json`, `yaml` and `toml`
    delta  # syntax-highlighting pager for git
    doggo  # modern `dig` alternative
    gnupg  # privacy guard
    gping  # `ping alternative`
    helix  # `vim` inspired text editor
    jless  # pager for `json`
    mcfly  # `history` alternative commnand
    p7zip  # `zip` alternative
    procs  # `ps` alternative`
    rsync  # sync local files
    tokei  # check code quickly
    ugrep  # `grep` alternative
    viddy  # `watch` alternative
    vivid  # `LS_COLORS` generator
    ytfzf  # `youtube` video finder
    zinit  # `zinit` plugin manager

    bottom  # `ps` alternative
    catimg  # `cli` image printing
    curlie  # better `curl`
    direnv  # environment manage
    gh-cal  # `github` contributions calender terminal viewer
    gnused  # `gnu`version of sed 
    go-2fa  # `cli` for 2fa
    gowall  # convert a image's color scheme or palette
    harper  # grammar checker `lsp`
    miller  # `aw  # `csv` printer
    neovim  # `vim` alternative
    nomino  # `rename` alternative
    rclone  # sync files across clouds
    rdfind  # find duplicate files bases on content
    rename  # file re-namer
    restic  # backup tool
    rmlint  # rm linter
    slides  # `cli` for creating slides
    yt-dlp  # `youtube` downloader
    zoxide  # `cd` alternative

    chezmoi  # dotfiles manager
    diffnav  # pager based on `delta`
    erdtree  # file-tree visualizer and disk usage analyzer
    gitlint  # `git` linter
    gnumake  # generation of files from source
    mkalias  # package to fix apps not being findable by `spotlight search`
    passage  # `pass` alternative that uses `age` instead of `gpg`
    pdfgrep  # `grep` for `pdf` files
    ripgrep  # `grep` alternative
    sampler  # `tui for `shell` commands
    sshpass  # `ssh` non-interactive authentication
    termscp  # feature rich terminal file transfer

    tealdeer  # `tldr` alternative
    tomato-c  # pomodoro timer
    visidata  # exploring and arranging tabular data 
    yamllint  # `yaml` linter

    mcfly-fzf  # `history` alternative 
    xdg-ninja  # check your home for `xdg` format
    watchexec  # `entr` alternative

    circumflex  # browsing `hacker news` in your terminal
    difftastic  # syntax-aware diff
    pre-commit  # instal a pre-commit hook on your `git` repo

    ripgrep-all  # `ripgrep` alternative
    tree-sitter  #  incremental parser library

    code-minimap  # minimap renderer
    pay-respects  # corrects mispelled commands

    # bitwarden-cli  # `cli` for `bitwarden`
    hl-log-viewer  # make logs readable
    speedtest-cli  # check your internet speed

    universal-ctags  # fast source code browsing

    bat-extras.prettybat  # helper scripts for `bat`

    passExtensions.pass-otp  # add `otp` functionality to `pass`
  ];  # cli

  tui = [
    up  # `tui` for pipes
    tig  # `tui` for `git`
    sshs # `tui` for ssh
    yazi  # `tui` file manager
    docfd  # `tui` multiline fuzzy document finder
    scooter  # `tui` for find and replace
    gpg-tui  # `tui` for `gpg`
    lazygit  # `git` tui
    invidtui  # `tui` for `invidious`
    frogmouth  # `tui` for viewing `markdown`
    presenterm  # `tui` for presenting on the terminal
    twitch-tui # `twitch` chat in the terminal
    tidy-viewer  # board  `tui`
    youtube-tui  #  `tui` for `youtube`
  ];  # tuis

  dev = [  # development tools and utilities
    uv  # `python` package installer
    air  # `live reload of `go` applications
    atac  # `postman` like `tui`
    hugo  # a static website generator
    vial  # a `qmk` fork
    typst # `latex` alternative
    runme  # run commands inside your documents
    gopls  # `go` language server
    kondo  # clean project files
    shfmt  # shell parser and formatter
    jq-lsp  # `jq` language server
    pandoc  # document file converter
    pyright  # `python` type checker
    graphviz  # graph vizualization tools
    just-lsp  # `just` language server
    codespell  # spell linter
    gowitness  # website screenshot utility
    shellcheck  # shell script analysis tool
    gitmoji-cli # using emojis on commit messages
    imagemagick  # edit images on the `cli`
    lua-language-server  # `lua` language server
    yaml-language-server # `yaml` language server
    bash-language-server  # `bash` language server
  ];

  gui = [
    espanso  # text expander
    wezterm  # terminal emulator written in `rust`
    vscodium  # privacy focused fork of `vscode`
  ];  # guis

  all = cli ++ tui ++ dev ++ fun ++ ghe ++ gui;

}  # rec
