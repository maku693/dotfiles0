source ~/.commonrc

# Prompt
PS1='\n\[\e[35m\]\w\[\e[m\]\n\$> '

# History
export HISTCONTROL=ignoredups:erasedups
export HISTSIZE=3000
shopt -s histappend
# Share history in multiple terminals
PROMPT_COMMAND="history -a;history -c;history -r;${PROMPT_COMMAND}"

# direnv
if which direnv > /dev/null; then eval "$(direnv hook bash)"; fi

