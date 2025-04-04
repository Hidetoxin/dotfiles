#!/bin/sh

# Add plugins to zinit, more information can be found at:
# - https://zdharma-continuum.github.io/zinit/wiki/zinit-packages/

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

# Search sub-strings on your history file
zinit ice --lucid \
    && zinit light 'zsh-users/zsh-history-substring-search'

# Add syntax highlighting for the shell
zinit ice --lucid \
    && zinit light 'zdharma-continuum/fast-syntax-highlighting'
