{pkgs, ...}: with pkgs;

rec {

  # Tooling and extension for working with `github` from the `cli`
  gh-pkgs = [  # `github` tooling
    gh  # `github` cli
    act  # run your `github` actions locally
    eget  # install pre-built binaries from `github`
    gh-f  # `fzf` extension
    gh-s  # `fzf` extension
    gh-cal  # `github` contributions calender terminal viewer
    gh-eco  # explore the ecosystem
    wrkflw  # `tui` for running local `github` workflows
    zizmor  # tool for finding security issues in `github` actions setups
    ghalint  # `github` actions linter for security best practice
    gh-dash  # display dashboar with requests and issues
    ghfetch  #  `github` fetch information
    gama-tui # `tui` for running `github` workflows
    watchgha  # live display of current `github` action runs
    gh-notify  # display `github` notifications
    actionlint  # linter for `github` workflows
    gh-contribs  # `github` contribution graph `cli`
    gh-markdown-preview  # `markdown` preview
  ];

  # Tooling `cli` utilities for fun
  fun-pkgs = [
    sl  # `ls` mispelled for fun
    neo  # simulates the matrix theme
    lavat  # lava lamp simulation 
    lolcat  # colorize your output
    krabby  # print pokemon sprites in your terminal
    # nsnake  # snake game
    cmatrix  # simulates the matrix theme
    sssnake  # snake game that plays itself
    typioca  # cozy typing speed tester in terminal
    charasay  #  `cowsay` alternative
    pipes-rs  # animated pipes screensaver
    fastfetch  # `neofetch` alternative
    pokemonsay  # `cowsay` alternative
    # asciiquarium  # render aquarium in `acii`
    gambit-chess  # play chess
    asciiquarium-transparent  # render aquarium in `ascii`
    dwt1-shell-color-scripts  # collection of `shell` color scripts collected by `dt`
  ];

  # Tooling and extensions for working with `git`
  git-pkgs = [  # tooling for `git`
    ghq  # `git` repo manager
    git  # version control manager
    tig  # `tui` for `git`
    delta  # syntax-highlighting pager for git
    serie  # rich `git` commit graph
    debase  # `tui` for drag-and-drop manipulation of `git` commits
    lazygit  # `git` tui
    diffnav  # pager based on `delta`
    gitlint  # `git` linter
    gitleaks  # scan `git` repos for secrets
    onefetch  # `git` repo summary
    commitizen  # create comitting rules
    difftastic  # syntax-aware diff
    pre-commit  # instal a pre-commit hook on your `git` repo
    gitmoji-cli # using emojis on commit messages
    bfg-repo-cleaner  # `git` repository cleaner
    git-repo-updater  # update multiple `git` repositories
  ];

  # Tooling for working with the `lua` scripting language
  lua-pkgs = [  # `lua` tooling
    # lua  # scripting language
    stylua  # `lua` formatter
    lua-language-server  # `lua` language server
  ];

  # Tooling for working with `csv` files
  csv-pkgs = [
    dasel  # `jq` alternative for `csv`, `xml` `json`, `yaml` and `toml`
    tabview  # `tui` for visualizing `csv` files
    tidy-viewer  # print formatted `csv`, `ipc` `parquet` and `feather`
  ];

  # Tooling for working with the `nix` language
  nix-pkgs = [  # `nix` tooling
    nil  # `nix` language server
    nixd  # `nix` language server
    nix-search-cli  # `cli` for searching packages on `search.nixos.org`
  ];

  # Tooling for working on web applications
  web-pkgs = [
    xh  # tool for `http` requests
    bmm  # `buku` alternative
    # w3m  # `cli` browser
    atac  # `postman` like `tui`
    # buku  # `cli` bookmark manager
    curl  # run `http` requests from the `cli`
    hurl  # run `http` requests from a text file
    curlie  # better `curl`
    posting  # `postman` like `tui`
    openapi-tui  #  browse and run `apis` defined with `openapi`
    # ungoogled-chromium  # privacy focused fork of `chromium`
  ];

  # Tooling for working with `bash` scripts
  bash-pkgs = [
    up  # `tui` for pipes
    bash  # bourne again shell
    shfmt  # shell parser and formatter
    shellspec  # `bdd` unit testing framework for all `posix` shells
    shellcheck  # shell script analysis tool
    bash-language-server  # `bash` language server
  ];

  # Tooling for my core `cli` workflow
  core-pkgs = [
    fd  # `find` command alternative
    fq  # `jq` for binaries
    sd  # `sed`alternative
    bat  # `cat` alternative
    eza  # `ls` command alternative
    fzf  # fuzzy finder
    grc  # text colourizer
    sig  # interactive `grep` for streaming
    zsh  # the zshell
    halp  # get help for the `cli`
    mise  # front-end to your dev env
    navi  # interactive cheatsheet
    pass  # `cli` password manager
    play  # `tui` playground for your favorite programs, such as `grep`, `sed` and `awk`
    wget  # retrieve files via `https`
    sttr  # apply operations on strings
    tmux  # terminal multiplexer
    yazi  # `tui` file manager
    cheat  # `tldr` alternative
    gnupg  # privacy guard
    mcfly  # `history` alternative commnand
    p7zip  # `zip` alternative
    ugrep  # `grep` alternative
    viddy  # `watch` alternative
    vivid  # `LS_COLORS` generator
    zinit  # `zsh` plugin manager
    direnv  # environment manage
    gnused  # `gnu`version of sed 
    neovim  # `vim` alternative
    nomino  # `rename` alternative
    rename  # file re-namer
    rmlint  # `rm` linter
    zoxide  # `cd` alternative
    asdf-vm  # extendable version manager with support for `ruby`, `node.js`, `erlang` & more
    chezmoi  # dotfiles manager
    erdtree  # file-tree visualizer and disk usage analyzer
    mkalias  # package to fix apps not being findable by `spotlight search`
    gpg-tui  # `tui` for `gpg`
    ripgrep  # `grep` alternative
    scooter  # `tui` for find and replace
    ast-grep  # tool for code structural search, lint, and rewriting
    dos2unix  # convert text files with `dos` or `mac` line breaks to `unix`
    rich-cli  # `cli` interface for `rich`
    tealdeer  # `tldr` alternative
    mcfly-fzf  # `history` alternative 
    xdg-ninja  # check your home for `xdg` format
    television  # fast general purpose fuzzy finder `tui`
    cmd-wrapped  # view your `shell` history stats
    tree-sitter  #  incremental parser library
    ripgrep-all  # `ripgrep` alternative
    pay-respects  # corrects mispelled commands
    bitwarden-cli  # `cli` for `bitwarden`
    yaziPlugins.git  # show the status of `git` in `yazi`
    yaziPlugins.diff  # `diff` the selected file with the hovered file in `yazi`
    yaziPlugins.glow  # show `glow` preview in `yazi`
    yaziPlugins.sudo  # call `sudo` in `yazi`
    yaziPlugins.chmod  # execute `chmod` on the selected files in `yazi`
    yaziPlugins.miller  # execute `miller` in `yazi`
    yaziPlugins.mactag  # show `macos` on the selected files in `yazi`
    yaziPlugins.lazygit  # execute `lazygit` in `yazi`
    bat-extras.prettybat  # helper scripts for `bat`
    yaziPlugins.full-border # show a border in `yazi`
    passExtensions.pass-otp  # `otp` extension for `pass`
    yaziPlugins.rich-preview  # use `rich-cli` for previewing files in `yazi`
    passExtensions.pass-import  # import any password manager secrets to `pass`
    yaziPlugins.relative-motions  # use`vim` relative motions
  ];

  # Tooling for working with documents
  docs-pkgs = [
    tdf  # `tui` based `pdf` viewer
    xan  # `cli` for `csv` files
    doxx  # view `docx` files on the `cli`
    docfd  # `tui` multiline fuzzy document finder
    xleak  # view `xlsx` files on the `cli`
    mdbook  # create books from `markdown`
    mkdocs  # documentation with `markdown`
    pandoc  # document file converter
    slides  # `cli` for creating slides
    pdfgrep  # `grep` for `pdf` files
    visidata  # exploring and arranging tabular data
    presenterm  # `tui` for presenting on the terminal
  ];

  # Tooling for working with `justfile`'s
  just-pkgs = [  # `shell` tooling
    just  # save and run project specific commands
    just-lsp  # `just` language server
  ];

  # Tooling for working with `json` files
  json-pkgs = [
    fx  # terminal `json` viewer
    jq  # `json` processor
    ijq  # `tui` for `jq`
    jnv  #  `tui` for `jq`
    jqp  # `tui` for `jq`
    gron  # make `json` greppable
    otree  # tool to view objects (`json`, `yaml`, `toml`, `xml`) in `tui` tree widget
    jless  # pager for `json`
    miller  # like `awk`, `sed`, `cut`, `join`, and `sort` for `csv`, `tsv`, `toml`, `json`
    jq-lsp  # `jq` language server
  ];

  # Tooling for working with `toml` files
  toml-pkgs = [
    tombi  # `toml` formatter / linter / language server
  ];

  yaml-pkgs = [
    yq  # `yaml` processor
    yamlfix  # `yaml` formatter that keeps your comments
    yamlfmt  # `yaml` formatter
    yamllint  # `yaml` linter
    yaml2json  # convert `yaml` to `json`
    yaml-language-server # `yaml` language server
  ];

  # Tooling for writing and editing notes
  notes-pkgs = [
    # nb  # notebook for the `cli`
    rucola  # `markdown` note manager
  ];

  # Tooling for `todo` items and tasks
  todos-pkgs = [
    # khal  #  `cli` calendar application
    dooit  # `tui` todo manager
    basilk  # `tui` manage your tasks with minimal `kanban` logic
    # sampler  # `tui for `shell` commands
    # wtfutil  # `tui` dashboard
    # calcure  # `tui` calendar
    # jiratui  # `tui` for `jira`
    tomato-c  # pomodoro timer
    # jira-cli-go  # `cli` client for `jira`
    dooit-extras  # extra utilities for `dooit`
    # taskwarrior3  # `cli` for managing todo lists
    # taskwarrior-tui  # `tui` for `taskwarrior`
  ];

  # Tooling for working with the `typst` language
  typst-pkgs = [
    typst # `latex` alternative
    typstyle  # formatter for `typst`
    # typst-lsp  # `typst` language server
    typst-live  # hot reloading for your `typst` files
  ];

  backup-pkgs = [
    qrcp  # transfer files via `qr` by `wifi`
    rsync  # sync local files
    rdfind  # find duplicate files bases on content
    rclone  # sync files across clouds
    restic  # backup tool
    termscp  # feature rich terminal file transfer
    # neverest  # sync, backup and restore emails
  ];

  # Tooling for coding
  coding-pkgs = [
    nap  # `tui` for code snippets
    pet  # `cli` snippets manager
    entr  # run arbitrary commands
    # helix  # `vim` inspired text editor
    kondo  # clean project files
    tokei  # check code quickly
    runme  # run commands inside your documents
    espanso  # text expander `gui`
    treefmt  # one `cli` to format the code tree
    wezterm  # `gui` terminal emulator written in `rust`
    youplot  # `cli` for drawing plots
    # vscodium  # `gui` privacy focused fork of `vscode`
    regex-tui  # `tui` for testing `regex` queries
    watchexec  # `entr` alternative
    # ghostty-bin  # `gui` terminal emulator written in `zig`
    projectable # `tui` manager for projects
    code-minimap  # minimap renderer
    universal-ctags  # fast source code browsing
  ];

  # Tooling for editing and creatign images
  images-pkgs = [
    vhs  # generate terminal `gif`
    viu  # `imgcat` alternative
    # jp2a  # convert `jpg` images to `ascii` # FIX: package broken
    timg  # terminal image and video viewer
    catimg  # `cli` image printing
    gowall  # convert a image's color scheme or palette
    graphviz  # graph vizualization tools
    imagemagick  # edit images on the `cli`
  ];

  # Tooling for debug and trouble-shoot networking issues
  network-pkgs = [
    mtr  # combines the functionality of the `traceroute` and `ping`
    bmon  # network bandwith monitor
    nmap  # network discovery and security
    doggo  # modern `dig` alternative
    gping  # `ping alternative`
    ipcalc  # simple `ip` calculator
    tshark  # `cli` for `wireshark`
    unbound  # validating, recursive, caching `dns` resolver
    # sniffnet  # monitor your internet traffic `gui`
    termshark  # `tui` for `wireshark-cli`
    # opensnitch # application firewall
    speedtest-cli  # check your internet speed
  ];

  # Tooling for visiting the internet
  internet-pkgs = [
    # gtt  # `tui` for translation FIX: `alsa` not available on `darwin`
    ddgr  # `ddg` for `cli`
    haylxon  # take screenshots of webpages
    gowitness  # website screenshot utility
    circumflex  # browsing `hacker news` in your terminal
    python312Packages.howdoi  # coding answers in the terminal
  ];

  # Tooling for working with `markdown` files
  markdown-pkgs = [
    glow  # render `markdown on the cli`
    mado  # `markdown` linter
    mdcat  # `cat` for `markdown`
    rumdl  # `markdown` linter
    treemd  # `tui`/`cli` `markdown` navigator with tree-based structural navigation
    frogmouth  # `tui` for viewing `markdown`
    mermaid-cli  # generation of diagrams from text in a similar manner as `markdown`
    # mermaid-filter  # `pandoc` filter for creating diagrams in `markdown` docs FIX: not available on `darwin`
  ];

  # Tooling for linting and non-scpecific language `lsp`'s
  spelling-pkgs = [  # `lsp` tooling
    vale  # syntax linter
    harper  # grammar checker `lsp`
    textlint  # linter for natural language
    codespell  # spell linter
  ];

  # Tooling for streaming content
  streaming-pkgs = [
    ytfzf  # `youtube` video finder
    yt-dlp  # `youtube` downloader
    invidtui  # `tui` for `invidious`
    twitch-dl  # `cli` tool for downloading videos from `twitch`
    twitch-tui # `twitch` chat in the terminal
    youtube-tui  #  `tui` for `youtube`
  ];

  encrypting-pkgs = [
    age  # `gpg` alternative
    prs  # `pass` alternative
    sops  # simple and flexible tool for managing secrets
    tlock  # store and manage your authentication tokens `tui`
    go-2fa  # `cli` for 2fa
    passage  # `pass` alternative that uses `age` instead of `gpg`
  ];

  # Tooling for host monitoring
  monitoring-pkgs = [
    dua  # tool for disk usage of directories
    duf  # disk usage / free utility
    btop  # `top` alternative
    dust  # `du` command alternative
    # ttop  # `top` like system monitoring tool
    procs  # `ps` alternative`
    bottom  # `ps` alternative
  ];

  # Add mpty arrays for easily commenting the packages that I don't need
  all = []
    ++ gh-pkgs
    ++ fun-pkgs
    ++ git-pkgs
    ++ lua-pkgs
    ++ csv-pkgs
    ++ nix-pkgs
    ++ web-pkgs
    ++ bash-pkgs
    ++ core-pkgs
    ++ docs-pkgs
    ++ just-pkgs
    ++ json-pkgs
    ++ toml-pkgs
    ++ yaml-pkgs
    ++ notes-pkgs
    ++ todos-pkgs
    ++ typst-pkgs
    ++ backup-pkgs
    ++ coding-pkgs
    ++ images-pkgs
    ++ network-pkgs
    ++ internet-pkgs
    ++ markdown-pkgs
    ++ spelling-pkgs
    ++ streaming-pkgs
     # ++ encrypting-pkgs
    ++ monitoring-pkgs
    ++ [];

}  # rec

# vim: et ts=2 sts=2 sw=2 syntax=nix
