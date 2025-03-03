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
/opt/conda/bin/conda install -y -c conda-forge ncurses bat ripgrep eza fd-find starship gh typos
/opt/conda/bin/pip install httpie ruff black ipython
mkdir -p ${HOME}/.config
cp starship.toml ${HOME}/.config/
