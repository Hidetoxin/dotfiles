# Setup by looking at:
# - https://github.com/LnL7/nix-darwin
# - https://github.com/zhaofengli/nix-homebrew
# - https://www.youtube.com/watch?v=Z8BL8mdzWHI
# - https://gist.github.com/elliottminns/211ef645ebd484eb9a5228570bb60ec3

# Run this file with the below commnad:
# $ nix run nix-darwin --experimental-features 'nix-command flakes'  -- switch --flake ~/.config/nix-darwin#macbookair
# $ darwin-rebuild switch --flake ~/.config/nix-darwin#hidetoxin
{
  description = "Hidetoxin's Darwin system flake";

  inputs = {

    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:lnl7/nix-darwin";
    nix-homebrew.url = "github:zhaofengli/nix-homebrew";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";

    homebrew-core = {
      url = "github:homebrew/homebrew-core";
      flake = false;
    };

    # homebrew-cask = {
    #   url = "github:homebrew/homebrew-cask";
    #   flake = false;
    # };

    # dhth/tap/mult
    # k3ii/tap/revq
    # ynqa/tap/sigrs
    # dlvhdr/formulae/diffnav
    # felixkratz/formulae/svim
    # felixkratz/formulae/borders
    # felixkratz/formulae/sketchybar
    # applegamer22/tap/cocainate  # keyboard-driven task manager
    # abhimanyu003/sttr
    # applegamer22/tap
    # charmbracelet/tap
    # common-fate/granted
    # dhth/tap
    # dlvhdr/formulae
    # dzfrias/formulae
    # felixkratz/formulae
    # homebrew/bundle
    # homebrew/cask
    # homebrew/cask-drivers
    # homebrew/cask-fonts
    # homebrew/core
    # homebrew/services
    # humanlogio/tap
    # huseyinbabal/tap
    # joshmedeski/sesh
    # julien-cpsn/atac
    # k3ii/tap
    # kardolus/chatgpt-cli
    # koekeishiya/formulae
    # lihaoyun6/tap
    # metafates/mangal
    # mrkai77/cask
    # nikitabobko/tap
    # noahgorstein/tap
    # orangekame3/tap
    # ryu0118/kusa
    # ynqa/tap

    # brew install dhth/tap/omm  # 
    # brew install dhth/tap/prs  # `pr` manager
    # brew install dhth/tap/hours  # `cli`time tracker
    # brew tap humanlogio/homebrew-tap; brew install humanlog  # pretty logs
    # brew tap loteoo/formulas; brew install ks  # uses the native `keychain` tools already available on `macos` systems.
    # brew tap santiago-labs/telophasecli; brew install telophasecli  #  manages your `aws` organization as `iac`
    # brew install env0/terratag/terratag  # apply tags to `terraform resources`
    # brew install s-search  #  web search
    # brew tap isan-rivkin/toolbox; brew install surf  # `grep` for `infrastructure`


  };

  outputs = inputs@{
    self,
    nixpkgs,
    nix-darwin,
    nix-homebrew,
    homebrew-core,
    # homebrew-cask
  }:
  let
    configuration = { pkgs, config, ... }: {

      nixpkgs.config.allowUnfree = true;

      # List packages installed in system profile. To search by name, run:
      # $ nix-env -qaP | grep wget
      environment.systemPackages = [ 


        # Not available packages
        # pkgs.mdx  # application for downloading manga from the `mangadex` 
        # pkgs.gotz  #  timezone info tool
        # pkgs.kalc  # `cli` advanced calculator
        # pkgs.tget  # torrent downloader
        # pkgs.nyaa  # anime torrent `tui`
        # pkgs.jalm  # generate generate progress bar form `cron` expressions
        # pkgs.play  # `tui` playground for your favorite programs, such as `grep`, `sed` and `awk`
        # pkgs.mdtt  # edit `markdown` tables
        # pkgs.vops  # `vault` cluster management tool
        # pkgs.flawz  # `tui` for browsing the security vulnerabilities
        # pkgs.tlock  # store and manage your authentication tokens
        # pkgs.portr  # expose local `http`, `tcp` or `websocket` connections to the public internet
        # pkgs.upnup  # generates a license file in the current working directory
        # pkgs.artty  # `art` for your `tty`
        # pkgs.avail  # find available times between all your calendars
        # pkgs.enola  # `sherlock` alternative
        # pkgs.moulti  # collapse script outputs
        # pkgs.rucola  # `markdown` note manager
        # pkgs.basilk  # `tui` manage your tasks with minimal `kanban` logic
        # pkgs.whatsgo  # `whatsapp` client `tui`
        # pkgs.haylxon  # take screenshots of webpages
        # pkgs.mintaka  # runs long-running processes in parallel
        # pkgs.posting  # `postman` like `tui`
        # pkgs.durdraw  # `tui` `ascii`, `unicode` and `ansi` art editor
        # pkgs.buttery  # generates continuous `gif` loops
        # pkgs.toolong  # view, tail, merge, and search log files
        # pkgs.talecast  # podcast manager
        # pkgs.carbonyl  # `tui` chromium based browser
        # pkgs.fogmouth  # `tui` for viewing `markdown`
        # pkgs.rainfrog  # `tui` for `postgressql` queries
        # pkgs.llm-term  # generates and executes terminal commands using `openai` language models or local `ollama`
        # pkgs.packemon  # `tui` tool for generating packets of arbitrary input and monitoring
        # pkgs.terramaid  # creating mermaid diagrams from `terraform`
        # pkgs.procfusion  # process manager for your `docker` images
        # pkgs.rclone-tui  # `tui` for `rclone`
        # pkgs.beachpatrol  # launch a browser which can be controlled externally through `playwright`
        # pkgs.tinycare-tui  # `tui` dashboard
        # pkgs.config-file-validator  # validate different configuration file types

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
        # pkgs.nb `cli` note taker
        # pkgs.tt  # typing test
        pkgs.fd  # `find` command alternative
        pkgs.fq  # `jq` for binaries
        pkgs.fx  # terminal json viewr
        pkgs.gh  # `github` cli
        pkgs.jq  # `json` processor
        pkgs.sd  # `sed`alternative
        pkgs.sl  # `ls` mispelled for fun
        pkgs.up  # `tui` for pipes
        pkgs.xh  # tool for `http` requests

        # pkgs.air  # `live reload of `go` applications
        # pkgs.gtt  # `tui` for translation
        # pkgs.pet `cli` snippets manager
        # pkgs.prs  # `pass` alternative
        # pkgs.w3m  # `cli` browser
        # pkgs.wtf  # `tui` dashboard
        # pkgs.xsv  # `cli` for `csv` files
        pkgs.bat  # `cat` alternative
        pkgs.dua  # tool for disk usage of directories
        pkgs.duf  # disk usage / free utility
        pkgs.epy  # ebook reader
        pkgs.eza  # `ls` command alternative
        pkgs.fzf  # fuzzy finder
        pkgs.ghq  # git repo manager
        pkgs.git  # version control manager
        pkgs.grc  # text colourizer
        pkgs.ijq  # `tui` for `jq`
        pkgs.jnv  #  `tui` for `jq`
        pkgs.jqp  # `tui` for `jq`
        pkgs.k9s # `tui` for `k8s`
        pkgs.lua  # scripting language
        pkgs.mpd  # `daemon` por playing music
        pkgs.mpv  # `cli` media player
        pkgs.mtr  # combines the functionality of the `traceroute` and `ping`
        pkgs.nap  # `tui` for code snippets
        pkgs.neo  # simulates the matrix theme
        pkgs.tig  # `tui` for `git`
        pkgs.vhs  # generate terminal `gif`
        pkgs.viu  # `imgcat` alternative
        pkgs.zsh  # the zshell

        # pkgs.aiws  ai for `aws`
        # pkgs.bash  # bourne again shell
        # pkgs.buku  # `cli` bookmark manager
        # pkgs.cava  # `tui` audio visualizer
        # pkgs.jp2a  # convert `jpg` images to `ascii`
        # pkgs.khal  #  `cli` calendar application
        # pkgs.pipx  # `python` isolated script runner
        # pkgs.qrcp  # transfer files via `qr` by `wifi`
        # pkgs.sops  # simple and flexible tool for managing secrets
        # pkgs.tenv # `terraform` manager
        # pkgs.ttop  # `top` like system monitoring tool
        # pkgs.ttyd  # share terminal over the web
        pkgs.atac  # `postman` like `tui`
        pkgs.bmon  # network bandwith monitor
        pkgs.btop  # `top` alternative
        pkgs.ddgr  # `ddg` for `cli`
        pkgs.dust  # `du` command alternative
        pkgs.eget  # install pre-built binaries from `github`
        pkgs.entr  # run arbitrary commands
        pkgs.glow  # render `markdown on the cli`
        pkgs.gron  # make `json` greppable
        pkgs.halp  # get help for the `cli`
        pkgs.hugo  # a static website generator
        pkgs.just  # save and run project specific commands
        pkgs.lnav  # log viewer
        pkgs.mods  # `ai` on the `cli`
        pkgs.navi  # interactive cheatsheet
        pkgs.nmap  # network discovery and security
        pkgs.pass  # `cli` password manager
        pkgs.sesh  # session manager for `tmux`
        pkgs.smug  # `tmux` session manager
        pkgs.sshs # `tui` for ssh
        pkgs.sttr  # apply operations on strings
        pkgs.timg  # terminal image and video viewer
        pkgs.tmux  # terminal multiplexer
        pkgs.wget  # retrieve files via `https`
        pkgs.yank  # yank terminal output
        pkgs.yazi  # `tui` file manager

        # pkgs.atuin  # `history` alternative
        # pkgs.damon  # `tui` for `nomad`
        # pkgs.docfd  # `tui` multiline fuzzy document finder
        # pkgs.dooit  # `tui` todo manager
        # pkgs.helix  # `vim` inspired text editor
        # pkgs.runme  # run commands inside your documents
        # pkgs.s-tui  # stress-terminal `tui` monitoring tool
        # pkgs.s5cmd  # parallel `s3` and local filesystem execution tool
        # pkgs.tfsec  # `terraform` security linter
        # pkgs.thokr  # typing `tui` with visualized results and historical logging
        # pkgs.trivy  # vulnerability scanner for containers
        # pkgs.tsung  # benchmark framework for various protocols
        # pkgs.vault  # tool for managing secrets
        pkgs.cheat  # `tldr` alternative
        pkgs.dasel  # `jq` alternative for `csv`, `xml` `json`, `yaml` and `toml`
        pkgs.delta  # syntax-highlighting pager for git
        pkgs.gh-cal  # `github` contributions calender terminal viewer
        pkgs.gnupg  # privacy guard
        pkgs.gopls  # `go` language server
        pkgs.gowall # convert a image's color scheme or palette
        pkgs.gping  # `ping alternative`
        pkgs.jless  # pager for `json`
        pkgs.kondo  # clean project files
        pkgs.krabby  # print pokemon sprites in your terminal
        pkgs.lavat  # lava lamp simulation 
        pkgs.p7zip  # `zip` alternative
        pkgs.procs  # `ps` alternative`
        pkgs.pueue  # daemon for managing long running commands
        pkgs.pyenv  # `python`` manager
        pkgs.rsync  # sync local files
        pkgs.tokei  # check code quickly
        pkgs.tshark  # `cli` for `wireshark`
        pkgs.ugrep  # `grep` alternative
        pkgs.vegeta  # versatile `http` load testing tool
        pkgs.viddy  # `watch` alternative
        pkgs.vivid  # `LS_COLORS` generator
        pkgs.ytfzf  # `youtube` video finder
        pkgs.zinit  # `zinit` plugin manager

        # pkgs.aichat # `cli` ai assistant
        # pkgs.bandit  # security oriented static analyser for `python`
        # pkgs.mkdocs  # documentation with `markdown`
        # pkgs.nodenv  # `node` environment manager
        # pkgs.nsnake  # snake game
        # pkgs.ollama  # run language models locally
        # pkgs.packer  # create computer images
        # pkgs.slides  # `cli` for creating slides
        # pkgs.tflint  # `terraform` linter
        # pkgs.wander  # `tui` for `nomad`
        # pkgs.zellij  # `tmux` alternative
        pkgs.bottom  # `ps` alternative
        pkgs.catimg  # `cli` image printing
        pkgs.direnv  # environment manage
        pkgs.dogdns  # `dig` alternative
        pkgs.gnused  # `gnu`version of sed 
        pkgs.go-2fa  # `cli` for 2fa
        pkgs.jobber  # `cron` alternative
        pkgs.mangal  # `cli` manga downloader
        pkgs.neovim  # `vim` alternative
        pkgs.nomino  # `rename` alternative
        pkgs.pandoc  # document file converter
        pkgs.rclone  # sync files across clouds
        pkgs.rdfind  # find duplicate files bases on content
        pkgs.rename  # file re-namer
        pkgs.restic  # backup tool
        pkgs.rmlint  # rm linter
        pkgs.yt-dlp  # `youtube` downloader
        pkgs.zoxide  # `cd` alternative

        # pkgs.ansible  # simple automation
        # pkgs.awscli2  # `aws` `cli`
        # pkgs.calcure  # `tui` calendar
        # pkgs.cmatrix  # simulates the matrix theme
        # pkgs.kubectx  # tool to switch between contexts
        # pkgs.pyright  # `python` type checker
        # pkgs.the-way  #  `cli` snipet manager
        # pkgs.vagrant  # build complete development environments
        # pkgs.youplot  # `cli` for drawing plots
        pkgs.ani-cli  # browse and watch anime
        pkgs.chezmoi  # dotfiles manager
        pkgs.erdtree  # file-tree visualizer and disk usage analyzer
        pkgs.ghfetch  #  `github` fetch information
        pkgs.gitlint  # `git` linter
        pkgs.gnumake  # generation of files from source
        pkgs.gpg-tui  # `tui` for `gpg`
        pkgs.kubectl  # `cli` for `k8s`
        pkgs.lazygit  # `git` tui
        pkgs.lazysql  # `sql` tui
        pkgs.ltex-ls  # `latex` language server
        pkgs.mkalias  # package to fix apps not being findable by `spotlight search`
        pkgs.ncmpcpp  # `tui` client for `mpd`
        pkgs.pdfgrep  # `grep` for `pdf` files
        pkgs.ripgrep  # `grep` alternative
        pkgs.sampler  # `tui for `shell` commands
        pkgs.sshpass  # `ssh` non-interactive authentication
        pkgs.sssnake  # snake game that plays itself
        pkgs.termscp  # feature rich terminal file transfer
        pkgs.thefuck  # corrects mispelled commands
        pkgs.typioca  # cozy typing speed tester in terminal
        pkgs.unbound  # validating, recursive, caching `dns` resolver

        # pkgs.discordo  # `tui` for `discord`
        # pkgs.graphviz  # graph vizualization tools
        # pkgs.molecule  # `ansible` test framework
        # pkgs.neverest  # sync, backup and restore emails
        # pkgs.sniffnet  # monitor your Internet traffic
        # pkgs.visidata  # exploring and arranging tabular data 
        pkgs.aws-gate  # `aws` client manager fort `ssm`
        pkgs.charasay  #  `cowsay` alternative
        pkgs.gitleaks  # scan `git` repos for secrets
        pkgs.hadolint  # `docker` file linter
        pkgs.himalaya  # cli email manager
        pkgs.invidtui  # `tui` for `invidious`
        pkgs.minikube # run `k8s` locally
        pkgs.onefetch  # `git` repo summary
        pkgs.pipes-rs  # animated pipes screensaver
        pkgs.sherlock  # hunt down social media accounts by username across social networks
        pkgs.tealdeer  # `tldr` alternative
        pkgs.tomato-c  # pomodoro timer
        pkgs.treefmt2  # one `cli` to format the code tree

        # pkgs.aws-vault  # get `aws` credentials
        # pkgs.bluetuith  # `tui` bluetooth connection manager
        # pkgs.infracost  # cloud cost estimates for `terraform`
        # pkgs.terramate  # code generation, stacks, orchestration, change detection, data sharing and more to `terraform`
        # pkgs.terrascan  #  `terraform` security linter
        # pkgs.vault-env  # run processes with secrets from `vault`
        # pkgs.watchexec  # `entr` alternative
        pkgs.codespell  # spell linter
        pkgs.fastfetch  # `neofetch` alternative
        pkgs.gowitness  # website screenshot utility
        pkgs.hyperfine  # `cli` benchmark tools
        pkgs.mcfly-fzf # `history` alternative 
        pkgs.termshark  # `tui` for `wireshark-cli`
        pkgs.twitch-dl  # `cli` tool for downloading videos from `twitch`
        pkgs.xdg-ninja  # check your home for `xdg` format

        # pkgs.opensnitch # application firewall
        # pkgs.ripsecrets  # tool to prevent committing secret keys
        pkgs.commitizen  # create comitting rules
        pkgs.difftastic  # syntax-aware diff
        pkgs.lazydocker  # `docker` tui
        pkgs.pokemonsay  # `cowsay` alternative
        pkgs.signal-cli  # `cli` for `signal`
        pkgs.twitch-tui # `twitch` chat in the terminal

        # pkgs.terracognita  # `terraform` state importer
        # pkgs.terraform-ls  # `terraform` language server
        # pkgs.vault-medusa # tool for importing and exporting `vault` secrets
        pkgs.cmd-wrapped  # view your `shell` history stats
        pkgs.gambit-chess  # play chess
        pkgs.gitmoji-cli # using emojis on commit messages
        pkgs.imagemagick  # edit images on the `cli`
        pkgs.projectable # `tui` manager for projects
        pkgs.ripgrep-all  # `ripgrep` alternative
        pkgs.tidy-viewer  # `csv` printer
        pkgs.tree-sitter  #  incremental parser library
        pkgs.youtube-tui  #  `tui` for `youtube`

        # pkgs.noseyparker  # secret finder
        # pkgs.openapi-tui  #  browse and run `apis` defined with `openapi`
        pkgs.osv-scanner # `osv` for scanning vulnerabilities

        # pkgs.asciiquarium  # render aquarium in `acii`
        pkgs.ansible-lint  # `ansible` linter
        pkgs.code-minimap  # minimap renderer
        pkgs.taskwarrior3  # `cli` for managing todo lists

        # pkgs.bitwarden-cli  # `cli` for `bitwarden`
        pkgs.speedtest-cli  # check your internet spedd

        # pkgs.terraform-docs  # `terraform` document generator

        pkgs.jellyfin-ffmpeg  # video convertion tool
        pkgs.universal-ctags  # fast source code browsing

        pkgs.bfg-repo-cleaner  # `git` repository cleaner
        pkgs.git-repo-updater  # updat multiple `git` repositories

        pkgs.certificate-ripper  # `cli` tool to extract server certificates

        pkgs.lua-language-server  # `lua` language server


        pkgs.bash-language-server  # `bash` language server
        pkgs.bat-extras.prettybat  # helper scripts for `bat`
        pkgs.yaml-language-server # `yaml` language server
        # pkgs.ansible-language-server  # `ansible` language server

        pkgs.asciiquarium-transparent  # render aquarium in `ascii`
        pkgs.dwt1-shell-color-scripts  # collection of `shell` color scripts collected by `dt`
        pkgs.python312Packages.howdoi  # coding answers in the terminal

        # Graphical interface applications
        # pkgs.rar  # un-archiver
        # pkgs.teams  # microsoft chat application
        # pkgs.kitty  # terminal emulator with graphic support
        # pkgs.krita  # painting application
        # pkgs.steam  # game manager
        # pkgs.floorp  # privacy focused firefox fork
        # pkgs.zoom-us  # video conference applicationl
        # pkgs.wezterm  # `gpu` accelerated terminal emulator
        # pkgs.firefox  # web browser
        # pkgs.freetube  # `youtube` privacy frontend
        # pkgs.vscodium  # `vscode` without telemetry
        # pkgs.yacreader  # comicbook reader
        # pkgs.jitsi-meet  # video conference applicationl
        # pkgs.tor-browser  # anonymous browser fork of firefox
        # pkgs.standardnotes  # privacy focused notes application
        # pkgs.onionshare-gui  # anonymously send and receive files
        # pkgs.signal-desktop  # privacy focused messaging application
        # pkgs.ungoogled-chromium  # privacy focused fork of chromium

      ];

      # Install al packages defined in here via `homebrew`
      homebrew = {

        enable = true;
        # onActivation.cleanup = "zap";  # cleanup all packages not defined on this configuration

        brews = [

         "lua"  # scripting language
         "mas"  # `appstore` application manager
         "wtf"  # check word definitions

         # "jenv"  # `java` environment manager
         # "skhd"  # hotkey daemon
         "kusa"  # display `github` contributors graph
         "mult"  # run a command multiple times
         "revq"  # review `github` pull requests
         "svim"  # type on any text field using `vim`

         # "yabai"  # `bspwm` inspired window manager
         "goenv"  # `go` environment manager
         "serpl"  #  `tui` for replacing and re-naming
         "sigrs"  # `tui` for `grep` on streaming

         "arttime"  # clock / timer / pattern-based time manager
         "borders"  # add borders to the windows
         "diffnav"  # `delta` with a file tree

         # "punchout"  # log time in `jira`
         # "tfschema"  # schema checker for `terraform`

         "cocainate"  # prevent `macos` going to sleep

         "sketchybar"  # status bar for `macos`

         "aws-console"  # open `aws` console on a browser
         "eg-examples"  # useful examples 
         "macos-trash"  # send files to `macos` trash

        ];

        casks = [

          # "kap"  # screen recorder

          # "keka"  # `macos` archiver
          # "loop"  # window manager
          # "skim"  # `pdf` reader
          # "trex"  # copy assistant
          "iina"  # media player
          "lulu"  # firewall

          # "sloth"  # `slo` generator for `prometheus `
          "lunar" # control screen brightness

          # "motrix"  # download manager
          "docker"  # container manager
          "keyclu"  # aplication shortcuts
          "yattee"  # video viewer for `individuous`

          # "battery"  # maintain battery at 80%
          # "digikam" photo manager
          # "ollamac"  # desktop app for `ollama`
          "alt-tab"  # `windos` like window switching
          "calibre"  # `ebook` management
          "espanso"  # text expander
          "monarch"  #  `spotlight` alternative

          # "homerow"  # system wide `vimium` clone
          "keycastr"  # show your key presses
          "shortcat" # system wide `vimium` clone

          # "dmenu-mac"  # `dmenu` for macos
          # "bleunlock"  # locks and unlocks your `mac` by proximity of your iphone, apple watch, or any other bluetooth low energy device.
          # "retroarch"  # game emulator
          "aerospace"  # `i3` alternative window manager
          "protonvpn"  # privacy focused `vpn`

          # "airbattery"  # check the status of all your `bluetooth` batteries
          "sf-symbols"  # apple developer symbols

          # "meeting-bar"  # show the next meeting in the system statusbar
          # "pearcleaner"  # `macos` cleaner
          "cryptomator"  # file encryption
          "proton-mail"  # privacy focused `mail`
          "netnewswire" # `rss` reader
          "font-sf-pro"  # apple developer symbols font

          "font-sf-mono"  # apple developer symbols font
          "transmission"  # torrent client

          "mactex-no-gui"  # `latex` for `macos`

          # "nowplaying-cli"  # utility for retrieving currently playing media

          # "switchaudio-osx"  #  utility to switch the audio source on `macos`

          "protonmail-bridge"  # privacy focused `mail`

          # "jordanbaird-ice"  # menu manager

          # "font-hack-nerd-font"  # mono-spaced font wiht glyph support

          # "kindle-comic-creator"  # `kindle` tools

          # "session-manager-plugin"  # `aws` session manager
          # "kindle-comic-converter"  # `kindle` tools

          # Cross platform Applications
          # "rar"  # un-archiver
          # "zoom"  # video conference applicationl
          # "kitty"  # terminal emulator with graphic support
          # "krita"  # painting application
          # "steam"  # game manager
          # "signal"  # privacy focused messaging application
          # "floorp"  # privacy focused firefox fork
          # "wezterm"  # `gpu` accelerated terminal emulator
          # "firefox"  # web browser
          # "freetube"  # `youtube` privacy frontend
          # "vscodium"  # `vscode` without telemetry
          # "yacreader"  # comicbook reader
          # "onionshare"  # anonymously send and receive files
          # "jitsi-meet"  # video conference applicationl
          # "tor-browser"  # anonymous browser fork of firefox
          # "standard-notes"  # privacy focused notes application
          # "microsoft-teams"  # microsoft chat application
          # "eloston-chromium"  # privacy focused fork of chromium

        ];

        masApps = {

           # Apple store applications
          "Pages" = 409201541;  # text editor
          "Velja" = 1607635845;  # browser picker
          # "Maccy" = 1527619437;  # clipboard manager
          # "Gifski" = 1351639930;  # gif encoder
          "Shazam" = 897118787;  # music identification
          "Numbers" = 409203825;  # spreadsheet application
          "StackOv" = 1511838391;  # open source client
          "Crouton" = 1461650987;  # recipe manager
          "Keynote" = 409183694;  # presentation application
          "WhatsApp" = 310633997;  # messaging application
          # "Lunatask" = 1583719331;  # habit tracking
          "Expenses" = 1492055171;  # track expenses
          # "Hyperduck" = 6444667067;  # `airdrop` alternative
          "Linkeeper" = 6449708232;  # bookmark manager
          "KakaoTalk" = 869223134;  # messaging application
          "Bitwarden" = 1352778147;  # password manager
          # "ScanTexter" = 1635954549;  # image to text ocr
          "Book Tracker" = 1496543317;  # book reading list manager
          "Subscriptions" = 1577082754;  # Subscription manager

          # Safari extensions
          "Noir" = 1592917505;  # dark mode foor `safari` with themes
          "Hush" = 1544743900;  # no more accept `cookie` banners
          "LINER" = 1463530746;  # summarize, translate and write
          "Vimari" = 1480933944;  #  `vim` like keybindings for `safari`
          "Vinegar" = 1591303229;  # replaces `youtube` player with minimal `html`
          "PiPifier" = 1160374471;  # let's you use `pip`
          "Baking Soda" = 1601151613;  # replaces custom players with minimal `html`
          "Super Agent" = 1568262835;  # fills `cookies` acording to your preferences
          "SponsorBlock" = 1573461917;  # blocks sponsors inside `youtube` videos
          "Improved Tube" = 1672777754;  # enhances `youtube`
          "Sink It for Reddit" = 6449873635;  # make `redit` more useful
          "AdGuard for Safari" = 1440147259;  # adblocker
          "Keepa - Price Tracker" = 1533805339;  # price tracke
          "Dark Reader for Safari" = 1438243180;  # dark mode foor `safari`
          "DuckDuckGo Privacy for Safari" = 1482920575;  # privacy respecting search engine
          "Awesome Screenshot & Recorder" = 1531282066;  # better screenshots

        };

      };

      # Add any required fonts
      fonts.packages = [
        (pkgs.nerdfonts.override { fonts = ["Hack"]; })
      ];

      # Script to fix apps not being findable by `spotlight search`
      system.activationScripts.applications.text = let
        env = pkgs.buildEnv {
          name = "system-applications";
          paths = config.environment.systemPackages;
          pathsToLink = "/Applications";
        };
      in
        pkgs.lib.mkForce ''
        # Set up applications.
        echo "setting up /Applications..." >&2
        rm -rf /Applications/Nix\ Apps
        mkdir -p /Applications/Nix\ Apps
        find ${env}/Applications -maxdepth 1 -type l -exec readlink '{}' + |
        while read src; do
          app_name=$(basename "$src")
          echo "copying $src" >&2
          ${pkgs.mkalias}/bin/mkalias "$src" "/Applications/Nix Apps/$app_name"
        done
            '';

     # https://mynixos.com/nix-darwin/options
     # Define the default `System Preferences` for your computer
      system.defaults = {  # use the `darwin-help` command to check the available options

        dock.autohide = true;
        dock.persistent-apps = [
          # "${pkgs.wezterm}/Applications/Alacritty.app"
          "/Applications/Safari.app"
        ];

        finder.FXPreferredViewStyle = "clmv";

        loginwindow.GuestEnabled = false;

        NSGlobalDomain.KeyRepeat = 2;
        NSGlobalDomain.AppleInterfaceStyle = "Dark";
        NSGlobalDomain.AppleICUForce24HourTime = true;

      };

      # Auto upgrade nix package and the daemon service.
      services.nix-daemon.enable = true;
      # nix.package = pkgs.nix;

      # Necessary for using flakes on this system.
      nix.settings.experimental-features = "nix-command flakes";

      # Create /etc/zshrc that loads the nix-darwin environment.
      programs.zsh.enable = true;  # default shell on catalina
      # programs.fish.enable = true;

      # Set Git commit hash for darwin-version.
      system.configurationRevision = self.rev or self.dirtyRev or null;

      # Used for backwards compatibility, please read the changelog before changing.
      # $ darwin-rebuild changelog
      system.stateVersion = 5;

      # The platform the configuration will be used on.
      # nixpkgs.hostPlatform = "x86_64-darwin";
      nixpkgs.hostPlatform = "aarch64-darwin";  # apple silicon
    };
  in
  {

    # Build darwin flake using:
    # $ darwin-rebuild build --flake .#hidetoxin
    darwinConfigurations."hidetoxin" = nix-darwin.lib.darwinSystem {
      modules = [
        configuration
        nix-homebrew.darwinModules.nix-homebrew {
          nix-homebrew = {
            taps = {
              "homebrew/homebrew-core" = inputs.homebrew-core;
              # "homebrew/homebrew-cask" = inputs.homebrew-cask;
            };
            user = "hdtxn";  #  user owning `homebrew` prefix
            enable = true;
            # mutableTaps = false;
            autoMigrate = true;
            enableRosetta = true;  # for apple silicon
          };
        }
      ];
    };

    # Expose the package set, including overlays, for convenience.
    darwinPackages = self.darwinConfigurations."hidetoxin".pkgs;
  };
}
