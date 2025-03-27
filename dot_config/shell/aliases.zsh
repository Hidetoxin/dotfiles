# vim: syntax=sh

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

# Ad daliases to simulate `vim`
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
[ -n "$(command -v bw)" ]                                                      \
    && alias bwlo='bw logout && unset BW_SESSION'                              \
    && alias bwun='export BW_SESSION="$(bw unlock --passwordenv BW_PASSWORD)"' \
    && alias bwli='export BW_SESSION="$(bw login $(pass show self/bw/user) $(pass show self/bw/pass) --code $(2fa self/bw/2fa) --raw)"'

# If `gpg` is installed
[ -n "$(command -v gpg)" ]                                \
    && gpglp='gpg --list-keys --keyid-format=long'        \
    && gpgls='gpg --list-secret-keys --keyid-format=long' \
    && gpgnew='gpg --quick-gen-key --batch --passphrase ""'

# If `bat` is installed
[ -n "$(command -v bat)" ] \
    && alias b='bat'

# If `cat` is installed
[ -n "$(command -v bat)" ] \
    && alias c='cat'

# If `erd` is installed
[ -n "$(command -v erd)" ]                                          \
    && alias erd='erd --icons --human --layout inverted'            \
    && alias erd1='erd --icons --human --level 1 --layout inverted' \
    && alias erd2='erd --icons --human --level 2 --layout inverted' \
    && alias erd3='erd --icons --human --level 3 --layout inverted' \
    && alias erd4='erd --icons --human --level 4 --layout inverted' \
    && alias erd5='erd --icons --human --level 5 --layout inverted'

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

# If `just` is installed
[ -n "$(command -v just)" ] \
    && alias j='just'

# If `navi` is installed
[ -n "$(command -v navi)" ]         \
    && alias navit='navi --tldr'    \
    && alias navip='navi --print'   \
    && alias navic='navi --cheatsh'

# If `opentofu` is installed
[ -n "$(command -v tofu)" ]                             \
    && alias tt='tofu'                                  \
    && alias ttr='tofu run-all'                         \
    && alias tti='tofu init'                            \
    && alias ttri='tofu run-all init'                   \
    && alias ttp='tofu plan'                            \
    && alias ttrp='tofu run-all plan'                   \
    && alias tts='tofu show'                            \
    && alias ttrs='tofu run-all show'                   \
    && alias tta='tofu apply'                           \
    && alias ttra='tofu run-all apply'                  \
    && alias tto='tofu output -json'                    \
    && alias ttc='tofu console'                         \
    && alias ttd='tofu destroy'                         \
    && alias ttrd='tofu run-all destroy'                \
    && alias ttr='tofu refresh'                         \
    && alias ttv='tofu validate'                        \
    && alias ttrv='tofu run-all validate'               \
    && alias ttu='tofu force-unlock'                    \
    && alias tta!='tofu apply -auto-approve'            \
    && alias ttra!='tofu run-all apply -auto-approve'   \
    && alias ttd!='tofu destroy -auto-approve'          \
    && alias ttrd!='tofu run-all destroy -auto-approve'

# If `nvim` is installed
[ -n "$(command -v nvim)" ] \
    && alias v='nvim'       \
    && alias sv='sudo nvim'

# If `tmux` is installed
[ -n "$(command -v tmux)" ] \
    && alias tmux='TERM=xterm-256color tmux'

# If `imgcat` is installed
[ -n "$(command -v imgcat)" ] \
    && alias ic='imgcat'      \
    && alias icf='imgcat --width=$COLUMNS --heigh=$LINES"'

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

# If `frogmouth` is installed
[ -n "$(command -v frogmouth)" ] \
    && alias fm='frogmouth'

# If `infracost` is installed
[ -n "$(command -v infracost)" ] \
    &&  alias ic='infracost'

# If `terraform` is installed
[ -n "$(command -v terraform)" ]                              \
    && alias tf='terraform'                                  \
    && alias tfr='terraform run-all'                         \
    && alias tfi='terraform init'                            \
    && alias tfri='terraform run-all init'                   \
    && alias tfp='terraform plan'                            \
    && alias tfrp='terraform run-all plan'                   \
    && alias tfs='terraform show'                            \
    && alias tfrs='terraform run-all show'                   \
    && alias tfa='terraform apply'                           \
    && alias tfra='terraform run-all apply'                  \
    && alias tfo='terraform output -json'                    \
    && alias tfc='terraform console'                         \
    && alias tfd='terraform destroy'                         \
    && alias tfrd='terraform run-all destroy'                \
    && alias tfr='terraform refresh'                         \
    && alias tfv='terraform validate'                        \
    && alias tfrv='terraform run-all validate'               \
    && alias tfu='terraform force-unlock'                    \
    && alias tfa!='terraform apply -auto-approve'            \
    && alias tfra!='terraform run-all apply -auto-approve'   \
    && alias tfd!='terraform destroy -auto-approve'          \
    && alias tfrd!='terraform run-all destroy -auto-approve'

# If `terramate` is installed
[ -n "$(command -v terramate)" ]                     \
    && alias tm='terramate'                          \
    && alias tmd='terramate debug show metadata'     \
    && alias tmls='terramate list'                   \
    && alias tmcs='terramate list --changed'         \
    && alias tmcr='terramate create --all-terraform' \
    && alias tmcl='terramate experimental clone'     \
    && alias tmgen='terramate generate'              \
    && alias tmfmt='terramate format'                \
    && alias tmrun='terramate run --'                \
    && alias tmtti='terramate run -- tofu init'      \
    && alias tmttp='terramate run -- tofu plan'      \
    && alias tmtfi='terramate run -- terraform init' \
    && alias tmtfp='terramate run -- terraform plan'

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

# If `lazydocker` is installed
[ -n "$(command -v lazydocker)" ] \
    && alias ldkr='lazydocker'

# If `aws-console` is installed
[ -n "$(command -v aws-console)" ] \
    && alias awsc='aws-console'

# If `terraform-docs` is installed
[ -n "$(command -v terraform-docs)" ] \
    && alias tdoc='terraform-docs'    \
    && alias tdocm='terraform-docs markdown table'

# If `darwin-rebuild` is installed
[ -n "$(command -v darwin-rebuild)" ]                                                         \
    && alias dr='darwin-rebuild'                                                              \
    && alias drc='darwin-rebuild check --flake ~/.config/nix#"$(scutil --get LocalHostName)"' \
    && alias drs='darwin-rebuild switch --flake ~/.config/nix#"$(scutil --get LocalHostName)"'

# If `markdownlint-cli` is installed
# [ -n "$(command -v markdownlint)" ] \
#     && alias mdl='markdownlint'

# If `taskwarrior-tui` is installed
# [ -n "$(command -v taskwarrior-tui)" ] \
#     && alias taskt='taskwarrior-tui'
