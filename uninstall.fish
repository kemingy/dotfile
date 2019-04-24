# rust
printf 'y\n' | rustup self uninstall

# vimrc
rm -rf ~/.vim_runtime

# fish
rm ~/.config/fish/config.fish
printf 'y\n' | omf destroy
printf '\n' | conda remove fish
