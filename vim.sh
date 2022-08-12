#!/bin/bash
set -euo pipefail

# Neovim
VERSION="v0.7.2"
[ -f "${HOME}/Downloads/nvim-${VERSION}.tar.gz" ] || wget -O ${HOME}/Downloads/nvim-${VERSION}.tar.gz "https://github.com/neovim/neovim/releases/download/${VERSION}/nvim-linux64.tar.gz"
tar zxf "${HOME}/Downloads/nvim-${VERSION}.tar.gz" -C "${HOME}/Downloads/"
echo "export PATH=${HOME}/Downloads/nvim-linux64/bin:\$PATH" >> "${HOME}/.bashrc"

mkdir -p ${HOME}/.config/nvim
cp ./init.vim ${HOME}/.config/nvim

# vim plugin
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# :PlugInstall
${HOME}/Downloads/nvim-linux64/bin/nvim +PlugInstall +qall

