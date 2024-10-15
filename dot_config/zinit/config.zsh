#!/bin/sh

# Add plugins 
# Add in `powerlevel10k`
zinit ice depth=1 --lucid \
  && zinit light 'romkatv/powerlevel10k'

# Add `fzf` for tab completion
zinit ice --lucid --if="[ -n $(command -v fzf) ]" \
    && zinit light 'aloxaf/fzf-tab'               \
    && zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'

# Colorize output using the `grc` command
zinit ice --lucid --wait=0 --if="[ -n $(command -v grc) ]" \
    && zinit light 'unixorn/warhol.plugin.zsh'

# Add completion
zinit ice --lucid \
    && zinit light 'zsh-users/zsh-completions'
    # zicompinit; zicdreplay  # fix fzf-tab

# Suggest a command based on previous history
zinit ice --lucid \
    && zinit light 'zsh-users/zsh-autosuggestions'

# Alias reminder when you type a full command
zinit ice --lucid \
    && zinit light 'michaelaquilina/zsh-you-should-use'

# Add syntax highlighting for the shell
zinit ice --lucid \
    && zinit light 'zdharma-continuum/fast-syntax-highlighting'

# Add `oh-my-zsh` snippets
# Add `go` completion and aliases
# zinit ice --lucid --wait=0 --if="[ -n $(command -v go) ]" \
#     && zinit snippet 'OMZ::plugins/golang/golang.plugin.zsh'

# Add `gh` completion
zinit ice --lucid --wait=0 --if="[ -n $(command -v gh) ]" \
    && zinit snippet 'OMZ::plugins/gh/gh.plugin.zsh'

# Add `cpv` for doing `cp` with rsync
zinit ice --lucid --wait=0 --if="[ -n $(command -v rsync) ]" \
    && zinit snippet 'OMZ::plugins/cp/cp.plugin.zsh'

# Add `eza` aliases
zinit ice --lucid --wait=0 --if="[ -n $(command -v eza) ]" \
    && zinit snippet 'OMZ::plugins/eza/eza.plugin.zsh'     \
    && zstyle ':omz:plugins:eza' 'icons' yes               \
    && zstyle ':omz:plugins:eza' 'git-status' yes

# Add `aws` completion
zinit ice --lucid --wait=0 --if="[ -n $(command -v aws) ]" \
    && zinit snippet 'OMZ::plugins/aws/aws.plugin.zsh'

# Add `git` aliases
zinit ice --lucid --wait=0 --if="[ -n $(command -v git) ]" \
    && zinit snippet 'OMZ::plugins/git/git.plugin.zsh'

# Add `fzf` aliases
zinit ice --lucid --wait=0 --if="[ -n $(command -v fzf) ]" \
    && zinit snippet 'OMZ::plugins/fzf/fzf.plugin.zsh'

# Add `tig` aliases
zinit ice --lucid --wait=0 --if="[ -n $(command -v tig) ]" \
    && zinit snippet 'OMZ::plugins/tig/tig.plugin.zsh'

# Add `ssh` completion
zinit ice --lucid --wait=0 --if="[ -n $(command -v ssh) ]" \
    && zinit snippet 'OMZ::plugins/ssh/ssh.plugin.zsh'

# Add `helm` completion and aliases
zinit ice --lucid --wait=0 --if="[ -n $(command -v helm) ]" \
    && zinit snippet 'OMZ::plugins/helm/helm.plugin.zsh'

# Add `pass` completion
# zinit ice --lucid --wait=0 --if="[ -n $(command -v pass) ]" \
#     && zinit snippet 'OMZ::plugins/pass/_pass'

# Add `brew aliases
zinit ice --lucid --wait=0 --if="[ -n $(command -v brew) ]" \
    && zinit snippet 'OMZ::plugins/brew/brew.plugin.zsh'

# Add `tmux` aliases and environment variables
zinit ice --lucid --wait=0 --if="[ -n $(command -v tmux) ]" \
    && zinit snippet 'OMZ::plugins/tmux/tmux.plugin.zsh'

# Add `tofu` aliases and completion
zinit ice --lucid --wait=0 --if="[ -n $(command -v tofu) ]" \
    && zinit snippet 'OMZ::plugins/opentofu/opentofu.plugin.zsh'

# Provide macos utilities
# zinit ice --lucid --wait=0 \
#     && zinit snippet 'OMZ::plugins/macos/macos.plugin.zsh'

