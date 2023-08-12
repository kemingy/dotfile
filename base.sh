#!/bin/bash
set -euo pipefail

# Debian
apt-get update
apt-get install -y --no-install-recommends curl wget git build-essential
apt-get autoremove
