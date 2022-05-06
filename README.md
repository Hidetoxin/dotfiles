# :house: DOTFILES MANAGED BY CHEZMOI

## :wrench: INSTALLATION

To install these configuration files you need [chezmoi] installed on your system,
you'll also need to tweak the secrets as this repository is specific to my use
case. Once you tweaked the secrets you can just run the below command:

``` sh
chezmoi init hidetoxin/dotfiles
```

## :keyboard: SHORTCUTS

### :abcd: ZSH

| Key Combination                | Key Effect                             |
|--------------------------------|----------------------------------------|
| <kbd>Esc</kbd>                 | switch to `vim` <kbd>normal</kbd> mode |
| <kbd>Alt</kbd> + <kbd>c</kbd>  | bring [fzf] to do a `cd`               |
| <kbd>Ctrl</kbd> + <kbd>z</kbd> | switch app background / foreground     |
| <kbd>Ctrl</kbd> + <kbd>g</kbd> | bring [navi] with [fzf]                |
| <kbd>Ctrl</kbd> + <kbd>r</kbd> | bring `history` with [fzf]             |
| <kbd>Ctrl</kbd> + <kbd>h</kbd> | bring `history` with [mcfly]           |
| <kbd>Ctrl</kbd> + <kbd>t</kbd> | recent files using  [fzf]              |

### :green_book: NVIM

| Key Combination                                            | Key Effect                                              |
|------------------------------------------------------------|---------------------------------------------------------|
| <kbd>,</kbd>                                               | [neovim] <kbd>leader</kbd> key                          |
| <kbd>"</kbd>                                               | show registers on NORMAL mode with `which-key`          |
| <kbd>Ctrl</kbd> + <kbd>r</kbd>                             | show registers on INSERT mode with `which-key`          |
| <kbd>up</kbd>                                              | select window at the top                                |
| <kbd>down</kbd>                                            | select window at the bottom                             |
| <kbd>left</kbd>                                            | select window to the left side                          |
| <kbd>right</kbd>                                           | select window to the right side                         |
| <kbd>c</kbd> <kbd>s</kbd>                                  | start `vim-surround` replace                            |
| <kbd>d</kbd> <kbd>s</kbd>                                  | remove `vim-surround` delimiters                        |
| <kbd>Ctrl</kbd>   + <kbd>\\</kbd>                          | toggle terminal using `toggleterm`                      |
| <kbd>leader</kbd> + <kbd>b</kbd> <kbd>d</kbd>              | close current buffer                                    |
| <kbd>leader</kbd> + <kbd>b</kbd> <kbd>a</kbd>              | close all buffers                                       |
| <kbd>leader</kbd> + <kbd>q</kbd> <kbd>q</kbd>              | close everything                                        |
| <kbd>leader</kbd> + <kbd>l</kbd> <kbd>g</kbd>              | open [lazygit] on a floating terminal                   |
| <kbd>leader</kbd> + <kbd>m</kbd> <kbd>d</kbd>              | open [glow] on a floating terminal                      |
| <kbd>leader</kbd> + <kbd>h</kbd> <kbd>i</kbd>              | open [himalaya] on a floating terinal                   |
| <kbd>leader</kbd> + <kbd>t</kbd> <kbd>w</kbd>              | toggle concentration mode with `twilight.nvim`          |
| <kbd>leader</kbd> + <kbd>t</kbd> <kbd>d</kbd>              | search _TODO_ using `Telescope`                         |
| <kbd>leader</kbd> + <kbd>t</kbd> <kbd>t</kbd>              | toggle `nvim-tree.lua` on a left side panel             |
| <kbd>g</kbd>      + <kbd>c</kbd> <kbd>c</kbd>              | toggle comments                                         |
| <kbd>leader</kbd> + <kbd>t</kbd> <kbd>d</kbd>              | open todo picker with `Telescope`                       |
| <kbd>leader</kbd> + <kbd>e</kbd> <kbd>m</kbd>              | open emoji picker with `Telescope`                      |
| <kbd>leader</kbd> + <kbd>n</kbd> <kbd>c</kbd>              | open yanks buffer with `Telescope`                      |
| <kbd>leader</kbd> + <kbd>Enter</kbd>                       | open buffer selected with `Telescope`                   |
| <kbd>leader</kbd> + <kbd>g</kbd> <kbd>b</kbd>              | toggle git blame using `Gitsigns`                       |
| <kbd>leader</kbd> + <kbd>g</kbd> <kbd>h</kbd>              | open [ghq] repositories with `Telescope`                |
| <kbd>leader</kbd> + <kbd>t</kbd> <kbd>s</kbd>              | open `tree-sitter` symbols with `Telescope`             |
| <kbd>leader</kbd> + <kbd>f</kbd> <kbd>f</kbd>              | open files on current folder with `Telescope`           |
| <kbd>leader</kbd> + <kbd>f</kbd> <kbd>b</kbd>              | open file browser on current folder with `Telescope`    |
| <kbd>leader</kbd> + <kbd>g</kbd> <kbd>f</kbd>              | open files on current `git` repository with `Telescope` |
| <kbd>leader</kbd> + <kbd>r</kbd> <kbd>g</kbd>              | search using [ripgrep] with `Telescope`                 |
| <kbd>leader</kbd> + <kbd>z</kbd> <kbd>l</kbd>              | open files using [zoxide] with `Telescope`              |
| <kbd>leader</kbd> + <kbd>m</kbd> <kbd>m</kbd>              | toggle [minimap] on a new tab                           |
| <kbd>leader</kbd> + <kbd>v</kbd> <kbd>v</kbd>              | toggle `Vista` on a new tab                             |
| <kbd>leader</kbd> + <kbd>n</kbd> <kbd>t</kbd>              | toggle numbers from `Numbers`                           |
| <kbd>leader</kbd> + <kbd>n</kbd> <kbd>n</kbd>              | disable numbers from `Numbers`                          |
| <kbd>leader</kbd> <kbd>leader</kbd> + <kbd>w</kbd>         | move to word on `EasyMotion`                            |
| <kbd>leader</kbd> <kbd>leader</kbd> + <kbd>k</kbd>         | move to line forward on `EasyMotion`                    |
| <kbd>leader</kbd> <kbd>leader</kbd> + <kbd>j</kbd>         | move to line downward on `EasyMotion`                   |

