#!/bin/bash
set -euo pipefail

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
. ${HOME}/.cargo/env

# difftastic
DIFF_VERSION="0.39.0"
DIFF="difft-x86_64-unknown-linux-gnu.tar.gz"
[ -f "/tmp/${DIFF}" ] || wget -O /tmp/${DIFF} "https://github.com/Wilfred/difftastic/releases/download/${DIFF_VERSION}/${DIFF}"
tar zxf /tmp/${DIFF} -C /tmp/
cp /tmp/difft ${HOME}/.local/bin/
