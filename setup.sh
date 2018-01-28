#!/bin/bash
git submodule update --init
find . -maxdepth 1 -name '.*' | while read f
do
    f=$(basename $f)
    if [ "$f" != ".git" ]
    then
        ln -s $PWD/$f $HOME/$f
    fi
done
