#!/bin/bash
set -e

# Rust
curl https://sh.rustup.rs -sSf | sh -s -- -y
. ${HOME}/.cargo/env

# lsd
LSD_VERSION="0.16.0"
LSD="lsd_${LSD_VERSION}_amd64.deb"

[ -f "${HOME}/Downloads/${LSD}" ] || wget -O ${HOME}/Downloads/${LSD} "https://github.com/Peltoche/lsd/releases/download/${LSD_VERSION}/${LSD}"

sudo dpkg -i ${HOME}/Downloads/${LSD}


# bat
BAT_VERSION="0.11.0"
BAT="bat_${BAT_VERSION}_amd64.deb"

[ -f "${HOME}/Downloads/${BAT}" ] || wget -O ${HOME}/Downloads/${BAT} "https://github.com/sharkdp/bat/releases/download/v${BAT_VERSION}/${BAT}"
sudo dpkg -i ${HOME}/Downloads/${BAT}
