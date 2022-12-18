#!/bin/bash
set -euo pipefail

# Neovim
VERSION="nightly"
[ -f "${HOME}/Downloads/nvim-${VERSION}.tar.gz" ] || wget -O ${HOME}/Downloads/nvim-${VERSION}.tar.gz "https://github.com/neovim/neovim/releases/download/${VERSION}/nvim-linux64.tar.gz"
tar zxf "${HOME}/Downloads/nvim-${VERSION}.tar.gz" -C "${HOME}/Downloads/"
echo "export PATH=${HOME}/Downloads/nvim-linux64/bin:\$PATH" >> "${HOME}/.bashrc"

mkdir -p ${HOME}/.config/nvim
cp nvim.lua ${HOME}/.config/nvim/init.lua
