#!/bin/bash
git submodule update --init
find . -name '.*' -d 1 | while read f
do
    f=$(basename $f)
    if [ "$f" != ".git" ]
    then
        ln -s $PWD/$f $HOME/$f
    fi
done
