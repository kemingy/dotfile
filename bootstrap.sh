#!/bin/bash
set -e

CONDA="Miniconda3-latest-Linux-x86_64.sh"

mkdir -p ~/Downloads
[ -f "~/Downloads/${CONDA}" ] || wget -O ~/Downloads/${CONDA} "https://repo.anaconda.com/miniconda/${CONDA}"
# start | accept | location | init
printf '\nyes\n\nyes\n' | sh ~/Downloads/${CONDA} -s -- -u
sh ~/.bashrc

# vimrc
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
cat vim/.vimrc >> ~/.vim_runtime/my_configs.vim

# Rust
curl https://sh.rustup.rs -sSf | sh -s -- -y
sh ~/.cargo/env
cargo install lsd --force
cargo install bat --force
cargo install xsv --force

# process to install fish-shell
printf '\n' | conda install -c conda-forge fish
cat config.fish >> ~/.config/fish/config.fish
curl -L https://get.oh-my.fish | fish
omf install bira

echo "Enjoy :-)"