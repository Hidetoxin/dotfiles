{pkgs, ...}: with pkgs;

rec {

  # Tooling for working with `ai`
  ai-pkgs = [
    # mods  # `ai` on the `cli`
    # aichat  # `cli` ai assistant
    # ollama  # run language models locally
    # opencode  # `tui` for using using an `ai` agent on the terminal
    # gemini-cli  # `tui` for using `gemini`
    # claude-code  # `tui` for using `claude`
    github-copilot-cli  # chat for `copilot`
    copilot-language-server  # use `copilot` with any editor or `ide` via `lsp`
  ];


  # Tooling for working with `azure` cloud
  azure-pkgs = [
    bicep # `cli` tool for working with `bicep` files
    bicep-lsp  # `lsp` for `bicep`
    (azure-cli.withExtensions [
      azure-cli-extensions.alias  # support for command aliases
      azure-cli-extensions.webapp # additional commands for `appservice`
      azure-cli-extensions.eventgrid  # `eventgrid` command module
      azure-cli-extensions.front-door  # manage networking `frontdoors`
      azure-cli-extensions.interactive  # interactive shell
      azure-cli-extensions.containerapp  # `containerapp` extension
      azure-cli-extensions.staticwebapp  # `staticwebapp` extension
      azure-cli-extensions.log-analytics  # `loganalytics` query capabilities
      azure-cli-extensions.resource-graph  # query multiple subscriptions at once
      azure-cli-extensions.application-insights # managing `appinsights` components and querying metrics, events, and logs
      azure-cli-extensions.log-analytics-solution  # support for `loganalytics` solution
    ])
  ];

  # Editor and tooling for working with code
  vscode-pkgs = [
    (vscode-with-extensions.override {
      vscodeExtensions = [
        vscode-extensions.mkhl.shfmt  # format shell scripts
        vscode-extensions.skellock.just  # `lsp` and task launcher for `just`
        vscode-extensions.vscodevim.vim  # `vim` emulation for `vscode`
        vscode-extensions.jetmartin.bats  # `lsp` for `bats`
        vscode-extensions.github.copilot  # `ai` partner programmer
        vscode-extensions.eamodio.gitlens  # `git` additional tools
        vscode-extensions.ms-python.python  # `lsp` for `python`
        vscode-extensions.waderyan.gitblame  # simple `git` blame tool
        vscode-extensions.ms-python.debugpy  # debugger for `python`
        vscode-extensions.jdinhlife.gruvbox  # add `gruvbox` theme
        vscode-extensions.github.copilot-chat  # `ai` chat features powered by `copilot`
        vscode-extensions.elijah-potter.harper  # grammar checker for developers
        vscode-extensions.ms-vscode.powershell  # `lsp` for `powershell`
        vscode-extensions.timonwong.shellcheck  # linter for shell scripts
        vscode-extensions.bierner.markdown-mermaid  # add `mermaid` support to `markdown`
        vscode-extensions.editorconfig.editorconfig  # add `editorconfig` support to `vsdcode`
        vscode-extensions.ms-azuretools.vscode-bicep  # add `lsp` support for `bicep`
        vscode-extensions.github.vscode-github-actions  # manage `github` workflows
        vscode-extensions.vscode-icons-team.vscode-icons  # improved development icons
        vscode-extensions.shd101wyy.markdown-preview-enhanced  # quickly preview `markdown` files
        vscode-extensions.ms-dotnettools.vscode-dotnet-runtime  # dependency of the `bicep` extension
      ];
    })
  ];

  # Tooling for working with the `python` scripting language
  python-pkgs = [
    uv  # `python` package installer
    ruff  # `python` linter
    mypy  # optional static typing for `python`
    pipx  # `python` isolated script runner
    pyenv  # `python`` manager
    bandit  # security oriented static analyzer for `python`
    pyright  # `python` type checker
    safety-cli  # checks installed dependencies for known vulnerabilities
  ];

  powershell-pkgs = [
    powershell  # shell and scripting language based on `.net`
    powershell-editor-services  # `powershell` development support in any editor or application
  ];

  # Tooling for working with `typescript`
  typescript-pkgs = [
    deno  # runtime for `javascript` and `typescript`
    typescript-language-server  # `lsp` for `typescript`
  ];

  # Add empty arrays for easily commenting the packages that I don't need
  all = []
    ++ ai-pkgs
    ++ azure-pkgs
    ++ vscode-pkgs
    ++ python-pkgs
    ++ powershell-pkgs
    ++ typescript-pkgs
    ++ [];

}  # rec

# vim: et ts=2 sts=2 sw=2 syntax=nix
