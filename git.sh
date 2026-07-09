#!/bin/bash
set -euo pipefail

# git
mkdir -p ${HOME}/git
cp .gitconfig ${HOME}/git/config
cp .gitignore_global ${HOME}/git/ignore

# difftastic
DIFF_VERSION="0.69.0"
ARCH=$([ "$(uname -m)" = "arm64" ] && echo aarch64 || uname -m)
PLATFORM=$([ "$(uname -s)" = "Darwin" ] && echo apple-darwin || echo unknown-linux-gnu)
DIFF="difft-${ARCH}-${PLATFORM}.tar.gz"
[ -f "/tmp/${DIFF}" ] || curl -o /tmp/${DIFF} -fL "https://github.com/Wilfred/difftastic/releases/download/${DIFF_VERSION}/${DIFF}"
tar zxf /tmp/${DIFF} -C /tmp/
mkdir -p ${HOME}/.local/bin
cp /tmp/difft ${HOME}/.local/bin/difft
