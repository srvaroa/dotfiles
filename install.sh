#!/bin/bash
set -e
set -o pipefail

apt update
apt -y upgrade
apt install --no-install-recommends -y \
    automake \
    ca-certificates \
    clipit \
    curl \
    feh \
    fonts-inconsolata \
    fortune \
    fortune-mod \
    git \
    gnupg \
    gpg-agent \
    htop \
    jq \
    links2 \
    msmtp \
    mutt \
    pinentry-curses \
    powertop \
    redshift-gtk \
    sudo \
    tlp \
    tree \
    urlview \
    vim \
    w3m \
    xautolock \
    xbacklight \

sudo systemctl enable tlp.service
sudo systemctl start tlp.service

