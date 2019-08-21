#!/bin/bash
set -e

CONDA="Miniconda3-latest-Linux-x86_64.sh"

# conda
mkdir -p ${HOME}/Downloads
[ -f "${HOME}/Downloads/${CONDA}" ] || wget -O ${HOME}/Downloads/${CONDA} "https://repo.anaconda.com/miniconda/${CONDA}"
sh ${HOME}/Downloads/${CONDA} -b -u
${HOME}/miniconda3/bin/conda init
. ${HOME}/.bashrc
pip install --upgrade https://github.com/jakubroztocil/httpie/archive/master.tar.gz

# vimrc
git clone --depth=1 https://github.com/amix/vimrc.git ${HOME}/.vim_runtime
sh ${HOME}/.vim_runtime/install_awesome_vimrc.sh
cat vim/.vimrc >> ${HOME}/.vim_runtime/my_configs.vim

# git
git config --global core.excludesfile ~/.gitignore_global
cp .gitignore_global ~/.gitignore_global

# Rust
curl https://sh.rustup.rs -sSf | sh -s -- -y
. ${HOME}/.cargo/env
cargo install lsd --force
cargo install bat --force
cargo install xsv --force

# fish-shell
conda install -y -c conda-forge fish
mkdir -p ${HOME}/.config/fish/
cat config.fish >> ${HOME}/.config/fish/config.fish
curl -L https://get.oh-my.fish | fish
omf install bira

echo "Enjoy :-)"