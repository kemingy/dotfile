#!/bin/bash
set -e

# Debian
apt-get update
apt-get install -y curl wget git vim
apt-get autoremove