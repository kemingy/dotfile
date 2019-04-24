# vimrc
rm -rf $HOME/.vim_runtime

# rust
printf 'y\n' | rustup self uninstall

# fish
rm $HOME/.config/fish/config.fish
rm $HOME/.local/share/omf
printf 'y\n' | omf destroy
printf '\n' | conda remove fish
