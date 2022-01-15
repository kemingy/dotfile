#!/bin/bash
set -e

# Rust
curl https://sh.rustup.rs -sSf | sh -s -- -y
. ${HOME}/.cargo/env

# delta
DELTA_VERSION="0.6.0"
DELTA="git-delta_0.6.0_amd64.deb"
[ -f "${HOME}/Downloads/${DELTA}" ] || wget -O ${HOME}/Downloads/${DELTA} "https://github.com/dandavison/delta/releases/download/${DELTA_VERSION}/${DELTA}"
if [ $EUID -ne 0 ]; then
    sudo dpkg -i ${HOME}/Downloads/${DELTA}
else
    dpkg -i ${HOME}/Downloads/${DELTA}
fi

# starship
bash -c "$(curl -fsSL https://starship.rs/install.sh)" -- --yes --platform unknown-linux-musl
