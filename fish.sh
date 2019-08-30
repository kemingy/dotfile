#!/bin/bash
set -e

# fish-shell
${HOME}/miniconda3/bin/conda install -y -c conda-forge fish
mkdir -p ${HOME}/.config/fish/
cp config.fish ${HOME}/.config/fish/config.fish
curl -L https://get.oh-my.fish | fish
omf install cbjohnson