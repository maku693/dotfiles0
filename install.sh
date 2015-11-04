#! /bin/sh
cd `dirname $0`

for f in *
do
  case $f in
    '.git' | 'brew' | 'npm' | 'install.sh' | 'README.md') ;;
    *) ln -si $f ~/$f;;
  esac
done

