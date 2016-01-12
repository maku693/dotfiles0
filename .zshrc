# keybind
bindkey -e

# directory moving
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups

# history
HISTFILE=~/.zsh_history
HISTSIZE=3000
SAVEHIST=3000
setopt hist_ignore_dups
setopt share_history
setopt hist_reduce_blanks

# suppress PATH duplicate 
typeset -U path

# autocomplete
fpath=(/usr/local/share/zsh-completions $fpath)
autoload -Uz compinit; compinit

# color
autoload -U colors; colors

# prompt
autoload -U promptinit && promptinit
prompt pure

source ~/.commonrc

# direnv
if which direnv > /dev/null; then eval "$(direnv hook zsh)"; fi

