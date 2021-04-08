# vim: syntax=sh

# CD ALAISES
alias .-="cd -"
alias ..="cd .."
alias .2="cd ../.."
alias .3="cd ../../.."
alias .4="cd ../../../.."
alias .5="cd ../../../../.."
debug_info "Adding aliases for 'cd'"

# VIM LIKE ALIASES
alias :q="exit 0"
alias :wq="exit 0"
alias :!q="exit 0"
debug_info "Adding aliases for 'exit'"


# IF EXA IS INSTALLED
[ -n "$(command -v exa)" ]                               \
    && alias ls="exa -FG --git --icons"                  \
    && alias ll="exa -Flh --git --icons"                 \
    && alias lg="exa -FlhG --git --icons"                \
    && alias lt="exa -Flht --git --icons"                \
    && alias l1="exa -Flah --git --icons .."             \
    && alias l2="exa -Flah --git --icons ../.."          \
    && alias l3="exa -Flah --git --icons ../../.."       \
    && alias l4="exa -Flah --git --icons ../../../.."    \
    && alias l5="exa -Flah --git --icons ../../../../.." \
    && alias tree="exa --git --tree --icons"             \
    && debug_info "Adding aliases for 'exa'"

# IF TMUX IS INSTALLED
[ -n "$(command -v tmux)" ]                  \
    && alias tmux="TERM=xterm-256color tmux" \
    && debug_info "Adding aliases for 'tmux'"

# IF NEOVIM IS INSTALLED
[ -n "$(command -v nvim)" ]   \
    && alias vi="vim"         \
    && alias svi="sudo vi"    \
    && alias vim="nvim"       \
    && alias svim="sudo nvim" \
    && debug_info "Adding aliases for 'nvim'"

# IF PACKER IS INSTALLED
[ -n "$(command -v packer)" ]       \
    && alias pkr="packer"           \
    && alias pkrb="packer build"    \
    && alias pkrc="packer console"  \
    && alias pkri="packer inspect"  \
    && alias pkrv="packer validate" \
    && debug_info "Adding aliases for 'packer'"

# IF AWSUME IS INSTALLED
[ -n "$(command -v awsume)" ]  \
    && alias awsume=". awsume" \
    && debug_info "Adding aliases for 'awsume'"

# IF CHEZMOI IS INSTALLED
[ -n "$(command -v chezmoi)" ]               \
    && alias cm="chezmoi"                    \
    && alias cma="chezmoi add"               \
    && alias cmi="chezmoi init"              \
    && alias cmd="chezmoi diff"              \
    && alias cme="chezmoi edit"              \
    && alias cmcd="chezmoi cd"               \
    && alias cmat="chezmoi add --template"   \
    && alias cmet="chezmoi execute-template" \
    && alias cmap="chezmoi apply --verbose" \
    && debug_info "Adding aliases for 'chezmoi'"

# IF LAZYGIT IS INSTALLED
[ -n "$(command -v lazygit)" ] \
    && alias lgit="lazygit"    \
    && debug_info "Adding aliases for 'lazygit'"

# IF MOLECULE IS INSTALLED
[ -n "$(command -v molecule)" ]       \
    && alias mol="molecule"           \
    && alias moli="molecule init"     \
    && alias molt="molecule test"     \
    && alias moll="molecule login"    \
    && alias molv="molecule verify"   \
    && alias molc="molecule create"   \
    && alias mold="molecule destroy"  \
    && alias molc="molecule converge" \
    && debug_info "Adding aliases for 'molecule'"

# IF TERRAFORM IS INSTALLED
[ -n "$(command -v terraform)" ]                    \
    &&  alias tf="terraform"                        \
    &&  alias tfi="terraform init"                  \
    &&  alias tfp="terraform plan"                  \
    &&  alias tfs="terraform show"                  \
    &&  alias tft="terraform taint"                 \
    &&  alias tfa="terraform apply"                 \
    &&  alias tfo="terraform output -json"          \
    &&  alias tfc="terraform console"               \
    &&  alias tfd="terraform destroy"               \
    &&  alias tfr="terraform refresh"               \
    &&  alias tfv="terraform validate"              \
    &&  alias tfw="terraform workspace"             \
    &&  alias tfu="terraform force-unlock"          \
    &&  alias tfwn="terraform workspace new"        \
    &&  alias tfwl="terraform workspace list"       \
    &&  alias tfws="terraform workspace select"     \
    &&  alias tfa!="terraform apply -auto-aprove"   \
    &&  alias tfd!="terraform destroy -auto-aprove" \
    && debug_info "Adding aliases for 'terraform'"
