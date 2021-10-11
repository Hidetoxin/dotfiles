# vim: syntax=sh

# LOAD OMZ SNIPPETS

# auto-completion with fzf
zinit ice --lucid --if="[ -n $(command -v fzf) ]" \
    && zinit snippet "OMZ::plugins/fzf/fzf.plugin.zsh"  # after mcfly

# un-archive any file pressing 'x'
zinit ice --lucid \
    && zinit snippet "OMZ::plugins/extract/extract.plugin.zsh"

# correct command pressing 'esc - esc'
zinit ice --lucid \
    && zinit snippet "OMZ::plugins/thefuck/thefuck.plugin.zsh"

# toggle fg and bg commands pressing 'ctrl + z'
zinit ice --lucid \
    && zinit snippet "OMZ::plugins/fancy-ctrl-z/fancy-ctrl-z.plugin.zsh"

# change directoy using fzf pressing 'tab' while doing cd
# zinit snippet OMZ::plugins/zsh-interactive-cd/zsh-interactive-cd.plugin.zsh
