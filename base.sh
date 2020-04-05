#!/bin/bash
set -e

# Debian
apt update
apt install -y curl wget git
apt autoremove