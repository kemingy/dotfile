#!/bin/bash
set -euo pipefail

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
. ${HOME}/.cargo/env
