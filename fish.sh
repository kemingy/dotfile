#!/bin/bash
set -e

# fish-shell
${HOME}/miniconda3/bin/conda install -y -c conda-forge fish=3.0
mkdir -p ${HOME}/.config/fish/
cp config.fish ${HOME}/.config/fish/config.fish
curl -L https://get.oh-my.fish | ${HOME}/miniconda3/bin/fish
# omf install cbjohnson