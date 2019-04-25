#!/bin/bash
set -e

CONDA="Miniconda3-latest-Linux-x86_64.sh"

mkdir -p ${HOME}/Downloads
[ -f "${HOME}/Downloads/${CONDA}" ] || wget -O ${HOME}/Downloads/${CONDA} "https://repo.anaconda.com/miniconda/${CONDA}"
# start | accept | location | init
sh ${HOME}/Downloads/${CONDA} -b -u
. ${HOME}/.bashrc

# vimrc
git clone --depth=1 https://github.com/amix/vimrc.git ${HOME}/.vim_runtime
sh ${HOME}/.vim_runtime/install_basic_vimrc.sh

# process to install fish-shell
conda install -y -c conda-forge fish
curl -L https://get.oh-my.fish | fish

echo "Enjoy :-)"