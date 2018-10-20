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
    ca-certificates \
    clipit u
    curl \
    feh \
    fortune \
    fortune-mod \
    git \
    gnupg \
    htop \
    jq \
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

