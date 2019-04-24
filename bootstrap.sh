#!/usr/bin/env bash
set -e

CONDA="Miniconda3-latest-Linux-x86_64.sh"

mkdir -p ~/Downloads
cd ~/Downloads && wget "https://repo.anaconda.com/miniconda/${CONDA}"
chmod +x ~/Downloads/${CONDA}
# start | accept | location | init
printf '\nyes\n\nyes\n' | sh ~/Downloads/${CONDA}
source ~/.bashrc

# process to install fish-shell
printf '\n' | conda install -c conda-forge fish
curl -L https://get.oh-my.fish | fish
omf install bira

# vimrc
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_basic_vimrc.sh

echo "Enjoy :-)"