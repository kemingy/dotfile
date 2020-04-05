#!/bin/bash
set -e

# Rust
curl https://sh.rustup.rs -sSf | sh -s -- -y
. ${HOME}/.cargo/env

# bat
BAT_VERSION="0.11.0"
BAT="bat_${BAT_VERSION}_amd64.deb"

[ -f "${HOME}/Downloads/${BAT}" ] || wget -O ${HOME}/Downloads/${BAT} "https://github.com/sharkdp/bat/releases/download/v${BAT_VERSION}/${BAT}"
sudo dpkg -i ${HOME}/Downloads/${BAT}

# rg
RG_VERSION="11.0.2"
RG="ripgrep_${RG_VERSION}_amd64.deb"

[ -f "${HOME}/Downloads/${RG}" ] || wget -O ${HOME}/Downloads/${RG} "https://github.com/BurntSushi/ripgrep/releases/download/${RG_VERSION}/${RG}"
sudo dpkg -i ${HOME}/Downloads/${RG}

# exa
EXA_VERSION="0.9.0"
EXA="exa-linux-x86_64-${EXA_VERSION}.zip"

[ -f "${HOME}/Downloads/${EXA}" ] || wget -O ${HOME}/Downloads/${EXA} "https://github.com/ogham/exa/releases/download/v${EXA_VERSION}/${EXA}"
if [ ! -d "$DIR" ]; then
    sudo apt install zip -y
fi
unzip "${HOME}/Downloads/${EXA}" -d "${HOME}/Downloads/"
sudo cp "${HOME}/Downloads/exa-linux-x86_64" /usr/local/bin/exa

# starship
bash -c "$(curl -fsSL https://starship.rs/install.sh)" -- --yes
