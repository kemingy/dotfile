# Dotfile

This is my personal dotfile.

## set up environment

**basic env**

- [x] mini-conda
- [x] fish-shell & oh-my-fish
- [x] vimrc [https://github.com/amix/vimrc]

**standard env**

- [x] Rust
- [x] lsd, bat, xsv
- [ ] [nvtop](https://github.com/Syllo/nvtop)

## install

```sh
git clone --depth=1 https://github.com/kemingy/dotfile.git ~/.dotfile
cd ~/.dotfile && sh bootstrap.sh
```

For basic env, use `cd ~/.dotfile && sh bootstrap_basic.sh`.

## uninstall fish & oh-my-fish

`cd ~/.dotfile && fish uninstall.fish`
