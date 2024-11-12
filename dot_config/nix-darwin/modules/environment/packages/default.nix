{pkgs, ...}: with pkgs;
rec {
  all = [

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
    # whatsgo  # `whatsapp` client `tui`
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

    # $ gh extension install mintarchit/gh-contribs
    # gh extension install dlvhdr/gh-dash
    # gh extension install kawarimidoll/gh-q
    # gh extension install gennaro-tedesco/gh-f
    # gh extension install jrnxf/gh-eco
    # gh extension install chelnak/gh-changelog
    # gh extension install yusukebe/gh-markdown-preview
    # gh extension install redraw/gh-install
    # gh extension install korosuke613/gh-user-stars
    # gh changelog	chelnak/gh-changelog	v0.8.0
    # gh contrib	mislav/gh-contrib	9bdc5700
    # gh contribs	mintarchit/gh-contribs	020e01a3
    # gh dash	dlvhdr/gh-dash	v3.0.0
    # gh eco	coloradocolby/gh-eco	v0.1.0
    # gh graph	kawarimidoll/gh-graph	30a1fa20
    # gh i	gennaro-tedesco/gh-i	v0.0.6
    # gh install	redraw/gh-install	cffe5802
    # gh notify	meiji163/gh-notify	eef345c4
    # gh q	kawarimidoll/gh-q	5dc627f3
    # gh s	gennaro-tedesco/gh-s	v0.0.6
    # gh user-stars	korosuke613/gh-user-stars	1829ccdb
    # gh userfetch	sheepla/gh-userfetch	9c90b188

    # Command line applications
    # nb `cli` note taker
    # tt  # typing test
    fd  # `find` command alternative
    fq  # `jq` for binaries
    fx  # terminal json viewr
    gh  # `github` cli
    jq  # `json` processor
    sd  # `sed`alternative
    sl  # `ls` mispelled for fun
    up  # `tui` for pipes
    xh  # tool for `http` requests

    # air  # `live reload of `go` applications
    # gtt  # `tui` for translation
    # pet `cli` snippets manager
    # prs  # `pass` alternative
    # w3m  # `cli` browser
    # wtf  # `tui` dashboard
    # xsv  # `cli` for `csv` files
    bat  # `cat` alternative
    dua  # tool for disk usage of directories
    duf  # disk usage / free utility
    # epy  # ebook reader
    eza  # `ls` command alternative
    fzf  # fuzzy finder
    ghq  # git repo manager
    git  # version control manager
    grc  # text colourizer
    ijq  # `tui` for `jq`
    jnv  #  `tui` for `jq`
    jqp  # `tui` for `jq`
    k9s # `tui` for `k8s`
    lua  # scripting language
    mpd  # `daemon` por playing music
    mpv  # `cli` media player
    mtr  # combines the functionality of the `traceroute` and `ping`
    nap  # `tui` for code snippets
    neo  # simulates the matrix theme
    tig  # `tui` for `git`
    vhs  # generate terminal `gif`
    viu  # `imgcat` alternative
    zsh  # the zshell

    # aiws  ai for `aws`
    # bash  # bourne again shell
    # buku  # `cli` bookmark manager
    # cava  # `tui` audio visualizer
    # jp2a  # convert `jpg` images to `ascii`
    # khal  #  `cli` calendar application
    # pipx  # `python` isolated script runner
    # qrcp  # transfer files via `qr` by `wifi`
    # sops  # simple and flexible tool for managing secrets
    # tenv # `terraform` manager
    # ttop  # `top` like system monitoring tool
    # ttyd  # share terminal over the web
    atac  # `postman` like `tui`
    bmon  # network bandwith monitor
    btop  # `top` alternative
    ddgr  # `ddg` for `cli`
    dust  # `du` command alternative
    eget  # install pre-built binaries from `github`
    entr  # run arbitrary commands
    glow  # render `markdown on the cli`
    gron  # make `json` greppable
    halp  # get help for the `cli`
    hugo  # a static website generator
    just  # save and run project specific commands
    lnav  # log viewer
    mods  # `ai` on the `cli`
    navi  # interactive cheatsheet
    nmap  # network discovery and security
    pass  # `cli` password manager
    sesh  # session manager for `tmux`
    smug  # `tmux` session manager
    sshs # `tui` for ssh
    sttr  # apply operations on strings
    timg  # terminal image and video viewer
    tmux  # terminal multiplexer
    wget  # retrieve files via `https`
    yank  # yank terminal output
    yazi  # `tui` file manager

    # atuin  # `history` alternative
    # damon  # `tui` for `nomad`
    # docfd  # `tui` multiline fuzzy document finder
    # dooit  # `tui` todo manager
    # helix  # `vim` inspired text editor
    # runme  # run commands inside your documents
    # s-tui  # stress-terminal `tui` monitoring tool
    # s5cmd  # parallel `s3` and local filesystem execution tool
    # tfsec  # `terraform` security linter
    # thokr  # typing `tui` with visualized results and historical logging
    # trivy  # vulnerability scanner for containers
    # tsung  # benchmark framework for various protocols
    # vault  # tool for managing secrets
    cheat  # `tldr` alternative
    dasel  # `jq` alternative for `csv`, `xml` `json`, `yaml` and `toml`
    delta  # syntax-highlighting pager for git
    gh-cal  # `github` contributions calender terminal viewer
    gnupg  # privacy guard
    gopls  # `go` language server
    gowall # convert a image's color scheme or palette
    gping  # `ping alternative`
    jless  # pager for `json`
    kondo  # clean project files
    krabby  # print pokemon sprites in your terminal
    lavat  # lava lamp simulation 
    p7zip  # `zip` alternative
    procs  # `ps` alternative`
    pueue  # daemon for managing long running commands
    pyenv  # `python`` manager
    rsync  # sync local files
    tokei  # check code quickly
    tshark  # `cli` for `wireshark`
    ugrep  # `grep` alternative
    vegeta  # versatile `http` load testing tool
    viddy  # `watch` alternative
    vivid  # `LS_COLORS` generator
    ytfzf  # `youtube` video finder
    zinit  # `zinit` plugin manager

    # aichat # `cli` ai assistant
    # bandit  # security oriented static analyser for `python`
    # mkdocs  # documentation with `markdown`
    # nodenv  # `node` environment manager
    # nsnake  # snake game
    # ollama  # run language models locally
    # packer  # create computer images
    # slides  # `cli` for creating slides
    # tflint  # `terraform` linter
    # wander  # `tui` for `nomad`
    # zellij  # `tmux` alternative
    bottom  # `ps` alternative
    catimg  # `cli` image printing
    direnv  # environment manage
    dogdns  # `dig` alternative
    gnused  # `gnu`version of sed 
    go-2fa  # `cli` for 2fa
    jobber  # `cron` alternative
    mangal  # `cli` manga downloader
    neovim  # `vim` alternative
    nomino  # `rename` alternative
    pandoc  # document file converter
    rclone  # sync files across clouds
    rdfind  # find duplicate files bases on content
    rename  # file re-namer
    restic  # backup tool
    rmlint  # rm linter
    yt-dlp  # `youtube` downloader
    zoxide  # `cd` alternative

    # ansible  # simple automation
    # awscli2  # `aws` `cli`
    # calcure  # `tui` calendar
    # cmatrix  # simulates the matrix theme
    # kubectx  # tool to switch between contexts
    # pyright  # `python` type checker
    # the-way  #  `cli` snipet manager
    # vagrant  # build complete development environments
    # youplot  # `cli` for drawing plots
    ani-cli  # browse and watch anime
    chezmoi  # dotfiles manager
    erdtree  # file-tree visualizer and disk usage analyzer
    ghfetch  #  `github` fetch information
    gitlint  # `git` linter
    gnumake  # generation of files from source
    gpg-tui  # `tui` for `gpg`
    kubectl  # `cli` for `k8s`
    lazygit  # `git` tui
    lazysql  # `sql` tui
    ltex-ls  # `latex` language server
    mkalias  # package to fix apps not being findable by `spotlight search`
    ncmpcpp  # `tui` client for `mpd`
    pdfgrep  # `grep` for `pdf` files
    ripgrep  # `grep` alternative
    sampler  # `tui for `shell` commands
    sshpass  # `ssh` non-interactive authentication
    sssnake  # snake game that plays itself
    termscp  # feature rich terminal file transfer
    thefuck  # corrects mispelled commands
    typioca  # cozy typing speed tester in terminal
    unbound  # validating, recursive, caching `dns` resolver

    # discordo  # `tui` for `discord`
    # graphviz  # graph vizualization tools
    # molecule  # `ansible` test framework
    # neverest  # sync, backup and restore emails
    # sniffnet  # monitor your Internet traffic
    # visidata  # exploring and arranging tabular data 
    aws-gate  # `aws` client manager fort `ssm`
    charasay  #  `cowsay` alternative
    gitleaks  # scan `git` repos for secrets
    hadolint  # `docker` file linter
    # himalaya  # cli email manager
    invidtui  # `tui` for `invidious`
    minikube # run `k8s` locally
    onefetch  # `git` repo summary
    pipes-rs  # animated pipes screensaver
    # sherlock  # hunt down social media accounts by username across social networks
    tealdeer  # `tldr` alternative
    tomato-c  # pomodoro timer
    treefmt2  # one `cli` to format the code tree

    # aws-vault  # get `aws` credentials
    # bluetuith  # `tui` bluetooth connection manager
    # infracost  # cloud cost estimates for `terraform`
    # terramate  # code generation, stacks, orchestration, change detection, data sharing and more to `terraform`
    # terrascan  #  `terraform` security linter
    # vault-env  # run processes with secrets from `vault`
    # watchexec  # `entr` alternative
    codespell  # spell linter
    fastfetch  # `neofetch` alternative
    gowitness  # website screenshot utility
    hyperfine  # `cli` benchmark tools
    mcfly-fzf # `history` alternative 
    termshark  # `tui` for `wireshark-cli`
    twitch-dl  # `cli` tool for downloading videos from `twitch`
    xdg-ninja  # check your home for `xdg` format

    # opensnitch # application firewall
    # ripsecrets  # tool to prevent committing secret keys
    commitizen  # create comitting rules
    difftastic  # syntax-aware diff
    lazydocker  # `docker` tui
    pokemonsay  # `cowsay` alternative
    signal-cli  # `cli` for `signal`
    twitch-tui # `twitch` chat in the terminal

    # terracognita  # `terraform` state importer
    # terraform-ls  # `terraform` language server
    # vault-medusa # tool for importing and exporting `vault` secrets
    cmd-wrapped  # view your `shell` history stats
    gambit-chess  # play chess
    # gitmoji-cli # using emojis on commit messages
    imagemagick  # edit images on the `cli`
    projectable # `tui` manager for projects
    ripgrep-all  # `ripgrep` alternative
    tidy-viewer  # `csv` printer
    tree-sitter  #  incremental parser library
    youtube-tui  #  `tui` for `youtube`

    # noseyparker  # secret finder
    # openapi-tui  #  browse and run `apis` defined with `openapi`
    osv-scanner # `osv` for scanning vulnerabilities

    # asciiquarium  # render aquarium in `acii`
    ansible-lint  # `ansible` linter
    code-minimap  # minimap renderer
    taskwarrior3  # `cli` for managing todo lists

    # bitwarden-cli  # `cli` for `bitwarden`
    speedtest-cli  # check your internet spedd

    # terraform-docs  # `terraform` document generator

    jellyfin-ffmpeg  # video convertion tool
    universal-ctags  # fast source code browsing

    bfg-repo-cleaner  # `git` repository cleaner
    git-repo-updater  # updat multiple `git` repositories

    certificate-ripper  # `cli` tool to extract server certificates

    lua-language-server  # `lua` language server


    # bash-language-server  # `bash` language server
    bat-extras.prettybat  # helper scripts for `bat`
    yaml-language-server # `yaml` language server
    # ansible-language-server  # `ansible` language server

    asciiquarium-transparent  # render aquarium in `ascii`
    dwt1-shell-color-scripts  # collection of `shell` color scripts collected by `dt`
    # python312Packages.howdoi  # coding answers in the terminal

    # Graphical interface applications
    # rar  # un-archiver
    # teams  # microsoft chat application
    # kitty  # terminal emulator with graphic support
    # krita  # painting application
    # steam  # game manager
    # floorp  # privacy focused firefox fork
    # zoom-us  # video conference applicationl
    # wezterm  # `gpu` accelerated terminal emulator
    # firefox  # web browser
    # freetube  # `youtube` privacy frontend
    # vscodium  # `vscode` without telemetry
    # yacreader  # comicbook reader
    # jitsi-meet  # video conference applicationl
    # tor-browser  # anonymous browser fork of firefox
    # standardnotes  # privacy focused notes application
    # onionshare-gui  # anonymously send and receive files
    # signal-desktop  # privacy focused messaging application
    # ungoogled-chromium  # privacy focused fork of chromium

  ];
}
