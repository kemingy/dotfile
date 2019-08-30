#!/bin/bash
set -e

# vimrc
git clone --depth=1 https://github.com/amix/vimrc.git ${HOME}/.vim_runtime
sh ${HOME}/.vim_runtime/install_awesome_vimrc.sh
cp vim/.vimrc ${HOME}/.vim_runtime/my_configs.vim
mkdir -p ${HOME}/.vim/colors/
curl https://raw.githubusercontent.com/rakr/vim-one/master/colors/one.vim > ${HOME}/.vim/colors/one.vim
