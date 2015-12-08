# keybind
bindkey -v
bindkey '^?' backward-delete-char

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
autoload -Uz compinit; compinit

# color
autoload -U colors; colors

# prompt
autoload -U promptinit && promptinit
prompt pure

# aliases
alias reload="exec zsh -l"
alias ls="ls -G"

if which thefuck > /dev/null; then eval $(thefuck --alias); fi

# nvm
if [[ -s ~/.nvm/nvm.sh ]]; then source ~/.nvm/nvm.sh ; fi

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# direnv
if which direnv > /dev/null; then eval "$(direnv hook zsh)"; fi

# tmux
if ! [ -z $PS1 ] && [ -z $TMUX ]; then
  if tmux has-session; then
    tmux attach
  else
    tmux
  fi
fi

