#!/bin/bash
set -euo pipefail

# Debian
apt-get update
apt-get install -y curl wget git vim
apt-get autoremove