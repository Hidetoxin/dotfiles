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

    # homebrew-core = {
    #   url = "github:homebrew/homebrew-core";
    #   flake = false;
    # };
    #
    # homebrew-cask = {
    #   url = "github:homebrew/homebrew-cask";
    #   flake = false;
    # };
  };

  outputs = inputs@{ self, nix-darwin, nixpkgs, nix-homebrew }:
  let
    configuration = { pkgs, config, ... }: {

      nixpkgs.config.allowUnfree = true;

      # List packages installed in system profile. To search by name, run:
      # $ nix-env -qaP | grep wget
      environment.systemPackages = [ 

        # Commnad line applications
        # pkgs.nb `cli` note taker
        pkgs.gh  # `github` cli
        pkgs.jq  # `json` processor
        pkgs.fq  # `jq` for binaries
        pkgs.fd  # `find` command alternative
        pkgs.fx  # terminal json viewr
        pkgs.sd  # `sed`alternative
        pkgs.sl  # `ls` mispelled for fun
        pkgs.xh  # tool for `http` requests
        pkgs.up  # `tui` for pipes

        # pkgs.k9s # `tui` for `k8s`
        # pkgs.wtf  # `tui` dashboard
        # pkgs.xsv  # `cli` for `csv` files
        # pkgs.w3m  # `cli` browser
        # pkgs.prs  # `pass` alternative
        pkgs.git  # version control manager
        pkgs.ghq  # git repo manager
        pkgs.fzf  # fuzzy finder
        pkgs.tig  # `tui` for `git`
        pkgs.eza  # `ls` command alternative
        pkgs.zsh  # the zshell
        pkgs.vhs  # generate terminal `gif`
        pkgs.dua  # tool for disk usage of directories
        pkgs.duf  # disk usage / free utility
        pkgs.bat  # `cat` alternative
        pkgs.grc  # text colourizer
        pkgs.jqp  # `tui` for `jq`
        pkgs.ijq  # `tui` for `jq`
        pkgs.jnv  #  `tui` for `jq`
        pkgs.neo  # simulates the matrix theme
        pkgs.viu  # `imgcat` alternative
        pkgs.mpd  # `daemon` por playing music
        pkgs.mpv  # `cli` media player
        pkgs.nap  # `tui` for code snippets

        # pkgs.aiws  ai for `aws`
        # pkgs.bash  # bourne again shell
        # pkgs.buku  # `cli` bookmark manager
        # pkgs.pipx  # `python` isolated script runner
        # pkgs.tenv # `terraform` manager
        # pkgs.qrcp  # transfer files via `qr` by `wifi`
        # pkgs.ttyd  # share terminal over the web
        pkgs.pass  # `cli` password manager
        pkgs.bmon  # network bandwith monitor
        pkgs.eget  # install pre-built binaries from `github`
        pkgs.nmap  # network discovery and security
        pkgs.mods  # `ai` on the `cli`
        pkgs.smug  # `tmux` session manager
        pkgs.wget  # retrieve files via `https`
        pkgs.yank  # yank terminal output
        pkgs.just  # save and run project specific commands
        pkgs.ddgr  # `ddg` for `cli`
        pkgs.lnav  # log viewer
        pkgs.btop  # `top` alternative
        pkgs.dust  # `du` command alternative
        pkgs.entr  # run arbitrary commands
        pkgs.hugo  # a static website generator
        pkgs.glow  # render `markdown on the cli`
        pkgs.tmux  # terminal multiplexer
        pkgs.sesh  # session manager for `tmux`
        pkgs.navi  # interactive cheatsheet
        pkgs.sttr  # apply operations on strings
        pkgs.sshs # `tui` for ssh
        pkgs.timg  # terminal image and video viewer
        pkgs.cava  # `tui` audio visualizer
        pkgs.gron  # make `json` greppable
        pkgs.halp  # get help for the `cli`
        pkgs.jp2a  # convert `jpg` images to `ascii`
        pkgs.yazi  # `tui` file manager

        # pkgs.tfsec  #  `terraform` security linter
        # pkgs.helix  # `vim` inspired text editor
        # pkgs.runme  # run commands inside your documents
        pkgs.cheat  # `tldr` alternative
        pkgs.gopls  # `go` language server
        pkgs.jless # pager for `json` 
        pkgs.gping  # `ping alternative`
        pkgs.delta  # syntax-highlighting pager for git
        pkgs.tokei  # check code quickly
        pkgs.vivid  # `LS_COLORS` generator
        pkgs.viddy  # `watch` alternative
        pkgs.rsync  # sync local files
        pkgs.zinit  # `zinit` plugin manager
        pkgs.ugrep  # `grep` alternative
        pkgs.ytfzf  # `youtube` video finder
        pkgs.p7zip  # `zip` alternative
        pkgs.procs  # `ps` alternative`
        pkgs.pueue  # daemon for managing long running commands
        pkgs.pyenv  # `python`` manager
        pkgs.dasel  # `jq` alternative for `csv`, `xml` `json`, `yaml` and `toml`
        pkgs.kondo  # clean project files

        # pkgs.aichat # `cli` ai assistant
        # pkgs.mkdocs  # documentation with `markdown`
        # pkgs.tflint  # `terraform` linter
        # pkgs.ollama  # run language models locally
        # pkgs.nsnake  # snake game
        # pkgs.nodenv  # `node` environment manager
        # pkgs.slides  # `cli` for creating slides
        # pkgs.zellij  # `tmux` alternative
        pkgs.yt-dlp  # `youtube` downloader
        pkgs.pandoc  # document file converter
        pkgs.catimg  # `cli` image printing
        pkgs.direnv  # environment manage
        pkgs.neovim  # `vim` alternative
        pkgs.rmlint  # rm linter
        pkgs.rdfind  # find duplicate files bases on content
        pkgs.restic  # backup tool
        pkgs.rclone  # sync files across clouds
        pkgs.rename  # file re-namer
        pkgs.zoxide  # `cd` alternative
        pkgs.go-2fa  # `cli` for 2fa
        pkgs.nomino  # `rename` alternative
        pkgs.jobber  # `cron` alternative
        pkgs.mangal  # `cli` manga downloader
        pkgs.bottom  # `ps` alternative

        # pkgs.kubectl  # `cli` for `k8s`
        # pkgs.cmatrix  # simulates the matrix theme
        # pkgs.awscli2  # `aws` `cli`
        # pkgs.ansible  # simple automation
        # pkgs.pyright  # `python` type checker
        # pkgs.youplot  # `cli` for drawing plots
        pkgs.ncmpcpp  # `tui` client for `mpd`
        pkgs.ltex-ls  # `latex` language server
        pkgs.mkalias  # package to fix apps not being findable by `spotlight search`
        pkgs.thefuck  # corrects mispelled commands
        pkgs.gitlint  # `git` linter
        pkgs.gpg-tui  # `tui` for `gpg`
        pkgs.ghfetch  #  `github` fetch information
        pkgs.chezmoi  # dotfiles manager
        pkgs.ripgrep  # `grep` alternative
        pkgs.lazygit  # `git` tui
        pkgs.lazysql  # `sql` tui
        pkgs.pdfgrep  # `grep` for `pdf` files
        pkgs.sampler  # `tui for `shell` commands
        pkgs.unbound  # validating, recursive, caching `dns` resolver

        # pkgs.minikube # run `k8s` locally
        # pkgs.molecule  # `ansible` test framework
        # pkgs.sniffnet  # monitor your Internet traffic
        pkgs.aws-gate  # `aws` client manager fort `ssm`
        pkgs.pipes-rs  # animated pipes screensaver
        pkgs.hadolint  # `docker` file linter
        pkgs.onefetch  # `git` repo summary
        pkgs.himalaya  # cli email manager
        pkgs.tealdeer  # `tldr` alternative

        # pkgs.terrascan  #  `terraform` security linter
        # pkgs.watchexec  # `entr` alternative
        pkgs.codespell  # spell linter
        pkgs.fastfetch  # `neofetch` alternative
        pkgs.mcfly-fzf # `history` alternative 
        pkgs.hyperfine  # `cli` benchmark tools
        pkgs.infracost  # cloud cost estimates for `terraform`

        pkgs.signal-cli  # `cli` for `signal`
        pkgs.commitizen  # create comitting rules
        pkgs.lazydocker  # `docker` tui

        # pkgs.terracognita  # `terraform` state importer
        # pkgs.terraform-ls  # `terraform` language server
        pkgs.ripgrep-all  # `ripgrep` alternative
        pkgs.gitmoji-cli # using emojis on commit messages
        pkgs.tree-sitter  #  incremental parser library
        pkgs.tidy-viewer  # `csv` printer
        pkgs.projectable # `tui` manager for projects
        pkgs.imagemagick  # edit images on the `cli`
        pkgs.noseyparker  # secret finder
        pkgs.osv-scanner # `osv` for scanning vulnerabilities

        pkgs.code-minimap  # minimap renderer
        pkgs.ansible-lint  # `ansible` linter
        pkgs.taskwarrior3  # `cli` for managing todo lists

        # pkgs.bitwarden-cli  # `cli` for `bitwarden`
        pkgs.speedtest-cli  # check your internet spedd

        # pkgs.terraform-docs  # `terraform` document generator

        pkgs.universal-ctags  # fast source code browsing

        pkgs.bfg-repo-cleaner  # `git` repository cleaner
        pkgs.git-repo-updater  # updat multiple `git` repositories

        pkgs.lua-language-server  # `lua` language server

        pkgs.bat-extras.prettybat  # helper scripts for `bat`
        pkgs.bash-language-server  # `bash` language server
        pkgs.yaml-language-server # `yaml` language server

        # pkgs.ansible-language-server  # `ansible` language server

        pkgs.asciiquarium-transparent  #  render aquarium in `ascii`


        # "linklint
        # pkgs.goenv
        # pkgs.jenv
        # pkgs.aws-console  # open `aws` console on a browser
        # pkgs.revq
        # pkgs.tfschema
        # pkgs.howdoi
        # pkgs.diffnav
        # pkgs.arttime
         # "macos-trash
      ];

      # Install al packages defined in here via `homebrew`
      homebrew = {
        enable = true;
        brews = [
         "mas"  # `appstore` application manager
         "wtf"  # check word definitions

         "svim"  # type on any text field using `vim`
         # "skhd"  # hotkey daemon
         # "yabai"  # `bspwm` inspired window manager

         "borders"  # add borders to the windows

         "cocainate"  # prevent `macos` going to sleep

         "sketchybar"  # status bar

         # "mult  # run a command multiple times
         # "kusa  # display `github` contributors graph
         # "serpl  #  `tui` for replacing and re-naming
         # "sigrs  # `tui` for `grep` on streaming
         # "punchout  # log time in `jira`
        ];
        casks = [

          # "kap"  # screen recorder

          # "loop"  # window manager
          # "trex"  # copy assistant
          "iina"  # media player
          "lulu"  # firewall
          "skim"  # `pdf` reader

          # "sloth"  # `slo` generator for `prometheus `
          "lunar" # control screen brightness

          # "motrix"  # download manager
          "docker"  # container manager
          "keyclu"  # aplication shortcuts
          "yattee"  # video viewer for `individuous`

          # "battery"  # maintain battery at 80%
          # "digikam" photo manager
          "alt-tab"  # `windos` like window switching
          "calibre"  # `ebook` management
          "espanso"  # text expander
          "monarch"  #  `spotlight` alternative
          "ollamac"  # desktop app for `ollama`

          "shortcat" # system wide `vimium` clone

          # "dmenu-mac"  # `dmenu` for macos
          # "retroarch"  # game emulator
          "aerospace"  # `i3` alternative window manager
          "protonvpn"  # privacy focused `vpn`

          # "airbattery"  # check the status of all your `bluetooth` batteries

          "cryptomator"  # file encryption
          "proton-mail"  # privacy focused `mail`
          "netnewswire" # `rss` reader

          "transmission"  # torrent client

          "mactex-no-gui"  # `latex` for `macos`

          "protonmail-bridge"  # privacy focused `mail`

          # "jordanbaird-ice"  # menu manager

          "font-hack-nerd-font"  # mono-spaced font wiht glyph support

          # "kindle-comic-creator"  # `kindle` tools

          # "session-manager-plugin"  # `aws` session manager
          # "kindle-comic-converter"  # `kindle` tools

          # "rar
          # "zoom
          # "kitty
          # "krita
          # "steam
          # "signal
          # "floorp
          # "wezterm"
          # "firefox
          # "freetube
          # "vscodium
          # "yacreader
          # "onionshare
          # "jitsi-meet
          # "tor-browser
          # "standard-notes
          # "microsoft-teams
          # "eloston-chromium

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
          "Hush" = 1544743900;
          "LINER" = 1463530746;
          "Vimari" = 1480933944;
          "Vinegar" = 1591303229;
          "PiPifier" = 1160374471;
          "Baking Soda" = 1601151613;
          "Super Agent" = 1568262835;
          "SponsorBlock" = 1573461917;
          "Improved Tube" = 1672777754;
          "Sink It for Reddit" = 6449873635;
          "AdGuard for Safari" = 1440147259;
          "Keepa - Price Tracker" = 1533805339;
          "Dark Reader for Safari" = 1438243180;
          "DuckDuckGo Privacy for Safari" = 1482920575;
          "Awesome Screenshot & Recorder" = 1531282066;

        };
        # onActivation.cleanup = "zap";  # cleanup all packages not defined on this configuration
      };

      # Add any required fonts
      fonts.packages = [
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

     # Define the default `System Preferences` for your computer
      system.defaults = {  # use the `darwin-help` command to check the available options
        dock.autohide = true;
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
          #   taps = {
          #     "homebrew/homebrew-core" = homebrew-core;
          #     "homebrew/homebrew-cask" = homebrew-cask;
          #   };
            user = "hdtxn";  #  user owning `homebrew` prefix
            enable = true;
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
