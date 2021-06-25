" BE IMPROVED
if &compatible
    set nocompatible
endif

" SET LEADER BEFORE THE PLUGINS
let mapleader=","
let g:mapleader=","

" SET PYTHON SETTINGS
let g:python_host_prog  = expand('~/.pyenv/versions/nvim/bin/python')
let g:python3_host_prog = expand('~/.pyenv/versions/nvim/bin/python3')

" SET THE RUNTIME PATH TO INCLUDE DEIN AND INITIALIZE
set runtimepath+=~/.cache/dein/repos/github.com/shougo/dein.vim

" SETUP PLUGINS FROM TOML FILES FOR DEIN
if dein#load_state($XDG_CACHE_HOME . "/dein")
    let g:dein#cache_directory=$XDG_CACHE_HOME . "/dein"
    call dein#begin($XDG_CACHE_HOME . "/dein")

    " SETUP TOML CONFIGURATIONS
    let s:toml_dir=$XDG_CONFIG_HOME . "/dein"
    let s:toml=s:toml_dir . "/init.toml"
    let s:lazy_toml=s:toml_dir . "/lazy.toml"
    call dein#load_toml(s:toml, {"lazy": 0})
    call dein#load_toml(s:lazy_toml, {"lazy": 1})

    call dein#end()
    call dein#save_state()
endif

" INSTALL PLUGINS ON STARTUP
if dein#check_install()
    call dein#install()
    let g:pluginsExists=1
endif

" SET TABBING
set tabstop=4
set expandtab

" SET VISUAL GUIDES
set list
set number
set cursorline
set cursorcolumn
let &colorcolumn = join(range(81,999), ",")
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:·

" SET KEYBOARD MAPPINGS
inoremap jj <Esc>
nnoremap <c-s> :w<CR>

" SET COLORSCHEME
syntax on
set background=dark
colorscheme gruvbox
