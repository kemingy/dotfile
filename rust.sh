#!/bin/bash
set -euo pipefail

# Rust
# curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
# . ${HOME}/.cargo/env

# difftastic
DIFF_VERSION="0.31.0"
DIFF="difft-x86_64-unknown-linux-gnu.tar.gz"
[ -f "${HOME}/Downloads/${DIFF}" ] || wget -O ${HOME}/Downloads/${DIFF} "https://github.com/Wilfred/difftastic/releases/download/${DIFF_VERSION}/${DIFF}"
tar zxf ${HOME}/Downloads/${DIFF} -C ${HOME}/Downloads/
cp ${HOME}/Downloads/difft ${HOME}/miniconda3/bin/
