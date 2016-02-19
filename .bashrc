source ~/.commonrc

# Prompt
PS1='\n\[\e[35m\]\w\[\e[m\]\n\$ '

# direnv
if which direnv > /dev/null; then eval "$(direnv hook bash)"; fi

