#!/bin/bash

for cmd in base.sh py.sh vim.sh git.sh tmux.sh rust.sh fish.sh
do
    sh $cmd
done

echo "Enjoy :-)"
