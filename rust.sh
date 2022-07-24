#!/bin/bash
set -euo pipefail

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
. ${HOME}/.cargo/env

# delta
DELTA_VERSION="0.11.3"
DELTA="delta-${DELTA_VERSION}-x86_64-unknown-linux-musl.tar.gz"
[ -f "${HOME}/Downloads/${DELTA}" ] || wget -O ${HOME}/Downloads/${DELTA} "https://github.com/dandavison/delta/releases/download/${DELTA_VERSION}/${DELTA}"
tar zxf ${HOME}/Downloads/${DELTA} -C ${HOME}/Downloads/ --strip-components 1
cp ${HOME}/Downloads/delta ${HOME}/miniconda3/bin/

