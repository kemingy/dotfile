#!/bin/bash
set -e

# Rust
curl https://sh.rustup.rs -sSf | sh -s -- -y
. ${HOME}/.cargo/env

# bat
BAT_VERSION="0.15.4"
BAT="bat_${BAT_VERSION}_amd64.deb"

[ -f "${HOME}/Downloads/${BAT}" ] || wget -O ${HOME}/Downloads/${BAT} "https://github.com/sharkdp/bat/releases/download/v${BAT_VERSION}/${BAT}"
if [ $EUID -ne 0 ]; then
    sudo dpkg -i ${HOME}/Downloads/${BAT}
else
    dpkg -i ${HOME}/Downloads/${BAT}
fi

# rg
RG_VERSION="12.1.1"
RG="ripgrep_${RG_VERSION}_amd64.deb"

[ -f "${HOME}/Downloads/${RG}" ] || wget -O ${HOME}/Downloads/${RG} "https://github.com/BurntSushi/ripgrep/releases/download/${RG_VERSION}/${RG}"
if [ $EUID -ne 0 ]; then
    sudo dpkg -i ${HOME}/Downloads/${RG}
else
    dpkg -i ${HOME}/Downloads/${RG}
fi

# exa
EXA_VERSION="0.9.0"
EXA="exa-linux-x86_64-${EXA_VERSION}.zip"

[ -f "${HOME}/Downloads/${EXA}" ] || wget -O ${HOME}/Downloads/${EXA} "https://github.com/ogham/exa/releases/download/v${EXA_VERSION}/${EXA}"
if [ ! -d "$DIR" ]; then
    if [ $EUID -ne 0 ]; then
        sudo apt install zip -y
    else
        apt install zip -y
    fi
fi
unzip "${HOME}/Downloads/${EXA}" -d "${HOME}/Downloads/"
if [ $EUID -ne 0 ]; then
    sudo cp "${HOME}/Downloads/exa-linux-x86_64" /usr/local/bin/exa
else
    cp "${HOME}/Downloads/exa-linux-x86_64" /usr/local/bin/exa
fi

# starship
bash -c "$(curl -fsSL https://starship.rs/install.sh)" -- --yes --platform unknown-linux-musl
