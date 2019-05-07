#!/bin/bash
set -e
set -o pipefail

function enable_services() {
    sudo systemctl enable tlp.service
}

apt update
apt -y upgrade
apt install --no-install-recommends -y \
    automake \
    autolock \
    ca-certificates \
    clipit \
    curl \
    feh \
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
    tree \
    tlp \
    urlview \
    vim

