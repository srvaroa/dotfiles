#!/bin/bash
git submodule update --init
find . -maxdepth 1 -name '.*' | while read f
do
    f=$(basename $f)
    dest=$HOME/$f
    if [ "$f" != ".git" ] && \
       [ "$f" != ".gitignore" ] && \
       [ ! -f "$dest" ] &&   \
       [ ! -d "$dest" ]
    then
        ln -s $PWD/$f $dest
    fi
done
