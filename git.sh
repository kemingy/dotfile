#!/bin/bash
set -euo pipefail

# git
cp .gitconfig ${HOME}/.gitconfig
cp .gitignore_global ~/.gitignore_global

# difftastic
DIFF_VERSION="0.69.0"
ARCH=$(uname -m)
PLATFORM=$([ "$(uname -s)" = "Darwin" ] && echo apple-darwin || echo unknown-linux-gnu)
DIFF="difft-${ARCH}-${PLATFORM}.tar.gz"
[ -f "/tmp/${DIFF}" ] || curl -o /tmp/${DIFF} -L "https://github.com/Wilfred/difftastic/releases/download/${DIFF_VERSION}/${DIFF}"
tar zxf /tmp/${DIFF} -C /tmp/
mkdir -p ${HOME}/.local/bin
cp /tmp/difft ${HOME}/.local/bin/difft
