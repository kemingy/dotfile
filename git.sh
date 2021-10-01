#!/bin/bash
set -e

# git
git config --global alias.adog "log --all --decorate --oneline --graph"
git config --global core.excludesfile ~/.gitignore_global
cp .gitignore_global ~/.gitignore_global