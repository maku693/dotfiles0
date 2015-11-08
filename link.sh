#! /bin/sh
cd `dirname $0`

for f in .*
do
  case $f in
    '.' | '..' | '.git') ;;
    *) ln -si $PWD/$f ~/$f && echo "Linked $f";;
  esac
done

