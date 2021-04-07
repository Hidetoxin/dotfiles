# VIM LIKE ALIASES
alias :q="exit 0"
alias :wq="exit 0"
alias :!q="exit 0"


alias ll="exa --git --icons -l -a"
alias tmux="TERM=xterm-256color tmux"

# IF NEOVIM IS INSTALLED
[ -n "$(command -v nvim)" ] \
    && alias vi="vim"       \
    && alias vim="nvim"

# IF PACKER IS INSTALLED
[ -n "$(command -v packer)" ]      \
    && alias pkr="packer"          \
    && alias pkrb="packer build"   \
    && alias pkrc="packer console" \
    && alias pkri="packer inspect" \
    && alias pkrv="packer validate"

# IF MOLECULE IS INSTALLED
[ -n "$(command -v molecule)" ]      \
    && alias mol="molecule"          \
    && alias moli="molecule init"    \
    && alias molt="molecule test"    \
    && alias moll="molecule login"   \
    && alias molv="molecule verify"  \
    && alias molc="molecule create"  \
    && alias mold="molecule destroy" \
    && alias molc="molecule converge"

# IF TERRAFORM IS INSTALLED
[ -n "$(command -v terraform)" ]                  \
    &&  alias tf="terraform"                      \
    &&  alias tfi="terraform init"                \
    &&  alias tfp="terraform plan"                \
    &&  alias tfs="terraform show"                \
    &&  alias tft="terraform taint"               \
    &&  alias tfa="terraform apply"               \
    &&  alias tfo="terraform output -json"        \
    &&  alias tfc="terraform console"             \
    &&  alias tfd="terraform destroy"             \
    &&  alias tfr="terraform refresh"             \
    &&  alias tfv="terraform validate"            \
    &&  alias tfw="terraform workspace"           \
    &&  alias tfu="terraform force-unlock"        \
    &&  alias tfwl="terraform workspace list"     \
    &&  alias tfws="terraform worcspace select"   \
    &&  alias tfwc="terraform worcspace create"   \
    &&  alias !tfa="terraform apply -auto-aprove" \
    &&  alias !tfd="terraform destroy -auto-aprove"
