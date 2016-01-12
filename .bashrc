source ~/.commonrc

# Prompt
PS1='\w\n\$ '

# direnv
if which direnv > /dev/null; then eval "$(direnv hook bash)"; fi

