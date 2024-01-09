#!/bin/bash
set -euo pipefail

# fish-shell
/opt/conda/bin/conda install -y -c conda-forge fish
mkdir -p ${HOME}/.config/fish/
cp config.fish ${HOME}/.config/fish/config.fish
