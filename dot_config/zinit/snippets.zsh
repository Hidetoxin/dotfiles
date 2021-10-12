# vim: syntax=sh

# LOAD OMZ SNIPPETS

# git aliases
zinit ice --lucid --wait=0 --if="[ -n $(command -v git) ]" \
    && zinit snippet "OMZ::plugins/git/git.plugin.zsh"

# auto-completion with fzf
zinit ice --lucid --wait=0 --if="[ -n $(command -v fzf) ]" \
    && zinit snippet "OMZ::plugins/fzf/fzf.plugin.zsh"

# un-archive any file pressing 'x'
zinit ice --lucid --wait=0  \
    && zinit snippet "OMZ::plugins/extract/extract.plugin.zsh"

# correct command pressing 'esc - esc'
zinit ice --lucid --wait=0  \
    && zinit snippet "OMZ::plugins/thefuck/thefuck.plugin.zsh"

# toggle fg and bg commands pressing 'ctrl + z'
zinit ice --lucid --wait=0  \
    && zinit snippet "OMZ::plugins/fancy-ctrl-z/fancy-ctrl-z.plugin.zsh"
