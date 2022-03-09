#!/bin/bash
set -e

# Neovim
VERSION="v0.6.1"
[ -f "${HOME}/Downloads/nvim-${VERSION}.tar.gz" ] || wget -O ${HOME}/Downloads/nvim-${VERSION}.tar.gz "https://github.com/neovim/neovim/releases/download/${VERSION}/nvim-linux64.tar.gz"
tar zxf "${HOME}/Downloads/nvim-${VERSION}.tar.gz" -C "${HOME}/Downloads/nvim" --strip-components 1
echo "export PATH=${HOME}/Downloads/nvim/bin:\$PATH" >> "${HOME}/.bashrc"

# vim plugin
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
