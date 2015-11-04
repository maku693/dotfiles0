# dotfiles
## Minimum Requirements
- Git
- OpenSSH
- Bourne Shell (sh)

Config ssh hosts correctly and register the current environment's SSH key to GitHub before installation.
cf.) https://help.github.com/articles/generating-ssh-keys/

## Installation
```
$ cd ~
$ git clone git://gituhub.com/maku693/dotfiles
$ cd dotfiles
$ ./install.sh
```

## Add a new dotfile
```
$ cd ~
$ mv .newdotfile ~/dotfiles
$ cd ~/dotfiles
$ ./install.sh
$ git add .newdotfile
$ git commit -m 'Add .newdotfile'
$ git push
```

## Update an existing dotfile
```
$ cd ~/dotfiles
$ vim .existing
$ ./install.sh
$ git add .existing
$ git commit -m 'Update .existing'
$ git push
```

