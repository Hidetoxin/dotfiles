# Add shell integrations and completions
[ -n "$(command -v bw)" ] \
    && eval "$(bw completion --shell zsh)"

[ -n "$(command -v navi)" ] \
    && eval "$(navi widget zsh)"

[ -n "$(command -v jira)" ] \
    && eval "$(jira completion zsh)"

[ -n "$(command -v goenv)" ] \
    && eval "$(goenv init -)"

[ -n "$(command -v pyenv)" ] \
    && eval "$(pyenv init --path)"

[ -n "$(command -v rbenv)" ] \
    && eval "$(rbenv init - zsh)"

[ -n "$(command -v nodenv)" ] \
    && eval "$(nodenv init -)"

[ -n "$(command -v mcfly)" ] \
    && eval "$(mcfly init zsh | sed 's,\^R,^H,')"

[ -n "$(command -v himalaya)" ] \
    && eval "$(himalaya completion zsh)"

[ -n "$(command -v infracost)" ] \
    && eval "$(infracost completion --shell zsh)"

[ -n "$(command -v cocainate)" ] \
    && eval "$(cocainate completion zsh)"

[ -n "$(command -v argocd)" ] \
    && eval "$(argocd completion zsh)"

[ -n "$(command -v pay-respects)" ] \
    && eval "$(pay-respects zsh)"

# vim: et ts=4 sts=4 sw=4 syntax=sh
