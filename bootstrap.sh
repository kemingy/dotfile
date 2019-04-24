#!/bin/bash
set -e

CONDA="Miniconda3-latest-Linux-x86_64.sh"

mkdir -p ${HOME}/Downloads
[ -f "${HOME}/Downloads/${CONDA}" ] || wget -O ${HOME}/Downloads/${CONDA} "https://repo.anaconda.com/miniconda/${CONDA}"
# start | accept | location | init
printf '\nyes\n\nyes\n' | sh ${HOME}/Downloads/${CONDA} -s -- -u
. ${HOME}/.bashrc

# vimrc
git clone --depth=1 https://github.com/amix/vimrc.git ${HOME}/.vim_runtime
sh ${HOME}/.vim_runtime/install_awesome_vimrc.sh
cat vim/.vimrc >> ${HOME}/.vim_runtime/my_configs.vim

# Rust
curl https://sh.rustup.rs -sSf | sh -s -- -y
. ${HOME}/.cargo/env
cargo install lsd --force
cargo install bat --force
cargo install xsv --force

# process to install fish-shell
printf '\n' | conda install -c conda-forge fish
mkdir -p ${HOME}/.config/fish/
cat config.fish >> ${HOME}/.config/fish/config.fish
curl -L https://get.oh-my.fish | fish
omf install bira

echo "Enjoy :-)"