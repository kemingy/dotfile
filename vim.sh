#!/bin/bash
set -euo pipefail

# Neovim
VERSION="nightly"
[ -f "$/tmp/nvim-${VERSION}.tar.gz" ] || wget -O /tmp/nvim-${VERSION}.tar.gz "https://github.com/neovim/neovim/releases/download/${VERSION}/nvim-linux64.tar.gz"
mkdir -p .nvim
tar zxf --strip-components=1 "/tmp/nvim-${VERSION}.tar.gz" -C "${HOME}/.nvim"
echo "export PATH=${HOME}/.nvim/bin:\$PATH" >> "${HOME}/.bashrc"

mkdir -p ${HOME}/.config/nvim
cp nvim.lua ${HOME}/.config/nvim/init.lua
