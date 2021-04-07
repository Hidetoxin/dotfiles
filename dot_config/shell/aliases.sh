# vim: syntax=sh

# VIM LIKE ALIASES
alias :q="exit 0"
alias :wq="exit 0"
alias :!q="exit 0"

# IF EXA IS INSTALLED
[ -n "$(command -v exa)" ]                   \
    && alias ls="exa --git --icons"          \
    && alias ll="exa --git --icons"          \
    && alias l1="exa --git --icons"          \
    && alias tree="exa --git --tree --icons" \
    && debug_info "Adding 'exa' aliases"

# IF TMUX IS INSTALLED
[ -n "$(command -v tmux)" ]                  \
    && alias tmux="TERM=xterm-256color tmux" \
    && debug_info "Adding 'tmux' aliases"

# IF NEOVIM IS INSTALLED
[ -n "$(command -v nvim)" ]   \
    && alias vi="vim"         \
    && alias svi="sudo vi"    \
    && alias vim="nvim"       \
    && alias svim="sudo nvim" \
    && debug_info "Adding 'nvim' aliases"

# IF PACKER IS INSTALLED
[ -n "$(command -v packer)" ]       \
    && alias pkr="packer"           \
    && alias pkrb="packer build"    \
    && alias pkrc="packer console"  \
    && alias pkri="packer inspect"  \
    && alias pkrv="packer validate" \
    && debug_info "Adding 'packer' aliases"

# IF CHEZMOI IS INSTALLED
[ -n "$(command -v chezmoi)" ]              \
    && alias cm="chezmoi"                   \
    && alias cmc="chezmoi cd"               \
    && alias cma="chezmoi add"              \
    && alias cmd="chezmoi diff"             \
    && alias cme="chezmoi edit"             \
    && alias cme="chezmoi execute-template" \
    && debug_info "Adding 'chezmoi' aliases"

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
    && debug_info "Adding 'molecule' aliases"

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
    &&  alias tfwl="terraform workspace list"       \
    &&  alias tfws="terraform worcspace select"     \
    &&  alias tfwc="terraform worcspace create"     \
    &&  alias tfa!="terraform apply -auto-aprove"   \
    &&  alias tfd!="terraform destroy -auto-aprove" \
    && debug_info "Adding 'terraform' aliases"
