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
sh ${HOME}/.vim_runtime/install_basic_vimrc.sh

# fish-shell
conda install -y -c conda-forge fish
curl -L https://get.oh-my.fish | fish

echo "Enjoy :-)"