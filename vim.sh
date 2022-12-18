#!/bin/bash
set -euo pipefail

# Neovim
VERSION="nightly"
[ -f "$/tmp/nvim-${VERSION}.tar.gz" ] || wget -O /tmp/nvim-${VERSION}.tar.gz "https://github.com/neovim/neovim/releases/download/${VERSION}/nvim-linux64.tar.gz"
mkdir -p ${HOME}/.nvim
tar zxf "/tmp/nvim-${VERSION}.tar.gz" -C "${HOME}/.nvim" --strip-components=1
echo "export PATH=${HOME}/.nvim/bin:\$PATH" >> "${HOME}/.bashrc"

mkdir -p ${HOME}/.config/nvim
cp nvim.lua ${HOME}/.config/nvim/init.lua