# Add `jfrog-cli` completion
zinit ice --lucid --wait=0 --if="[ -n $(command -v jfrog-cli) ]" \
    && zinit snippet 'OMZ::plugins/jfrog/jfrog.plugin.zsh'

# Add `procs` completion
zinit ice --lucid --wait=0 --if="[ -n $(command -v procs) ]" \
    && zinit snippet 'OMZ::plugins/procs/procs.plugin.zsh'

# Add `docker` completion and aliases
# zinit ice --lucid --wait=0 --if="[ -n $(command -v docker) ]" \
#     && zinit snippet 'OMZ::plugins/docker/docker.plugin.zsh'

# Add `poetry` aliases and completion
zinit ice --lucid --wait=0 --if="[ -n $(command -v poetry) ]" \
    && zinit snippet 'OMZ::plugins/poetry/poetry.plugin.zsh'

# Add `kubectl` completion and aliases
zinit ice --lucid --wait=0 --if="[ -n $(command -v kubectl) ]" \
    && zinit snippet 'OMZ::plugins/kubectl/kubectl.plugin.zsh'

# Add `direnv` hook
zinit ice --lucid --wait=0 --if="[ -n $(command -v direnv) ]" \
    && zinit snippet 'OMZ::plugins/direnv/direnv.plugin.zsh'

# Add `vagrant` aliases
zinit ice --lucid --wait=0 --if="[ -n $(command -v vagrant) ]" \
    && zinit snippet 'OMZ::plugins/vagrant/vagrant.plugin.zsh'

# Add `zoxide` completion
zinit ice --lucid --wait=0 --if="[ -n $(command -v zoxide) ]" \
    && zinit snippet 'OMZ::plugins/zoxide/zoxide.plugin.zsh' \
    && zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

# Add `chezmoi` completion
zinit ice --lucid --wait=0 --if="[ -n $(command -v chezmoi) ]" \
    && zinit snippet 'OMZ::plugins/chezmoi/chezmoi.plugin.zsh'

# Un-archive any file by using the `x` command
zinit ice --lucid --wait=0  \
    && zinit snippet 'OMZ::plugins/extract/extract.plugin.zsh'

# Add `minikube` completion
zinit ice --lucid --wait=0 --if="[ -n $(command -v minikube) ]" \
    && zinit snippet 'OMZ::plugins/minikube/minikube.plugin.zsh'

# Add `ansible` aliases
zinit ice --lucid --wait=0 --if="[ -n $(command -v ansible) ]" \
    && zinit snippet 'OMZ::plugins/ansible/ansible.plugin.zsh'

# Use of `gitignore.io` from the command line
zinit ice --lucid --wait=0 --if="[ -n $(command -v git) ]" \
    && zinit snippet 'OMZ::plugins/gitignore/gitignore.plugin.zsh'

# binds `gnu` coreutils to their default name
zinit ice --lucid --wait=0  \
    && zinit snippet 'OMZ::plugins/gnu-utils/gnu-utils.plugin.zsh'

# Automatically change `poetry` environment
zinit ice --lucid --wait=0 --if="[ -n $(command -v poetry) ]" \
    && zinit snippet 'OMZ::plugins/poetry-env/poetry-env.plugin.zsh'

# Add  `git` aliases for conventional commit messages
zinit ice --lucid --wait=0 --if="[ -n $(command -v git) ]" \
    && zinit snippet 'OMZ::plugins/git-commit/git-commit.plugin.zsh'

# Add `pre-commit` aliases
zinit ice --lucid --wait=0 --if="[ -n $(command -v pre-commit) ]" \
    && zinit snippet 'OMZ::plugins/pre-commit/pre-commit.plugin.zsh'

# Correct command pressing `esc - esc`
zinit ice --lucid --wait=0  \
    && zinit snippet 'OMZ::plugins/thefuck/thefuck.plugin.zsh'

# Toggle `fg` and `bg` commands pressing `ctrl + z`
zinit ice --lucid --wait=0  \
    && zinit snippet 'OMZ::plugins/fancy-ctrl-z/fancy-ctrl-z.plugin.zsh'

# Colored `man` pages
zinit ice --lucid --wait=0  \
    && zinit snippet 'OMZ::plugins/colored-man-pages/colored-man-pages.plugin.zsh'

# Suggest packages to be installed if a commnand cannot be found
zinit ice --lucid --wait=0  \
    && zinit snippet 'OMZ::plugins/command-not-found/command-not-found.plugin.zsh'
