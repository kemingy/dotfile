#!/bin/bash
set -e

# Rust
curl https://sh.rustup.rs -sSf | sh -s -- -y
. ${HOME}/.cargo/env
cargo install lsd --force
cargo install bat --force
cargo install xsv --force
