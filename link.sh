#! /bin/sh
cd `dirname "${0}"`
files=`find . -type f | sed -e "s/.\///" | grep -v "^\.git" | grep "^\."`
for f in ${files}; do
    ln -si "${PWD}/${f}" "${HOME}/${f}" && echo "${PWD}/${f}" "${HOME}/${f}"
done
