# keybind
bindkey -v
bindkey '^?' backward-delete-char

# directory moving
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups

# history
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt hist_ignore_dups
setopt share_history
setopt hist_reduce_blanks

# autocomplete
autoload -Uz compinit; compinit

# color
autoload -U colors; colors

# prompt
autoload -U promptinit && promptinit
prompt pure
