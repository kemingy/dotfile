#!/bin/bash
set -euo pipefail

# git
git config --global alias.adog "log --all --decorate --oneline --graph"
git config --global core.excludesfile ~/.gitignore_global
cp .gitignore_global ~/.gitignore_global

# difftastic
DIFF_VERSION="0.57.0"
DIFF="difft-x86_64-unknown-linux-gnu.tar.gz"
[ -f "/tmp/${DIFF}" ] || wget -O /tmp/${DIFF} "https://github.com/Wilfred/difftastic/releases/download/${DIFF_VERSION}/${DIFF}"
tar zxf /tmp/${DIFF} -C /tmp/
mkdir -p ${HOME}/.local/bin
cp /tmp/difft ${HOME}/.local/bin/difft
