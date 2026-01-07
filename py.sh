#!/bin/bash
set -euo pipefail

# pixi
curl -fsSL https://pixi.sh/install.sh | sh
export PATH=$PATH:$HOME/.pixi/bin

# conda libraries
pixi global install bat ripgrep eza xh fd-find starship gh typos fish
# pypi libraries
pixi global install httpie ruff ipython
mkdir -p ${HOME}/.config
cp starship.toml ${HOME}/.config/
