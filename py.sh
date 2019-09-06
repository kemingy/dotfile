#!/bin/bash
set -e

CONDA="Miniconda3-latest-Linux-x86_64.sh"

# conda
mkdir -p ${HOME}/Downloads
[ -f "${HOME}/Downloads/${CONDA}" ] || wget -O ${HOME}/Downloads/${CONDA} "https://repo.anaconda.com/miniconda/${CONDA}"
sh ${HOME}/Downloads/${CONDA} -b -u
${HOME}/miniconda3/bin/conda init
[ -f "${HOME}/Downloads/${CONDA}" ] || touch ${HOME}/.bashrc
. ${HOME}/.bashrc
pip install --upgrade https://github.com/jakubroztocil/httpie/archive/master.tar.gz