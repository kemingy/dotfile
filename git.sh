#!/bin/bash
set -euo pipefail

# git
cp .gitconfig ${HOME}/.gitconfig
cp .gitignore_global ~/.gitignore_global

# difftastic
DIFF_VERSION="0.67.0"
DIFF="difft-x86_64-unknown-linux-gnu.tar.gz"
[ -f "/tmp/${DIFF}" ] || wget -O /tmp/${DIFF} "https://github.com/Wilfred/difftastic/releases/download/${DIFF_VERSION}/${DIFF}"
tar zxf /tmp/${DIFF} -C /tmp/
mkdir -p ${HOME}/.local/bin
cp /tmp/difft ${HOME}/.local/bin/difft
