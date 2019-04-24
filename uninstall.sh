#!/bin/bash
set -e

# fish
printf 'y\n' | omf destroy
printf '\n' | conda remove fish
