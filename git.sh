#!/bin/bash
set -e

# git
git config --global core.excludesfile ~/.gitignore_global
cp .gitignore_global ~/.gitignore_global