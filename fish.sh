#!/bin/bash
set -e

# fish-shell
${HOME}/miniconda3/bin/conda install -y -c conda-forge
mkdir -p ${HOME}/.config/fish/
cp config.fish ${HOME}/.config/fish/config.fish

