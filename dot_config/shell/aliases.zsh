# vim: syntax=zsh

# Common aliases
alias .-='cd -'
alias ..='cd ..'
alias .2='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'
alias .6='cd ../../../../../..'
alias .7='cd ../../../../../../..'
alias .8='cd ../../../../../../../..'
alias .9='cd ../../../../../../../../..'
alias mkdir='mkdir -p'

# Vim like aliases
alias :q='exit 0'
alias :qa='exit 0'
alias :wq='exit 0'
alias :!q='exit 0'

# Add fun aliases
alias ip='curl ifonfig.me'
alias sw='telnet towel.blinkenlights.nl'
alias map='telnet mapscii.me'
alias wrk='curl wrk.ist'
alias cht='curl cht.sh'
alias exsh='curl e.xec.sh/spongebob_magic'
alias rice='curl -L rum.sh/ricebowl'
alias joke='curl https://icanhazdadjoke.com'
alias news='curl getnews.tech'
alias chat='ssh chat.shazow.net'
alias race='curl node-web-console.glitch.me'
alias tron='ssh sshtron.zachlatta.com'
alias wttr='curl wttr.in/gdl'
alias pong='telnet milek7.gq'
alias bpsh='curl https://gist.githubusercontent.com/aaronNGi/a9212f36a8e0c2bc0674e259563ad952/raw/b0b86302d07b5b8a3c154a100bf41d98097c44d0/newscript.sh'
alias dance='nc rya.nc 1987'
alias chess='telnet freechess.org'
alias covid='curl -L covid19.trackercli.com/history/mx'
alias mines='sshpas -p "play" ssh play@anonymine-demo.oskog97.com -p 2222'
alias parrot='curl parrot.live'
alias netris='ssh netris.rocketnine.space'
alias forrest='curl ascii.live/forrest'
alias tictactoe='telnet pixelomer.com'

# If `bw` is installed
[ -n "$(command -v bw)" ]     \
    && alias bwlo='bw logout' \
    && alias bwli='eval $(bw login $(pass show bw/user) $(pass show bw/pass) --code $(2fa bw) | rg "export" | sed "s/\$ //g")'

# If `bat` is installed
[ -n "$(command -v bat)" ]     \
    && alias b='bat'

# If `eza` is installed
[ -n "$(command -v eza)" ]                                          \
    && alias l1='eza -F -lah --git --icons ..'                      \
    && alias l2='eza -F -lah --git --icons ../..'                   \
    && alias l3='eza -F -lah --git --icons ../../..'                \
    && alias l4='eza -F -lah --git --icons ../../../..'             \
    && alias l5='eza -F -lah --git --icons ../../../../..'          \
    && alias l6='eza -F -lah --git --icons ../../../../../..'       \
    && alias l7='eza -F -lah --git --icons ../../../../../..'       \
    && alias l8='eza -F -lah --git --icons ../../../../../../..'    \
    && alias l9='eza -F -lah --git --icons ../../../../../../../..' \
    && alias tree='eza --git --tree --icons'

# If `navi` is installed
[ -n "$(command -v navi)" ]         \
    && alias navit='navi --tldr'    \
    && alias navip='navi --print'   \
    && alias navic='navi --cheatsh'

# If `tmux` is installed
[ -n "$(command -v tmux)" ] \
    && alias tmux='TERM=xterm-256color tmux'

# If `nvim` is installed
[ -n "$(command -v nvim)" ] \
    && alias v='nvim'       \
    && alias sv='sudo nvim'

# If `imgcat` is installed
[ -n "$(command -v imgcat)" ] \
    && alias ic='imgcat'      \
    && alias icf='imgcat --width=$COLUMNS --heigh=$LINES'

# If `packer` is installed
[ -n "$(command -v packer)" ]        \
    && alias pkr='packer'            \
    && alias pkri='packer init'      \
    && alias pkrb='packer build'     \
    && alias pkrc='packer console'   \
    && alias pkrv='packer validate'  \
    && alias pkrin='packer inspect'

# If `aichat` is installed
[ -n "$(command -v aichat)" ] \
    && alias aic='aichat'

# If `awsume` is installed
[ -n "$(command -v awsume)" ] \
    && alias awsume='. awsume'

# If `lazygit` is installed
[ -n "$(command -v lazygit)" ] \
    && alias lgit="lazygit"    \

# If `gpg-tui` is installed
[ -n "$(command -v gpg-tui)" ] \
    &&  alias gpgt='gpg-tui --style colored'

# If `himalaya` is installed
[ -n "$(command -v himalaya)" ]      \
    && alias hmly='himalaya'         \
    && alias hmlyw='himalaya write'  \
    && alias hmlys='himalaya search' \
    && alias hmlyr='himalaya read'   \
    && alias hmlyre='himalaya reply' \
    && alias hmlyrm='himalaya delete'

# If `molecule` is installed
[ -n "$(command -v molecule)" ]       \
    && alias mol='molecule'           \
    && alias moli='molecule init'     \
    && alias molt='molecule test'     \
    && alias moll='molecule login'    \
    && alias molv='molecule verify'   \
    && alias molc='molecule create'   \
    && alias mold='molecule destroy'  \
    && alias molc='molecule converge'

# If `infracost` is installed
[ -n "$(command -v infracost)" ] \
    &&  alias ic='infracost'

# If `terragrunt` is installed
[ -n "$(command -v terragrunt)" ]                             \
    && alias tg='terragrunt'                                  \
    && alias tgr='terragrunt run-all'                         \
    && alias tgi='terragrunt init'                            \
    && alias tgri='terragrunt run-all init'                   \
    && alias tgp='terragrunt plan'                            \
    && alias tgrp='terragrunt run-all plan'                   \
    && alias tgs='terragrunt show'                            \
    && alias tgrs='terragrunt run-all show'                   \
    && alias tga='terragrunt apply'                           \
    && alias tgra='terragrunt run-all apply'                  \
    && alias tgo='terragrunt output -json'                    \
    && alias tgc='terragrunt console'                         \
    && alias tgd='terragrunt destroy'                         \
    && alias tgrd='terragrunt run-all destroy'                \
    && alias tgr='terragrunt refresh'                         \
    && alias tgv='terragrunt validate'                        \
    && alias tgrv='terragrunt run-all validate'               \
    && alias tgu='terragrunt force-unlock'                    \
    && alias tga!='terragrunt apply -auto-approve'            \
    && alias tgra!='terragrunt run-all apply -auto-approve'   \
    && alias tgd!='terragrunt destroy -auto-approve'          \
    && alias tgrd!='terragrunt run-all destroy -auto-approve'

# If lazydocker is installed
[ -n "$(command -v lazydocker)" ] \
    && alias ldkr='lazydocker'

# If `aws-console` is installed
[ -n "$(command -v aws-console)" ] \
    && alias awsc='aws-console'

# If `markdownlint-cli` is installed
[ -n "$(command -v markdownlint)" ] \
    && alias mdl='markdownlint'     \

# If `taskwarrior-tui` is installed
[ -n "$(command -v taskwarrior-tui)" ] \
    && alias taskt='taskwarrior-tui'
