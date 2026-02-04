{pkgs, ...}: with pkgs;

rec {

  # Tooling that is not available via the `nix` packages
  na-pkgs =[
    mdx  # application for downloading manga from the `mangadex` 
    wut  # explain last command output with `ai`
    crib  # hotkey cheatsheet
    curd  # whatch anime form the `cli`
    gotz  #  timezone info tool
    grit  # log parser
    gust  # `tui` for weather
    jalm  # generate generate progress bar form `cron` expressions
    kafe  # `tui` for `kafka`
    kalc  # `cli` advanced calculator
    keyb  # hotkey cheatsheet
    mdtt  # edit `markdown` tables
    qman  # `man` alternative
    tget  # torrent downloader
    vops  # `vault` cluster management tool
    yt-x  # `tui` for `youtube`
    artty  # `art` for your `tty`
    avail  # find available times between all your calendars
    danzo  # `http` downloader
    enola  # `sherlock` alternative
    lib-x  # `tui` for `calibre`
    mynav  # project navigation integrated with `tmux`
    portr  # expose local `http`, `tcp` or `websocket` connections to the public internet
    targe  # `ai` assisted `iam` manager
    upnup  # generates a license file in the current working directory
    volgo  # manage volume from the `cli`
    gh-pos  # safely clean up your local branches
    mdtree  # `markdown` viewer
    moulti  # collapse script outputs
    termfu  # `tui` for debugging
    toutui  # `tui` for audiobooks
    vectro  # rpn calculator
    whispr  # inject secrets on any cloud
    backhub  # backup you `github` repos
    buttery  # generates continuous `gif` loops
    durdraw  # `tui` `ascii`, `unicode` and `ansi` art editor
    elastop  # `tui` for `elasticsearch`
    feather  # `tui` for `youtube` music
    lazyorg  # `tui` for calendars
    mintaka  # runs long-running processes in parallel
    the-way  #  `cli` snipet manager
    whatsgo  # `whatsapp` client `tui`
    carbonyl  # `tui` chromium based browser
    easycron  # `tui` for validating cron expresions
    llm-term  # generates and executes terminal commands using `openai` language models or local `ollama`
    opengrep  # `semgrep` alternative
    packemon  # `tui` tool for generating packets of arbitrary input and monitoring
    parllama  # `tui` for using local or web `ai`
    bluetuith  # `tui` bluetooth connection manager
    dotenvhub  #  `tui` for managing `env` files
    fastanime  # `cli` for watching anime
    terramaid  # creating mermaid diagrams from `terraform`
    tuitorial  #  `tui` for writing tutorials on the terminal
    procfusion  # process manager for your `docker` images
    rclone-tui  # `tui` for `rclone`
    beachpatrol  # launch a browser which can be controlled externally through `playwright`
    tinycare-tui  # `tui` dashboard
    config-file-validator  # validate different configuration file types
  ];

  # Extensions for the `github` command line that are not available on `nix`
  gh-pkgs = [
    # kawarimidoll/gh-q
    # gennaro-tedesco/gh-i
    # redraw/gh-install
    # kawarimidoll/gh-graph
    # chelnak/gh-changelog
    # korosuke613/gh-user-stars
  ];

  # Tooling that I need to test to incorporate in my workflow
  test-pkgs = [
    ttyd  # share terminal over the web
    yank  # yank terminal output
    atuin  # `history` alternative
    pueue  # daemon for managing long running commands
    jobber  # alternative to `cron` with sophisticated status-reporting and error-handling
  ];

  all = []
    ++ test-pkgs
    ++ [];

}  # rec
