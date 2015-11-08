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

# nvm
if [[ -s ~/.nvm/nvm.sh ]]; then source ~/.nvm/nvm.sh ; fi

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# direnv
if which direnv > /dev/null; then eval "$(direnv hook zsh)"; fi

# aliases
alias reload="exec zsh -l"
alias ls="ls -G"

# tmux
if ! [ -z $PS1 ] && [ -z $TMUX ]; then
  if $(tmux has-session 2>/dev/null); then
    tmux attach
  else
    tmux
  fi
fi
