#!/bin/bash
set -euo pipefail

# Neovim
VERSION="nightly"
ARCHIVE="/tmp/nvim-${VERSION}.tar.gz"
PLATFORM=$([ "$(uname -s)" = "Darwin" ] && echo macos || echo linux)
ARCH=$([ "$(uname -m)" = "aarch64" ] && echo arm64 || uname -m)

if [ ! -f "${ARCHIVE}" ]; then
	curl -o "${ARCHIVE}" -fL "https://github.com/neovim/neovim/releases/download/${VERSION}/nvim-${PLATFORM}-${ARCH}.tar.gz"
fi

mkdir -p "${HOME}/.nvim"
tar zxf "${ARCHIVE}" -C "${HOME}/.nvim" --strip-components=1
echo "export PATH=${HOME}/.nvim/bin:\$PATH" >>"${HOME}/.bashrc"

mkdir -p "${HOME}/.config/nvim"
cp nvim.lua "${HOME}/.config/nvim/init.lua"
