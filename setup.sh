#!/bin/bash
git submodule update --init
find . -name '.*' -type f -d 1 | while read f
do
    ln -s $PWD/$(basename $f) $HOME/$(basename $f)
done
