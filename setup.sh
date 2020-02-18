#!/bin/bash
set -e
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

sudo mkdir -p /etc/X11/xorg.conf.d/

# System services
find $PWD/etc -type f | while read f
do
    target=$(echo $f | sed -e "s|$PWD||")
    if [[ -f "$target" && ! -L "$target" ]]
    then
        target_bak="${target}_old"
        read -p "$target exists, override with backup at ${target_bak}?  (y/n)" < /dev/tty
        if [ $REPLY == "y" ]
        then
            sudo mv $target ${target_bak}
            echo "$target backed up at ${target_bak}"
        fi
    fi

    # If not symlink, create it, else assume we're there already
    if [[ ! -L $target ]]
    then
        sudo ln -s $f $target || true
    fi

done
find $PWD/.config/systemd/user -type f | while read f
do
    echo "Enabling $f"
    systemctl --user enable $f
    systemctl --user start $f
done
systemctl --user daemon-reload || true
sudo systemctl daemon-reload
