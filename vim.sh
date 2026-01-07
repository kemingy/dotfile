#!/bin/bash
set -euo pipefail

# Neovim
VERSION="nightly"
ARCHIVE="/tmp/nvim-${VERSION}.tar.gz"

if [ ! -f "${ARCHIVE}" ]; then
	wget -O "${ARCHIVE}" "https://github.com/neovim/neovim/releases/download/${VERSION}/nvim-linux-$(uname -m).tar.gz"
fi

mkdir -p "${HOME}/.nvim"
tar zxf "${ARCHIVE}" -C "${HOME}/.nvim" --strip-components=1
echo "export PATH=${HOME}/.nvim/bin:\$PATH" >>"${HOME}/.bashrc"

mkdir -p "${HOME}/.config/nvim"
cp nvim.lua "${HOME}/.config/nvim/init.lua"
