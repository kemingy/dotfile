#!/bin/bash
set -euo pipefail

CONDA="Miniconda3-latest-Linux-x86_64.sh"

# conda
[ -f "/tmp/${CONDA}" ] || wget -O /tmp/${CONDA} "https://repo.anaconda.com/miniconda/${CONDA}"
sudo mkdir -p /opt/conda
sudo chown $(whoami):$(whoami) /opt/conda
sh /tmp/${CONDA} -b -u -p /opt/conda
/opt/conda/bin/conda init

# related libraries
/opt/conda/bin/conda install -y -c conda-forge bat ripgrep exa fd-find starship gh
/opt/conda/bin/pip install httpie ruff black ipython
mkdir -p ${HOME}/.config
