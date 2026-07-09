#!/bin/bash
set -euo pipefail

# git
GIT_XDG_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/git"
mkdir -p "$GIT_XDG_DIR"
cp .gitconfig "$GIT_XDG_DIR/config"
cp .gitignore_global "$GIT_XDG_DIR/ignore"

# difftastic
DIFF_VERSION="0.69.0"
ARCH=$([ "$(uname -m)" = "arm64" ] && echo aarch64 || uname -m)
PLATFORM=$([ "$(uname -s)" = "Darwin" ] && echo apple-darwin || echo unknown-linux-gnu)
DIFF="difft-${ARCH}-${PLATFORM}.tar.gz"
[ -f "/tmp/${DIFF}" ] || curl -o /tmp/${DIFF} -fL "https://github.com/Wilfred/difftastic/releases/download/${DIFF_VERSION}/${DIFF}"
tar zxf /tmp/${DIFF} -C /tmp/
mkdir -p ${HOME}/.local/bin
cp /tmp/difft ${HOME}/.local/bin/difft
