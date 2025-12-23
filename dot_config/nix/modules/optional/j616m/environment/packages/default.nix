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
  ];


  # Tooling for working with `azure` cloud
  azure-pkgs = [
    bicep # `cli` tool for working with `bicep` files
    azure-cli  # `cli` for `microsoft azure`
    bicep-lsp  # `lsp` for `bicep`
    azure-cli-extensions.alias  # support for command aliases
    azure-cli-extensions.webapp # additional commands for `appservice`
    azure-cli-extensions.eventgrid  # `eventgrid` command module
    azure-cli-extensions.front-door  # manage networking `frontdoors`
    azure-cli-extensions.interactive  # interactive shell
    azure-cli-extensions.containerapp  # `containerapp` extension
    azure-cli-extensions.staticwebapp  # `staticwebapp` extension
    azure-cli-extensions.log-analytics  # `loganalytics` query capabilities
    azure-cli-extensions.application-insights # managing `appinsights` components and querying metrics, events, and logs
    azure-cli-extensions.log-analytics-solution  # support for `loganalytics` solution
  ];

  # Editor and tooling for working with code
  vscode-pkgs = [
    vscode
    vscode-extensions.vscodevim.vim
    vscode-extensions.github.copilot
    vscode-extensions.eamodio.gitlens
    vscode-extensions.waderyan.gitblame
    vscode-extensions.github.copilot-chat
    vscode-extensions.bierner.markdown-mermaid
    vscode-extensions.ms-azuretools.vscode-bicep
    vscode-extensions.vscode-icons-team.vscode-icons
    vscode-extensions.shd101wyy.markdown-preview-enhanced
  ];

  # Tooling for working with the `python` scripting language
  python-pkgs = [
    uv  # `python` package installer
    ruff  # `python` linter
    pipx  # `python` isolated script runner
    pyenv  # `python`` manager
    bandit  # security oriented static analyzer for `python`
    pyright  # `python` type checker
  ];

  powershell-pkgs = [
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