### :desktop_computer: TMUX

| Key Combination                              | Key Effect                                         |
|----------------------------------------------|----------------------------------------------------|
| <kbd>\`</kbd>                                | [tmux] <kbd>prefix</kbd> key                       |
| <kbd>prefix</kbd> + <kbd>d</kbd>             | detach from current session                        |
| <kbd>prefix</kbd> + <kbd>x</kbd>             | close current pane                                 |
| <kbd>prefix</kbd> + <kbd>n</kbd>             | go to next pane                                    |
| <kbd>prefix</kbd> + <kbd>c</kbd>             | create a new window                                |
| <kbd>prefix</kbd> + <kbd>s</kbd>             | select a session                                   |
| <kbd>prefix</kbd> + <kbd>z</kbd>             | zoom in current pane                               |
| <kbd>prefix</kbd> + <kbd>u</kbd>             | bring [bitwarden] in a [fzf] pane                  |
| <kbd>prefix</kbd> + <kbd>h</kbd>             | go to pane on the right                            |
| <kbd>prefix</kbd> + <kbd>j</kbd>             | go to pane on the bottom                           |
| <kbd>prefix</kbd> + <kbd>k</kbd>             | go to pane on the top                              |
| <kbd>prefix</kbd> + <kbd>l</kbd>             | go to pane on the left                             |
| <kbd>prefix</kbd> + <kbd>I</kbd>             | install [tpm] plugin manager                       |
| <kbd>prefix</kbd> + <kbd>F</kbd>             | open [fzf] on a pop-up to search the [tmux] buffer |
| <kbd>prefix</kbd> + <kbd>U</kbd>             | update [tpm] managed plugins                       |
| <kbd>prefix</kbd> + <kbd>\|</kbd>            | split pane vertically                              |
| <kbd>prefix</kbd> + <kbd>-</kbd>             | split pane horizontally                            |
| <kbd>prefix</kbd> + <kbd>Tab</kbd>           | toggle sidebar with `tree`                         |
| <kbd>prefix</kbd> + <kbd>Backspace</kbd>     | toggle sidebar with `tree` and focus               |
| <kbd>prefix</kbd> + <kbd>[</kbd>             | start `copy-mode`                                  |
| `copy-mode` + <kbd>o</kbd>                   | open selected text                                 |
| `copy-mode` + <kbd>S</kbd>                   | open selected text on `$EDITOR`                    |
| `copy-mode` + <kbd>Ctrl</kbd> + <kbd>o</kbd> | search selected text on DuckDuckGo                 |
| `copy-mode` + <kbd>Space</kbd>               | start selecting text to yank                       |

### :japanese_ogre: YABAI

| Key Combination                                                        | Key Effect                                  |
|------------------------------------------------------------------------|---------------------------------------------|
| <kbd>Alt</kbd> + <kbd>space</kbd>                                      | [skhd] modal key                            |
| <kbd>modal</kbd> + <kbd>g</kbd>                                        | switch to <kbd>grid</kbd> mode              |
| <kbd>modal</kbd> + <kbd>s</kbd>                                        | switch to <kbd>swap</kbd> mode              |
| <kbd>modal</kbd> + <kbd>w</kbd>                                        | switch to <kbd>warp</kbd> mode              |
| <kbd>modal</kbd> + <kbd>m</kbd>                                        | switch to <kbd>move</kbd> mode              |
| <kbd>modal</kbd> + <kbd>f</kbd>                                        | switch to <kbd>focus</kbd> mode             |
| <kbd>modal</kbd> + <kbd>r</kbd>                                        | switch to <kbd>resize</kbd> mode            |
| <kbd>grid</kbd> + <kbd>d</kbd>                                         | destroy desktop                             |
| <kbd>grid</kbd> + <kbd>w</kbd>                                         | create desktop and follow focus             |
| <kbd>grid</kbd> + <kbd>t</kbd>                                         | toggle float window                         |
| <kbd>grid</kbd> + <kbd>k</kbd>                                         | make float window fill screen               |
| <kbd>grid</kbd> + <kbd>h</kbd>                                         | make float window fill left half of screen  |
| <kbd>grid</kbd> + <kbd>l</kbd>                                         | make float window fill right half of screen |
| <kbd>grid</kbd> + <kbd>p</kbd>                                         | toggle sticky, float and resize in pip      |
| <kbd>grid</kbd> + <kbd>b</kbd>                                         | balance windows                             |
| <kbd>grid</kbd> + <kbd>a</kbd>                                         | toggle padding                              |
| <kbd>grid</kbd> + <kbd>z</kbd>                                         | toggle window parent zoom                   |
| <kbd>grid</kbd> + <kbd>c</kbd>                                         | toggle window full-screen zoom              |
| <kbd>grid</kbd> + <kbd>n</kbd>                                         | toggle window native zoom                   |
| <kbd>grid</kbd> + <kbd>e</kbd>                                         | toggle window split type                    |
| <kbd>grid</kbd> + <kbd>B</kbd>                                         | toggle window border                        |
| <kbd>grid</kbd> + <kbd>S</kbd>                                         | toggle sticky                               |
| <kbd>grid</kbd> + <kbd>A</kbd>                                         | toggle bsp layout                           |
| <kbd>grid</kbd> + <kbd>D</kbd>                                         | toggle float layout                         |
| <kbd>swap</kbd> + <kbd>h</kbd>                                         | swap window to the left                     |
| <kbd>swap</kbd> + <kbd>j</kbd>                                         | swap window to the bottom                   |
| <kbd>swap</kbd> + <kbd>k</kbd>                                         | swap window to the top                      |
| <kbd>swap</kbd> + <kbd>l</kbd>                                         | swap window to the right                    |
| <kbd>swap</kbd> + <kbd>a</kbd>                                         | rotate window around                        |
| <kbd>swap</kbd> + <kbd>x</kbd>                                         | rotate window on *x* axis                     |
| <kbd>swap</kbd> + <kbd>y</kbd>                                         | rotate window on *y* axis                     |
| <kbd>warp</kbd> + <kbd>h</kbd>                                         | warp window to the left                     |
| <kbd>warp</kbd> + <kbd>j</kbd>                                         | warp window to the bottom                   |
| <kbd>warp</kbd> + <kbd>k</kbd>                                         | warp window to the top                      |
| <kbd>warp</kbd> + <kbd>l</kbd>                                         | warp window to the right                    |
| <kbd>move</kbd> + <kbd>w</kbd>                                         | create desktop, move and focus              |
| <kbd>move</kbd> + <kbd>h</kbd>                                         | move window to the left                     |
| <kbd>move</kbd> + <kbd>j</kbd>                                         | move window to the bottom                   |
| <kbd>move</kbd> + <kbd>k</kbd>                                         | move window to the top                      |
| <kbd>move</kbd> + <kbd>l</kbd>                                         | move window to the right                    |
| <kbd>move</kbd> + <kbd>H</kbd>                                         | insert window to the left                   |
| <kbd>move</kbd> + <kbd>J</kbd>                                         | insert window to the bottom                 |
| <kbd>move</kbd> + <kbd>K</kbd>                                         | insert window to the top                    |
| <kbd>move</kbd> + <kbd>L</kbd>                                         | insert window to the right                  |
| <kbd>move</kbd> + <kbd>cmd</kbd> + <kbd>x</kbd>                        | move to last display and focus              |
| <kbd>move</kbd> + <kbd>cmd</kbd> + <kbd>c</kbd>                        | move to next display and focus              |
| <kbd>move</kbd> + <kbd>cmd</kbd> + <kbd>z</kbd>                        | move to previous display and focus          |
| <kbd>move</kbd> + <kbd>cmd</kbd> + <kbd>0-9</kbd>                      | move to display 1-10 and focus              |
| <kbd>move</kbd> + <kbd>x</kbd>                                         | move window to last desktop                 |
| <kbd>move</kbd> + <kbd>c</kbd>                                         | move window to next desktop                 |
| <kbd>move</kbd> + <kbd>z</kbd>                                         | move window to previous desktop             |
| <kbd>move</kbd> + <kbd>cmd</kbd> + <kbd>lalt</kbd> + <kbd>0-9</kbd>    | move window to space 1-10 and focus         |
| <kbd>move</kbd> + <kbd>cmd</kbd> + <kbd>lshift</kbd> + <kbd>0-9</kbd>  | move window to space 11-20 and focus        |
| <kbd>move</kbd> + <kbd>cmd</kbd> + <kbd>ralt</kbd> + <kbd>0-9</kbd>    | move window to space 21-30 and focus        |
| <kbd>move</kbd> + <kbd>cmd</kbd> + <kbd>rshift</kbd> + <kbd>0-9</kbd>  | move window to space 31-40 and focus        |
| <kbd>focus</kbd> + <kbd>h</kbd>                                        | focus window on the left                    |
| <kbd>focus</kbd> + <kbd>j</kbd>                                        | focus window on the bottom                  |
| <kbd>focus</kbd> + <kbd>k</kbd>                                        | focus window on the top                     |
| <kbd>focus</kbd> + <kbd>l</kbd>                                        | focus window on the right                   |
| <kbd>focus</kbd> + <kbd>cmd</kbd> + <kbd>lalt</kbd> + <kbd>0-9</kbd>   | focus space 1-10                            |
| <kbd>focus</kbd> + <kbd>cmd</kbd> + <kbd>lshift</kbd> + <kbd>0-9</kbd> | focus space 11-20                           |
| <kbd>focus</kbd> + <kbd>cmd</kbd> + <kbd>ralt</kbd> + <kbd>0-9</kbd>   | focus space 21-30                           |
| <kbd>focus</kbd> + <kbd>cmd</kbd> + <kbd>rshift</kbd> + <kbd>0-9</kbd> | focus space 31-40                           |
| <kbd>focus</kbd> + <kbd>x</kbd>                                        | focus last display                          |
| <kbd>focus</kbd> + <kbd>c</kbd>                                        | focus next display                          |
| <kbd>focus</kbd> + <kbd>z</kbd>                                        | focus previous display                      |
| <kbd>focus</kbd> + <kbd>0-9</kbd>                                      | focus display 1-10                          |
| <kbd>resize</kbd> + <kbd>h</kbd>                                       | increase window size to the left            |
| <kbd>resize</kbd> + <kbd>j</kbd>                                       | increase window size to the bottom          |
| <kbd>resize</kbd> + <kbd>k</kbd>                                       | increase window size to the top             |
| <kbd>resize</kbd> + <kbd>l</kbd>                                       | increase window size to the right           |
| <kbd>resize</kbd> + <kbd>H</kbd>                                       | decrease window size to the left            |
| <kbd>resize</kbd> + <kbd>J</kbd>                                       | decrease window size to the bottom          |
| <kbd>resize</kbd> + <kbd>K</kbd>                                       | decrease window size to the top             |
| <kbd>resize</kbd> + <kbd>L</kbd>                                       | decrease window size to the right           |

## :art: GUI APPLICATIONS

This repository manages my configuration for the below *GUI* applications:

* [skhd] - hotkey daemon for *macOS*
* [yabai] - window management utility for *macOS*
* [kitty] - fast *GPU* based terminal-emulator
* [alacritty] - fast *GPU* based terminal-emulator written in [rust]
* [sketchybar] - status bar for *macOS*

[skhd]: https://github.com/koekeishiya/skhd
[yabai]: https://github.com/koekeishiya/yabai
[kitty]: https://github.com/kovidgoyal/kitty
[sketchyar]: https://github.com/felixkratz/sketchybar
[alacritty]: https://github.com/alacritty/alacritty

## :computer: CLI APPLICATIONS

---

This repository manages my configuration for the below *CLI* applications and
plugins:

* [sd] - better `sed` replacement written in [rust]
* [fd] - better `find` replacement written in [rust]
* [jq] - command-line JSON parser written in [c]
* [xh] - better `curl` / `wget` replacement written in [rust]
* [exa] - better `ls` replacement written in [rust]
* [bat] - better `less` replacement written in [rust]
* [dog] - better `dig` replacement written in [rust]
* [duf] - disk usage utility written in [go]
* [tpm] - `tmux` plugin manager
* [aws] - tool for managing aws cloud
* [fzf] - general-purpose command-line fuzzy finder written in [go
* [zsh] - better interactive shell and replacement for `bash`
* [bat] - better `cat` replacement written in [rust]
* [dust] - better `du` replacement written in [rust]
* [navi] -  interactive cheat-sheet tool for the command-line
* [tmux] - terminal multiplexer
* [p10k] - `zsh` theme for prompt
* [cheat] - better `man` replacement written in [go]
* [delta] - `git` / `diff` viewer written in [go]
* [gping] - better `ping` replacement written in [rust]
* [procs] - better `ps` replacement written in [rust]
* [goenv] - virtual environment manager for [go]
* [pyenv] - virtual environment manager for [python]
* [rbenv] - virtual environment manager for [ruby]
* [zinit] - `zsh` plugin manager
* [vivid] - tool for setting-up `ls` colors
* [mcfly] - `fzf` like tool for searching history written in [rust]
* [neovim] - `vim` re-written replacement
* [bottom] - better `top` replacement written in [rust]
* [choose] - better `awk` / `cut` replacement written in [rust]
* [gpg-tui] - `gpg` *TUI* front-end written in [rust]
* [lazygit] - `git` *TUI* front-end written in [go]
* [minimap] - `vscode` like minimap for `nvim` written in [rust]
* [ripgrep] - better `grep` replacement written in [rust]
* [chezmoi] - dot files manager utility written in [go]
* [thefuck] - corrects errors in previous commands
* [tealdeer] - better `man` replacement written in [rust]
* [bitwarden] - tool for managing secrets
* [aws-vault] - tool for fetching aws credentials using sso
* [tmuxinator] - `tmux` session manager
* [pre-commit] - tool to manage `git` hooks
* [commitizen] - tool to validate `git` commit messages
* [spotify-tui] - *TUI* front-end for spotify
* [taskwarrior] - task management utility
* [taskwarrior-tui] - *TUI* front-end for [taskwarrior] written in [rust]

[sd]: https://github.com/chmln/sd
[xh]: https://github.com/ducaale/xh
[fd]: https://github.com/sharkdp/fd
[jq]: https://github.com/stedolan/jq
[aws]: https://github.com/aws/aws-cli
[bat]: https://github.com/sharkdp/bat
[dog]: https://github.com/ogham/dog
[duf]: https://github.com/muesli/duf
[exa]: https://github.com/ogham/exa
[tpm]: https://github.com/tmux-plugins/tpm
[fzf]: https://github.com/junegunn/fzf
[zsh]: https://github.com/ohmyzsh/ohmyzsh
[bat]: https://github.com/sharkdp/bat
[dust]: https://github.com/bootandy/dust
[navi]: https://github.com/denisidoro/navi
[tmux]: https://github.com/tmux/tmux
[glow]: https://github.com/charmbracelet/glow
[p10k]: https://github.com/romkatv/powerlevel10k
[cheat]: https://github.com/cheat/cheat
[delta]: https://github.com/dandavison/delta
[gping]: https://github.com/orf/gping
[goenv]: https://github.com/syndbg/goenv
[rbenv]: https://github.com/rbenv/rbenv
[pyenv]: https://github.com/pyenv/pyenv
[zinit]: https://github.com/zdharma/zinit
[vivid]: https://github.com/sharkdp/vivid
[mcfly]: https://github.com/cantino/mcfly
[procs]: https://github.com/dalance/procs
[choose]: https://github.com/theryangeary/choose
[bottom]: https://github.com/https://github.com/ClementTsang/bottom
[neovim]: https://github.com/neovim/neovim
[zoxide]: https://github.com/ajeetdsouza/zoxide
[gpg-tui]: https://github.com/orhun/gpg-tui
[minimap]: https://github.com/wfxr/code-minimap
[lazygit]: https://github.com/jesseduffield/lazygit
[ripgrep]: https://github.com/BurntSushi/ripgrep
[chezmoi]: https://github.com/twpayne/chezmoi
[thefuck]: https://github.com/nvbn/thefuck
[tealdeer]: https://github.com/dbrgn/tealdeer
[himalaya]: https://github.com/soywod/himalaya
[aws-vault]: https://github.com/99designs/aws-vault
[bitwarden]: https://github.com/bitwarden/cli
[commitizen]: https://github.com/commitizen/cz-cli
[pre-commit]: https://github.com/pre-commit/pre-commit
[tmuxinator]: https://github.com/tmuxinator/tmuxinator
[spotify-tui]: https://github.com/Rigellute/spotify-tui
[timewarrior]: https://github.com/GothenburgBitFactory/timewarrior
[taskwarrior]: https://github.com/GothenburgBitFactory/taskwarrior
[taskwarrior-tui]: https://github.com/kdheepak/taskwarrior-tui

## :thought_balloon: INSPIRATION

* [Reddit's r/cli]
* [Reddit's r/vimporn]
* [Reddit's r/unixporn]
* [Reddit's r/commandline]
* [Vim Galore]
* [Awesome Privacy]
* [Rootknecht's CLI]
* [Open Source Mac Apps]
* [Top Command Line Tools]
* [Cool But Obscure Unix Tools]

[Reddit's r/cli]: https://www.libredd.it/r/cli
[Reddit's r/vimporn]: https://www.libredd.it/r/vimporn
[Reddit's r/unixporn]: https://www.libredd.it/r/unixporn
[Reddit's r/commandline]: https://www.libredd.it/r/commandline
[Vim Galore]: https://github.com/mhinz/vim-galore
[Awesome Privacy]: https://github.com/pluja/awesome-privacy
[Rootknecht's CLI]: https://rootknecht.net/knowledge/applications/cli/
[Open Source Mac Apps]: https://www.oss.wiki/
[Top Command Line Tools]: https://stackify.com/top-command-line-tools
[Cool But Obscure Unix Tools]: https://kkovacs.eu/cool-but-obscure-unix-tools

## :white_check_mark: TODO

- [ ] Check nvim-dap
- [ ] Check nvim-lint
- [ ] Check trouble.nvim
- [ ] Fix fzf-tab plugin
- [ ] Check nvim-ts-rainbow
- [ ] Add mpv configuration
- [ ] Add alsa configuration
- [ ] Add xplr configuration
- [ ] Add buku configuration
- [ ] Add siggo configuration
- [ ] Add sn-cli configuration
- [ ] Fix sotrmssh configuration
- [ ] Fix newsboat configuration
- [ ] Add infracost configuration
- [ ] Fix minimap focus on neovim
- [ ] Fix sketchybar configuration

[//]: # (Additional links for reference)

[go]: https://github.com/golang/go
[rust]: https://github.com/rust-lang/rust
[ruby]: https://github.com/ruby/ruby
[python]: htttps://github.com/python
