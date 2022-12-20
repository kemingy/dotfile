#!/bin/bash
set -euo pipefail

CONDA="Miniconda3-latest-Linux-x86_64.sh"

# conda
[ -f "/tmp/${CONDA}" ] || wget -O /tmp/${CONDA} "https://repo.anaconda.com/miniconda/${CONDA}"
mkdir -p /opt/conda
sudo chown $(whoami):$(whoami) /opt/conda
sh /tmp/${CONDA} -b -u -p /opt/conda
/opt/conda/bin/conda init
. ${HOME}/.bashrc

# related libraries
/opt/conda/bin/conda install -y -c conda-forge bat ripgrep exa fd-find starship
pip install httpie flake8 black isort autoflake ipython
mkdir -p ${HOME}/.config
cp flake8 ${HOME}/.config/
