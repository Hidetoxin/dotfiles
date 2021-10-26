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
