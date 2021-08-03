#!/bin/bash
# vim: syntax=sh

# INSTALL ZSH PLUGIN MANAGER
if [ ! -d "$XDG_CACHE_HOME/zinit/bin" ]; then
    git clone                                \
        https://github.com/zdharma/zinit.git \
        "$XDG_CACHE_HOME/zinit/bin"
fi

# INSTALL TMUX PLUGIN MANAGER
if [ ! -d "$XDG_CACHE_HOME/tpm/tpm" ]; then
    git clone                                   \
        https://github.com/tmux-plugins/tpm.git \
        "$XDG_CACHE_HOME/tpm/tpm"
fi

# INSTALL NVIM PLUGIN MANAGER
if [ ! -d "$XDG_CACHE_HOME/dein" ]; then
    git clone                                  \
        https://github.com/shougo/dein.vim.git \
        "$XDG_CACHE_HOME/dein/repos/github.com/shougo/dein.vim"
fi
