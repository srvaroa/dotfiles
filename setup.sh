#!/bin/bash
git submodule update --init
find . -maxdepth 1 -name '.*' | while read f
do
    f=$(basename $f)
    dest=$HOME/$f
    if [ "$f" != ".git" ] && \
       [ "$f" != ".gitignore" ] && \
       [ "$f" != ".gitmodules" ] && \
       [ ! -f "$dest" ] &&   \
       [ ! -d "$dest" ]
    then
        ln -s $PWD/$f $dest
    fi
done

if [ "$(uname -s)" != "Linux" ]
then
    echo "Skip linux-specific setup"
    exit 1
fi

# System services
find $PWD/etc -type f -name *.service | while read f
do
    target=$(echo $f | sed -e "s|$PWD||")
    sudo ln -s $f $target || true
done
find $PWD/.config/systemd/user -type f | while read f
do
    echo "Enabling $f"
    systemctl --user enable $(basename $f)
    systemctl --user start $(basename $f)
done
systemctl --user daemon-reload || true
sudo systemctl daemon-reload
