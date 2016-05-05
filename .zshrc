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
PROMPT="
%{$fg[blue]%}%3~
%(?.%{$fg[green]%}.%{$fg[red]%})%B❯%b "
# Terminal title
autoload -Uz add-zsh-hook
function update_terminal_title() {
  printf '\e]7;%s\a' "file://$HOSTNAME$PWD"
}
add-zsh-hook precmd update_terminal_title

# Common settings
source ~/.commonrc

alias reload="exec zsh -l"

# direnv
if which direnv > /dev/null; then eval "$(direnv hook zsh)"; fi

